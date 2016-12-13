	.text
	.file	"bench7-b.c"
	.globl	main
	.p2align	2
	.type	main,@function
main:                                   // @main
// BB#0:
	str	x19, [sp, #-32]!        // 8-byte Folded Spill
	stp	x29, x30, [sp, #16]     // 8-byte Folded Spill
	add	x29, sp, #16            // =16
	cmp	w0, #1                  // =1
	b.le	.LBB0_2
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
	orr	w2, wzr, #0x7fe0
	mov	w1, w19
	bl	printf
	adrp	x0, x1
	add	x0, x0, :lo12:x1
	orr	w1, wzr, #0x1
	orr	w2, wzr, #0x7fe0
	bl	memset
	adrp	x0, x2
	add	x0, x0, :lo12:x2
	orr	w1, wzr, #0x1
	orr	w2, wzr, #0x7fe0
	bl	memset
	cmp	w19, #1                 // =1
	b.lt	.LBB0_8
// BB#4:
	adrp	x9, x1
	adrp	x10, x2
	mov	w8, wzr
	add	x9, x9, :lo12:x1
	add	x10, x10, :lo12:x2
	adrp	x11, s0
.LBB0_5:                                // =>This Loop Header: Depth=1
                                        //     Child Loop BB0_6 Depth 2
	mov	w12, wzr
	orr	w13, wzr, #0x7fe0
	mov	x14, x10
	mov	x15, x9
.LBB0_6:                                //   Parent Loop BB0_5 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	ldrb	w16, [x15], #1
	ldrb	w17, [x14], #1
	sub	x13, x13, #1            // =1
	mul	w16, w17, w16
	add	w12, w16, w12, uxtb
	cbnz	x13, .LBB0_6
// BB#7:                                //   in Loop: Header=BB0_5 Depth=1
	add	w8, w8, #1              // =1
	strb	w12, [x11, :lo12:s0]
	cmp	w8, w19
	b.ne	.LBB0_5
.LBB0_8:
	adrp	x8, s0
	ldrb	w1, [x8, :lo12:s0]
	adrp	x0, .L.str.1
	add	x0, x0, :lo12:.L.str.1
	bl	printf
	ldp	x29, x30, [sp, #16]     // 8-byte Folded Reload
	mov	w0, wzr
	ldr	x19, [sp], #32          // 8-byte Folded Reload
	ret
.Lfunc_end0:
	.size	main, .Lfunc_end0-main

	.type	.L.str,@object          // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"bench7 (char): rep:%d n:%d\n"
	.size	.L.str, 28

	.type	x1,@object              // @x1
	.bss
	.globl	x1
x1:
	.zero	32736
	.size	x1, 32736

	.type	x2,@object              // @x2
	.globl	x2
x2:
	.zero	32736
	.size	x2, 32736

	.type	s0,@object              // @s0
	.globl	s0
s0:
	.byte	0                       // 0x0
	.size	s0, 1

	.type	.L.str.1,@object        // @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"res: %d\n"
	.size	.L.str.1, 9


	.ident	"Component: ARM Compiler 6.5.1 for SVE Tool: armclang [5c50d700]"
	.section	".note.GNU-stack","",@progbits
"BuildAttributes$$A64_ISAv8$P$Z$N$DE$K$FP_ARMv8$PE$MPE$~IW$USESV6$~STKCKD$USESV7$~SHL$OSPACE$EBA8$REQ8$PRES8$EABIv2$WCHAR32$ENUMINT$A:L22UL41UL21$X:L11$S22US41US21$IEEE1" = 0
