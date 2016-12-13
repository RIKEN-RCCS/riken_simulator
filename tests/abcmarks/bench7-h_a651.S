	.text
	.file	"bench7-h.c"
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
	orr	w2, wzr, #0x3fe0
	mov	w1, w19
	orr	w20, wzr, #0x3fe0
	bl	printf
	adrp	x9, x1
	adrp	x10, x2
	mov	x8, xzr
	whilelo	p0.h, xzr, x20
	add	x9, x9, :lo12:x1
	index	z0.h, #1, #0
	add	x10, x10, :lo12:x2
.LBB0_4:                                // =>This Inner Loop Header: Depth=1
	st1h	z0.h, p0, [x9, x8, lsl #1]
	st1h	z0.h, p0, [x10, x8, lsl #1]
	inch	x8
	whilelo	p0.h, x8, x20
	b.mi	.LBB0_4
// BB#5:
	cmp	w19, #1                 // =1
	b.lt	.LBB0_10
// BB#6:
	adrp	x9, x1
	adrp	x10, x2
	mov	w8, wzr
	add	x9, x9, :lo12:x1
	add	x10, x10, :lo12:x2
	adrp	x11, s0
.LBB0_7:                                // =>This Loop Header: Depth=1
                                        //     Child Loop BB0_8 Depth 2
	mov	w12, wzr
	orr	w13, wzr, #0x3fe0
	mov	x14, x10
	mov	x15, x9
.LBB0_8:                                //   Parent Loop BB0_7 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	ldrsh	w16, [x15], #2
	ldrsh	w17, [x14], #2
	sub	x13, x13, #1            // =1
	mul	w16, w17, w16
	add	w12, w16, w12, uxth
	cbnz	x13, .LBB0_8
// BB#9:                                //   in Loop: Header=BB0_7 Depth=1
	add	w8, w8, #1              // =1
	strh	w12, [x11, :lo12:s0]
	cmp	w8, w19
	b.ne	.LBB0_7
.LBB0_10:
	adrp	x8, s0
	ldrsh	w1, [x8, :lo12:s0]
	adrp	x0, .L.str.1
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
	.asciz	"bench7 (short int): rep:%d n:%d\n"
	.size	.L.str, 33

	.type	x1,@object              // @x1
	.bss
	.globl	x1
	.p2align	1
x1:
	.zero	32704
	.size	x1, 32704

	.type	x2,@object              // @x2
	.globl	x2
	.p2align	1
x2:
	.zero	32704
	.size	x2, 32704

	.type	s0,@object              // @s0
	.globl	s0
	.p2align	1
s0:
	.hword	0                       // 0x0
	.size	s0, 2

	.type	.L.str.1,@object        // @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"res: %d\n"
	.size	.L.str.1, 9


	.ident	"Component: ARM Compiler 6.5.1 for SVE Tool: armclang [5c50d700]"
	.section	".note.GNU-stack","",@progbits
"BuildAttributes$$A64_ISAv8$P$Z$N$DE$K$FP_ARMv8$PE$MPE$~IW$USESV6$~STKCKD$USESV7$~SHL$OSPACE$EBA8$REQ8$PRES8$EABIv2$WCHAR32$ENUMINT$A:L22UL41UL21$X:L11$S22US41US21$IEEE1" = 0
