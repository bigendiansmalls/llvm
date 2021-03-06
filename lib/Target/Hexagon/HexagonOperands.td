//===- HexagonImmediates.td - Hexagon immediate processing -*- tablegen -*-===//
//
//                     The LLVM Compiler Infrastructure
//
// This file is distributed under the University of Illnois Open Source
// License. See LICENSE.TXT for details.
//
//===----------------------------------------------------------------------===//

def s32ImmOperand : AsmOperandClass { let Name = "s32Imm"; }
def s23_2ImmOperand : AsmOperandClass { let Name = "s23_2Imm"; }
def s8ImmOperand : AsmOperandClass { let Name = "s8Imm"; }
def s8Imm64Operand : AsmOperandClass { let Name = "s8Imm64"; }
def s6ImmOperand : AsmOperandClass { let Name = "s6Imm"; }
def s4ImmOperand : AsmOperandClass { let Name = "s4Imm"; }
def s4_0ImmOperand : AsmOperandClass { let Name = "s4_0Imm"; }
def s4_1ImmOperand : AsmOperandClass { let Name = "s4_1Imm"; }
def s4_2ImmOperand : AsmOperandClass { let Name = "s4_2Imm"; }
def s4_3ImmOperand : AsmOperandClass { let Name = "s4_3Imm"; }
def s4_6ImmOperand : AsmOperandClass { let Name = "s4_6Imm"; }
def s3_6ImmOperand : AsmOperandClass { let Name = "s3_6Imm"; }
def u64ImmOperand : AsmOperandClass { let Name = "u64Imm"; }
def u32ImmOperand : AsmOperandClass { let Name = "u32Imm"; }
def u26_6ImmOperand : AsmOperandClass { let Name = "u26_6Imm"; }
def u16ImmOperand : AsmOperandClass { let Name = "u16Imm"; }
def u16_0ImmOperand : AsmOperandClass { let Name = "u16_0Imm"; }
def u16_1ImmOperand : AsmOperandClass { let Name = "u16_1Imm"; }
def u16_2ImmOperand : AsmOperandClass { let Name = "u16_2Imm"; }
def u16_3ImmOperand : AsmOperandClass { let Name = "u16_3Imm"; }
def u11_3ImmOperand : AsmOperandClass { let Name = "u11_3Imm"; }
def u10ImmOperand : AsmOperandClass { let Name = "u10Imm"; }
def u9ImmOperand : AsmOperandClass { let Name = "u9Imm"; }
def u8ImmOperand : AsmOperandClass { let Name = "u8Imm"; }
def u7ImmOperand : AsmOperandClass { let Name = "u7Imm"; }
def u6ImmOperand : AsmOperandClass { let Name = "u6Imm"; }
def u6_0ImmOperand : AsmOperandClass { let Name = "u6_0Imm"; }
def u6_1ImmOperand : AsmOperandClass { let Name = "u6_1Imm"; }
def u6_2ImmOperand : AsmOperandClass { let Name = "u6_2Imm"; }
def u6_3ImmOperand : AsmOperandClass { let Name = "u6_3Imm"; }
def u5ImmOperand : AsmOperandClass { let Name = "u5Imm"; }
def u4ImmOperand : AsmOperandClass { let Name = "u4Imm"; }
def u3ImmOperand : AsmOperandClass { let Name = "u3Imm"; }
def u2ImmOperand : AsmOperandClass { let Name = "u2Imm"; }
def u1ImmOperand : AsmOperandClass { let Name = "u1Imm"; }
def n8ImmOperand : AsmOperandClass { let Name = "n8Imm"; }
// Immediate operands.

let OperandType = "OPERAND_IMMEDIATE",
    DecoderMethod = "unsignedImmDecoder" in {
  def s32Imm : Operand<i32> { let ParserMatchClass = s32ImmOperand;
                              let DecoderMethod = "s32ImmDecoder"; }
  def s23_2Imm : Operand<i32> { let ParserMatchClass = s23_2ImmOperand; }
  def s8Imm : Operand<i32> { let ParserMatchClass = s8ImmOperand;
                             let DecoderMethod = "s8ImmDecoder"; }
  def s8Imm64 : Operand<i64>  { let ParserMatchClass = s8Imm64Operand;
                                let DecoderMethod = "s8ImmDecoder"; }
  def s6Imm : Operand<i32> { let ParserMatchClass = s6ImmOperand;
                             let DecoderMethod = "s6_0ImmDecoder"; }
  def s6_3Imm : Operand<i32>;
  def s4Imm : Operand<i32> { let ParserMatchClass = s4ImmOperand;
                             let DecoderMethod = "s4_0ImmDecoder"; }
  def s4_0Imm : Operand<i32> { let ParserMatchClass = s4_0ImmOperand;
                               let DecoderMethod = "s4_0ImmDecoder"; }
  def s4_1Imm : Operand<i32> { let ParserMatchClass = s4_1ImmOperand;
                               let DecoderMethod = "s4_1ImmDecoder"; }
  def s4_2Imm : Operand<i32> { let ParserMatchClass = s4_2ImmOperand;
                               let DecoderMethod = "s4_2ImmDecoder"; }
  def s4_3Imm : Operand<i32> { let ParserMatchClass = s4_3ImmOperand;
                               let DecoderMethod = "s4_3ImmDecoder"; }
  def u64Imm : Operand<i64> { let ParserMatchClass = u64ImmOperand; }
  def u32Imm : Operand<i32> { let ParserMatchClass = u32ImmOperand; }
  def u26_6Imm : Operand<i32> { let ParserMatchClass = u26_6ImmOperand; }
  def u16Imm : Operand<i32> { let ParserMatchClass = u16ImmOperand; }
  def u16_0Imm : Operand<i32> { let ParserMatchClass = u16_0ImmOperand; }
  def u16_1Imm : Operand<i32> { let ParserMatchClass = u16_1ImmOperand; }
  def u16_2Imm : Operand<i32> { let ParserMatchClass = u16_2ImmOperand; }
  def u16_3Imm : Operand<i32> { let ParserMatchClass = u16_3ImmOperand; }
  def u11_3Imm : Operand<i32> { let ParserMatchClass = u11_3ImmOperand; }
  def u10Imm : Operand<i32> { let ParserMatchClass = u10ImmOperand; }
  def u9Imm : Operand<i32> { let ParserMatchClass = u9ImmOperand; }
  def u8Imm : Operand<i32> { let ParserMatchClass = u8ImmOperand; }
  def u7Imm : Operand<i32> { let ParserMatchClass = u7ImmOperand; }
  def u6Imm : Operand<i32> { let ParserMatchClass = u6ImmOperand; }
  def u6_0Imm : Operand<i32> { let ParserMatchClass = u6_0ImmOperand; }
  def u6_1Imm : Operand<i32> { let ParserMatchClass = u6_1ImmOperand; }
  def u6_2Imm : Operand<i32> { let ParserMatchClass = u6_2ImmOperand; }
  def u6_3Imm : Operand<i32> { let ParserMatchClass = u6_3ImmOperand; }
  def u5Imm : Operand<i32> { let ParserMatchClass = u5ImmOperand; }
  def u5_0Imm : Operand<i32>;
  def u5_1Imm : Operand<i32>;
  def u5_2Imm : Operand<i32>;
  def u5_3Imm : Operand<i32>;
  def u4Imm : Operand<i32> { let ParserMatchClass = u4ImmOperand; }
  def u4_0Imm : Operand<i32>;
  def u4_1Imm : Operand<i32>;
  def u4_2Imm : Operand<i32>;
  def u4_3Imm : Operand<i32>;
  def u3Imm : Operand<i32> { let ParserMatchClass = u3ImmOperand; }
  def u3_0Imm : Operand<i32>;
  def u3_1Imm : Operand<i32>;
  def u3_2Imm : Operand<i32>;
  def u3_3Imm : Operand<i32>;
  def u2Imm : Operand<i32> { let ParserMatchClass = u2ImmOperand; }
  def u1Imm : Operand<i32> { let ParserMatchClass = u1ImmOperand; }
  def n8Imm : Operand<i32> { let ParserMatchClass = n8ImmOperand; }
}

let OperandType = "OPERAND_IMMEDIATE" in {
  def s4_6Imm : Operand<i32> { let ParserMatchClass = s4_6ImmOperand;
                               let PrintMethod = "prints4_6ImmOperand";
                               let DecoderMethod = "s4_6ImmDecoder";}
  def s4_7Imm : Operand<i32> { let PrintMethod = "prints4_7ImmOperand";
                               let DecoderMethod = "s4_6ImmDecoder";}
  def s3_6Imm : Operand<i32> { let ParserMatchClass = s3_6ImmOperand;
                               let PrintMethod = "prints3_6ImmOperand";
                               let DecoderMethod = "s3_6ImmDecoder";}
  def s3_7Imm : Operand<i32> { let PrintMethod = "prints3_7ImmOperand";
                               let DecoderMethod = "s3_6ImmDecoder";}
}

//
// Immediate predicates
//
def s32ImmPred  : PatLeaf<(i32 imm), [{
  int64_t v = (int64_t)N->getSExtValue();
  return isInt<32>(v);
}]>;

def s32_0ImmPred  : PatLeaf<(i32 imm), [{
  int64_t v = (int64_t)N->getSExtValue();
  return isInt<32>(v);
}]>;

def s31_1ImmPred  : PatLeaf<(i32 imm), [{
  int64_t v = (int64_t)N->getSExtValue();
  return isShiftedInt<31,1>(v);
}]>;

def s30_2ImmPred  : PatLeaf<(i32 imm), [{
  int64_t v = (int64_t)N->getSExtValue();
  return isShiftedInt<30,2>(v);
}]>;

def s29_3ImmPred  : PatLeaf<(i32 imm), [{
  int64_t v = (int64_t)N->getSExtValue();
  return isShiftedInt<29,3>(v);
}]>;

def s16ImmPred  : PatLeaf<(i32 imm), [{
  int64_t v = (int64_t)N->getSExtValue();
  return isInt<16>(v);
}]>;

def s11_0ImmPred  : PatLeaf<(i32 imm), [{
  int64_t v = (int64_t)N->getSExtValue();
  return isInt<11>(v);
}]>;

def s11_1ImmPred  : PatLeaf<(i32 imm), [{
  int64_t v = (int64_t)N->getSExtValue();
  return isShiftedInt<11,1>(v);
}]>;

def s11_2ImmPred  : PatLeaf<(i32 imm), [{
  int64_t v = (int64_t)N->getSExtValue();
  return isShiftedInt<11,2>(v);
}]>;

def s11_3ImmPred  : PatLeaf<(i32 imm), [{
  int64_t v = (int64_t)N->getSExtValue();
  return isShiftedInt<11,3>(v);
}]>;

def s10ImmPred  : PatLeaf<(i32 imm), [{
  int64_t v = (int64_t)N->getSExtValue();
  return isInt<10>(v);
}]>;

def s8ImmPred  : PatLeaf<(i32 imm), [{
  int64_t v = (int64_t)N->getSExtValue();
  return isInt<8>(v);
}]>;

def s8Imm64Pred  : PatLeaf<(i64 imm), [{
  int64_t v = (int64_t)N->getSExtValue();
  return isInt<8>(v);
}]>;

def s6ImmPred  : PatLeaf<(i32 imm), [{
  int64_t v = (int64_t)N->getSExtValue();
  return isInt<6>(v);
}]>;

def s4_0ImmPred  : PatLeaf<(i32 imm), [{
  int64_t v = (int64_t)N->getSExtValue();
  return isInt<4>(v);
}]>;

def s4_1ImmPred  : PatLeaf<(i32 imm), [{
  int64_t v = (int64_t)N->getSExtValue();
  return isShiftedInt<4,1>(v);
}]>;

def s4_2ImmPred  : PatLeaf<(i32 imm), [{
  int64_t v = (int64_t)N->getSExtValue();
  return isShiftedInt<4,2>(v);
}]>;

def s4_3ImmPred  : PatLeaf<(i32 imm), [{
  int64_t v = (int64_t)N->getSExtValue();
  return isShiftedInt<4,3>(v);
}]>;

def u64ImmPred  : PatLeaf<(i64 imm), [{
  // Adding "N ||" to suppress gcc unused warning.
  return (N || true);
}]>;

def u32ImmPred  : PatLeaf<(i32 imm), [{
  int64_t v = (int64_t)N->getSExtValue();
  return isUInt<32>(v);
}]>;

def u32_0ImmPred  : PatLeaf<(i32 imm), [{
  int64_t v = (int64_t)N->getSExtValue();
  return isUInt<32>(v);
}]>;

def u31_1ImmPred  : PatLeaf<(i32 imm), [{
  int64_t v = (int64_t)N->getSExtValue();
  return isShiftedUInt<31,1>(v);
}]>;

def u30_2ImmPred  : PatLeaf<(i32 imm), [{
  int64_t v = (int64_t)N->getSExtValue();
  return isShiftedUInt<30,2>(v);
}]>;

def u29_3ImmPred  : PatLeaf<(i32 imm), [{
  int64_t v = (int64_t)N->getSExtValue();
  return isShiftedUInt<29,3>(v);
}]>;

def u26_6ImmPred  : PatLeaf<(i32 imm), [{
  int64_t v = (int64_t)N->getSExtValue();
  return isShiftedUInt<26,6>(v);
}]>;

def u16_0ImmPred  : PatLeaf<(i32 imm), [{
  int64_t v = (int64_t)N->getSExtValue();
  return isUInt<16>(v);
}]>;

def u16_1ImmPred  : PatLeaf<(i32 imm), [{
  int64_t v = (int64_t)N->getSExtValue();
  return isShiftedUInt<16,1>(v);
}]>;

def u16_2ImmPred  : PatLeaf<(i32 imm), [{
  int64_t v = (int64_t)N->getSExtValue();
  return isShiftedUInt<16,2>(v);
}]>;

def u11_3ImmPred : PatLeaf<(i32 imm), [{
  int64_t v = (int64_t)N->getSExtValue();
  return isShiftedUInt<11,3>(v);
}]>;

def u10ImmPred  : PatLeaf<(i32 imm), [{
  int64_t v = (int64_t)N->getSExtValue();
  return isUInt<10>(v);
}]>;

def u9ImmPred  : PatLeaf<(i32 imm), [{
  int64_t v = (int64_t)N->getSExtValue();
  return isUInt<9>(v);
}]>;

def u8ImmPred  : PatLeaf<(i32 imm), [{
  int64_t v = (int64_t)N->getSExtValue();
  return isUInt<8>(v);
}]>;

def u7StrictPosImmPred : ImmLeaf<i32, [{
  // u7StrictPosImmPred predicate - True if the immediate fits in an 7-bit
  // unsigned field and is strictly greater than 0.
  return isUInt<7>(Imm) && Imm > 0;
}]>;

def u7ImmPred  : PatLeaf<(i32 imm), [{
  int64_t v = (int64_t)N->getSExtValue();
  return isUInt<7>(v);
}]>;

def u6ImmPred  : PatLeaf<(i32 imm), [{
  int64_t v = (int64_t)N->getSExtValue();
  return isUInt<6>(v);
}]>;

def u6_0ImmPred  : PatLeaf<(i32 imm), [{
  int64_t v = (int64_t)N->getSExtValue();
  return isUInt<6>(v);
}]>;

def u6_1ImmPred  : PatLeaf<(i32 imm), [{
  int64_t v = (int64_t)N->getSExtValue();
  return isShiftedUInt<6,1>(v);
}]>;

def u6_2ImmPred  : PatLeaf<(i32 imm), [{
  int64_t v = (int64_t)N->getSExtValue();
  return isShiftedUInt<6,2>(v);
}]>;

def u6_3ImmPred  : PatLeaf<(i32 imm), [{
  int64_t v = (int64_t)N->getSExtValue();
  return isShiftedUInt<6,3>(v);
}]>;

def u5ImmPred  : PatLeaf<(i32 imm), [{
  int64_t v = (int64_t)N->getSExtValue();
  return isUInt<5>(v);
}]>;

def u4ImmPred  : PatLeaf<(i32 imm), [{
  int64_t v = (int64_t)N->getSExtValue();
  return isUInt<4>(v);
}]>;

def u3ImmPred  : PatLeaf<(i32 imm), [{
  int64_t v = (int64_t)N->getSExtValue();
  return isUInt<3>(v);
}]>;

def u2ImmPred  : PatLeaf<(i32 imm), [{
  int64_t v = (int64_t)N->getSExtValue();
  return isUInt<2>(v);
}]>;

def u1ImmPred  : PatLeaf<(i1 imm), [{
  int64_t v = (int64_t)N->getSExtValue();
  return isUInt<1>(v);
}]>;

def u1ImmPred32  : PatLeaf<(i32 imm), [{
  int64_t v = (int64_t)N->getSExtValue();
  return isUInt<1>(v);
}]>;

def m5ImmPred  : PatLeaf<(i32 imm), [{
  // m5ImmPred predicate - True if the number is in range -1 .. -31
  // and will fit in a 5 bit field when made positive, for use in memops.
  int64_t v = (int64_t)N->getSExtValue();
  return (-31 <= v && v <= -1);
}]>;

//InN means negative integers in [-(2^N - 1), 0]
def n8ImmPred  : PatLeaf<(i32 imm), [{
  // n8ImmPred predicate - True if the immediate fits in a 8-bit signed
  // field.
  int64_t v = (int64_t)N->getSExtValue();
  return (-255 <= v && v <= 0);
}]>;

def nOneImmPred  : PatLeaf<(i32 imm), [{
  // nOneImmPred predicate - True if the immediate is -1.
  int64_t v = (int64_t)N->getSExtValue();
  return (-1 == v);
}]>;

def Set5ImmPred : PatLeaf<(i32 imm), [{
  // Set5ImmPred predicate - True if the number is in the series of values.
  // [ 2^0, 2^1, ... 2^31 ]
  // For use in setbit immediate.
  uint32_t v = (int32_t)N->getSExtValue();
  // Constrain to 32 bits, and then check for single bit.
  return ImmIsSingleBit(v);
}]>;

def Clr5ImmPred : PatLeaf<(i32 imm), [{
  // Clr5ImmPred predicate - True if the number is in the series of
  // bit negated values.
  // [ 2^0, 2^1, ... 2^31 ]
  // For use in clrbit immediate.
  // Note: we are bit NOTing the value.
  uint32_t v = ~ (int32_t)N->getSExtValue();
  // Constrain to 32 bits, and then check for single bit.
  return ImmIsSingleBit(v);
}]>;

// Extendable immediate operands.
def f32ExtOperand : AsmOperandClass { let Name = "f32Ext"; }
def s16ExtOperand : AsmOperandClass { let Name = "s16Ext"; }
def s12ExtOperand : AsmOperandClass { let Name = "s12Ext"; }
def s10ExtOperand : AsmOperandClass { let Name = "s10Ext"; }
def s9ExtOperand : AsmOperandClass { let Name = "s9Ext"; }
def s8ExtOperand : AsmOperandClass { let Name = "s8Ext"; }
def s7ExtOperand : AsmOperandClass { let Name = "s7Ext"; }
def s6ExtOperand : AsmOperandClass { let Name = "s6Ext"; }
def s11_0ExtOperand : AsmOperandClass { let Name = "s11_0Ext"; }
def s11_1ExtOperand : AsmOperandClass { let Name = "s11_1Ext"; }
def s11_2ExtOperand : AsmOperandClass { let Name = "s11_2Ext"; }
def s11_3ExtOperand : AsmOperandClass { let Name = "s11_3Ext"; }
def u6ExtOperand : AsmOperandClass { let Name = "u6Ext"; }
def u7ExtOperand : AsmOperandClass { let Name = "u7Ext"; }
def u8ExtOperand : AsmOperandClass { let Name = "u8Ext"; }
def u9ExtOperand : AsmOperandClass { let Name = "u9Ext"; }
def u10ExtOperand : AsmOperandClass { let Name = "u10Ext"; }
def u6_0ExtOperand : AsmOperandClass { let Name = "u6_0Ext"; }
def u6_1ExtOperand : AsmOperandClass { let Name = "u6_1Ext"; }
def u6_2ExtOperand : AsmOperandClass { let Name = "u6_2Ext"; }
def u6_3ExtOperand : AsmOperandClass { let Name = "u6_3Ext"; }
def u32MustExtOperand : AsmOperandClass { let Name = "u32MustExt"; }



let OperandType = "OPERAND_IMMEDIATE", PrintMethod = "printExtOperand",
    DecoderMethod = "unsignedImmDecoder" in {
  def f32Ext : Operand<f32> { let ParserMatchClass = f32ExtOperand; }
  def s16Ext : Operand<i32> { let ParserMatchClass = s16ExtOperand;
                              let DecoderMethod = "s16ImmDecoder"; }
  def s12Ext : Operand<i32> { let ParserMatchClass = s12ExtOperand;
                              let DecoderMethod = "s12ImmDecoder"; }
  def s11_0Ext : Operand<i32> { let ParserMatchClass = s11_0ExtOperand;
                              let DecoderMethod = "s11_0ImmDecoder"; }
  def s11_1Ext : Operand<i32> { let ParserMatchClass = s11_1ExtOperand;
                              let DecoderMethod = "s11_1ImmDecoder"; }
  def s11_2Ext : Operand<i32> { let ParserMatchClass = s11_2ExtOperand;
                              let DecoderMethod = "s11_2ImmDecoder"; }
  def s11_3Ext : Operand<i32> { let ParserMatchClass = s11_3ExtOperand;
                              let DecoderMethod = "s11_3ImmDecoder"; }
  def s10Ext : Operand<i32> { let ParserMatchClass = s10ExtOperand;
                              let DecoderMethod = "s10ImmDecoder"; }
  def s9Ext : Operand<i32> { let ParserMatchClass = s9ExtOperand;
                              let DecoderMethod = "s90ImmDecoder"; }
  def s8Ext : Operand<i32> { let ParserMatchClass = s8ExtOperand;
                              let DecoderMethod = "s8ImmDecoder"; }
  def s7Ext : Operand<i32> { let ParserMatchClass = s7ExtOperand; }
  def s6Ext : Operand<i32> { let ParserMatchClass = s6ExtOperand;
                              let DecoderMethod = "s6_0ImmDecoder"; }
  def u6Ext : Operand<i32> { let ParserMatchClass = u6ExtOperand; }
  def u7Ext : Operand<i32> { let ParserMatchClass = u7ExtOperand; }
  def u8Ext : Operand<i32> { let ParserMatchClass = u8ExtOperand; }
  def u9Ext : Operand<i32> { let ParserMatchClass = u9ExtOperand; }
  def u10Ext : Operand<i32> { let ParserMatchClass = u10ExtOperand; }
  def u6_0Ext : Operand<i32> { let ParserMatchClass = u6_0ExtOperand; }
  def u6_1Ext : Operand<i32> { let ParserMatchClass = u6_1ExtOperand; }
  def u6_2Ext : Operand<i32> { let ParserMatchClass = u6_2ExtOperand; }
  def u6_3Ext : Operand<i32> { let ParserMatchClass = u6_3ExtOperand; }
  def u32MustExt : Operand<i32> { let ParserMatchClass = u32MustExtOperand; }
}


def s4_7ImmPred  : PatLeaf<(i32 imm), [{
  int64_t v = (int64_t)N->getSExtValue();
  if (HST->hasV60TOps())
    // Return true if the immediate can fit in a 10-bit sign extended field and
    // is 128-byte aligned.
    return isShiftedInt<4,7>(v);
  return false;
}]>;

def s3_7ImmPred  : PatLeaf<(i32 imm), [{
  int64_t v = (int64_t)N->getSExtValue();
  if (HST->hasV60TOps())
    // Return true if the immediate can fit in a 9-bit sign extended field and
    // is 128-byte aligned.
    return isShiftedInt<3,7>(v);
  return false;
}]>;

def s4_6ImmPred  : PatLeaf<(i32 imm), [{
  int64_t v = (int64_t)N->getSExtValue();
  if (HST->hasV60TOps())
    // Return true if the immediate can fit in a 10-bit sign extended field and
    // is 64-byte aligned.
    return isShiftedInt<4,6>(v);
  return false;
}]>;

def s3_6ImmPred  : PatLeaf<(i32 imm), [{
  int64_t v = (int64_t)N->getSExtValue();
  if (HST->hasV60TOps())
    // Return true if the immediate can fit in a 9-bit sign extended field and
    // is 64-byte aligned.
    return isShiftedInt<3,6>(v);
  return false;
}]>;


// This complex pattern exists only to create a machine instruction operand
// of type "frame index". There doesn't seem to be a way to do that directly
// in the patterns.
def AddrFI : ComplexPattern<i32, 1, "SelectAddrFI", [frameindex], []>;

// These complex patterns are not strictly necessary, since global address
// folding will happen during DAG combining. For distinguishing between GA
// and GP, pat frags with HexagonCONST32 and HexagonCONST32_GP can be used.
def AddrGA : ComplexPattern<i32, 1, "SelectAddrGA", [], []>;
def AddrGP : ComplexPattern<i32, 1, "SelectAddrGP", [], []>;

// Address operands.

let PrintMethod = "printGlobalOperand" in {
  def globaladdress : Operand<i32>;
  def globaladdressExt : Operand<i32>;
}

let PrintMethod = "printJumpTable" in
def jumptablebase : Operand<i32>;

def brtarget : Operand<OtherVT> {
  let DecoderMethod = "brtargetDecoder";
  let PrintMethod = "printBrtarget";
}
def brtargetExt : Operand<OtherVT> {
  let DecoderMethod = "brtargetDecoder";
  let PrintMethod = "printBrtarget";
}
def calltarget : Operand<i32> {
  let DecoderMethod = "brtargetDecoder";
  let PrintMethod = "printBrtarget";
}

def bblabel : Operand<i32>;
def bbl     : SDNode<"ISD::BasicBlock", SDTPtrLeaf, [], "BasicBlockSDNode">;

// Return true if for a 32 to 64-bit sign-extended load.
def is_sext_i32 : PatLeaf<(i64 DoubleRegs:$src1), [{
  LoadSDNode *LD = dyn_cast<LoadSDNode>(N);
  if (!LD)
    return false;
  return LD->getExtensionType() == ISD::SEXTLOAD &&
         LD->getMemoryVT().getScalarType() == MVT::i32;
}]>;
