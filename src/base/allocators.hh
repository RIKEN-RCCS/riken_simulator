/*
 * Copyright (c) 2017 ARM Limited
 * All rights reserved
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
 * Authors: Rekai Gonzalez-Alberquilla
 *
 */

#ifndef __BASE_ALLOCATORS_HH__
#define __BASE_ALLOCATORS_HH__

#include <memory>

/** Allocator class with arguments.
 * As the current implementation of the Stats does not allow to copy-construct
 * stats, objects with stats cannot be constructed. This imposes a limitation
 * to the use of stl containers to hold such objects. The way to work around
 * that is using a custom allocator that will construct each of the allocated
 * objects with the particulars parameters specified in the definition of the
 * allocator.
 *
 * E.g.: If we want to have an allocator for the LSQUnit that receives the LQ
 * and SQ sizes, so when building the O3 model LSQ, we can have the LSQUnits
 * be a std::vector<LSQUnit> instead of a LSQUnit*, we define:
 *  using LSQUnitAllocator = ArgAllocator<LSQUnit, uint32_t, uint32_t>
 *  std::vector<LSQUnit, LSQUnitAllocator> threads;
 *
 * And later, in the constructor we do:
 * LSQ(LSQParams* params) :
 *      ..., threads(params->numThreads,
 *                   LSQUnitAllocator(params->LQEntries, params->SQEntries)),
 *      ...
 *  {}
 *
 * This way the LSQUnits are build in-place with the appropriate parameters.
 *
 */
template <typename T, typename ... Args>
struct ArgAllocator;

template <typename T>
struct ArgAllocator<T> : std::allocator<T>
{
    /** Convenience alias to the parent class. */
    using Base = std::allocator<T>;

    /** Traits. */
    /** @{ */
    using value_type = T;
    using pointer = T*;
    using const_pointer = const T*;
    /** @} */

    /** Rebinding. */
    template <typename U>
    struct rebind { using other = ArgAllocator<U>; };

    /** Use the default memory allocation/deallocation functions. */
    /** @{ */
    using Base::allocate;
    using Base::deallocate;
    /** @} */

    /** Equality operator. */
    bool operator==(const ArgAllocator& that) { return true; }

    /** Inequality operator. */
    bool operator!=(const ArgAllocator& that) { return false; }

    /** Custom T constructor.
     * Ignore whatever arguments we may get, and just call with the args the
     * allocator was constructed with. This is required because the stl
     * implementation may be tempted to pass a T& in case we feel like
     * copy-constructing.
     */
    template <typename ... Args>
    void construct(T* p, Args&& ... aas) { helper(p); }

    /** Utility function to pass the args to the constructor of T. */
    template <typename ... Args>
    void helper(T* p, Args ... args) { ::new ((void*)p) T(args...); }
};

template <typename T, typename A, typename ... As>
struct ArgAllocator<T, A, As...> : ArgAllocator<T, As...>
{
    /** Convenience alias to the parent class. */
    using Base = ArgAllocator<T, As...>;

    /** Argument value. */
    A _arg;

    /** Traits. */
    /** @{ */
    using Base::value_type;
    using Base::pointer;
    using Base::const_pointer;
    /** @} */

    /** Rebinding. */
    template <typename U>
    struct rebind { using other = ArgAllocator<U, A, As...>; };

    /** Use the base memory allocation/deallocation functions. */
    /** @{ */
    using Base::allocate;
    using Base::deallocate;
    /** @} */

    /** Constructor.
     * Store the first arg, and pass on the rest to the parent.
     */
    ArgAllocator(const typename A::value_type& arg,
            const typename As::value_type ... args)
        : Base(args...), _arg(arg) { }

    /** Equality operator. */
    bool operator==(const ArgAllocator& that) {
        return _arg == that._arg && Base::operator==(that);
    }

    /** Inequality operator. */
    bool operator!=(const ArgAllocator& that) {
        return _arg != that._arg || Base::operator==(that);
    }

    /** Custom T constructor.
     * Ignore whatever arguments we may get, and just call with the args the
     * allocator was constructed with. This is required because the stl
     * implementation may be tempted to pass a T& in case we feel like
     * copy-constructing.
     */
    template <typename ... Args>
    void construct(T* p, Args&& ... aas) { helper(p); }

    /** Utility function to pass the args to the constructor of T. */
    template <typename ... Args>
    void helper(T* p, Args ... args) {
        Base::helper(p, args..., _arg.value());
    }
};

/** To provide more generality, we use two wrappers for arguments: FixedArg<T>
 * and IndexedArg<T>. FixedArg<T> is constructed with a T value that will be
 * used in every call to the construct function. IndexedArg<T> is constructed
 * with an initial value. In each call to construct, the current value is used
 * and post-incremented, allowing the creation of objects with consecutive ids.
 */
/** @{ */
/** Fixed argument wrapper.
 * This struct takes a fixed argument to be passed to each invocation of the
 * target type constructor performed by an ArgAllocator::construct invocation
 */
template <typename T>
struct FixedArg
{
    using value_type = T;
    T _arg;
    FixedArg(const T& arg) : _arg(arg) {}
    T value() { return _arg; }
};

/** Fixed argument wrapper.
 * This struct takes a an initial value for an argument to be passed to each
 * invocation of the target type constructor performed by an
 * ArgAllocator::construct invocation, and that is incremented afterwards.
 */
template <typename T>
struct IndexedArg
{
    using value_type = T;
    T _arg;
    IndexedArg(const T& arg) : _arg(arg) {}
    T value() { return _arg++; }
};
/** @} */

#endif /* __BASE_ALLOCATORS_HH__ */
