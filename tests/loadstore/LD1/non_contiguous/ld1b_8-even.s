	.text
	.file	"ld1b_8-even.c"
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
	orr	x11, xzr, #0x202020202020202
	orr	x12, xzr, #0x101010101010101
	orr	w9, wzr, #0x40
	mov	x8, xzr
	cntw	x10
	index	z0.s, #2, #0
	ptrue	p0.s
	index	z1.s, #1, #0
	ptrue	p1.b
	stp	x11, x11, [sp, #112]
	stp	x11, x11, [sp, #96]
	stp	x11, x11, [sp, #80]
	stp	x11, x11, [sp, #64]
	add	x11, sp, #64            // =64
	stp	x12, x12, [sp, #48]
	stp	x12, x12, [sp, #32]
	stp	x12, x12, [sp, #16]
	stp	x12, x12, [sp]
	whilelo	p2.b, xzr, x9
	mov	x12, sp
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	add	w13, w8, w10
	add	w14, w8, w10, lsl #1
	index	z2.s, w13, #1
	add	w13, w14, w10
	index	z3.s, w13, #1
	mov	z6.d, z3.d
	sdiv	z6.s, p0/m, z6.s, z0.s
	index	z5.s, w14, #1
	lsl	z6.s, p0/m, z6.s, z1.s
	sub	z3.s, z3.s, z6.s
	mov	z6.d, z5.d
	sdiv	z6.s, p0/m, z6.s, z0.s
	index	z4.s, w8, #1
	lsl	z6.s, p0/m, z6.s, z1.s
	cmpeq	p3.s, p0/z, z3.s, z1.s
	mov	z3.d, z2.d
	sub	z5.s, z5.s, z6.s
	mov	z6.d, z4.d
	sdiv	z3.s, p0/m, z3.s, z0.s
	lsl	z3.s, p0/m, z3.s, z1.s
	sdiv	z6.s, p0/m, z6.s, z0.s
	lsl	z6.s, p0/m, z6.s, z1.s
	sub	z2.s, z2.s, z3.s
	cmpeq	p4.s, p0/z, z5.s, z1.s
	sub	z3.s, z4.s, z6.s
	cmpeq	p5.s, p0/z, z2.s, z1.s
	uzp1	p3.h, p4.h, p3.h
	cmpeq	p4.s, p0/z, z3.s, z1.s
	uzp1	p4.h, p4.h, p5.h
	uzp1	p3.b, p4.b, p3.b
	and	p2.b, p1/z, p3.b, p2.b
	ld1b	z2.b, p2/z, [x11, x8]
	st1b	z2.b, p2, [x12, x8]
	addvl	x8, x8, #1
	whilelo	p2.b, x8, x9
	b.mi	.LBB0_1
// BB#2:
	adrp	x19, .L.str
	mov	x20, xzr
	mov	x21, sp
	add	x19, x19, :lo12:.L.str
.LBB0_3:                                // =>This Inner Loop Header: Depth=1
	ldrb	w1, [x21, x20]
	mov	x0, x19
	bl	printf
	add	x20, x20, #1            // =1
	cmp	x20, #64                // =64
	b.ne	.LBB0_3
// BB#4:
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
