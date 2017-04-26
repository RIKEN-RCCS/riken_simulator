/*
 * Copyright (c) 2017 ARM Limited
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
 */

#ifndef __BASE_CIRCULARQUEUE_HH__
#define __BASE_CIRCULARQUEUE_HH__

#include <vector>

/** Circular queue.
 * Circular queue implemented on top of a standard vector. Instead of using
 * a sentinel entry, we use a boolean to distinguish the case in which the
 * queue is full or empty, because we are computer people, and we like
 * using powers of 2 for sizes, and that way modules are much faster.
 * Thus, a circular queue is represented by the 4-tuple
 *  (Capacity, IsEmpty?, Head, Tail, Round)
 * Where:
 *   - Capacity is the size of the underlying vector.
 *   - IsEmpty? can be T or F :).
 *   - Head is the index in the vector of the first element of the queue.
 *   - Tail is the index in the vector of the last element of the queue.
 *   - Round is the counter of how many times the Tail has wrapped around.
 * A queue is empty when
 *     Head == Tail + 1 mod Capacity && IsEmpty?.
 * Conversely, a queue if full when
 *     Head == Tail + 1 mod Capacity && !IsEmpty?.
 * Comments may show depictions of the underlying vector in the following
 * format: '|' delimit the 'cells' of the underlying vector. '-' represents
 * an element of the vector that is out-of-bounds of the circular queue,
 * while 'o' represents and element that is inside the bounds. The
 * characters '[' and ']' are added to mark the entries that hold the head
 * and tail of the circular queue respectively.
 * E.g.:
 *   - Empty queues of capacity 4:
 *     (4,T,1,0,_): |-]|[-|-|-|        (4,T,3,2): |-|-|-]|[-|
 *   - Full queues of capacity 4:
 *     (4,F,1,0,_): |o]|[o|o|o|        (4,F,3,2): |o|o|o]|[o|
 *   - Queues of capacity 4 with 2 elements:
 *     (4,F,0,1,_): |[o|o]|-|-|        (4,F,3,0): |o]|-|-|[o|
 *
 * The Round number is only relevant for checking validity of indices,
 * therefore it will be omitted or shown as '_'
 */
template <typename T>
class circularQueue : public std::vector<T>
{
  protected:
    using Base = std::vector<T>;
    using typename Base::reference;
    using typename Base::const_reference;
    uint32_t _size;
    uint32_t _head;
    uint32_t _tail;
    uint32_t _empty;

    /** Counter for how many times the tail wraps around.
     * Some parts of the code rely on getting the past the end iterator, and
     * expect to use it after inserting on the tail. To support this without
     * ambiguity, we need the round number to guarantee that it did not become
     * a before-the-beginning iterator.
     */
    int32_t _round;

    /** Iterator to the circular queue.
     * iterator implementation to provide the circular-ness that the
     * standard std::vector<T>::iterator does not implement.
     * Iterators to a queue are represented by a pair of a character and the
     * round counter. For the character, '*' denotes the element pointed to by
     * the iterator if it is valid. 'x' denotes the element pointed to by the
     * iterator when it is BTB or PTE.
     * E.g.:
     *   - Iterator to the head of a queue of capacity 4 with 2 elems.
     *     (4,F,0,1,R): |[(*,R)|o]|-|-|        (4,F,3,0): |o]|-|-|[(*,R)|
     *   - Iterator to the tail of a queue of capacity 4 with 2 elems.
     *     (4,F,0,1,R): |[o|(*,R)]|-|-|        (4,F,3,0): |(*,R)]|-|-|[o|
     *   - Iterator to the end of a queue of capacity 4 with 2 elems.
     *     (4,F,0,1,R): |[o|o]|(x,R)|-|        (4,F,3,0): |o]|(x,R)|-|[o|
     */
  public:
    struct iterator {
        circularQueue* _cq;
        size_t _idx;
        int32_t _round;
      public:
        iterator(circularQueue* cq, const uint32_t& idx, const int32_t& round)
            : _cq(cq), _idx(idx), _round(round) {}
        /** Iterator. */
        /** @{ */
        /** Traits */
        /** @{ */
        using value_type = T;
        using difference_type = std::ptrdiff_t;
        using reference = T&;
        using const_reference = const T&;
        using pointer = T*;
        using const_pointer = const T*;
        using iterator_category = std::random_access_iterator_tag;
        /** @} */
        /** CopyConstructible */
        /** @{ */
        iterator(const iterator& it)
            : _cq(it._cq), _idx(it._idx), _round(it._round) {}
        /** @} */
        /** Copy Assignable. */
        /** @{ */
        iterator&
        operator=(const iterator& it)
        {
            _cq = it._cq;
            _idx = it._idx;
            _round = it._round;
            return *this;
        }
        /** @} */
        /** Destructible.
         * Clean-up after ourselves.
         */
        /** @{ */
        ~iterator() { _cq = nullptr; _idx = 0; _round = 0; }
        /** @} */

      private:
      public:
        /** Test dereferenceability.
         * An iterator is dereferenceable if it is pointing to a non-null
         * circular queue, it is not the past-the-end iterator  and the
         * index is a valid index to that queue. PTE test is required to
         * distinguish between:
         * - An iterator to the first element of a full queue
         *    (4,F,1,0): |o]|[*|o|o|
         * - The end() iterator of a full queue
         *    (4,F,1,0): |o]|*[o|o|o|
         * Sometimes, though, users will get the PTE iterator and expect it
         * to work after growing the buffer on the tail, so we have to
         * check if the iterator is still PTE.
         */
        bool
        dereferenceable() const
        {
            return _cq != nullptr && _cq->isValidIdx(_idx, _round);
        }
        /** @} */

      public:
        /** InputIterator. */
        /** @{ */

        /** EqualityComparable. */
        /** @{ */
        /** Equality operator.
         * Two iterators must point to the same, possibly null, circular
         * queue and the same element on it, including PTE, to be equal.
         * In case the clients the the PTE iterator and then grow on the back
         * and expect it to work, we have to check if the PTE is still PTE
         */
        bool operator==(const iterator& that) const {
            return _cq == that._cq && _idx == that._idx &&
                _round == that._round;
        }
        /** @} */

        /** Inequality operator.
         * Conversely, Two iterators are different if they both point to
         * different circular queues or they point to different elements.
         */
        bool operator!=(const iterator& that) {
            return !(*this == that);
        }

      public:
        /** Dereference operator. */
        /** @{ */
        reference operator*()
        {
            /* this has to be dereferenceable. */
            assert (dereferenceable());
            return (*_cq)[_idx];
        }

        const_reference operator*() const
        {
            /* this has to be dereferenceable. */
            assert (dereferenceable());
            return (*_cq)[_idx];
        }
        /** @} */

        /** Dereference operator.
         * Rely on operator* to check for dereferenceability.
         */
        /** @{ */
        pointer operator->()
        {
            assert (dereferenceable());
            return &((*_cq)[_idx]);
        }

        const_pointer operator->() const
        {
            assert (dereferenceable());
            return &((*_cq)[_idx]);
        }
        /** @} */

        /** Pre-increment operator. */
        iterator& operator++()
        {
            /* this has to be dereferenceable. */
            assert (dereferenceable());
            _cq->increase(_idx);
            if (_idx == 0)
                ++_round;
            return *this;
        }

        /** Post-increment operator. */
        iterator
        operator++(int)
        {
            iterator t = *this;
            ++*this;
            return t;
        }
        /** @} */

        /** ForwardIterator
         * The multipass guarantee is provided by the reliance on _idx.
         */
        /** @{ */
        /** DefaultConstructible. */
        /** @{ */
        iterator() : _cq(nullptr), _idx(0) { }
        /** @} */
        /** Trait reference type
         * iterator satisfies OutputIterator, therefore reference
         * must be T& */
        static_assert(std::is_same<reference, T&>::value,
                "reference type is not assignable as required");
        /** @} */

        /** BidirectionalIterator requirements. */
        /** @{ */
      private:
        /** Test decrementability.
         * An iterator to a non-null circular queue is not-decrementable
         * if it is pointing to the head element, unless the queue is full
         * and we are talking about the past-the-end iterator. In that case,
         * the iterator round equals the cq round.
         */
        bool
        decrementable() const
        {
            return _cq && !(_idx == _cq->head() &&
                    (_cq->empty() || _round != _cq->_round));
        }
      public:
        /** Pre-decrement operator. */
        iterator& operator--()
        {
            /* this has to be decrementable. */
            assert(decrementable());
            if (_idx == 0)
                --_round;
            _cq->decrease(_idx);
            return *this;
        }
        /** Post-decrement operator. */
        iterator operator--(int ) { iterator t = *this; --*this; return t; }
        /** @} */

        /** RandomAccessIterator requirements.*/
        /** @{ */
        iterator& operator+=(const difference_type& t)
        {
            assert(_cq);
            _round += (t + _idx) / _cq->size();
            _idx = _cq->add(_idx, t);
            return *this;
        }

        iterator& operator-=(const difference_type& t)
        {
            assert(_cq);

            /* C does not do euclidean division, so we have to adjust */
            if (t >= 0)
                _round += (-t + _idx) / _cq->size();
            else
                _round += (-t + _idx - _cq->size() + 1) / _cq->size();

            _idx = _cq->sub(_idx, t);
            return *this;
        }

        /** Addition operator. */
        /** @{ */
        iterator operator+(const difference_type& t)
        {
            iterator ret(*this);
            return ret += t;
        }

        friend iterator operator+(const difference_type& t, iterator& it)
        {
            iterator ret = it;
            return ret += t;
        }
        /** @} */

        /** Substraction operator. */
        /** @{ */
        iterator operator-(const difference_type& t)
        {
            iterator ret(*this);
            return ret -= t;
        }

        friend iterator operator-(const difference_type& t, iterator& it)
        {
            iterator ret = it;
            return ret -= t;
        }
        /** @} */

        /** Difference operator.
         * that + ret == this
         */
        difference_type operator-(const iterator& that) {
            /* If a is already at the end, we can safely return 0. */
            return _cq->sub(this->_idx, that._idx);
        }

        /** Index operator.
         * The use of * tests for dereferenceability.
         */
        template<typename Idx>
        typename std::enable_if<std::is_integral<Idx>::value,reference>::type
        operator[](const Idx& index) { return *(*this + index); }

        /** Comparisons. */
        /** @{ */
        bool
        operator<(const iterator& that) const
        {
            assert(_cq && that._cq == _cq);
            return (this->_round < that._round) ||
                (_round == that._round && _idx < that._idx);
        }
        bool operator>=(const iterator& that) const { return !(*this < that); }
        bool operator<=(const iterator& that) const { return !(that < *this); }
        /** @} */
        /** @} */
        /** OutputIterator has no extra requirements.*/
        const size_t& idx() const { return _idx; }
    };

    /** Circular operations. */
    /** @{ */
    /** Modular addition for size a power of 2. */
    static uint32_t
    add(const uint32_t& op1, const uint32_t& op2, const uint32_t& size)
    {
        return (op1 + op2) & (size - 1);
    }

    /** General modular addition. */
    static uint32_t
    addM(const uint32_t& op1, const uint32_t& op2, const uint32_t& size)
    {
        return (op1 + op2) % size;
    }

    /** Modular substraction for size a power of 2. */
    static uint32_t
    sub(const uint32_t& op1, const uint32_t& op2, const uint32_t& size)
    {
        return (op1 - op2) & (size - 1);
    }

    /** General modular substraction. */
    static uint32_t
    subM(const uint32_t& op1, const uint32_t& op2, const uint32_t& size)
    {
        auto ret = (op1 - op2) % size;
        return ret >= 0 ? ret : ret + size;
    }

    template <typename NumT>
    static int
    increase(NumT& v, const uint32_t& size)
    {
        static_assert(std::is_integral<NumT>::value,
                "Instantiating increase for non-integral type");
        if (++v == size) {
            v = 0;
            return 1;
        }
        return 0;
    }

    template <typename NumT>
    static int
    increase(NumT& v, size_t delta, const uint32_t& size)
    {
        static_assert(std::is_integral<NumT>::value,
                "Instantiating increase for non-integral type");
        int w = (v + delta) / size;
        v = addM(v, delta, size);
        return w;
    }

    template <typename NumT>
    static void
    decrease(NumT& v, const uint32_t& size)
    {
        static_assert(std::is_integral<NumT>::value,
                "Instantiating decrease for non-integral type");
        v = (v ? v : size) - 1;
    }
    /** @} */

  public:
    explicit circularQueue(uint32_t size)
        : _size(size), _head(1), _tail(0), _empty(true), _round(0)
    {
        Base::resize(size);
    }
    /** Test if the index is in the range of valid elements. */
    bool isValidIdx(const size_t& idx) const {
        /* An index is invalid if:
         *   - The queue is empty.
         *   (6,T,3,2): |-|-|-]|[-|-|*|
         *   - head is small than tail and:
         *       - It is greater than both head and tail.
         *       (6,F,1,3): |-|[o|o|o]|-|*|
         *       - It is less than both head and tail.
         *       (6,F,1,3): |*|[o|o|o]|-|-|
         *   - It is greater than the tail and not than the head.
         *   (6,F,4,1): |o|o]|-|*|[o|o|
         */
        return !(_empty || (
            (_head < _tail) && (
                (_head < idx && _tail < idx) ||
                (_head > idx && _tail > idx)
            )) || (_tail < idx && idx < _head));
    }

    /** Test if the index is in the range of valid elements.
     * The round counter is used to disambiguate aliasing.
     */
    bool isValidIdx(const size_t& idx, const int32_t& round) const {
        /* An index is valid if:
         *   (6,T,3,2,R): |-|-|-]|[-|-|*|
         *   - The queue is not empty.
         *      - round == R and
         *          - index <= tail (if index > tail, that would be PTE)
         *          - Either:
         *             - head <= index
         *               (6,F,1,3,R): |-|[o|(*,r)|o]|-|-|
         *             - head > tail
         *               (6,F,5,3,R): |o|o|(*,r)|o]|-|[o|
         *            The remaining case means the the iterator is BTB:
         *               (6,F,3,4,R): |-|-|(*,r)|[o|o]|-|
         *      - round + 1 == R and:
         *          - index > tail. If index <= tail, that would be BTB:
         *               (6,F,2,3,r):   | -|- |[(*,r)|o]|-|-|  => ... =>
         *               (6,F,0,1,r+1): |[o|o]| (x,r)|- |-|-|  => ... =>
         *               (6,F,0,3,r+1): |[o|o | (x,r)|o]|-|-|
         *          - index >= head. If index < head, that would be BTB:
         *               (6,F,5,2,R): |o|o]|-|-|(*,r)|[o|
         *          - head > tail. If head <= tail, that would be BTB:
         *               (6,F,3,4,R): |[o|o]|(*,r)|-|-|-|
         *      Other values of the round meand that the index is PTE or BTB
         */
        return (!_empty && (
                    (round == _round && idx <= _tail && (
                        _head <= idx || _head > _tail)) ||
                    (round + 1 == _round &&
                     idx > _tail &&
                     idx >= _head &&
                     _head > _tail)
                    ));
    }

    void clear();
    reference front() { return (*this)[_head]; }
    reference back() { return (*this)[_tail]; }
    const uint32_t& size() const { return _size; }
    const uint32_t& head() const { return _head; }
    const uint32_t& tail() const { return _tail; }

    template <typename NumT>
    void increase (NumT& v) const { increase(v, _size); }
    template <typename NumT>
    void decrease (NumT& v) const { decrease(v, _size); }

    uint32_t add(const uint32_t& s1, const uint32_t s2) const {
        return _size & (_size - 1)
                    ? addM(s1, s2, _size)
                    : add(s1, s2, _size);
    }

    uint32_t sub(const uint32_t& s1, const uint32_t s2) const {
        return _size & (_size - 1)
                    ? subM(s1, s2, _size)
                    : sub(s1, s2, _size);
    }

    /** Circularly increase the head pointer.
     * Check that the queue is not empty. And set it to empty if it
     * had only one value prior to insertion.
     */
    void pop_front(size_t n = 1)
    {
#if 0
        int new_head = _head;
        int wraps = increase(new_head, n, _size)
        assert (!_empty);
        _empty = _head == _tail;
        increase(_head, _size);
#else
        if (n == 0) return;
        auto hIt = begin();
        hIt += n;
        assert(hIt <= end());
        _empty = hIt == end();
        _head = hIt._idx;
#endif
    }

    /** Circularly decrease the tail pointer. */
    void pop_back()
    {
        assert (!_empty);
        _empty = _head == _tail;
        if (_tail == 0)
            --_round;
        decrease(_tail, _size);
    }

    /** Increase the size on the tail.
     * Check for wrap-arounds to update the round counter.
     * */
    void
    advance_tail(int n = 1)
    {
#if 0
        int new_tail = _tail;
        int wraps = increase(new_tail, n, _size);
        assert(wraps == 0 &&
                (_tail >= _head && new_tail < head

        _empty = !n && _empty;
#else
        increase(_tail, _size);
        if (_tail == 0)
            ++_round;
        _empty = false;
#endif
    }

    /** Is the queue empty? */
    bool empty() { return _empty; }

    /** Is the queue full?
     * A queue is full if the head is the 0^{th} element and the tail is
     * the (size-1)^{th} element, or if the head is the n^{th} element and
     * the tail the (n-1)^{th} element.
     */
    bool full() {
        return !_empty &&
            (_tail + 1 == _head || (_tail + 1 == _size && _head == 0));
    }
    /** Iterators. */
    /** @{ */
    /*
     * (4,F,2,0,r): | o]| -|[o|o | -> (1, r-1)
     * (4,F,0,3,r): |[o | o|o |o]| -> (0, r)
     * (4,T,0,3,r): |[- | -|- |-]| -> (0, r+1)
     * (4,T,1,0,r): | -]|[-|- |- | -> (1, r)
     */
    iterator begin()
    {
        if (_empty)
            return end();
        else if (_head > _tail)
            return iterator(this, _head, _round - 1);
        else
            return iterator(this, _head, _round);
    }
    /* TODO: This should return a const_iterator. */
    iterator begin() const
    {
        if (_empty)
            return end();
        else if (_head > _tail)
            return iterator(const_cast<circularQueue*>(this), _head,
                    _round - 1);
        else
            return iterator(const_cast<circularQueue*>(this), _head,
                    _round - 1);
    }

    iterator end() {
        auto poi = add(_tail, 1);
        auto round = _round;
        if (poi == 0)
            ++round;
        return iterator(this, poi, round);
    }
    iterator end() const {
        auto poi = add(_tail, 1);
        auto round = _round;
        if (poi == 0)
            ++round;
        return iterator(const_cast<circularQueue*>(this), poi, round);
    }
    /** @} */

    /** Return an iterator to an index in the vector.
     * This poses the problem of round determination. By convention, the round
     * is picked so that isValidIndex(idx, round) is true. If that is not
     * possible, then the round value is _round, unless _tail is at the end of
     * the storage, in which case is _round + 1
     */
    iterator getIterator(size_t idx) {
        assert(isValidIdx(idx) || add(_tail, 1) == idx);
        if (_empty && _head == idx)
            return end();
        uint32_t round = _round;
        if (idx > _tail) {
            if (idx >= _head && _head > _tail && !_empty) {
                round -= 1;
            }
        } else if (idx < _head && _tail + 1 == _size) {
            round += 1;
        }
        return iterator(this, idx, round);
    }

    /** Return an iterator to an index in the vector.
     * Same as the previous except that in the case in which the queue is full
     * and idx == head, in which case the past-the-end iterator is returned.
     */
    iterator getBoundaryIterator(size_t idx) {
        assert(isValidIdx(idx) || add(_tail, 1) == idx);
        if (_head == idx && (_empty || (add(_tail, 1) == _head)))
            return end();

        uint32_t round = _round;
        if (idx > _tail) {
            if (idx >= _head && _head > _tail && !_empty) {
                round -= 1;
            }
        } else if (idx < _head && _tail + 1 == _size) {
            round += 1;
        }
        return iterator(this, idx, round);
    }
};

#endif /* __BASE_CIRCULARQUEUE_HH__ */


