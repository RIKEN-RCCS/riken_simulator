/*
 * Copyright (c) 2017 RIKEN
 * All rights reserved
 *
 * The license below extends only to copyright in the software and shall
 * not be construed as granting a license to any other intellectual
 * property including but not limited to intellectual property relating
 * to a hardware implementation of the functionality of the software
 * licensed hereunder.  You may use the software subject to the license
 * terms below provided that you ensure that this notice is replicated
 * unmodified and in its entirety in all distributions of the software,
 * modified or unmodified, in source code or in binary form.
 *
 * Copyright (c) 2005 The Regents of The University of Michigan
 * All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions are
 * met: redistributions of source code must retain the above copyright
 * notice, this list of conditions and the following disclaimer;
 * redistributions in binary form must reproduce the above copyright
 * notice, this list of conditions and the following disclaimer in the
 * documentation and/or other materials provided with the distribution;
 * neither the name of the copyright holders nor the names of its
 * contributors may be used to endorse or promote products derived from
 * this software without specific prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
 * "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
 * LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR
 * A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT
 * OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
 * SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT
 * LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,
 * DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY
 * THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
 * (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
 * OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 *
 */
#include "mem/cache/prefetch/kprefetcher.hh"

#include "debug/HWPrefetch.hh"

KPrefetcher::KPrefetcher(const KPrefetcherParams *p)
    : QueuedPrefetcher(p)
{
    l1param.prftablesize = p->l1prftablesize;
    l1param.maxprfofs = p->l1maxprfofs;
    l1param.degree = p->l1degree;
    l1param.slowstart = 1;
    l1param.flags = Request::PF_L1;

    l2param.prftablesize = p->l2prftablesize;
    l2param.maxprfofs = p->l2maxprfofs;
    l2param.degree = p->l2degree;
    l2param.slowstart = 0;
    l2param.flags= Request::PF_L2;
    writeprefetch = p->writeprefetch;
    // Don't consult stride prefetcher on instruction accesses
    DPRINTF(HWPrefetch, "KPrefetcher installed\n");
}
void
KPrefetcher::calculatePrefetch(const PacketPtr &pkt,
                                    std::vector<AddrPriority> &addresses)
{
    bool noL1 = false;
    bool noL2 = false;

    if (pkt->req->hasVaddr()){
        //HPC Tag (This prefetcher is dedicated to PostK)
        Addr va = pkt->req->getVaddr();
        if (bits(va, 63, 56))
            DPRINTF(HWPrefetch, "vaflags %x\n", va);
        noL1 = bits(va,62);
        noL2 = bits(va,61);
    }
    if (!noL1){
        calculateTable(entriesl1, pkt, addresses, l1param);
    }
    if (!noL2 &&
        (l2param.prftablesize != 0)){
        calculateTable(entriesl2, pkt, addresses, l2param);
    }
}
void
KPrefetcher::calculateTable(Kpftable &entries, const PacketPtr &pkt,
                            std::vector<AddrPriority> &addresses,
                            const TableParameters &prm)

{
    Addr pkt_addr = pkt->getAddr()&(~static_cast<Addr>(blkSize -1));

    auto el = std::find_if(entries.begin(), entries.end(), [&](KEntry &e){
            return (pkt_addr == e.pktAddr);
        }
        );

    if (el != entries.end()){
        Addr prf_addr = el->prfAddr;
        int64_t stride = blkSize;
        bool isStore = el->isStore;
        if (pkt->isWrite()){
            isStore = true;
        }

        //Need to cast blkSize if this line is done above.
        stride = (el->incr) ? stride: -stride;

        int effdegree = (std::abs((int64_t)(prf_addr - pkt_addr))
                         >= prm.maxprfofs)? 1 : prm.degree;
        if (prf_addr){
            for (int i = 0; i < effdegree; i++){
                Addr addr = prf_addr + stride*i;
                if (samePage(pkt_addr, addr)){
                    Request::Flags flg;
                    flg = prm.flags
                        |((isStore && writeprefetch) ?
                          Request::PF_EXCLUSIVE :
                          Request::PREFETCH)
                        ;
                    addresses.push_back(
                        AddrPriority(addr, 0, flg));
                }else{
                    DPRINTF(HWPrefetch, "Ignoring page crossing prefetch.\n");
                    break;
                }
            }
        }else {
            DPRINTF(HWPrefetch, "Slowstart match\n");
            prf_addr = pkt_addr;
            effdegree = 1;
        }
        KEntry en;

        en.pktAddr = pkt_addr + stride;
        en.prfAddr = prf_addr + stride*effdegree;
        en.incr = el->incr;
        en.isStore = isStore;

        DPRINTF(HWPrefetch, "Replace Prefetch %x-%x %s(%d)\n",
                en.pktAddr, en.prfAddr, effdegree,
                en.isStore ? "Store": "Load" );
        entries.erase(el);
        if (samePage(pkt_addr, en.pktAddr)){
            entries.push_front(en);
        }
    } else if (!inCache(pkt->getAddr(), pkt->isSecure()))
      {
        KEntry en0;
        en0.pktAddr = pkt_addr + blkSize;
        if (!prm.slowstart)
            en0.prfAddr = pkt_addr + blkSize*2;
        if (pkt->isWrite()){
            en0.isStore = true;
        }
        if (samePage(pkt_addr, en0.pktAddr)){
            DPRINTF(HWPrefetch, "Add Prefetch forward %x-%x %s\n",
                    en0.pktAddr, en0.prfAddr,
                    (en0.isStore)? "Store": "Load");
            entries.push_front(en0);
        }

        KEntry en1;
        en1.pktAddr = pkt_addr - blkSize;
        if (!prm.slowstart)
            en1.prfAddr = pkt_addr - blkSize*2;
        en1.incr = false;
        if (pkt->isWrite()){
            en1.isStore = true;
        }
        if (samePage(pkt_addr, en1.pktAddr)){
            DPRINTF(HWPrefetch, "Add Prefetch back %x-%x %s\n",
                    en1.pktAddr, en1.prfAddr,
                    en1.isStore?"Store":"Load");
            entries.push_front(en1);
        }

        if (entries.size() > prm.prftablesize){
            entries.resize(prm.prftablesize);
        }
    }

}

KPrefetcher *
KPrefetcherParams::create()
{
   return new KPrefetcher(this);
}
