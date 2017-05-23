	.text
	.file	"sgemm.c"
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3
.LCPI0_0:
	.xword	4472406533629990549     // double 1.0000000000000001E-9
	.text
	.globl	get_dtime
	.p2align	2
	.type	get_dtime,@function
get_dtime:                              // @get_dtime
// BB#0:
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
	.xword	4652007308841189376     // double 1000
	.text
	.globl	main
	.p2align	2
	.type	main,@function
main:                                   // @main
// BB#0:
	addvl	sp, sp, #-2
	str	d8, [sp, #-80]!         // 8-byte Folded Spill
	stp	x28, x25, [sp, #16]     // 8-byte Folded Spill
	stp	x24, x23, [sp, #32]     // 8-byte Folded Spill
	stp	x22, x21, [sp, #48]     // 8-byte Folded Spill
	stp	x20, x19, [sp, #64]     // 8-byte Folded Spill
	stp	x29, x30, [sp, #80]     // 8-byte Folded Spill
	add	x29, sp, #80            // =80
	sub	sp, sp, #16             // =16
	rdvl	x8, #1
	cmp	x8, #17                 // =17
	b.hs	.LBB1_2
// BB#1:
	adrp	x0, c
	mov	w1, wzr
	add	x0, x0, :lo12:c
	orr	w2, wzr, #0x1000
	bl	memset
	b	.LBB1_4
.LBB1_2:
	orr	w9, wzr, #0x1000
	adrp	x10, c
	mov	x8, xzr
	add	x10, x10, :lo12:c
	whilelo	p0.b, xzr, x9
	mov	z0.b, #0                // =0x0
.LBB1_3:                                // =>This Inner Loop Header: Depth=1
	st1b	{z0.b}, p0, [x10, x8]
	addvl	x8, x8, #1
	whilelo	p0.b, x8, x9
	b.mi	.LBB1_3
.LBB1_4:
	cntd	x10
	cntw	x11
	adrp	x19, a
	index	z3.d, x10, #1
	adrp	x10, b
	mov	x8, xzr
	orr	w9, wzr, #0x20
	index	z0.d, #0, #1
	ptrue	p4.s
	add	x19, x19, :lo12:a
	ptrue	p0.d
	mov	z1.s, #0                // =0x0
	fmov	z2.s, #1.00000000
	mov	z4.d, x11
	add	x10, x10, :lo12:b
.LBB1_5:                                // =>This Loop Header: Depth=1
                                        //     Child Loop BB1_6 Depth 2
	and	x12, x8, #0xffffffff
	lsl	x13, x8, #5
	whilelo	p5.s, xzr, x9
	mov	x11, xzr
	mov	z5.d, x13
	mov	z6.d, x12
	mov	p1.b, p5.b
	mov	z7.d, z0.d
	mov	z16.d, z3.d
.LBB1_6:                                //   Parent Loop BB1_5 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	add	z18.d, z7.d, z5.d
	add	z19.d, z16.d, z5.d
	add	z17.d, z7.d, z4.d
	cmpeq	p2.d, p0/z, z6.d, z7.d
	cmpeq	p3.d, p0/z, z6.d, z16.d
	fmov	x12, d7
	lsl	x13, x8, #7
	uzp1	z7.s, z18.s, z19.s
	add	x14, x19, x13
	uzp1	p2.s, p2.s, p3.s
	scvtf	z7.s, p4/m, z7.s
	incw	x11
	add	x13, x10, x13
	st1w	{z7.s}, p1, [x14, x12, lsl #2]
	sel	z7.s, p2, z2.s, z1.s
	add	z16.d, z16.d, z4.d
	st1w	{z7.s}, p1, [x13, x12, lsl #2]
	whilelo	p1.s, x11, x9
	mov	z7.d, z17.d
	b.mi	.LBB1_6
// BB#7:                                //   in Loop: Header=BB1_5 Depth=1
	add	x8, x8, #1              // =1
	cmp	x8, #32                 // =32
	b.ne	.LBB1_5
// BB#8:
	orr	w0, wzr, #0x1
	mov	x1, sp
	str	p5, [x29, #8, mul vl]   // 2-byte Folded Spill
	bl	clock_gettime
	ldp	d0, d1, [sp]
	adrp	x10, .LCPI1_0
	ldr	d8, [x10, :lo12:.LCPI1_0]
	ldr	p2, [x29, #8, mul vl]   // 2-byte Folded Reload
	adrp	x9, c
	adrp	x10, b
	scvtf	d0, d0
	scvtf	d1, d1
	ptrue	p1.s
	mov	x8, xzr
	adrp	x20, main.time
	add	x9, x9, :lo12:c
	add	x10, x10, :lo12:b
	fmadd	d0, d1, d8, d0
	orr	w11, wzr, #0x20
	str	d0, [x20, :lo12:main.time]
.LBB1_9:                                // =>This Loop Header: Depth=1
                                        //     Child Loop BB1_10 Depth 2
                                        //       Child Loop BB1_11 Depth 3
	mov	x12, xzr
	mov	x13, x10
.LBB1_10:                               //   Parent Loop BB1_9 Depth=1
                                        // =>  This Loop Header: Depth=2
                                        //       Child Loop BB1_11 Depth 3
	add	x14, x19, x8, lsl #7
	add	x14, x14, x12, lsl #2
	ld1rw	{z0.s}, p1/z, [x14]
	mov	x14, xzr
	mov	p0.b, p2.b
.LBB1_11:                               //   Parent Loop BB1_9 Depth=1
                                        //     Parent Loop BB1_10 Depth=2
                                        // =>    This Inner Loop Header: Depth=3
	ld1w	{z1.s}, p0/z, [x13, x14, lsl #2]
	ld1w	{z2.s}, p0/z, [x9, x14, lsl #2]
	fmad	z1.s, p1/m, z0.s, z2.s
	st1w	{z1.s}, p0, [x9, x14, lsl #2]
	incw	x14
	whilelo	p0.s, x14, x11
	b.mi	.LBB1_11
// BB#12:                               //   in Loop: Header=BB1_10 Depth=2
	add	x12, x12, #1            // =1
	add	x13, x13, #128          // =128
	cmp	x12, #32                // =32
	b.ne	.LBB1_10
// BB#13:                               //   in Loop: Header=BB1_9 Depth=1
	add	x8, x8, #1              // =1
	add	x9, x9, #128            // =128
	cmp	x8, #32                 // =32
	b.ne	.LBB1_9
// BB#14:
	orr	w0, wzr, #0x1
	mov	x1, sp
	bl	clock_gettime
	ldp	d0, d1, [sp]
	ldr	d2, [x20, :lo12:main.time]
	adrp	x22, c
	add	x22, x22, :lo12:c
	scvtf	d0, d0
	scvtf	d1, d1
	fmadd	d0, d1, d8, d0
	adrp	x19, .L.str
	mov	x21, xzr
	fsub	d0, d0, d2
	add	x19, x19, :lo12:.L.str
	mov	x23, x22
	str	d0, [x20, :lo12:main.time]
.LBB1_15:                               // =>This Loop Header: Depth=1
                                        //     Child Loop BB1_16 Depth 2
	orr	w24, wzr, #0x20
	mov	x25, x23
.LBB1_16:                               //   Parent Loop BB1_15 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	ldr	s0, [x25], #4
	mov	x0, x19
	fcvt	d0, s0
	bl	printf
	sub	x24, x24, #1            // =1
	cbnz	x24, .LBB1_16
// BB#17:                               //   in Loop: Header=BB1_15 Depth=1
	movz	w0, #10
	bl	putchar
	add	x21, x21, #1            // =1
	add	x23, x23, #128          // =128
	cmp	x21, #32                // =32
	b.ne	.LBB1_15
// BB#18:
	ldr	s0, [x22, #4092]
	adrp	x0, .L.str.2
	add	x0, x0, :lo12:.L.str.2
	fcvt	d0, s0
	bl	printf
	adrp	x8, .LCPI1_1
	ldr	d0, [x20, :lo12:main.time]
	ldr	d1, [x8, :lo12:.LCPI1_1]
	adrp	x0, .L.str.3
	add	x0, x0, :lo12:.L.str.3
	fmul	d0, d0, d1
	bl	printf
	mov	w0, wzr
	add	sp, sp, #16             // =16
	ldp	x29, x30, [sp, #80]     // 8-byte Folded Reload
	ldp	x20, x19, [sp, #64]     // 8-byte Folded Reload
	ldp	x22, x21, [sp, #48]     // 8-byte Folded Reload
	ldp	x24, x23, [sp, #32]     // 8-byte Folded Reload
	ldp	x28, x25, [sp, #16]     // 8-byte Folded Reload
	ldr	d8, [sp], #80           // 8-byte Folded Reload
	addvl	sp, sp, #2
	ret
.Lfunc_end1:
	.size	main, .Lfunc_end1-main

	.type	main.time,@object       // @main.time
	.local	main.time
	.comm	main.time,8,8
	.type	a,@object               // @a
	.comm	a,4096,4
	.type	b,@object               // @b
	.comm	b,4096,4
	.type	c,@object               // @c
	.comm	c,4096,4
	.type	.L.str,@object          // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%.1f\t"
	.size	.L.str, 6

	.type	.L.str.2,@object        // @.str.2
.L.str.2:
	.asciz	"%lf\n"
	.size	.L.str.2, 5

	.type	.L.str.3,@object        // @.str.3
.L.str.3:
	.asciz	"time = %lf [msec]\n"
	.size	.L.str.3, 19


	.ident	"ARM clang version 1.0 (build number 19) (based on LLVM 3.9.0svn)"
	.section	".note.GNU-stack","",@progbits
