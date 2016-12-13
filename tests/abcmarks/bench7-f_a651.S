	.text
	.file	"bench7-f.c"
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3
.LCPI0_0:
	.xword	4576918229304087675     // double 0.01
.LCPI0_1:
	.xword	4581421828931458171     // double 0.02
	.text
	.globl	main
	.p2align	2
	.type	main,@function
main:                                   // @main
// BB#0:
	stp	x20, x19, [sp, #-32]!   // 8-byte Folded Spill
	stp	x29, x30, [sp, #16]     // 8-byte Folded Spill
	add	x29, sp, #16            // =16
	cmp	w0, #2                  // =2
	b.lt	.LBB0_2
// BB#1:
	ldr	x0, [x1, #8]
	bl	atoi
	mov	w19, w0
	b	.LBB0_3
.LBB0_2:
	movz	w19, #0x3e8
.LBB0_3:
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	orr	w2, wzr, #0x1fe0
	mov	w1, w19
	orr	w20, wzr, #0x1fe0
	bl	printf
	adrp	x8, .LCPI0_0
	adrp	x9, .LCPI0_1
	ldr	d0, [x8, :lo12:.LCPI0_0]
	ldr	d1, [x9, :lo12:.LCPI0_1]
	ptrue	p1.d
	adrp	x8, x1
	adrp	x9, x2
	mov	x10, xzr
	whilelo	p0.d, xzr, x20
	add	x8, x8, :lo12:x1
	mov	z0.d, p1/m, d0
	mov	z1.d, p1/m, d1
	add	x9, x9, :lo12:x2
.LBB0_4:                                // =>This Inner Loop Header: Depth=1
	sxtw	x11, w10
	index	z2.d, x11, #1
	scvtf	z2.d, p1/m, z2.s
	fmul	z3.d, z2.d, z0.d
	fmul	z2.d, z2.d, z1.d
	fcvt	z3.s, p1/m, z3.d
	st1w	z3.d, p0, [x8, x10, lsl #2]
	fcvt	z2.s, p1/m, z2.d
	st1w	z2.d, p0, [x9, x10, lsl #2]
	incd	x10
	whilelo	p0.d, x10, x20
	b.mi	.LBB0_4
// BB#5:
	cmp	w19, #1                 // =1
	b.lt	.LBB0_11
// BB#6:
	mov	w10, wzr
	orr	w11, wzr, #0x1fe0
	index	z0.s, #0, #0
	ptrue	p0.s
.LBB0_7:                                // =>This Loop Header: Depth=1
                                        //     Child Loop BB0_8 Depth 2
	mov	x12, xzr
	whilelo	p1.s, xzr, x11
	mov	z1.d, z0.d
.LBB0_8:                                //   Parent Loop BB0_7 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	ld1w	z2.s, p1/z, [x8, x12, lsl #2]
	ld1w	z3.s, p1/z, [x9, x12, lsl #2]
	incw	x12
	fmla	z1.s, p1/m, z3.s, z2.s
	whilelo	p1.s, x12, x11
	b.mi	.LBB0_8
// BB#9:                                //   in Loop: Header=BB0_7 Depth=1
	add	w10, w10, #1            // =1
	cmp	w10, w19
	b.ne	.LBB0_7
// BB#10:
	faddv	s0, p0, z1.s
	adrp	x8, s0
	str	s0, [x8, :lo12:s0]
	b	.LBB0_12
.LBB0_11:
	adrp	x8, s0
	ldr	s0, [x8, :lo12:s0]
.LBB0_12:
	adrp	x0, .L.str.1
	fcvt	d0, s0
	add	x0, x0, :lo12:.L.str.1
	bl	printf
	ldp	x29, x30, [sp, #16]     // 8-byte Folded Reload
	mov	w0, wzr
	ldp	x20, x19, [sp], #32     // 8-byte Folded Reload
	ret
.Lfunc_end0:
	.size	main, .Lfunc_end0-main

	.type	.L.str,@object          // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"bench7 (float): rep:%d n:%d\n"
	.size	.L.str, 29

	.type	x1,@object              // @x1
	.bss
	.globl	x1
	.p2align	2
x1:
	.zero	32640
	.size	x1, 32640

	.type	x2,@object              // @x2
	.globl	x2
	.p2align	2
x2:
	.zero	32640
	.size	x2, 32640

	.type	s0,@object              // @s0
	.globl	s0
	.p2align	2
s0:
	.word	0                       // float 0
	.size	s0, 4

	.type	.L.str.1,@object        // @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"res: %f\n"
	.size	.L.str.1, 9


	.ident	"Component: ARM Compiler 6.5.1 for SVE Tool: armclang [5c50d700]"
	.section	".note.GNU-stack","",@progbits
"BuildAttributes$$A64_ISAv8$P$Z$N$DE$K$FP_ARMv8$PE$MPE$~IW$USESV6$~STKCKD$USESV7$~SHL$OSPACE$EBA8$REQ8$PRES8$EABIv2$WCHAR32$ENUMINT$A:L22UL41UL21$X:L11$S22US41US21$IEEE1" = 0
