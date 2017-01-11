	.text
	.file	"ld1h_16-even.c"
	.globl	main
	.p2align	2
	.type	main,@function
main:                                   // @main
// BB#0:
	str	x21, [sp, #-48]!        // 8-byte Folded Spill
	stp	x20, x19, [sp, #16]     // 8-byte Folded Spill
	stp	x29, x30, [sp, #32]     // 8-byte Folded Spill
	add	x29, sp, #32            // =32
	sub	sp, sp, #128            // =128
	orr	w9, wzr, #0x20
	mov	x8, xzr
	movn	x12, #0
	cntw	x10
	add	x11, sp, #64            // =64
	whilelo	p1.h, xzr, x9
	ptrue	p0.h
	stp	x12, x12, [sp, #48]
	stp	x12, x12, [sp, #32]
	stp	x12, x12, [sp, #16]
	stp	x12, x12, [sp]
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	add	w12, w8, w10
	lsl	w13, w8, #1
	lsl	w12, w12, #1
	index	z0.s, w13, #2
	index	z1.s, w12, #2
	uzp1	z0.h, z0.h, z1.h
	st1h	z0.h, p1, [x11, x8, lsl #1]
	inch	x8
	whilelo	p1.h, x8, x9
	b.mi	.LBB0_1
// BB#2:
	orr	w9, wzr, #0x20
	mov	x8, xzr
	cntw	x10
	index	z0.s, #2, #0
	ptrue	p1.s
	index	z1.s, #1, #0
	add	x11, sp, #64            // =64
	whilelo	p2.h, xzr, x9
	mov	x12, sp
.LBB0_3:                                // =>This Inner Loop Header: Depth=1
	add	w13, w8, w10
	index	z2.s, w13, #1
	mov	z4.d, z2.d
	sdiv	z4.s, p1/m, z4.s, z0.s
	index	z3.s, w8, #1
	lsl	z4.s, p1/m, z4.s, z1.s
	sub	z2.s, z2.s, z4.s
	mov	z4.d, z3.d
	sdiv	z4.s, p1/m, z4.s, z0.s
	lsl	z4.s, p1/m, z4.s, z1.s
	sub	z3.s, z3.s, z4.s
	cmpeq	p3.s, p1/z, z2.s, z1.s
	cmpeq	p4.s, p1/z, z3.s, z1.s
	uzp1	p3.h, p4.h, p3.h
	and	p2.b, p0/z, p3.b, p2.b
	ld1h	z2.h, p2/z, [x11, x8, lsl #1]
	st1h	z2.h, p2, [x12, x8, lsl #1]
	inch	x8
	whilelo	p2.h, x8, x9
	b.mi	.LBB0_3
// BB#4:
	adrp	x19, .L.str
	mov	x20, xzr
	mov	x21, sp
	add	x19, x19, :lo12:.L.str
.LBB0_5:                                // =>This Inner Loop Header: Depth=1
	ldrsh	w1, [x21, x20]
	mov	x0, x19
	bl	printf
	add	x20, x20, #2            // =2
	cmp	x20, #64                // =64
	b.ne	.LBB0_5
// BB#6:
	movz	w0, #0xa
	bl	putchar
	mov	w0, wzr
	add	sp, sp, #128            // =128
	ldp	x29, x30, [sp, #32]     // 8-byte Folded Reload
	ldp	x20, x19, [sp, #16]     // 8-byte Folded Reload
	ldr	x21, [sp], #48          // 8-byte Folded Reload
	ret
.Lfunc_end0:
	.size	main, .Lfunc_end0-main

	.type	.L.str,@object          // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%d "
	.size	.L.str, 4


	.ident	"Component: ARM Compiler 6.5.1 for SVE Tool: armclang [5c50d700]"
	.section	".note.GNU-stack","",@progbits
"BuildAttributes$$A64_ISAv8$P$Z$N$DE$K$FP_ARMv8$PE$MPE$~IW$USESV6$~STKCKD$USESV7$~SHL$OSPACE$EBA8$REQ8$PRES8$EABIv2$WCHAR32$ENUMINT$A:L22UL41UL21$X:L11$S22US41US21$IEEE1" = 0
