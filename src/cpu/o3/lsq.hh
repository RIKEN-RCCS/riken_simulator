/*
 * Copyright (c) 2011-2012, 2014 ARM Limited
 * Copyright (c) 2013 Advanced Micro Devices, Inc.
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
 * Copyright (c) 2004-2006 The Regents of The University of Michigan
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
 * Authors: Korey Sewell
 */

#ifndef __CPU_O3_LSQ_HH__
#define __CPU_O3_LSQ_HH__

#include <map>
#include <queue>

#include "arch/generic/tlb.hh"
#include "cpu/inst_seq.hh"
#include "cpu/o3/lsq_unit.hh"
#include "cpu/utils.hh"
#include "mem/port.hh"
#include "sim/sim_object.hh"

struct DerivO3CPUParams;

template <class Impl>
class LSQ {
  public:
    /** XXX Fix this */
    static constexpr auto lineWidth = 512;
    typedef typename Impl::O3CPU O3CPU;
    typedef typename Impl::DynInstPtr DynInstPtr;
    typedef typename Impl::CPUPol::IEW IEW;
    typedef typename Impl::CPUPol::LSQUnit LSQUnit;

    class LSQRequest;
    /** Derived class to hold any sender state the LSQ needs. */
    class LSQSenderState : public Packet::SenderState
    {
      protected:
        /** The senderState needs to know the LSQRequest who owns it. */
        LSQRequest* _request;

        /** Default constructor. */
        LSQSenderState(LSQRequest* request, bool isLoad_)
            : _request(request), mainPkt(NULL), pendingPacket(NULL),
              outstanding(0), isLoad(isLoad_), needWB(isLoad_), isSplit(false),
              pktToSend(false), cacheBlocked(false), deleted(false)
          { }
      public:

        /** Instruction which initiated the access to memory. */
        DynInstPtr inst;
        /** The main packet from a split load, used during writeback. */
        PacketPtr mainPkt;
        /** A second packet from a split store that needs sending. */
        PacketPtr pendingPacket;
        /** Number of outstanding packets to complete. */
        uint8_t outstanding;
        /** Whether or not it is a load. */
        bool isLoad;
        /** Whether or not the instruction will need to writeback. */
        bool needWB;
        /** Whether or not this access is split in two. */
        bool isSplit;
        /** Whether or not there is a packet that needs sending. */
        bool pktToSend;
        /** Whether or not the second packet of this split load was blocked */
        bool cacheBlocked;
        /** Has the request been deleted?
         * LSQ entries can be squashed before the response comes back. in that
         * case the SenderState knows.
         */
        bool deleted;
        ContextID contextId() { return inst->contextId(); }

        /** Completes a packet and returns whether the access is finished. */
        inline bool isComplete() { return outstanding == 0; }
        inline void deleteRequest() { deleted = true; }
        inline bool alive() { return !deleted; }
        LSQRequest* request() { return _request; }
        virtual void complete() = 0;
        void writeback() { _request->writeback(); }
    };

    /** Memory operation metadata.
     * This class holds the information about a memory operation. It lives
     * from initiateAcc to resource deallocation at commit or squash.
     * LSQRequest objects are owned by the LQ/SQ Entry in the LSQUnit that
     * holds the operation. It is also used by the LSQSenderState. In addition,
     * the LSQRequest is a TranslationState, therefore, upon squash, there must
     * be a defined ownership transferal in case the LSQ resources are
     * deallocated before the TLB is done using the TranslationState. If that
     * happens, the LSQRequest will be self-owned, and responsible to detect
     * that its services are no longer required and self-destruct.
     *
     * Lifetime of a LSQRequest:
     *                 +--------------------+
     *                 |LSQ creates and owns|
     *                 +--------------------+
     *                           |
     *                 +--------------------+
     *                 | Initate translation|
     *                 +--------------------+
     *                           |
     *                        ___^___
     *                    ___/       \___
     *             ______/   Squashed?   \
     *            |      \___         ___/
     *            |          \___ ___/
     *            |              v
     *            |              |
     *            |    +--------------------+
     *            |    |  Translation done  |
     *            |    +--------------------+
     *            |              |
     *            |    +--------------------+
     *            |    |     Send packet    |<------+
     *            |    +--------------------+       |
     *            |              |                  |
     *            |           ___^___               |
     *            |       ___/       \___           |
     *            |  ____/   Squashed?   \          |
     *            | |    \___         ___/          |
     *            | |        \___ ___/              |
     *            | |            v                  |
     *            | |            |                  |
     *            | |         ___^___               |
     *            | |     ___/       \___           |
     *            | |    /     Done?     \__________|
     *            | |    \___         ___/
     *            | |        \___ ___/
     *            | |            v
     *            | |            |
     *            | |  +--------------------+
     *            | |  |    Manage stuff    |
     *            | |  |   Free resources   |
     *            | |  +--------------------+
     *            | |
     *            | |  +--------------------+
     *            | |  |  senderState owns  |
     *            | +->|  onRecvTimingResp  |
     *            |    |   free resources   |
     *            |    +--------------------+
     *            |
     *            |   +----------------------+
     *            |   |  self owned (Trans)  |
     *            +-->| on TranslationFinish |
     *                |    free resources    |
     *                +----------------------+
     *
     *
     */
    class LSQRequest : public BaseTLB::Translation {
      protected:
        enum class Flag {
            IsLoad,
            /** True if this is a store that writes registers (SC). */
            WbStore,
            Delayed,
            IsSplit,
            /** True if any translation has been sent to TLB. */
            TranslationStarted,
            /** True if there are un-replied outbound translations.. */
            TranslationFinished,
            Sent,
            Retry,
            Complete,
            /** Ownership tracking flags. */
            /** Translation squashed. */
            TranslationSquashed,
            /** LSQ resources freed. */
            LSQEntryFreed,
            /** Store written back. */
            Writeback,
            Max
        };
        static constexpr auto MaxFlag = (size_t) Flag::Max;
        std::bitset<MaxFlag> flags;

        enum class State
        {
            NotIssued,
            Translation,
            Request,
            Complete,
            Squashed,
            Fault,
        };
        State _state;
        LSQSenderState* _senderState;
        void setState(const State& newState) { _state = newState; }
        //bool _delayed;
        uint32_t numTranslatedFragments;
        uint32_t numInTranslationFragments;

        /** LQ/SQ entry idx. */
        uint32_t _entryIdx;

        void markDelayed() { flags[(int)Flag::Delayed] = 1; }
        bool isDelayed() { return flags[(int)Flag::Delayed]; }
      public:
        LSQUnit& _port;
        const DynInstPtr _inst;
        uint32_t _taskId;
        PacketDataPtr _data;
        std::vector<PacketPtr> _packets;
        std::vector<Request*> _requests;
        std::vector<Fault> _fault;
        uint64_t* _res;
        const Addr _addr;
        const uint32_t _size;
        const uint32_t _flags;
        std::vector<bool> _writeByteEnable;
        uint32_t _numOutstandingPackets;
      protected:
        LSQUnit* lsqUnit() { return &_port; }
        LSQRequest(LSQUnit* port, const DynInstPtr& inst, bool isLoad) :
            _state(State::NotIssued), _senderState(nullptr),
            _port(*port), _inst(inst), _data(nullptr),
            _res(nullptr), _addr(0), _size(0), _flags(0),
            _numOutstandingPackets(0)
        {
            flags[(int)Flag::IsLoad] = isLoad;
            flags[(int)Flag::WbStore] = _inst->isStoreConditional();
            install();
        }
        LSQRequest(LSQUnit* port, const DynInstPtr& inst, bool isLoad,
                const Addr& addr, const uint32_t& size, const uint32_t& flags_,
                PacketDataPtr data = nullptr, uint64_t* res = nullptr,
                const std::vector<bool>& writeByteEnable = std::vector<bool>())
            : _state(State::NotIssued), _senderState(nullptr),
            numTranslatedFragments(0),
            numInTranslationFragments(0),
            _port(*port), _inst(inst), _data(data),
            _res(res), _addr(addr), _size(size),
            _flags(flags_),
            _writeByteEnable(writeByteEnable),
            _numOutstandingPackets(0)
        {
            flags[(int)Flag::IsLoad] = isLoad;
            flags[(int)Flag::WbStore] = _inst->isStoreConditional();
            install();
        }

        bool
        isLoad() const
        {
            return flags[(int)Flag::IsLoad];
        }

        /** Install the request in the LQ/SQ. */
        void install() {
            if (isLoad()) {
                _port.loadQueue[_inst->lqIdx].setRequest(this);
            } else {
                _port.storeQueue[_inst->sqIdx].setRequest(this);
            }
        }
        virtual bool
        squashed() const override
        {
            return _inst->isSquashed();
        }

        /**
         * Test if the LSQRequest is self-owned.
         * An LSQRequest manages itself when the resources on the LSQ are freed
         * but the translation is still going on and the LSQEntry was freed.
         */
        bool
        isSelfOwned()
        {
            return flags[(int)Flag::LSQEntryFreed];
        }

        /**
         * Test if the LSQRequest is owned by the LSQ.
         * This is the common case, when the instruction is not squashed or
         * when at the point of squash there is no ongoing operation that
         * requires keeping information alive for the future.
         */
        bool
        isOwnedByLSQ()
        {
            return ((!flags[(int)Flag::TranslationStarted] ||
                     flags[(int)Flag::TranslationFinished] ||
                     flags[(int)Flag::TranslationSquashed]) &&
                    (!flags[(int)Flag::WbStore] ||
                     flags[(int)Flag::Writeback]));
        }

      public:
        /** Destructor.
         * The LSQRequest owns the request. If the packet has already been
         * sent, the sender state will be deleted upon receiving the reply.
         */
        virtual ~LSQRequest() {
            assert(_numOutstandingPackets == 0);
            if (_senderState)
                delete _senderState;

            for (auto r: _requests)
                delete r;

            for (auto r: _packets)
                delete r;
        };

        /** Convenience getters/setters. */
        /** @{ */
        /** Set up Context numbers. */
        void
        setContext(const ContextID& context_id) {
            request()->setContext(context_id);
        }

        const DynInstPtr&
        instruction()
        {
            return _inst;
        }

        /** Set the LQ/SQ entry index. */
        void
        stateIdx(const int& idx)
        {
            _entryIdx = idx;
        }

        /** Set up virtual request.
         * For a previously allocated Request objects.
         */
        void
        setVirt(int asid, Addr vaddr, unsigned size, Request::Flags flags_,
                MasterID mid, Addr pc,
                const std::vector<bool>& writeByteEnable = std::vector<bool>())
        {
            request()->setVirt(asid, vaddr, size, flags_, mid, pc,
                               writeByteEnable);
        }

        void taskId(const uint32_t& v)
        {
            _taskId = v;
            for (auto& r: _requests)
                r->taskId(v);
        }

        uint32_t taskId() const { return _taskId; }
        Request* request(int idx = 0) { return _requests.at(idx); }
        const Request* request(int idx = 0) const { return _requests.at(idx); }
        Addr getVaddr(int idx = 0) const { return request(idx)->getVaddr(); }
        virtual void initiateTranslation() = 0;

        PacketPtr packet(int idx = 0) { return _packets.at(idx); }
        virtual PacketPtr mainPacket() {
            assert (_packets.size() == 1);
            return packet();
        }

        virtual RequestPtr mainRequest() {
            assert (_requests.size() == 1);
            return request();
        }

        void senderState(LSQSenderState* st)
        {
            _senderState = st;
            for (auto& pkt: _packets) {
                if (pkt)
                    pkt->senderState = st;
            }
        }

        const LSQSenderState*
        senderState() const
        {
            return _senderState;
        }

        bool
        isSplit() const
        {
            return flags[(int)Flag::IsSplit];
        }
        /** @} */
        virtual bool recvTimingResp(PacketPtr pkt) = 0;
        virtual void sendPacketToCache() = 0;
        virtual void buildPackets() = 0;

        /** Update the status to reflect that a packet was sent. */
        void
        packetSent()
        {
            flags[(int)Flag::Sent] = 1;
        }
        /** Update the status to reflect that a packet was not sent.
         * When a packet fails to be sent, we mark the request as needing a
         * retry. Note that Retry flag is sticky.
         */
        void
        packetNotSent()
        {
            flags[(int)Flag::Retry] = 1;
            flags[(int)Flag::Sent] = 0;
        }

        void sendFragmentToTranslation(int i);
        bool
        isComplete() {
            return flags[(int)Flag::Complete];
        }

        bool
        isInTranslation() {
            return _state == State::Translation;
        }

        bool
        isTranslationComplete() {
            return flags[(int)Flag::TranslationStarted] &&
                   !isInTranslation();
        }

        bool
        isTranslationBlocked() {
            return _state == State::Translation &&
                flags[(int)Flag::TranslationStarted] &&
                !flags[(int)Flag::TranslationFinished];
        }

        bool
        isSent()
        {
            return flags[(int)Flag::Sent];
        }

        /** Free the LSQResources.
         * Notify the sender state that the request it points to is not valid
         * anymore. Understand if the request is orphan (self-managed) and if
         * so, mark it as LSQResources freed, else destroy it, as this means
         * the end of its life cycle.
         * An LSQRequest is orphan when its resources from the LSQ are freed
         * but the TLB still needs some information. This scenario is detected
         * by a non-squashed translation that has not yet finished.
         * After translation is done, if the request is sent to memory and it
         * is not satisfied by the time we squash, there is a problem
         * as the caches will inspect the request.
         */
        void
        freeLSQEntry()
        {
            if (isOwnedByLSQ() && _numOutstandingPackets == 0) {
                delete this;
            } else {
                if (_senderState) {
                    _senderState->deleteRequest();
                }
                flags[(int)Flag::LSQEntryFreed] = true;
            }
        }

        void packetReplied()
        {
            assert(_numOutstandingPackets > 0);
            _numOutstandingPackets--;
            if (isSelfOwned() && _numOutstandingPackets == 0)
                delete this;
        }

        void writeback()
        {
            flags[(int)Flag::Writeback] = true;
            /* If the lsq resources are already free */
            if (isSelfOwned()) {
                assert(_numOutstandingPackets == 0);
                delete this;
            }
        }

        void
        squashTranslation()
        {
            flags[(int)Flag::TranslationSquashed] = true;
            /* If we are on our own, self-destruct. */
            if (isSelfOwned()) {
                assert(_numOutstandingPackets == 0);
                delete this;
            }
        }

        void complete()
        {
            flags[(int)Flag::Complete] = 1;
        }
    };

    class SingleDataRequest : public LSQRequest
    {
      protected:
        /* Given that we are inside templates, children need explicit
         * declaration of the names in the parent class. */
        using Flag = typename LSQRequest::Flag;
        using State = typename LSQRequest::State;
        using LSQRequest::_fault;
        using LSQRequest::_inst;
        using LSQRequest::_packets;
        using LSQRequest::_port;
        using LSQRequest::_res;
        using LSQRequest::_senderState;
        using LSQRequest::_state;
        using LSQRequest::flags;
        using LSQRequest::isLoad;
        using LSQRequest::isTranslationComplete;
        using LSQRequest::lsqUnit;
        using LSQRequest::request;
        using LSQRequest::sendFragmentToTranslation;
        using LSQRequest::setState;
        using LSQRequest::_numOutstandingPackets;
      public:
        SingleDataRequest(LSQUnit* port, const DynInstPtr& inst, bool isLoad,
            const Addr& addr, const uint32_t& size, const uint32_t& flags_,
            PacketDataPtr data = nullptr, uint64_t* res = nullptr,
            const std::vector<bool>& writeByteEnable = std::vector<bool>()) :
            LSQRequest(port, inst, isLoad, addr, size, flags_, data, res,
                       writeByteEnable)
        {
            LSQRequest::_requests.push_back(
                    new Request(inst->getASID(), addr, size, flags_,
                    inst->masterId(), inst->instAddr(), inst->contextId(),
                    writeByteEnable));
            LSQRequest::_requests.back()->setReqInstSeqNum(inst->seqNum);
        }
        inline virtual ~SingleDataRequest() {}
        virtual void initiateTranslation();
        virtual void finish(const Fault &fault, RequestPtr req,
                ThreadContext* tc, BaseTLB::Mode mode);
        virtual bool recvTimingResp(PacketPtr pkt);
        virtual void sendPacketToCache();
        virtual void buildPackets();
    };

    class SplitDataRequest : public LSQRequest
    {
      protected:
        /* Given that we are inside templates, children need explicit
         * declaration of the names in the parent class. */
        using Flag = typename LSQRequest::Flag;
        using State = typename LSQRequest::State;
        using LSQRequest::_addr;
        using LSQRequest::_data;
        using LSQRequest::_fault;
        using LSQRequest::_flags;
        using LSQRequest::_inst;
        using LSQRequest::_packets;
        using LSQRequest::_port;
        using LSQRequest::_requests;
        using LSQRequest::_res;
        using LSQRequest::_senderState;
        using LSQRequest::_size;
        using LSQRequest::_state;
        using LSQRequest::_taskId;
        using LSQRequest::flags;
        using LSQRequest::isLoad;
        using LSQRequest::isTranslationComplete;
        using LSQRequest::lsqUnit;
        using LSQRequest::numInTranslationFragments;
        using LSQRequest::numTranslatedFragments;
        using LSQRequest::request;
        using LSQRequest::sendFragmentToTranslation;
        using LSQRequest::setState;
        using LSQRequest::_numOutstandingPackets;

        uint32_t numFragments;
        uint32_t numOutstandingPackets;
        uint32_t numReceivedPackets;
        RequestPtr mainReq;
        PacketPtr _mainPacket;


      public:
        SplitDataRequest(LSQUnit* port, const DynInstPtr& inst, bool isLoad,
            const Addr& addr, const uint32_t& size, const uint32_t& flags_,
            PacketDataPtr data = nullptr, uint64_t* res = nullptr,
            const std::vector<bool>& writeByteEnable = std::vector<bool>()) :
            LSQRequest(port, inst, isLoad, addr, size, flags_, data, res,
                       writeByteEnable),
            numFragments(0),
            numOutstandingPackets(0),
            numReceivedPackets(0),
            mainReq(nullptr),
            _mainPacket(nullptr)
        {
            flags[(int)Flag::IsSplit] = true;
        }
        virtual ~SplitDataRequest() {
            if (mainReq) {
                delete mainReq;
                mainReq = nullptr;
            }
            if (_mainPacket) {
                delete _mainPacket;
                _mainPacket = nullptr;
            }
        }
        virtual void finish(const Fault &fault, RequestPtr req,
                ThreadContext* tc, BaseTLB::Mode mode);
        virtual bool recvTimingResp(PacketPtr pkt);
        virtual void initiateTranslation();
        virtual void sendPacketToCache();
        virtual void buildPackets();
        virtual RequestPtr mainRequest();
        virtual PacketPtr mainPacket();
    };

    /** SMT policy. */
    enum LSQPolicy {
        Dynamic,
        Partitioned,
        Threshold
    };

    /** Constructs an LSQ with the given parameters. */
    LSQ(O3CPU *cpu_ptr, IEW *iew_ptr, DerivO3CPUParams *params);
    ~LSQ() { }

    /** Returns the name of the LSQ. */
    std::string name() const;

    /** Registers statistics of each LSQ unit. */
    void regStats();

    /** Sets the pointer to the list of active threads. */
    void setActiveThreads(std::list<ThreadID> *at_ptr);

    /** Perform sanity checks after a drain. */
    void drainSanityCheck() const;
    /** Has the LSQ drained? */
    bool isDrained() const;
    /** Takes over execution from another CPU's thread. */
    void takeOverFrom();

    /** Number of entries needed for the given amount of threads.*/
    int entryAmount(ThreadID num_threads);

    /** Ticks the LSQ. */
    void tick();
    /** Ticks a specific LSQ Unit. */
    void tick(ThreadID tid)
    { thread.at(tid).tick(); }

    /** Inserts a load into the LSQ. */
    void insertLoad(const DynInstPtr &load_inst);
    /** Inserts a store into the LSQ. */
    void insertStore(const DynInstPtr &store_inst);

    /** Executes a load. */
    Fault executeLoad(const DynInstPtr &inst);

    /** Executes a store. */
    Fault executeStore(const DynInstPtr &inst);

    /**
     * Commits loads up until the given sequence number for a specific thread.
     */
    void commitLoads(InstSeqNum &youngest_inst, ThreadID tid)
    { thread.at(tid).commitLoads(youngest_inst); }

    /**
     * Commits stores up until the given sequence number for a specific thread.
     */
    void commitStores(InstSeqNum &youngest_inst, ThreadID tid)
    { thread.at(tid).commitStores(youngest_inst); }

    /**
     * Attempts to write back stores until all cache ports are used or the
     * interface becomes blocked.
     */
    void writebackStores();
    /** Same as above, but only for one thread. */
    void writebackStores(ThreadID tid);

    /**
     * Squash instructions from a thread until the specified sequence number.
     */
    void squash(const InstSeqNum &squashed_num, ThreadID tid)
    { thread.at(tid).squash(squashed_num); }

    /** Returns whether or not there was a memory ordering violation. */
    bool violation();
    /**
     * Returns whether or not there was a memory ordering violation for a
     * specific thread.
     */
    bool violation(ThreadID tid)
    { return thread.at(tid).violation(); }

    /** Gets the instruction that caused the memory ordering violation. */
    DynInstPtr getMemDepViolator(ThreadID tid)
    { return thread.at(tid).getMemDepViolator(); }

    /** Returns the head index of the load queue for a specific thread. */
    int getLoadHead(ThreadID tid)
    { return thread.at(tid).getLoadHead(); }

    /** Returns the sequence number of the head of the load queue. */
    InstSeqNum getLoadHeadSeqNum(ThreadID tid)
    {
        return thread.at(tid).getLoadHeadSeqNum();
    }

    /** Returns the head index of the store queue. */
    int getStoreHead(ThreadID tid)
    { return thread.at(tid).getStoreHead(); }

    /** Returns the sequence number of the head of the store queue. */
    InstSeqNum getStoreHeadSeqNum(ThreadID tid)
    {
        return thread.at(tid).getStoreHeadSeqNum();
    }

    /** Returns the number of instructions in all of the queues. */
    int getCount();
    /** Returns the number of instructions in the queues of one thread. */
    int getCount(ThreadID tid)
    { return thread.at(tid).getCount(); }

    /** Returns the total number of loads in the load queue. */
    int numLoads();
    /** Returns the total number of loads for a single thread. */
    int numLoads(ThreadID tid)
    { return thread.at(tid).numLoads(); }

    /** Returns the total number of stores in the store queue. */
    int numStores();
    /** Returns the total number of stores for a single thread. */
    int numStores(ThreadID tid)
    { return thread.at(tid).numStores(); }

    /** Returns the number of free load entries. */
    unsigned numFreeLoadEntries();

    /** Returns the number of free store entries. */
    unsigned numFreeStoreEntries();

    /** Returns the number of free entries for a specific thread. */
    unsigned numFreeEntries(ThreadID tid);

    /** Returns the number of free entries in the LQ for a specific thread. */
    unsigned numFreeLoadEntries(ThreadID tid);

    /** Returns the number of free entries in the SQ for a specific thread. */
    unsigned numFreeStoreEntries(ThreadID tid);

    /** Returns if the LSQ is full (either LQ or SQ is full). */
    bool isFull();
    /**
     * Returns if the LSQ is full for a specific thread (either LQ or SQ is
     * full).
     */
    bool isFull(ThreadID tid);

    /** Returns if the LSQ is empty (both LQ and SQ are empty). */
    bool isEmpty() const;
    /** Returns if all of the LQs are empty. */
    bool lqEmpty() const;
    /** Returns if all of the SQs are empty. */
    bool sqEmpty() const;

    /** Returns if any of the LQs are full. */
    bool lqFull();
    /** Returns if the LQ of a given thread is full. */
    bool lqFull(ThreadID tid);

    /** Returns if any of the SQs are full. */
    bool sqFull();
    /** Returns if the SQ of a given thread is full. */
    bool sqFull(ThreadID tid);

    /**
     * Returns if the LSQ is stalled due to a memory operation that must be
     * replayed.
     */
    bool isStalled();
    /**
     * Returns if the LSQ of a specific thread is stalled due to a memory
     * operation that must be replayed.
     */
    bool isStalled(ThreadID tid);

    /** Returns whether or not there are any stores to write back to memory. */
    bool hasStoresToWB();

    /** Returns whether or not a specific thread has any stores to write back
     * to memory.
     */
    bool hasStoresToWB(ThreadID tid)
    { return thread.at(tid).hasStoresToWB(); }

    /** Returns the number of stores a specific thread has to write back. */
    int numStoresToWB(ThreadID tid)
    { return thread.at(tid).numStoresToWB(); }

    /** Returns if the LSQ will write back to memory this cycle. */
    bool willWB();
    /** Returns if the LSQ of a specific thread will write back to memory this
     * cycle.
     */
    bool willWB(ThreadID tid)
    { return thread.at(tid).willWB(); }

    /** Debugging function to print out all instructions. */
    void dumpInsts() const;
    /** Debugging function to print out instructions from a specific thread. */
    void dumpInsts(ThreadID tid) const
    { thread.at(tid).dumpInsts(); }

    /** Executes a read operation, using the load specified at the load
     * index.
     */
    Fault read(LSQRequest* req, int load_idx);

    /** Executes a store operation, using the store specified at the store
     * index.
     */
    Fault write(LSQRequest* req, uint8_t *data, int store_idx);

    /**
     * Retry the previous send that failed.
     */
    void recvReqRetry();

    void completeDataAccess(PacketPtr pkt);
    /**
     * Handles writing back and completing the load or store that has
     * returned from memory.
     *
     * @param pkt Response packet from the memory sub-system
     */
    bool recvTimingResp(PacketPtr pkt);

    void recvTimingSnoopReq(PacketPtr pkt);

    Fault pushRequest(const DynInstPtr& inst, bool isLoad, uint8_t *data,
            unsigned int size, Addr addr, unsigned int flags, uint64_t *res,
            const std::vector<bool>& writeByteEnable);

    /** The CPU pointer. */
    O3CPU *cpu;

    /** The IEW stage pointer. */
    IEW *iewStage;

  protected:
    /** The LSQ policy for SMT mode. */
    LSQPolicy lsqPolicy;

    /** Transform a SMT sharing policy string into a LSQPolicy value. */
    static LSQPolicy readLSQPolicy(const std::string& policy) {
        std::string policy_ = policy;
        std::transform(policy_.begin(), policy_.end(), policy_.begin(),
                   (int(*)(int)) tolower);
        if (policy_ == "dynamic") {
            return Dynamic;
        } else if (policy_ == "partitioned") {
            return Partitioned;
        } else if (policy_ == "threshold") {
            return Threshold;
        }
        assert(0 && "Invalid LSQ Sharing Policy.Options Are:{Dynamic,"
                    "Partitioned, Threshold}");

        // Some compilers complain if there is no return.
        return Dynamic;
    }

    /** Auxiliary function to calculate per-thread max LSQ allocation limit.
     * Depending on a policy, number of entries and possibly number of threads
     * and threshold, this function calculates how many resources each thread
     * can occupy at most.
     */
    static uint32_t maxLSQAllocation(const LSQPolicy& pol, uint32_t entries,
            uint32_t numThreads, uint32_t SMTThreshold) {
        if (pol == Dynamic) {
            return entries;
        } else if (pol == Partitioned) {
            //@todo:make work if part_amt doesnt divide evenly.
            return entries / numThreads;
        } else if (pol == Threshold) {
            //Divide up by threshold amount
            //@todo: Should threads check the max and the total
            //amount of the LSQ
            return SMTThreshold;
        }
        return 0;
    }

    /** List of Active Threads in System. */
    std::list<ThreadID> *activeThreads;

    /** Total Size of LQ Entries. */
    unsigned LQEntries;
    /** Total Size of SQ Entries. */
    unsigned SQEntries;

    /** Max LQ Size - Used to Enforce Sharing Policies. */
    unsigned maxLQEntries;

    /** Max SQ Size - Used to Enforce Sharing Policies. */
    unsigned maxSQEntries;

    using LSQUnitAllocator = ArgAllocator<LSQUnit,
          FixedArg<uint32_t>,
          FixedArg<uint32_t>>;
    /** The LSQ units for individual threads. */
    std::vector<LSQUnit,LSQUnitAllocator> thread;

    /** Number of Threads. */
    ThreadID numThreads;
};

template <class Impl>
Fault
LSQ<Impl>::read(LSQRequest* req, int load_idx)
{
    ThreadID tid = cpu->contextToThread(req->request()->contextId());

    return thread.at(tid).read(req, load_idx);
}

template <class Impl>
Fault
LSQ<Impl>::write(LSQRequest* req, uint8_t *data, int store_idx)
{
    ThreadID tid = cpu->contextToThread(req->request()->contextId());

    return thread.at(tid).write(req, data, store_idx);
}

#endif // __CPU_O3_LSQ_HH__
