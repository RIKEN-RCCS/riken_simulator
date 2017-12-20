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
 * Authors: Giacomo Gabrielli
 */

#ifndef __ARCH_ARM_INSTS_SVE_HH__
#define __ARCH_ARM_INSTS_SVE_HH__

#include "arch/arm/insts/static_inst.hh"

namespace ArmISA {

enum class SvePredType {
    NONE,
    MERGE,
    ZERO,
    SELECT
};

/// Returns the specifier for the predication type `pt` as a string.
const char* svePredTypeToStr(SvePredType pt);

/// Index generation instruction, immediate operands
class SveIndexIIOp : public ArmStaticInst {
  protected:
    IntRegIndex dest;
    int8_t imm1;
    int8_t imm2;

    SveIndexIIOp(const char* mnem, ExtMachInst _machInst,
            OpClass __opClass, IntRegIndex _dest,
            int8_t _imm1, int8_t _imm2) :
        ArmStaticInst(mnem, _machInst, __opClass),
        dest(_dest), imm1(_imm1), imm2(_imm2)
    {}
    std::string generateDisassembly(Addr pc, const SymbolTable *symtab) const;
};

class SveIndexIROp : public ArmStaticInst {
  protected:
    IntRegIndex dest;
    int8_t imm1;
    IntRegIndex op2;

    SveIndexIROp(const char* mnem, ExtMachInst _machInst,
            OpClass __opClass, IntRegIndex _dest,
            int8_t _imm1, IntRegIndex _op2) :
        ArmStaticInst(mnem, _machInst, __opClass),
          dest(_dest), imm1(_imm1), op2(_op2)
    {}
    std::string generateDisassembly(Addr pc, const SymbolTable *symtab) const;
};

class SveIndexRIOp : public ArmStaticInst {
  protected:
    IntRegIndex dest;
    IntRegIndex op1;
    int8_t imm2;

    SveIndexRIOp(const char* mnem, ExtMachInst _machInst,
            OpClass __opClass, IntRegIndex _dest,
            IntRegIndex _op1, int8_t _imm2) :
        ArmStaticInst(mnem, _machInst, __opClass),
        dest(_dest), op1(_op1), imm2(_imm2)
    {}
    std::string generateDisassembly(Addr pc, const SymbolTable *symtab) const;
};

class SveIndexRROp : public ArmStaticInst {
  protected:
    IntRegIndex dest;
    IntRegIndex op1;
    IntRegIndex op2;

    SveIndexRROp(const char* mnem, ExtMachInst _machInst,
            OpClass __opClass, IntRegIndex _dest,
            IntRegIndex _op1, IntRegIndex _op2) :
        ArmStaticInst(mnem, _machInst, __opClass),
        dest(_dest), op1(_op1), op2(_op2)
    {}
    std::string generateDisassembly(Addr pc, const SymbolTable *symtab) const;
};

// Predicate count SVE instruction.
class SvePredCountOp : public ArmStaticInst {
  protected:
    IntRegIndex dest;
    IntRegIndex gp;
    bool srcIs32b;
    bool destIsVec;

    SvePredCountOp(const char* mnem, ExtMachInst _machInst,
            OpClass __opClass, IntRegIndex _dest, IntRegIndex _gp,
            bool _srcIs32b = false, bool _destIsVec = false) :
        ArmStaticInst(mnem, _machInst, __opClass),
        dest(_dest), gp(_gp),
        srcIs32b(_srcIs32b), destIsVec(_destIsVec)
    {}
    std::string generateDisassembly(Addr pc, const SymbolTable *symtab) const;
};

// Predicate count SVE instruction (predicated).
class SvePredCountPredOp : public ArmStaticInst {
  protected:
    IntRegIndex dest;
    IntRegIndex op1;
    IntRegIndex gp;

    SvePredCountPredOp(const char* mnem, ExtMachInst _machInst,
            OpClass __opClass, IntRegIndex _dest, IntRegIndex _op1,
            IntRegIndex _gp) :
        ArmStaticInst(mnem, _machInst, __opClass),
        dest(_dest), op1(_op1), gp(_gp)
    {}
    std::string generateDisassembly(Addr pc, const SymbolTable *symtab) const;
};

/// While predicate generation SVE instruction.
class SveWhileOp : public ArmStaticInst {
  protected:
    IntRegIndex dest, op1, op2;
    bool srcIs32b;

    SveWhileOp(const char* mnem, ExtMachInst _machInst, OpClass __opClass,
               IntRegIndex _dest, IntRegIndex _op1, IntRegIndex _op2,
               bool _srcIs32b) :
        ArmStaticInst(mnem, _machInst, __opClass),
        dest(_dest), op1(_op1), op2(_op2), srcIs32b(_srcIs32b)
    {}
    std::string generateDisassembly(Addr pc, const SymbolTable *symtab) const;
};

/// Compare and terminate loop SVE instruction.
class SveCompTermOp : public ArmStaticInst {
  protected:
    IntRegIndex op1, op2;

    SveCompTermOp(const char* mnem, ExtMachInst _machInst, OpClass __opClass,
                  IntRegIndex _op1, IntRegIndex _op2) :
        ArmStaticInst(mnem, _machInst, __opClass),
        op1(_op1), op2(_op2)
    {}
    std::string generateDisassembly(Addr pc, const SymbolTable *symtab) const;
};

/// Unary, constructive, predicated (merging) SVE instruction.
class SveUnaryPredOp : public ArmStaticInst {
  protected:
    IntRegIndex dest, op1, gp;

    SveUnaryPredOp(const char* mnem, ExtMachInst _machInst, OpClass __opClass,
                   IntRegIndex _dest, IntRegIndex _op1, IntRegIndex _gp) :
        ArmStaticInst(mnem, _machInst, __opClass),
        dest(_dest), op1(_op1), gp(_gp)
    {}

    std::string generateDisassembly(Addr pc, const SymbolTable *symtab) const;
};

/// Unary, constructive, unpredicated SVE instruction.
class SveUnaryUnpredOp : public ArmStaticInst {
  protected:
    IntRegIndex dest, op1;

    SveUnaryUnpredOp(const char* mnem, ExtMachInst _machInst,
                     OpClass __opClass, IntRegIndex _dest, IntRegIndex _op1) :
        ArmStaticInst(mnem, _machInst, __opClass),
        dest(_dest), op1(_op1)
    {}

    std::string generateDisassembly(Addr pc, const SymbolTable *symtab) const;
};

/// Unary with wide immediate, constructive, unpredicated SVE instruction.
class SveUnaryWideImmUnpredOp : public ArmStaticInst {
  protected:
    IntRegIndex dest;
    uint64_t imm;

    SveUnaryWideImmUnpredOp(const char* mnem, ExtMachInst _machInst,
                            OpClass __opClass, IntRegIndex _dest,
                            uint64_t _imm) :
        ArmStaticInst(mnem, _machInst, __opClass),
        dest(_dest), imm(_imm)
    {}

    std::string generateDisassembly(Addr pc, const SymbolTable *symtab) const;
};

/// Unary with wide immediate, constructive, predicated SVE instruction.
class SveUnaryWideImmPredOp : public ArmStaticInst {
  protected:
    IntRegIndex dest;
    uint64_t imm;
    IntRegIndex gp;

    bool isMerging;

    SveUnaryWideImmPredOp(const char* mnem, ExtMachInst _machInst,
                          OpClass __opClass, IntRegIndex _dest,
                          uint64_t _imm, IntRegIndex _gp, bool _isMerging) :
        ArmStaticInst(mnem, _machInst, __opClass),
        dest(_dest), imm(_imm), gp(_gp), isMerging(_isMerging)
    {}

    std::string generateDisassembly(Addr pc, const SymbolTable *symtab) const;
};

/// Binary with immediate, destructive, unpredicated SVE instruction.
class SveBinImmUnpredConstrOp : public ArmStaticInst {
  protected:
    IntRegIndex dest, op1;
    uint64_t imm;

    SveBinImmUnpredConstrOp(const char* mnem, ExtMachInst _machInst,
            OpClass __opClass, IntRegIndex _dest, IntRegIndex _op1,
            uint64_t _imm) :
        ArmStaticInst(mnem, _machInst, __opClass),
        dest(_dest), op1(_op1), imm(_imm)
    {}

    std::string generateDisassembly(Addr pc, const SymbolTable *symtab) const;
};

/// Binary with immediate, destructive, predicated (merging) SVE instruction.
class SveBinImmPredOp : public ArmStaticInst {
  protected:
    IntRegIndex dest, gp;
    uint64_t imm;

    SveBinImmPredOp(const char* mnem, ExtMachInst _machInst, OpClass __opClass,
                    IntRegIndex _dest, uint64_t _imm, IntRegIndex _gp) :
        ArmStaticInst(mnem, _machInst, __opClass),
        dest(_dest), gp(_gp), imm(_imm)
    {}

    std::string generateDisassembly(Addr pc, const SymbolTable *symtab) const;
};

/// Binary with wide immediate, destructive, unpredicated SVE instruction.
class SveBinWideImmUnpredOp : public ArmStaticInst {
  protected:
    IntRegIndex dest;
    uint64_t imm;

    SveBinWideImmUnpredOp(const char* mnem, ExtMachInst _machInst,
                          OpClass __opClass, IntRegIndex _dest,
                          uint64_t _imm) :
        ArmStaticInst(mnem, _machInst, __opClass),
        dest(_dest), imm(_imm)
    {}

    std::string generateDisassembly(Addr pc, const SymbolTable *symtab) const;
};

/// Binary, destructive, predicated (merging) SVE instruction.
class SveBinDestrPredOp : public ArmStaticInst {
  protected:
    IntRegIndex dest, op2, gp;

    SveBinDestrPredOp(const char* mnem, ExtMachInst _machInst,
                      OpClass __opClass, IntRegIndex _dest, IntRegIndex _op2,
                      IntRegIndex _gp) :
        ArmStaticInst(mnem, _machInst, __opClass),
        dest(_dest), op2(_op2), gp(_gp)
    {}

    std::string generateDisassembly(Addr pc, const SymbolTable *symtab) const;
};

/// Binary, constructive, predicated SVE instruction.
class SveBinConstrPredOp : public ArmStaticInst {
  protected:
    IntRegIndex dest, op1, op2, gp;
    SvePredType predType;

    SveBinConstrPredOp(const char* mnem, ExtMachInst _machInst,
                       OpClass __opClass, IntRegIndex _dest, IntRegIndex _op1,
                       IntRegIndex _op2, IntRegIndex _gp,
                       SvePredType _predType) :
        ArmStaticInst(mnem, _machInst, __opClass),
        dest(_dest), op1(_op1), op2(_op2), gp(_gp), predType(_predType)
    {}

    std::string generateDisassembly(Addr pc, const SymbolTable *symtab) const;
};

/// Binary, unpredicated SVE instruction
class SveBinUnpredOp : public ArmStaticInst {
  protected:
    IntRegIndex dest, op1, op2;

    SveBinUnpredOp(const char* mnem, ExtMachInst _machInst, OpClass __opClass,
                   IntRegIndex _dest, IntRegIndex _op1, IntRegIndex _op2) :
        ArmStaticInst(mnem, _machInst, __opClass),
        dest(_dest), op1(_op1), op2(_op2)
    {}

    std::string generateDisassembly(Addr pc, const SymbolTable *symtab) const;
};

/// Predicate logical instruction.
class SvePredLogicalOp : public ArmStaticInst {
  protected:
    IntRegIndex dest, op1, op2, gp;
    bool isSel;

    SvePredLogicalOp(const char* mnem, ExtMachInst _machInst,
                     OpClass __opClass, IntRegIndex _dest, IntRegIndex _op1,
                     IntRegIndex _op2, IntRegIndex _gp, bool _isSel = false) :
        ArmStaticInst(mnem, _machInst, __opClass),
        dest(_dest), op1(_op1), op2(_op2), gp(_gp), isSel(_isSel)
    {}

    std::string generateDisassembly(Addr pc, const SymbolTable *symtab) const;
};

/// Predicate binary permute instruction.
class SvePredBinPermOp : public ArmStaticInst {
  protected:
    IntRegIndex dest, op1, op2;

    SvePredBinPermOp(const char* mnem, ExtMachInst _machInst,
                     OpClass __opClass, IntRegIndex _dest, IntRegIndex _op1,
                     IntRegIndex _op2) :
        ArmStaticInst(mnem, _machInst, __opClass),
        dest(_dest), op1(_op1), op2(_op2)
    {}

    std::string generateDisassembly(Addr pc, const SymbolTable *symtab) const;
};

/// SVE compare instructions, predicated (zeroing).
class SveCmpOp : public ArmStaticInst {
  protected:
    IntRegIndex dest, gp, op1, op2;

    SveCmpOp(const char* mnem, ExtMachInst _machInst, OpClass __opClass,
             IntRegIndex _dest, IntRegIndex _op1, IntRegIndex _op2,
             IntRegIndex _gp) :
        ArmStaticInst(mnem, _machInst, __opClass),
        dest(_dest), gp(_gp), op1(_op1), op2(_op2)
    {}

    std::string generateDisassembly(Addr pc, const SymbolTable *symtab) const;
};

/// SVE compare-with-immediate instructions, predicated (zeroing).
class SveCmpImmOp : public ArmStaticInst {
  protected:
    IntRegIndex dest, gp, op1;
    uint64_t imm;

    SveCmpImmOp(const char* mnem, ExtMachInst _machInst, OpClass __opClass,
                IntRegIndex _dest, IntRegIndex _op1, uint64_t _imm,
                IntRegIndex _gp) :
        ArmStaticInst(mnem, _machInst, __opClass),
        dest(_dest), gp(_gp), op1(_op1), imm(_imm)
    {}

    std::string generateDisassembly(Addr pc, const SymbolTable *symtab) const;
};

/// Ternary, destructive, predicated (merging) SVE instruction.
class SveTerPredOp : public ArmStaticInst {
  protected:
    IntRegIndex dest, op1, op2, gp;

    SveTerPredOp(const char* mnem, ExtMachInst _machInst, OpClass __opClass,
                 IntRegIndex _dest, IntRegIndex _op1, IntRegIndex _op2,
                 IntRegIndex _gp) :
        ArmStaticInst(mnem, _machInst, __opClass),
        dest(_dest), op1(_op1), op2(_op2), gp(_gp)
    {}

    std::string generateDisassembly(Addr pc, const SymbolTable *symtab) const;
};

/// Ternary with immediate, destructive, unpredicated SVE instruction.
class SveTerImmUnpredOp : public ArmStaticInst {
  protected:
    IntRegIndex dest, op2;
    uint64_t imm;

    SveTerImmUnpredOp(const char* mnem, ExtMachInst _machInst,
                      OpClass __opClass, IntRegIndex _dest, IntRegIndex _op2,
                      uint64_t _imm) :
        ArmStaticInst(mnem, _machInst, __opClass),
        dest(_dest), op2(_op2), imm(_imm)
    {}

    std::string generateDisassembly(Addr pc, const SymbolTable *symtab) const;
};

/// SVE reductions.
class SveReducOp : public ArmStaticInst {
  protected:
    IntRegIndex dest, op1, gp;

    SveReducOp(const char* mnem, ExtMachInst _machInst, OpClass __opClass,
               IntRegIndex _dest, IntRegIndex _op1, IntRegIndex _gp) :
        ArmStaticInst(mnem, _machInst, __opClass),
        dest(_dest), op1(_op1), gp(_gp)
    {}

    std::string generateDisassembly(Addr pc, const SymbolTable *symtab) const;
};

/// PTRUE, PTRUES.
class SvePtrueOp : public ArmStaticInst {
  protected:
    IntRegIndex dest;
    uint8_t imm;

    SvePtrueOp(const char* mnem, ExtMachInst _machInst,
               OpClass __opClass, IntRegIndex _dest, uint8_t _imm) :
        ArmStaticInst(mnem, _machInst, __opClass),
        dest(_dest), imm(_imm)
    {}

    std::string generateDisassembly(Addr pc, const SymbolTable *symtab) const;
};

/// Integer compare SVE instruction.
class SveIntCmpOp : public ArmStaticInst {
  protected:
    IntRegIndex dest;
    IntRegIndex op1, op2;
    IntRegIndex gp;
    bool op2IsWide;

    SveIntCmpOp(const char* mnem, ExtMachInst _machInst, OpClass __opClass,
                  IntRegIndex _dest, IntRegIndex _op1, IntRegIndex _op2,
                  IntRegIndex _gp, bool _op2IsWide = false) :
        ArmStaticInst(mnem, _machInst, __opClass),
        dest(_dest), op1(_op1), op2(_op2), gp(_gp), op2IsWide(_op2IsWide)
    {}
    std::string generateDisassembly(Addr pc, const SymbolTable *symtab) const;
};

/// Integer compare with immediate SVE instruction.
class SveIntCmpImmOp : public ArmStaticInst {
  protected:
    IntRegIndex dest;
    IntRegIndex op1;
    int64_t imm;
    IntRegIndex gp;

    SveIntCmpImmOp(const char* mnem, ExtMachInst _machInst, OpClass __opClass,
                  IntRegIndex _dest, IntRegIndex _op1, int64_t _imm,
                  IntRegIndex _gp) :
        ArmStaticInst(mnem, _machInst, __opClass),
        dest(_dest), op1(_op1), imm(_imm), gp(_gp)
    {}
    std::string generateDisassembly(Addr pc, const SymbolTable *symtab) const;
};

/// ADR.
class SveAdrOp : public ArmStaticInst {
  public:
   enum SveAdrOffsetFormat {
       SveAdrOffsetPacked,
       SveAdrOffsetUnpackedSigned,
       SveAdrOffsetUnpackedUnsigned
   };

  protected:
    IntRegIndex dest, op1, op2;
    uint8_t mult;
    SveAdrOffsetFormat offsetFormat;

    SveAdrOp(const char* mnem, ExtMachInst _machInst,
             OpClass __opClass, IntRegIndex _dest, IntRegIndex _op1,
             IntRegIndex _op2, uint8_t _mult,
             SveAdrOffsetFormat _offsetFormat) :
        ArmStaticInst(mnem, _machInst, __opClass),
        dest(_dest), op1(_op1), op2(_op2), mult(_mult),
        offsetFormat(_offsetFormat)
    {}
    std::string generateDisassembly(Addr pc, const SymbolTable *symtab) const;
};

/// Element count SVE instruction.
class SveElemCountOp : public ArmStaticInst {
  protected:
    IntRegIndex dest;
    uint8_t pattern;
    uint8_t imm;
    bool dstIsVec;
    bool dstIs32b;
    uint8_t esize;

    SveElemCountOp(const char* mnem, ExtMachInst _machInst, OpClass __opClass,
                  IntRegIndex _dest, uint8_t _pattern, uint8_t _imm,
                  bool _dstIsVec, bool _dstIs32b) :
        ArmStaticInst(mnem, _machInst, __opClass),
        dest(_dest), pattern(_pattern), imm(_imm), dstIsVec(_dstIsVec),
        dstIs32b(_dstIs32b)
    {}
    std::string generateDisassembly(Addr pc, const SymbolTable *symtab) const;
};

/// Partition break SVE instruction.
class SvePartBrkOp : public ArmStaticInst {
  protected:
    IntRegIndex dest;
    IntRegIndex gp;
    IntRegIndex op1;
    bool isMerging;

    SvePartBrkOp(const char* mnem, ExtMachInst _machInst, OpClass __opClass,
                  IntRegIndex _dest, IntRegIndex _gp, IntRegIndex _op1,
                  bool _isMerging) :
        ArmStaticInst(mnem, _machInst, __opClass),
        dest(_dest), gp(_gp), op1(_op1), isMerging(_isMerging)
    {}
    std::string generateDisassembly(Addr pc, const SymbolTable *symtab) const;
};

/// Partition break with propagation SVE instruction.
class SvePartBrkPropOp : public ArmStaticInst {
  protected:
    IntRegIndex dest;
    IntRegIndex op1;
    IntRegIndex op2;
    IntRegIndex gp;

    SvePartBrkPropOp(const char* mnem, ExtMachInst _machInst,
                     OpClass __opClass, IntRegIndex _dest,
                     IntRegIndex _op1, IntRegIndex _op2, IntRegIndex _gp) :
        ArmStaticInst(mnem, _machInst, __opClass),
        dest(_dest), op1(_op1), op2(_op2), gp(_gp)
    {}
    std::string generateDisassembly(Addr pc, const SymbolTable *symtab) const;
};

/// Scalar element select SVE instruction.
class SveScalarSelectOp : public ArmStaticInst {
  protected:
    IntRegIndex dest;
    IntRegIndex op1;
    IntRegIndex gp;
    bool conditional;
    size_t scalar_width;

    SveScalarSelectOp(const char* mnem, ExtMachInst _machInst,
                      OpClass __opClass, IntRegIndex _dest,
                      IntRegIndex _op1, IntRegIndex _gp,
                      bool _conditional) :
        ArmStaticInst(mnem, _machInst, __opClass),
        dest(_dest), op1(_op1), gp(_gp), conditional(_conditional)
    {}
    std::string generateDisassembly(Addr pc, const SymbolTable *symtab) const;
};

/// SVE unary operation on predicate (predicated)
class SveUnaryPredPredOp : public ArmStaticInst {
  protected:
    IntRegIndex dest;
    IntRegIndex op1;
    IntRegIndex gp;

    SveUnaryPredPredOp(const char* mnem, ExtMachInst _machInst,
                       OpClass __opClass, IntRegIndex _dest,
                       IntRegIndex _op1, IntRegIndex _gp) :
        ArmStaticInst(mnem, _machInst, __opClass),
        dest(_dest), op1(_op1), gp(_gp)
    {}
    std::string generateDisassembly(Addr pc, const SymbolTable *symtab) const;
};

/// SVE table lookup/permute using vector of element indices (TBL)
class SveTblOp : public ArmStaticInst {
  protected:
    IntRegIndex dest;
    IntRegIndex op1;
    IntRegIndex op2;

    SveTblOp(const char* mnem, ExtMachInst _machInst, OpClass __opClass,
            IntRegIndex _dest, IntRegIndex _op1, IntRegIndex _op2) :
        ArmStaticInst(mnem, _machInst, __opClass),
        dest(_dest), op1(_op1), op2(_op2)
    {}
    std::string generateDisassembly(Addr pc, const SymbolTable *symtab) const;
};

/// SVE unpack and widen predicate
class SveUnpackOp : public ArmStaticInst {
  protected:
    IntRegIndex dest;
    IntRegIndex op1;

    SveUnpackOp(const char* mnem, ExtMachInst _machInst, OpClass __opClass,
                IntRegIndex _dest, IntRegIndex _op1) :
        ArmStaticInst(mnem, _machInst, __opClass),
        dest(_dest), op1(_op1)
    {}
    std::string generateDisassembly(Addr pc, const SymbolTable *symtab) const;
};

/// SVE predicate test
class SvePredTestOp : public ArmStaticInst {
  protected:
    IntRegIndex op1;
    IntRegIndex gp;

    SvePredTestOp(const char* mnem, ExtMachInst _machInst, OpClass __opClass,
                IntRegIndex _op1, IntRegIndex _gp) :
        ArmStaticInst(mnem, _machInst, __opClass),
        op1(_op1), gp(_gp)
    {}
    std::string generateDisassembly(Addr pc, const SymbolTable *symtab) const;
};

/// SVE unary predicate instructions
class SvePredUnaryOp : public ArmStaticInst {
  protected:
    IntRegIndex dest;

    SvePredUnaryOp(const char* mnem, ExtMachInst _machInst, OpClass __opClass,
                IntRegIndex _dest) :
        ArmStaticInst(mnem, _machInst, __opClass),
        dest(_dest)
    {}
    std::string generateDisassembly(Addr pc, const SymbolTable *symtab) const;
};

/// SVE vector - immediate binary operation
class SveBinImmUnpredDestrOp : public ArmStaticInst {
  protected:
    IntRegIndex dest;
    IntRegIndex op1;
    uint64_t imm;

    SveBinImmUnpredDestrOp(const char* mnem, ExtMachInst _machInst,
            OpClass __opClass, IntRegIndex _dest, IntRegIndex _op1,
            uint64_t _imm) :
        ArmStaticInst(mnem, _machInst, __opClass),
        dest(_dest), op1(_op1), imm(_imm)
    {}
    std::string generateDisassembly(Addr pc, const SymbolTable *symtab) const;
};

/// Binary with immediate index, destructive, unpredicated SVE instruction.
class SveBinImmIdxUnpredOp : public ArmStaticInst {
  protected:
    IntRegIndex dest, op1;
    uint64_t imm;

    SveBinImmIdxUnpredOp(const char* mnem, ExtMachInst _machInst,
            OpClass __opClass, IntRegIndex _dest, IntRegIndex _op1,
            uint64_t _imm) :
        ArmStaticInst(mnem, _machInst, __opClass),
        dest(_dest), op1(_op1), imm(_imm)
    {}

    std::string generateDisassembly(Addr pc, const SymbolTable *symtab) const;
};

/// Returns the symbolic name associated with pattern `imm` for PTRUE(S)
/// instructions.
std::string sveDisasmPredCountImm(uint8_t imm);

/// Returns the actual number of elements active for PTRUE(S) instructions.
/// @param imm 5-bit immediate encoding the predicate pattern.
/// @param num_elems Current number of elements per vector (depending on
/// current vector length and element size).
unsigned int sveDecodePredCount(uint8_t imm, unsigned int num_elems);

/// Expand 1-bit floating-point immediate to 0.5 or 1.0 (FADD, FSUB, FSUBR).
/// @param imm 1-bit immediate.
/// @param size Encoding of the vector element size.
/// @return Encoding of the expanded value.
uint64_t sveExpandFpImmAddSub(uint8_t imm, uint8_t size);

/// Expand 1-bit floating-point immediate to 0.0 or 1.0 (FMAX, FMAXNM, FMIN,
/// FMINNM).
/// @param imm 1-bit immediate.
/// @param size Encoding of the vector element size.
/// @return Encoding of the expanded value.
uint64_t sveExpandFpImmMaxMin(uint8_t imm, uint8_t size);

/// Expand 1-bit floating-point immediate to 0.5 or 2.0 (FMUL).
/// @param imm 1-bit immediate.
/// @param size Encoding of the vector element size.
/// @return Encoding of the expanded value.
uint64_t sveExpandFpImmMul(uint8_t imm, uint8_t size);

}  // namespace ArmISA

#endif  // __ARCH_ARM_INSTS_SVE_HH__