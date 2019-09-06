#ifndef MEM_CACHE_TAGS_LRUHASH_HH__
#define MEM_CACHE_TAGS_LRUHASH_HH__
#include "mem/cache/tags/lru.hh"
#include "params/LRUhash.hh"

class LRUhash: public LRU
{
public:
    LRUhash(const Params *p);
    ~LRUhash(){}
    Addr extractTag(Addr addr) const override{
        return blkAlign(addr);
    }
    int extractSet(Addr addr) const override{
            uint64_t rv = addr>>setShift;
            uint64_t hashmask;
            hashmask = (addr>>21)&7;
            hashmask ^= (addr>>25)&7;
            hashmask ^= (addr>>29)&7;
            hashmask ^= (addr>>30)&7;
            hashmask ^= (addr>>34)&7;
            rv ^= (hashmask<<8);
            rv &= setMask;
            return (int)rv;
    };
    Addr regenerateBlkAddr(const CacheBlk *blk) const override{
        return blk->tag;
    }
};
#endif
