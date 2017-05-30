	.text
	.file	"dgemm_39.c"
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3
.LCPI0_0:
	.xword	4472406533629990549     // double 1.0000000000000001E-9
.LCPI0_1:
	.xword	4382569440205035030     // double 1.0000000000000001E-15
.LCPI0_2:
	.xword	4652007308841189376     // double 1000
	.text
	.globl	main
	.p2align	2
	.type	main,@function
main:                                   // @main
// BB#0:                                // %entry
	addvl	sp, sp, #-2
	str	d8, [sp, #-32]!         // 8-byte Folded Spill
	str	x28, [sp, #8]           // 8-byte Folded Spill
	stp	x20, x19, [sp, #16]     // 8-byte Folded Spill
	stp	x29, x30, [sp, #32]     // 8-byte Folded Spill
	add	x29, sp, #32            // =32
	sub	sp, sp, #16             // =16
	rdvl	x8, #1
	cmp	x8, #17                 // =17
	b.hs	.LBB0_2
// BB#1:                                // %mem.intrinsic
	adrp	x0, C
	mov	w1, wzr
	add	x0, x0, :lo12:C
	movz	w2, #12168
	bl	memset
	b	.LBB0_4
.LBB0_2:                                // %mem.ph
	movz	w9, #12168
	adrp	x10, C
	mov	x8, xzr
	add	x10, x10, :lo12:C
	whilelo	p0.b, xzr, x9
	mov	z0.b, #0                // =0x0
.LBB0_3:                                // %mem.exploop
                                        // =>This Inner Loop Header: Depth=1
	st1b	{z0.b}, p0, [x10, x8]
	addvl	x8, x8, #1
	whilelo	p0.b, x8, x9
	b.mi	.LBB0_3
.LBB0_4:                                // %for.cond1.preheader.preheader
	cntd	x12
	adrp	x11, A
	adrp	x20, B
	mov	x8, xzr
	movz	w9, #39
	index	z0.d, #0, #1
	ptrue	p2.d
	movz	w10, #312
	add	x11, x11, :lo12:A
	mov	z16.d, #0               // =0x0
	fmov	z1.d, #1.00000000
	mov	z2.d, x12
	add	x20, x20, :lo12:B
.LBB0_5:                                // %for.cond1.preheader
                                        // =>This Loop Header: Depth=1
                                        //     Child Loop BB0_6 Depth 2
	and	x13, x8, #0xffffffff
	mul	x14, x8, x9
	whilelo	p3.d, xzr, x9
	mov	x12, xzr
	mov	z3.d, x14
	mov	z4.d, x13
	mov	p0.b, p3.b
	mov	z5.d, z0.d
.LBB0_6:                                // %vector.body
                                        //   Parent Loop BB0_5 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	add	z7.d, z5.d, z3.d
	mul	x13, x8, x10
	cmpeq	p1.d, p2/z, z4.d, z5.d
	add	z6.d, z5.d, z2.d
	scvtf	z7.d, p2/m, z7.s
	add	x14, x11, x13
	fmov	x15, d5
	incd	x12
	add	x13, x20, x13
	sel	z5.d, p1, z1.d, z16.d
	st1d	{z7.d}, p0, [x14, x15, lsl #3]
	st1d	{z5.d}, p0, [x13, x15, lsl #3]
	whilelo	p0.d, x12, x9
	mov	z5.d, z6.d
	b.mi	.LBB0_6
// BB#7:                                // %for.inc20
                                        //   in Loop: Header=BB0_5 Depth=1
	add	x8, x8, #1              // =1
	cmp	x8, #39                 // =39
	b.ne	.LBB0_5
// BB#8:                                // %for.end22
	orr	w0, wzr, #0x1
	mov	x1, sp
	str	p3, [x29, #8, mul vl]   // 2-byte Folded Spill
	bl	clock_gettime
	ldp	d0, d1, [sp]
	adrp	x12, .LCPI0_0
	ldr	d8, [x12, :lo12:.LCPI0_0]
	ldr	p3, [x29, #8, mul vl]   // 2-byte Folded Reload
	adrp	x9, A
	adrp	x11, C
	scvtf	d0, d0
	scvtf	d1, d1
	mov	z3.d, #0                // =0x0
	ptrue	p2.d
	mov	x8, xzr
	adrp	x19, main.time
	add	x9, x9, :lo12:A
	movz	w10, #312
	add	x11, x11, :lo12:C
	ptrue	p0.d, vl1
	movz	w12, #39
	fmadd	d0, d1, d8, d0
	cntd	x13
	str	d0, [x19, :lo12:main.time]
.LBB0_9:                                // %for.cond27.preheader
                                        // =>This Loop Header: Depth=1
                                        //     Child Loop BB0_10 Depth 2
                                        //       Child Loop BB0_11 Depth 3
	mov	x14, xzr
.LBB0_10:                               // %for.cond31.preheader
                                        //   Parent Loop BB0_9 Depth=1
                                        // =>  This Loop Header: Depth=2
                                        //       Child Loop BB0_11 Depth 3
	madd	x15, x8, x10, x11
	lsl	x18, x14, #3
	add	x15, x15, x18
	ldr	d0, [x15]
	mov	w16, wzr
	mov	x17, xzr
	add	x18, x20, x18
	sel	z0.d, p0, z0.d, z3.d
	mov	p1.b, p3.b
.LBB0_11:                               // %vector.body184
                                        //   Parent Loop BB0_9 Depth=1
                                        //     Parent Loop BB0_10 Depth=2
                                        // =>    This Inner Loop Header: Depth=3
	sxtw	x0, w16
	index	z2.d, x0, x12
	ld1d	{z1.d}, p1/z, [x9, x17, lsl #3]
	ld1d	{z2.d}, p1/z, [x18, z2.d, sxtw #3]
	incd	x17
	madd	w16, w13, w12, w16
	fmla	z0.d, p1/m, z2.d, z1.d
	whilelo	p1.d, x17, x12
	b.mi	.LBB0_11
// BB#12:                               // %middle.block185
                                        //   in Loop: Header=BB0_10 Depth=2
	faddv	d0, p2, z0.d
	add	x14, x14, #1            // =1
	str	d0, [x15]
	cmp	x14, #39                // =39
	b.ne	.LBB0_10
// BB#13:                               // %for.inc55
                                        //   in Loop: Header=BB0_9 Depth=1
	add	x8, x8, #1              // =1
	add	x9, x9, #312            // =312
	cmp	x8, #39                 // =39
	b.ne	.LBB0_9
// BB#14:                               // %for.end57
	orr	w0, wzr, #0x1
	mov	x1, sp
	bl	clock_gettime
	ldp	d0, d1, [sp]
	ldr	d3, [x19, :lo12:main.time]
	adrp	x10, .LCPI0_1
	ldr	d2, [x10, :lo12:.LCPI0_1]
	scvtf	d0, d0
	scvtf	d1, d1
	adrp	x9, C
	fmadd	d0, d1, d8, d0
	adrp	x10, A
	mov	x8, xzr
	add	x9, x9, :lo12:C
	fsub	d0, d0, d3
	add	x10, x10, :lo12:A
	str	d0, [x19, :lo12:main.time]
.LBB0_15:                               // %for.cond63.preheader
                                        // =>This Loop Header: Depth=1
                                        //     Child Loop BB0_16 Depth 2
	mov	x11, xzr
	mov	x12, x10
	mov	x13, x9
.LBB0_16:                               // %for.body66
                                        //   Parent Loop BB0_15 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	ldr	d1, [x13]
	ldr	d0, [x12]
	fsub	d3, d1, d0
	fabs	d3, d3
	fcmp	d3, d2
	b.gt	.LBB0_20
// BB#17:                               // %for.cond63
                                        //   in Loop: Header=BB0_16 Depth=2
	add	x11, x11, #1            // =1
	add	x13, x13, #8            // =8
	add	x12, x12, #8            // =8
	cmp	x11, #38                // =38
	b.le	.LBB0_16
// BB#18:                               // %for.inc94
                                        //   in Loop: Header=BB0_15 Depth=1
	add	x8, x8, #1              // =1
	add	x9, x9, #312            // =312
	add	x10, x10, #312          // =312
	cmp	x8, #39                 // =39
	b.lt	.LBB0_15
// BB#19:                               // %for.end96
	adrp	x0, .Lstr
	add	x0, x0, :lo12:.Lstr
	bl	puts
	adrp	x8, .LCPI0_2
	ldr	d0, [x19, :lo12:main.time]
	ldr	d1, [x8, :lo12:.LCPI0_2]
	adrp	x0, .L.str.3
	add	x0, x0, :lo12:.L.str.3
	fmul	d0, d0, d1
	bl	printf
	mov	w0, wzr
	add	sp, sp, #16             // =16
	ldp	x29, x30, [sp, #32]     // 8-byte Folded Reload
	ldp	x20, x19, [sp, #16]     // 8-byte Folded Reload
	ldr	x28, [sp, #8]           // 8-byte Folded Reload
	ldr	d8, [sp], #32           // 8-byte Folded Reload
	addvl	sp, sp, #2
	ret
.LBB0_20:                               // %if.then79
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	bl	printf
	adrp	x0, .Lstr.4
	add	x0, x0, :lo12:.Lstr.4
	bl	puts
	movn	w0, #0
	bl	exit
.Lfunc_end0:
	.size	main, .Lfunc_end0-main

	.type	main.time,@object       // @main.time
	.local	main.time
	.comm	main.time,8,8
	.type	A,@object               // @A
	.comm	A,12168,8
	.type	B,@object               // @B
	.comm	B,12168,8
	.type	C,@object               // @C
	.comm	C,12168,8
	.type	.L.str,@object          // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%lf, actual : %lf\n"
	.size	.L.str, 19

	.type	.L.str.3,@object        // @.str.3
.L.str.3:
	.asciz	"time = %lf [msec]\n"
	.size	.L.str.3, 19

	.type	.Lstr,@object           // @str
.Lstr:
	.asciz	"PASS"
	.size	.Lstr, 5

	.type	.Lstr.4,@object         // @str.4
.Lstr.4:
	.asciz	"FAILED"
	.size	.Lstr.4, 7


	.ident	"ARM clang version 1.1 (build number 15) (based on LLVM 3.9.0svn)"
	.section	".note.GNU-stack","",@progbits
