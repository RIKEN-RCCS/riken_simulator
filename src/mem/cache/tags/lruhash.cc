#include "mem/cache/tags/lruhash.hh"

#include "debug/CacheRepl.hh"

LRUhash::LRUhash(const Params *p):  LRU(p)
{ DPRINTF(CacheRepl, "LRUHash Init");}

LRUhash*
LRUhashParams::create()
{
    return new LRUhash(this);
}
