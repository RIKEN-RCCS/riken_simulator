	.text
	.file	"dgemm_64_unroll.c"
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3
.LCPI0_0:
	.xword	4472406533629990549     // double 1.0000000000000001E-9
	.text
	.globl	get_dtime
	.p2align	2
	.type	get_dtime,@function
get_dtime:                              // @get_dtime
// BB#0:                                // %entry
	sub	sp, sp, #32             // =32
	orr	w0, wzr, #0x1
	mov	x1, sp
	stp	x29, x30, [sp, #16]     // 8-byte Folded Spill
	add	x29, sp, #16            // =16
	bl	clock_gettime
	ldp	d0, d1, [sp]
	adrp	x8, .LCPI0_0
	ldr	d2, [x8, :lo12:.LCPI0_0]
	ldp	x29, x30, [sp, #16]     // 8-byte Folded Reload
	scvtf	d0, d0
	scvtf	d1, d1
	fmadd	d0, d1, d2, d0
	add	sp, sp, #32             // =32
	ret
.Lfunc_end0:
	.size	get_dtime, .Lfunc_end0-get_dtime

	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3
.LCPI1_0:
	.xword	4472406533629990549     // double 1.0000000000000001E-9
.LCPI1_1:
	.xword	4382569440205035030     // double 1.0000000000000001E-15
.LCPI1_2:
	.xword	4652007308841189376     // double 1000
	.text
	.globl	main
	.p2align	2
	.type	main,@function
main:                                   // @main
// BB#0:                                // %entry
	str	d8, [sp, #-48]!         // 8-byte Folded Spill
	str	x21, [sp, #8]           // 8-byte Folded Spill
	stp	x20, x19, [sp, #16]     // 8-byte Folded Spill
	stp	x29, x30, [sp, #32]     // 8-byte Folded Spill
	add	x29, sp, #32            // =32
	sub	sp, sp, #16             // =16
	rdvl	x8, #1
	cmp	x8, #17                 // =17
	b.hs	.LBB1_2
// BB#1:                                // %mem.intrinsic
	adrp	x0, C
	mov	w1, wzr
	add	x0, x0, :lo12:C
	orr	w2, wzr, #0x8000
	bl	memset
	b	.LBB1_4
.LBB1_2:                                // %mem.ph
	orr	w9, wzr, #0x8000
	adrp	x10, C
	mov	x8, xzr
	add	x10, x10, :lo12:C
	whilelo	p0.b, xzr, x9
	mov	z0.b, #0                // =0x0
.LBB1_3:                                // %mem.exploop
                                        // =>This Inner Loop Header: Depth=1
	st1b	{z0.b}, p0, [x10, x8]
	addvl	x8, x8, #1
	whilelo	p0.b, x8, x9
	b.mi	.LBB1_3
.LBB1_4:                                // %for.cond1.preheader.preheader
	cntd	x10
	adrp	x20, A
	adrp	x21, B
	mov	x8, xzr
	orr	w9, wzr, #0x40
	index	z0.d, #0, #1
	ptrue	p2.d
	add	x20, x20, :lo12:A
	mov	z1.d, #0                // =0x0
	fmov	z2.d, #1.00000000
	mov	z3.d, x10
	add	x21, x21, :lo12:B
.LBB1_5:                                // %for.cond1.preheader
                                        // =>This Loop Header: Depth=1
                                        //     Child Loop BB1_6 Depth 2
	and	x11, x8, #0xffffffff
	lsl	x12, x8, #6
	mov	x10, xzr
	whilelo	p0.d, xzr, x9
	mov	z4.d, x12
	mov	z5.d, x11
	mov	z6.d, z0.d
.LBB1_6:                                // %vector.body
                                        //   Parent Loop BB1_5 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	add	z16.d, z6.d, z4.d
	lsl	x11, x8, #9
	cmpeq	p1.d, p2/z, z5.d, z6.d
	add	z7.d, z6.d, z3.d
	scvtf	z16.d, p2/m, z16.s
	add	x12, x20, x11
	fmov	x13, d6
	incd	x10
	add	x11, x21, x11
	sel	z6.d, p1, z2.d, z1.d
	st1d	{z16.d}, p0, [x12, x13, lsl #3]
	st1d	{z6.d}, p0, [x11, x13, lsl #3]
	whilelo	p0.d, x10, x9
	mov	z6.d, z7.d
	b.mi	.LBB1_6
// BB#7:                                // %for.inc20
                                        //   in Loop: Header=BB1_5 Depth=1
	add	x8, x8, #1              // =1
	cmp	x8, #64                 // =64
	b.ne	.LBB1_5
// BB#8:                                // %for.end22
	orr	w0, wzr, #0x1
	mov	x1, sp
	bl	clock_gettime
	ldp	d0, d1, [sp]
	adrp	x10, .LCPI1_0
	ldr	d8, [x10, :lo12:.LCPI1_0]
	adrp	x9, C
	scvtf	d0, d0
	scvtf	d1, d1
	ptrue	p1.d
	mov	x8, xzr
	adrp	x19, main.time
	add	x9, x9, :lo12:C
	orr	w10, wzr, #0x20
	fmadd	d0, d1, d8, d0
	cntd	x11
	str	d0, [x19, :lo12:main.time]
.LBB1_9:                                // %for.cond27.preheader
                                        // =>This Loop Header: Depth=1
                                        //     Child Loop BB1_10 Depth 2
                                        //       Child Loop BB1_11 Depth 3
	add	x13, x9, x8, lsl #9
	mov	x12, xzr
	add	x14, x13, #8            // =8
.LBB1_10:                               // %for.cond31.preheader
                                        //   Parent Loop BB1_9 Depth=1
                                        // =>  This Loop Header: Depth=2
                                        //       Child Loop BB1_11 Depth 3
	add	x15, x20, x8, lsl #9
	add	x15, x15, x12, lsl #3
	ld1rd	{z0.d}, p1/z, [x15]
	mov	w15, wzr
	mov	x16, xzr
	whilelo	p0.d, xzr, x10
.LBB1_11:                               // %vector.body182
                                        //   Parent Loop BB1_9 Depth=1
                                        //     Parent Loop BB1_10 Depth=2
                                        // =>    This Inner Loop Header: Depth=3
	sxtw	x17, w15
	add	x18, x21, x12, lsl #9
	index	z1.d, x17, #2
	ld2d	{z2.d, z3.d}, p0/z, [x18, x17, lsl #3]
	ld1d	{z4.d}, p0/z, [x13, z1.d, sxtw #3]
	incd	x16
	add	w15, w15, w11, lsl #1
	fmla	z4.d, p1/m, z2.d, z0.d
	st1d	{z4.d}, p0, [x13, z1.d, sxtw #3]
	ld1d	{z4.d}, p0/z, [x14, z1.d, sxtw #3]
	movprfx	z2, z4
	fmla	z2.d, p1/m, z3.d, z0.d
	st1d	{z2.d}, p0, [x14, z1.d, sxtw #3]
	whilelo	p0.d, x16, x10
	b.mi	.LBB1_11
// BB#12:                               // %for.inc52
                                        //   in Loop: Header=BB1_10 Depth=2
	add	x12, x12, #1            // =1
	cmp	x12, #64                // =64
	b.ne	.LBB1_10
// BB#13:                               // %for.inc55
                                        //   in Loop: Header=BB1_9 Depth=1
	add	x8, x8, #1              // =1
	cmp	x8, #64                 // =64
	b.ne	.LBB1_9
// BB#14:                               // %for.end57
	orr	w0, wzr, #0x1
	mov	x1, sp
	bl	clock_gettime
	ldp	d0, d1, [sp]
	ldr	d3, [x19, :lo12:main.time]
	adrp	x10, .LCPI1_1
	ldr	d2, [x10, :lo12:.LCPI1_1]
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
.LBB1_15:                               // %for.cond63.preheader
                                        // =>This Loop Header: Depth=1
                                        //     Child Loop BB1_16 Depth 2
	mov	x11, xzr
	mov	x12, x10
	mov	x13, x9
.LBB1_16:                               // %for.body66
                                        //   Parent Loop BB1_15 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	ldr	d1, [x13]
	ldr	d0, [x12]
	fsub	d3, d1, d0
	fabs	d3, d3
	fcmp	d3, d2
	b.gt	.LBB1_20
// BB#17:                               // %for.cond63
                                        //   in Loop: Header=BB1_16 Depth=2
	add	x11, x11, #1            // =1
	add	x13, x13, #8            // =8
	add	x12, x12, #8            // =8
	cmp	x11, #63                // =63
	b.le	.LBB1_16
// BB#18:                               // %for.inc94
                                        //   in Loop: Header=BB1_15 Depth=1
	add	x8, x8, #1              // =1
	add	x9, x9, #512            // =512
	add	x10, x10, #512          // =512
	cmp	x8, #64                 // =64
	b.lt	.LBB1_15
// BB#19:                               // %for.end96
	adrp	x0, .Lstr
	add	x0, x0, :lo12:.Lstr
	bl	puts
	adrp	x8, .LCPI1_2
	ldr	d0, [x19, :lo12:main.time]
	ldr	d1, [x8, :lo12:.LCPI1_2]
	adrp	x0, .L.str.3
	add	x0, x0, :lo12:.L.str.3
	fmul	d0, d0, d1
	bl	printf
	mov	w0, wzr
	add	sp, sp, #16             // =16
	ldp	x29, x30, [sp, #32]     // 8-byte Folded Reload
	ldp	x20, x19, [sp, #16]     // 8-byte Folded Reload
	ldr	x21, [sp, #8]           // 8-byte Folded Reload
	ldr	d8, [sp], #48           // 8-byte Folded Reload
	ret
.LBB1_20:                               // %if.then79
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	bl	printf
	adrp	x0, .Lstr.4
	add	x0, x0, :lo12:.Lstr.4
	bl	puts
	movn	w0, #0
	bl	exit
.Lfunc_end1:
	.size	main, .Lfunc_end1-main

	.type	main.time,@object       // @main.time
	.local	main.time
	.comm	main.time,8,8
	.type	A,@object               // @A
	.comm	A,32768,8
	.type	B,@object               // @B
	.comm	B,32768,8
	.type	C,@object               // @C
	.comm	C,32768,8
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
