	.ident	"$Options: Fujitsu C/C++ Compiler Version 1.2.0 P-id: Alpha-20161007 (Oct  6 2016 19:10:27) --preinclude /opt/FJTComp2/bin/../lib/c99.pre -D__FUJITSU -Dunix -D__aarch64__ -D__unix -D__fcc_version__=0x700 -D__fcc_version=700 -D__ARM_ARCH=8 -D__FP_FAST_FMA -D__ELF__ -D__unix__ -D__linux__ -D__linux -Asystem(unix) -Dlinux -D__LIBC_6B -D__LP64__ -D_LP64 --K=noocl --zmode=64 --c99 -I/opt/FJTComp2/bin/../include -I/dummy/usr/include --K=opt bench-fdiv.c -- -ncmdname=fccpx -O3 -x- -Komitfp,mfunc,lib,rdconv,eval,fp_relaxed,ns,fast_matmul,fp_contract,ilfunc,prefetch_conditional,simd=2,loop_nofission bench-fdiv.s $"
	.file	"bench-fdiv.c"
	.ident	"$Compiler: Fujitsu C/C++ Compiler Version 1.2.0 P-id: Alpha-20161007 (Oct  6 2016 19:10:27) bench-fdiv.c get_dtime $"
	.text
	.align	2
	.global	get_dtime
	.type	get_dtime, %function
get_dtime:
/*    ??? */	stp	x19, x30, [sp, -32]!	//  (*)
/*      7 */	add	x19, sp, 16
/*      7 */	mov	w0, 1
/*      7 */	mov	x1, x19
/*      7 */	bl	clock_gettime
/*      8 */	ldr	x0, [x19]	//  "tp"
/*      8 */	ldr	x1, [x19, 8]	//  "tp"
/*      8 */	ldr	d0, .LC1
/*      8 */	scvtf	d1, x0
/*      8 */	scvtf	d2, x1
/*      8 */	fmadd	d0, d2, d0, d1
/*    ??? */	ldp	x19, x30, [sp], 32	//  (*)
/*      9 */	ret	
	.size	get_dtime, .-get_dtime
	.align	3
.LC1:
	.word	0xe826d695,0x3e112e0b
	.ident	"$Compiler: Fujitsu C/C++ Compiler Version 1.2.0 P-id: Alpha-20161007 (Oct  6 2016 19:10:27) bench-fdiv.c main $"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
/*    ??? */	stp	x19, x20, [sp, -224]!	//  (*)
/*    ??? */	stp	x21, x22, [sp, 16]	//  (*)
/*    ??? */	stp	x23, x24, [sp, 32]	//  (*)
/*    ??? */	stp	x25, x26, [sp, 48]	//  (*)
/*    ??? */	stp	x27, x28, [sp, 64]	//  (*)
/*    ??? */	str	x30, [sp, 80]	//  (*)
/*    ??? */	stp	d8, d9, [sp, 88]	//  (*)
/*    ??? */	stp	d10, d11, [sp, 104]	//  (*)
/*    ??? */	stp	d12, d13, [sp, 120]	//  (*)
/*    ??? */	stp	d14, d15, [sp, 136]	//  (*)
/*     23 */	cmp	w0, 1
/*     23 */	ble	.L100
/*     24 */	ldr	x0, [x1, 8]	//  (*)
/*     24 */	bl	atoi
/*    ??? */	str	w0, [sp, 196]	//  (*)
/*     24 */	b	.L101
.L100:
/*     26 */	mov	w0, 1000
/*    ??? */	str	w0, [sp, 196]	//  (*)
.L101:
/*     27 */	adrp	x0, .LR.3
/*     27 */	mov	x2, 2048
/*    ??? */	ldr	w1, [sp, 196]	//  (*)
/*     27 */	add	x0, x0, :lo12:.LR.3
/*     27 */	bl	printf
/*     28 */	ptrue	p0.d, VL8
/*     28 */	index	z0.d, 1, 1
/*     31 */	ldr	d1, .LC2
/*     30 */	ldr	d2, .LC3
/*     28 */	mov	w1, 84
/*     28 */	mov	x2, 0
/*     31 */	adrp	x0, c
/*     30 */	ldr	d3, .LC4
/*     31 */	add	x26, x0, :lo12:c
/*     30 */	adrp	x3, b
/*     30 */	adrp	x4, a
/*    ??? */	str	x0, [sp, 176]	//  (*)
/*     30 */	add	x20, x3, :lo12:b
/*     30 */	add	x22, x4, :lo12:a
/*     28 */	mov	x0, 0
/*     31 */	adrp	x3, c+64
/*     30 */	adrp	x4, b+64
/*     31 */	add	x27, x3, :lo12:c+64
/*     30 */	add	x21, x4, :lo12:b+64
/*     30 */	adrp	x3, a+64
/*     31 */	adrp	x4, c+128
/*     30 */	add	x24, x3, :lo12:a+64
/*     30 */	adrp	x3, b+128
/*     31 */	add	x28, x4, :lo12:c+128
/*     30 */	adrp	x4, a+128
/*     30 */	add	x23, x3, :lo12:b+128
/*     30 */	add	x25, x4, :lo12:a+128
/*     31 */	dup	z17.d, z1.d[0]
/*     30 */	dup	z8.d, z2.d[0]
/*     30 */	dup	z11.d, z3.d[0]
/*     32 */	add	x3, x0, 8
/*     29 */	dup	z1.d, x0
/*     32 */	add	x4, x0, 24
/*     29 */	dup	z2.d, x3
/*     32 */	add	x6, x0, 32
/*     32 */	add	x3, x0, 40
/*     32 */	add	x5, x0, 16
/*     32 */	add	x0, x0, 48
/*     29 */	dup	z5.d, x3
/*     32 */	add	x7, x0, 16
/*     32 */	add	x3, x0, 40
/*     29 */	dup	z6.d, x4
/*     29 */	dup	z4.d, x6
/*     32 */	add	x6, x0, 32
/*     32 */	add	x4, x0, 24
/*     29 */	dup	z3.d, x5
/*     32 */	add	x5, x0, 8
/*     29 */	dup	z7.d, x5
/*     29 */	add	z1.d, p0/m, z1.d, z0.d
/*     29 */	add	z2.d, p0/m, z2.d, z0.d
/*     29 */	add	z5.d, p0/m, z5.d, z0.d
/*     29 */	add	z6.d, p0/m, z6.d, z0.d
/*     29 */	add	z4.d, p0/m, z4.d, z0.d
/*     29 */	scvtf	z9.d, p0/m, z1.d
/*     29 */	add	z3.d, p0/m, z3.d, z0.d
/*     29 */	scvtf	z10.d, p0/m, z2.d
/*     29 */	scvtf	z18.d, p0/m, z5.d
/*     29 */	add	z7.d, p0/m, z7.d, z0.d
/*     29 */	scvtf	z21.d, p0/m, z6.d
/*     29 */	scvtf	z14.d, p0/m, z4.d
/*     29 */	scvtf	z13.d, p0/m, z3.d
/*     29 */	dup	z4.d, x6
/*     29 */	dup	z1.d, x0
/*     32 */	add	x0, x0, 48
/*     29 */	dup	z3.d, x7
/*     30 */	movprfx	z2.d, p0/z, z9.d
/*     30 */	fmul	z2.d, p0/m, z2.d, z8.d
/*     30 */	movprfx	z5.d, p0/z, z10.d
/*     30 */	fmul	z5.d, p0/m, z5.d, z8.d
/*     30 */	movprfx	z6.d, p0/z, z10.d
/*     30 */	fmul	z6.d, p0/m, z6.d, z11.d
/*     29 */	scvtf	z10.d, p0/m, z7.d
/*     30 */	movprfx	z12.d, p0/z, z13.d
/*     30 */	fmul	z12.d, p0/m, z12.d, z8.d
/*     29 */	add	z4.d, p0/m, z4.d, z0.d
.L103:					// :entr:term:body:swpl
/*     30 */	st1d	z5.d, p0, [x21, x2, lsl #3]	//  "b"
/*     30 */	movprfx	z5.d, p0/z, z9.d
/*     30 */	fmul	z5.d, p0/m, z5.d, z11.d
/*     32 */	add	x5, x0, 8
/*     30 */	fmul	z13.d, p0/m, z13.d, z11.d
/*     29 */	dup	z15.d, x5
/*     30 */	st1d	z2.d, p0, [x20, x2, lsl #3]	//  "b"
/*     29 */	add	z1.d, p0/m, z1.d, z0.d
/*     31 */	st1d	z17.d, p0, [x27, x2, lsl #3]	//  "c"
/*     30 */	movprfx	z2.d, p0/z, z14.d
/*     30 */	fmul	z2.d, p0/m, z2.d, z8.d
/*     30 */	st1d	z12.d, p0, [x23, x2, lsl #3]	//  "b"
/*     29 */	add	z3.d, p0/m, z3.d, z0.d
/*     30 */	movprfx	z7.d, p0/z, z18.d
/*     30 */	fmul	z7.d, p0/m, z7.d, z8.d
/*     29 */	dup	z20.d, x3
/*     30 */	movprfx	z12.d, p0/z, z21.d
/*     30 */	fmul	z12.d, p0/m, z12.d, z8.d
/*     29 */	dup	z19.d, x4
/*     30 */	st1d	z6.d, p0, [x24, x2, lsl #3]	//  "a"
/*     29 */	scvtf	z9.d, p0/m, z1.d
/*     31 */	st1d	z17.d, p0, [x28, x2, lsl #3]	//  "c"
/*     30 */	movprfx	z6.d, p0/z, z14.d
/*     30 */	fmul	z6.d, p0/m, z6.d, z11.d
/*     30 */	st1d	z13.d, p0, [x25, x2, lsl #3]	//  "a"
/*     29 */	scvtf	z13.d, p0/m, z3.d
/*     32 */	add	x3, x0, 16
/*     30 */	st1d	z5.d, p0, [x22, x2, lsl #3]	//  "a"
/*     29 */	add	z15.d, p0/m, z15.d, z0.d
/*     32 */	add	x4, x0, 24
/*     31 */	st1d	z17.d, p0, [x26, x2, lsl #3]	//  "c"
/*     29 */	scvtf	z14.d, p0/m, z4.d
/*     32 */	add	x5, x2, 24
/*     30 */	st1d	z2.d, p0, [x21, x5, lsl #3]	//  "b"
/*     30 */	movprfx	z16.d, p0/z, z21.d
/*     30 */	fmul	z16.d, p0/m, z16.d, z11.d
/*     32 */	add	x6, x0, 32
/*     30 */	fmul	z18.d, p0/m, z18.d, z11.d
/*     29 */	dup	z4.d, x6
/*     30 */	st1d	z12.d, p0, [x20, x5, lsl #3]	//  "b"
/*     29 */	add	z19.d, p0/m, z19.d, z0.d
/*     31 */	st1d	z17.d, p0, [x27, x5, lsl #3]	//  "c"
/*     30 */	movprfx	z5.d, p0/z, z10.d
/*     30 */	fmul	z5.d, p0/m, z5.d, z8.d
/*     30 */	st1d	z7.d, p0, [x23, x5, lsl #3]	//  "b"
/*     29 */	add	z20.d, p0/m, z20.d, z0.d
/*     30 */	movprfx	z12.d, p0/z, z13.d
/*     30 */	fmul	z12.d, p0/m, z12.d, z8.d
/*     29 */	dup	z3.d, x3
/*     30 */	movprfx	z2.d, p0/z, z9.d
/*     30 */	fmul	z2.d, p0/m, z2.d, z8.d
/*     29 */	dup	z1.d, x0
/*     30 */	st1d	z6.d, p0, [x24, x5, lsl #3]	//  "a"
/*     29 */	scvtf	z21.d, p0/m, z19.d
/*     31 */	st1d	z17.d, p0, [x28, x5, lsl #3]	//  "c"
/*     30 */	movprfx	z6.d, p0/z, z10.d
/*     30 */	fmul	z6.d, p0/m, z6.d, z11.d
/*     30 */	st1d	z18.d, p0, [x25, x5, lsl #3]	//  "a"
/*     29 */	scvtf	z18.d, p0/m, z20.d
/*     32 */	add	x3, x0, 40
/*     30 */	st1d	z16.d, p0, [x22, x5, lsl #3]	//  "a"
/*     29 */	add	z4.d, p0/m, z4.d, z0.d
/*     32 */	add	x0, x0, 48
/*     31 */	st1d	z17.d, p0, [x26, x5, lsl #3]	//  "c"
/*     29 */	scvtf	z10.d, p0/m, z15.d
/*     32 */	add	x2, x2, 48
/*     32 */	sub	w1, w1, 2
/*     32 */	cmp	w1, 6
/*     32 */	bge	.L103
/*     29 */	add	z1.d, p0/m, z1.d, z0.d
/*     30 */	movprfx	z19.d, p0/z, z9.d
/*     30 */	fmul	z19.d, p0/m, z19.d, z11.d
/*     32 */	sub	w1, w1, 2
/*     30 */	movprfx	z15.d, p0/z, z13.d
/*     30 */	fmul	z15.d, p0/m, z15.d, z11.d
/*     30 */	movprfx	z16.d, p0/z, z18.d
/*     30 */	fmul	z16.d, p0/m, z16.d, z8.d
/*     32 */	sub	w1, w1, 2
/*     29 */	add	z3.d, p0/m, z3.d, z0.d
/*     30 */	st1d	z5.d, p0, [x21, x2, lsl #3]	//  "b"
/*     30 */	movprfx	z7.d, p0/z, z14.d
/*     30 */	fmul	z7.d, p0/m, z7.d, z8.d
/*     31 */	st1d	z17.d, p0, [x27, x2, lsl #3]	//  "c"
/*     29 */	scvtf	z9.d, p0/m, z1.d
/*     30 */	st1d	z6.d, p0, [x24, x2, lsl #3]	//  "a"
/*     30 */	st1d	z2.d, p0, [x20, x2, lsl #3]	//  "b"
/*     30 */	movprfx	z1.d, p0/z, z14.d
/*     30 */	fmul	z1.d, p0/m, z1.d, z11.d
/*     29 */	scvtf	z13.d, p0/m, z3.d
/*     31 */	st1d	z17.d, p0, [x28, x2, lsl #3]	//  "c"
/*     29 */	dup	z23.d, x3
/*     30 */	movprfx	z20.d, p0/z, z21.d
/*     30 */	fmul	z20.d, p0/m, z20.d, z8.d
/*     32 */	add	x3, x2, 24
/*     30 */	st1d	z12.d, p0, [x23, x2, lsl #3]	//  "b"
/*     30 */	fmul	z18.d, p0/m, z18.d, z11.d
/*     30 */	st1d	z15.d, p0, [x25, x2, lsl #3]	//  "a"
/*     30 */	movprfx	z3.d, p0/z, z21.d
/*     30 */	fmul	z3.d, p0/m, z3.d, z11.d
/*     30 */	st1d	z19.d, p0, [x22, x2, lsl #3]	//  "a"
/*     30 */	movprfx	z5.d, p0/z, z10.d
/*     30 */	fmul	z5.d, p0/m, z5.d, z8.d
/*     31 */	st1d	z17.d, p0, [x26, x2, lsl #3]	//  "c"
/*     30 */	movprfx	z6.d, p0/z, z10.d
/*     30 */	fmul	z6.d, p0/m, z6.d, z11.d
/*     32 */	add	x2, x2, 48
/*     29 */	scvtf	z14.d, p0/m, z4.d
/*     30 */	st1d	z7.d, p0, [x21, x3, lsl #3]	//  "b"
/*     31 */	st1d	z17.d, p0, [x27, x3, lsl #3]	//  "c"
/*     30 */	movprfx	z2.d, p0/z, z9.d
/*     30 */	fmul	z2.d, p0/m, z2.d, z8.d
/*     30 */	movprfx	z12.d, p0/z, z13.d
/*     30 */	fmul	z12.d, p0/m, z12.d, z8.d
/*     30 */	st1d	z1.d, p0, [x24, x3, lsl #3]	//  "a"
/*     29 */	add	z23.d, p0/m, z23.d, z0.d
/*     30 */	st1d	z20.d, p0, [x20, x3, lsl #3]	//  "b"
/*     31 */	st1d	z17.d, p0, [x28, x3, lsl #3]	//  "c"
/*     30 */	fmul	z13.d, p0/m, z13.d, z11.d
/*     30 */	st1d	z18.d, p0, [x25, x3, lsl #3]	//  "a"
/*     30 */	fmul	z9.d, p0/m, z9.d, z11.d
/*     29 */	dup	z22.d, x4
/*     30 */	st1d	z16.d, p0, [x23, x3, lsl #3]	//  "b"
/*     29 */	scvtf	z18.d, p0/m, z23.d
/*     30 */	st1d	z3.d, p0, [x22, x3, lsl #3]	//  "a"
/*     30 */	movprfx	z1.d, p0/z, z14.d
/*     30 */	fmul	z1.d, p0/m, z1.d, z8.d
/*     31 */	st1d	z17.d, p0, [x26, x3, lsl #3]	//  "c"
/*     30 */	fmul	z14.d, p0/m, z14.d, z11.d
/*     32 */	add	x3, x2, 24
/*     30 */	st1d	z5.d, p0, [x21, x2, lsl #3]	//  "b"
/*     31 */	st1d	z17.d, p0, [x27, x2, lsl #3]	//  "c"
/*     30 */	st1d	z6.d, p0, [x24, x2, lsl #3]	//  "a"
/*     30 */	st1d	z2.d, p0, [x20, x2, lsl #3]	//  "b"
/*     29 */	add	z22.d, p0/m, z22.d, z0.d
/*     30 */	movprfx	z3.d, p0/z, z18.d
/*     30 */	fmul	z3.d, p0/m, z3.d, z8.d
/*     31 */	st1d	z17.d, p0, [x28, x2, lsl #3]	//  "c"
/*     30 */	st1d	z13.d, p0, [x25, x2, lsl #3]	//  "a"
/*     30 */	fmul	z18.d, p0/m, z18.d, z11.d
/*     30 */	st1d	z12.d, p0, [x23, x2, lsl #3]	//  "b"
/*     29 */	scvtf	z21.d, p0/m, z22.d
/*     30 */	st1d	z9.d, p0, [x22, x2, lsl #3]	//  "a"
/*     31 */	st1d	z17.d, p0, [x26, x2, lsl #3]	//  "c"
/*     32 */	add	x2, x2, 48
/*     30 */	st1d	z1.d, p0, [x21, x3, lsl #3]	//  "b"
/*     31 */	st1d	z17.d, p0, [x27, x3, lsl #3]	//  "c"
/*     30 */	st1d	z14.d, p0, [x24, x3, lsl #3]	//  "a"
/*     31 */	st1d	z17.d, p0, [x28, x3, lsl #3]	//  "c"
/*     30 */	st1d	z18.d, p0, [x25, x3, lsl #3]	//  "a"
/*     30 */	movprfx	z2.d, p0/z, z21.d
/*     30 */	fmul	z2.d, p0/m, z2.d, z8.d
/*     30 */	fmul	z21.d, p0/m, z21.d, z11.d
/*     31 */	st1d	z17.d, p0, [x26, x3, lsl #3]	//  "c"
/*     30 */	st1d	z2.d, p0, [x20, x3, lsl #3]	//  "b"
/*     30 */	st1d	z3.d, p0, [x23, x3, lsl #3]	//  "b"
/*     30 */	st1d	z21.d, p0, [x22, x3, lsl #3]	//  "a"
/*     29 */	dup	z1.d, x0
/*     32 */	add	x0, x0, 8
/*     32 */	sub	w1, w1, 1
/*     30 */	ldr	d7, .LC3
/*     29 */	dup	z2.d, x0
/*     32 */	add	x0, x0, 8
/*     32 */	cmp	w1, 0
/*     31 */	adrp	x1, c+16320
/*     29 */	dup	z3.d, x0
/*     32 */	add	x0, x0, 8
/*     31 */	add	x19, x1, :lo12:c+16320
/*     30 */	adrp	x1, b+16320
/*     29 */	dup	z4.d, x0
/*      7 */	mov	w0, 1
/*     30 */	adrp	x3, a+16320
/*     30 */	add	x1, x1, :lo12:b+16320
/*    ??? */	str	x1, [sp, 168]	//  (*)
/*     30 */	add	x1, x3, :lo12:a+16320
/*     30 */	ldr	d9, .LC4
/*     31 */	ldr	d10, .LC2
/*     31 */	st1d	z17.d, p0, [x26, x2, lsl #3]	//  "c"
/*     31 */	st1d	z17.d, p0, [x27, x2, lsl #3]	//  "c"
/*     29 */	add	z1.d, p0/m, z1.d, z0.d
/*     29 */	add	z2.d, p0/m, z2.d, z0.d
/*     29 */	add	z3.d, p0/m, z3.d, z0.d
/*     29 */	add	z4.d, p0/m, z4.d, z0.d
/*     29 */	scvtf	z1.d, p0/m, z1.d
/*     29 */	scvtf	z5.d, p0/m, z2.d
/*     29 */	scvtf	z3.d, p0/m, z3.d
/*     29 */	scvtf	z6.d, p0/m, z4.d
/*    ??? */	str	x1, [sp, 160]	//  (*)
/*     30 */	dup	z4.d, z7.d[0]
/*     30 */	dup	z7.d, z9.d[0]
/*     31 */	st1d	z17.d, p0, [x28, x2, lsl #3]	//  "c"
/*     30 */	movprfx	z0.d, p0/z, z1.d
/*     30 */	fmul	z0.d, p0/m, z0.d, z8.d
/*     30 */	fmul	z1.d, p0/m, z1.d, z11.d
/*     30 */	movprfx	z2.d, p0/z, z5.d
/*     30 */	fmul	z2.d, p0/m, z2.d, z8.d
/*     30 */	fmul	z5.d, p0/m, z5.d, z11.d
/*      7 */	add	x1, sp, 208
/*     30 */	fmul	z8.d, p0/m, z8.d, z3.d
/*     30 */	fmul	z3.d, p0/m, z3.d, z11.d
/*    ??? */	str	x1, [sp, 200]	//  (*)
/*     30 */	fmul	z4.d, p0/m, z4.d, z6.d
/*     30 */	fmul	z6.d, p0/m, z6.d, z7.d
/*     31 */	dup	z9.d, z10.d[0]
/*     30 */	st1d	z0.d, p0, [x20, x2, lsl #3]	//  "b"
/*     30 */	st1d	z2.d, p0, [x21, x2, lsl #3]	//  "b"
/*     30 */	st1d	z8.d, p0, [x23, x2, lsl #3]	//  "b"
/*    ??? */	ldr	x1, [sp, 168]	//  (*)
/*     30 */	st1d	z1.d, p0, [x22, x2, lsl #3]	//  "a"
/*     30 */	st1d	z5.d, p0, [x24, x2, lsl #3]	//  "a"
/*     30 */	st1d	z3.d, p0, [x25, x2, lsl #3]	//  "a"
/*     31 */	st1d	z9.d, p0, [x19, 0, mul vl]	//  "c"
/*     30 */	st1d	z4.d, p0, [x1, 0, mul vl]	//  "b"
/*    ??? */	ldr	x1, [sp, 160]	//  (*)
/*     30 */	st1d	z6.d, p0, [x1, 0, mul vl]	//  "a"
/*    ??? */	ldr	x1, [sp, 200]	//  (*)
/*      7 */	bl	clock_gettime
/*    ??? */	ldr	x0, [sp, 200]	//  (*)
/*      8 */	ldr	d0, .LC5
/*      8 */	ldr	x1, [x0]	//  "tp"
/*      8 */	ldr	x0, [x0, 8]	//  "tp"
/*      8 */	scvtf	d1, x1
/*      8 */	scvtf	d2, x0
/*      8 */	fmadd	d0, d2, d0, d1
/*    ??? */	str	d0, [sp, 184]	//  (*)
/*    ??? */	ldr	w0, [sp, 196]	//  (*)
/*     34 */	cmp	w0, 0
/*     34 */	ble	.L113
/*     35 */	ptrue	p0.d, VL8
/*    ??? */	ldr	w0, [sp, 196]	//  (*)
.L108:					// :entr
/*     35 */	mov	w3, 84
/*     35 */	mov	x1, 0
/*     37 */	ld1d	z15.d, p0/z, [x20, x1, lsl #3]	//  "b"
/*     37 */	add	x4, x1, 24
/*     37 */	add	x7, x1, 48
/*     37 */	ld1d	z18.d, p0/z, [x20, x4, lsl #3]	//  "b"
/*     37 */	ld1d	z19.d, p0/z, [x21, x1, lsl #3]	//  "b"
/*     37 */	add	x5, x1, 72
/*     37 */	add	x6, x1, 96
/*     37 */	ld1d	z20.d, p0/z, [x23, x1, lsl #3]	//  "b"
/*     37 */	ld1d	z17.d, p0/z, [x20, x7, lsl #3]	//  "b"
/*     37 */	ld1d	z16.d, p0/z, [x21, x4, lsl #3]	//  "b"
/*     37 */	ld1d	z12.d, p0/z, [x23, x4, lsl #3]	//  "b"
/*     37 */	ld1d	z14.d, p0/z, [x20, x5, lsl #3]	//  "b"
/*     37 */	ld1d	z25.d, p0/z, [x21, x7, lsl #3]	//  "b"
/*     36 */	ld1d	z13.d, p0/z, [x22, x1, lsl #3]	//  "a"
/*     36 */	ld1d	z24.d, p0/z, [x24, x1, lsl #3]	//  "a"
/*     36 */	ld1d	z26.d, p0/z, [x25, x1, lsl #3]	//  "a"
/*     36 */	frecpe	z1.d, z15.d
/*     36 */	frecpe	z21.d, z18.d
/*     36 */	frecpe	z3.d, z19.d
/*     36 */	frecpe	z5.d, z20.d
/*     36 */	frecpe	z6.d, z16.d
/*     36 */	frecpe	z9.d, z12.d
/*     36 */	frecps	z0.d, z1.d, z15.d
/*     36 */	frecps	z2.d, z21.d, z18.d
/*     36 */	frecps	z4.d, z3.d, z19.d
/*     36 */	frecps	z7.d, z5.d, z20.d
/*     36 */	frecps	z8.d, z6.d, z16.d
/*     36 */	frecps	z10.d, z9.d, z12.d
/*     36 */	fmul	z1.d, p0/m, z1.d, z0.d
/*     36 */	fmul	z21.d, p0/m, z21.d, z2.d
/*     36 */	frecpe	z2.d, z17.d
/*     36 */	fmul	z3.d, p0/m, z3.d, z4.d
/*     36 */	fmul	z5.d, p0/m, z5.d, z7.d
/*     36 */	fmul	z8.d, p0/m, z8.d, z6.d
/*     37 */	ld1d	z6.d, p0/z, [x23, x7, lsl #3]	//  "b"
/*     36 */	frecps	z4.d, z2.d, z17.d
/*     36 */	fmul	z9.d, p0/m, z9.d, z10.d
/*     37 */	ld1d	z10.d, p0/z, [x20, x6, lsl #3]	//  "b"
/*     36 */	frecps	z0.d, z1.d, z15.d
/*     36 */	frecps	z11.d, z21.d, z18.d
/*     36 */	frecps	z7.d, z5.d, z20.d
/*     36 */	frecps	z22.d, z8.d, z16.d
/*     36 */	fmul	z4.d, p0/m, z4.d, z2.d
/*     36 */	frecpe	z2.d, z14.d
/*     36 */	fmul	z1.d, p0/m, z1.d, z0.d
/*     36 */	frecps	z0.d, z3.d, z19.d
/*     36 */	fmul	z21.d, p0/m, z21.d, z11.d
/*     37 */	ld1d	z11.d, p0/z, [x21, x5, lsl #3]	//  "b"
/*     36 */	fmul	z5.d, p0/m, z5.d, z7.d
/*     36 */	frecps	z7.d, z2.d, z14.d
/*     36 */	frecps	z15.d, z1.d, z15.d
/*     36 */	fmul	z3.d, p0/m, z3.d, z0.d
/*     36 */	frecps	z0.d, z4.d, z17.d
/*     36 */	frecps	z20.d, z5.d, z20.d
/*     36 */	fmul	z7.d, p0/m, z7.d, z2.d
/*     36 */	frecps	z2.d, z9.d, z12.d
/*     36 */	frecps	z18.d, z21.d, z18.d
/*     36 */	fmul	z1.d, p0/m, z1.d, z15.d
/*     36 */	frecpe	z15.d, z25.d
/*     36 */	frecps	z19.d, z3.d, z19.d
/*     36 */	frecps	z23.d, z15.d, z25.d
/*     36 */	fmul	z1.d, p0/m, z1.d, z13.d
/*     36 */	frecpe	z13.d, z6.d
/*     36 */	fmul	z19.d, p0/m, z19.d, z3.d
.L110:					// :entr:term:body:swpl
/*     36 */	frecps	z3.d, z13.d, z6.d
/*     36 */	fmul	z22.d, p0/m, z22.d, z8.d
/*     36 */	ld1d	z8.d, p0/z, [x22, x4, lsl #3]	//  "a"
/*     36 */	fmul	z20.d, p0/m, z20.d, z5.d
/*     36 */	st1d	z1.d, p0, [x26, x1, lsl #3]	//  "c"
/*     36 */	frecpe	z27.d, z10.d
/*     36 */	frecps	z1.d, z7.d, z14.d
/*     36 */	fmul	z23.d, p0/m, z23.d, z15.d
/*     37 */	ld1d	z5.d, p0/z, [x23, x5, lsl #3]	//  "b"
/*     36 */	fmul	z2.d, p0/m, z2.d, z9.d
/*     36 */	fmul	z21.d, p0/m, z21.d, z18.d
/*     36 */	fmul	z19.d, p0/m, z19.d, z24.d
/*     36 */	frecpe	z18.d, z11.d
/*     36 */	frecps	z15.d, z27.d, z10.d
/*     36 */	fmul	z3.d, p0/m, z3.d, z13.d
/*     36 */	fmul	z4.d, p0/m, z4.d, z0.d
/*     36 */	frecps	z16.d, z22.d, z16.d
/*     37 */	add	x2, x6, 24
/*     36 */	fmul	z20.d, p0/m, z20.d, z26.d
/*     37 */	ld1d	z0.d, p0/z, [x20, x2, lsl #3]	//  "b"
/*     36 */	frecps	z13.d, z18.d, z11.d
/*     36 */	frecps	z24.d, z23.d, z25.d
/*     36 */	ld1d	z26.d, p0/z, [x24, x4, lsl #3]	//  "a"
/*     36 */	frecps	z12.d, z2.d, z12.d
/*     36 */	st1d	z19.d, p0, [x27, x1, lsl #3]	//  "c"
/*     36 */	fmul	z21.d, p0/m, z21.d, z8.d
/*     36 */	fmul	z15.d, p0/m, z15.d, z27.d
/*     37 */	ld1d	z9.d, p0/z, [x21, x6, lsl #3]	//  "b"
/*     36 */	frecpe	z8.d, z5.d
/*     36 */	frecps	z27.d, z3.d, z6.d
/*     36 */	frecps	z17.d, z4.d, z17.d
/*     36 */	fmul	z16.d, p0/m, z16.d, z22.d
/*     36 */	ld1d	z22.d, p0/z, [x25, x4, lsl #3]	//  "a"
/*     36 */	st1d	z20.d, p0, [x28, x1, lsl #3]	//  "c"
/*     36 */	frecps	z20.d, z8.d, z5.d
/*     36 */	fmul	z24.d, p0/m, z24.d, z23.d
/*     36 */	ld1d	z23.d, p0/z, [x22, x7, lsl #3]	//  "a"
/*     36 */	fmul	z2.d, p0/m, z2.d, z12.d
/*     36 */	st1d	z21.d, p0, [x26, x4, lsl #3]	//  "c"
/*     36 */	frecpe	z12.d, z0.d
/*     36 */	frecps	z19.d, z15.d, z10.d
/*     36 */	fmul	z18.d, p0/m, z18.d, z13.d
/*     37 */	ld1d	z13.d, p0/z, [x23, x6, lsl #3]	//  "b"
/*     36 */	fmul	z3.d, p0/m, z3.d, z27.d
/*     36 */	fmul	z17.d, p0/m, z17.d, z4.d
/*     36 */	movprfx	z28.d, p0/z, z16.d
/*     36 */	fmul	z28.d, p0/m, z28.d, z26.d
/*     36 */	frecpe	z4.d, z9.d
/*     36 */	frecps	z27.d, z12.d, z0.d
/*     36 */	fmul	z8.d, p0/m, z8.d, z20.d
/*     36 */	movprfx	z16.d, p0/z, z7.d
/*     36 */	fmul	z16.d, p0/m, z16.d, z1.d
/*     36 */	frecps	z20.d, z24.d, z25.d
/*     37 */	add	x1, x6, 48
/*     36 */	movprfx	z29.d, p0/z, z2.d
/*     36 */	fmul	z29.d, p0/m, z29.d, z22.d
/*     37 */	ld1d	z1.d, p0/z, [x20, x1, lsl #3]	//  "b"
/*     36 */	frecps	z22.d, z4.d, z9.d
/*     36 */	frecps	z7.d, z18.d, z11.d
/*     36 */	ld1d	z21.d, p0/z, [x24, x7, lsl #3]	//  "a"
/*     36 */	frecps	z26.d, z3.d, z6.d
/*     36 */	st1d	z28.d, p0, [x27, x4, lsl #3]	//  "c"
/*     36 */	fmul	z17.d, p0/m, z17.d, z23.d
/*     36 */	fmul	z27.d, p0/m, z27.d, z12.d
/*     37 */	ld1d	z2.d, p0/z, [x21, x2, lsl #3]	//  "b"
/*     36 */	frecpe	z12.d, z13.d
/*     36 */	frecps	z25.d, z8.d, z5.d
/*     36 */	frecps	z28.d, z16.d, z14.d
/*     36 */	fmul	z24.d, p0/m, z24.d, z20.d
/*     36 */	ld1d	z20.d, p0/z, [x25, x7, lsl #3]	//  "a"
/*     36 */	st1d	z29.d, p0, [x28, x4, lsl #3]	//  "c"
/*     36 */	frecps	z23.d, z12.d, z13.d
/*     36 */	fmul	z7.d, p0/m, z7.d, z18.d
/*     36 */	ld1d	z6.d, p0/z, [x22, x5, lsl #3]	//  "a"
/*     36 */	movprfx	z18.d, p0/z, z3.d
/*     36 */	fmul	z18.d, p0/m, z18.d, z26.d
/*     36 */	st1d	z17.d, p0, [x26, x7, lsl #3]	//  "c"
/*     36 */	frecpe	z14.d, z1.d
/*     36 */	frecps	z17.d, z27.d, z0.d
/*     36 */	fmul	z4.d, p0/m, z4.d, z22.d
/*     37 */	ld1d	z3.d, p0/z, [x23, x2, lsl #3]	//  "b"
/*     36 */	movprfx	z22.d, p0/z, z8.d
/*     36 */	fmul	z22.d, p0/m, z22.d, z25.d
/*     36 */	fmul	z28.d, p0/m, z28.d, z16.d
/*     36 */	movprfx	z25.d, p0/z, z24.d
/*     36 */	fmul	z25.d, p0/m, z25.d, z21.d
/*     36 */	frecpe	z8.d, z2.d
/*     36 */	frecps	z24.d, z14.d, z1.d
/*     36 */	fmul	z12.d, p0/m, z12.d, z23.d
/*     36 */	movprfx	z16.d, p0/z, z15.d
/*     36 */	fmul	z16.d, p0/m, z16.d, z19.d
/*     36 */	frecps	z15.d, z7.d, z11.d
/*     37 */	add	x4, x6, 72
/*     36 */	movprfx	z11.d, p0/z, z18.d
/*     36 */	fmul	z11.d, p0/m, z11.d, z20.d
/*     37 */	ld1d	z18.d, p0/z, [x20, x4, lsl #3]	//  "b"
/*     36 */	frecps	z20.d, z8.d, z2.d
/*     36 */	frecps	z21.d, z4.d, z9.d
/*     36 */	ld1d	z23.d, p0/z, [x24, x5, lsl #3]	//  "a"
/*     36 */	frecps	z5.d, z22.d, z5.d
/*     36 */	st1d	z25.d, p0, [x27, x7, lsl #3]	//  "c"
/*     36 */	fmul	z28.d, p0/m, z28.d, z6.d
/*     36 */	movprfx	z6.d, p0/z, z14.d
/*     36 */	fmul	z6.d, p0/m, z6.d, z24.d
/*     37 */	ld1d	z19.d, p0/z, [x21, x1, lsl #3]	//  "b"
/*     36 */	frecpe	z14.d, z3.d
/*     36 */	frecps	z25.d, z12.d, z13.d
/*     36 */	frecps	z26.d, z16.d, z10.d
/*     36 */	fmul	z15.d, p0/m, z15.d, z7.d
/*     36 */	ld1d	z10.d, p0/z, [x25, x5, lsl #3]	//  "a"
/*     36 */	st1d	z11.d, p0, [x28, x7, lsl #3]	//  "c"
/*     36 */	frecps	z11.d, z14.d, z3.d
/*     36 */	fmul	z4.d, p0/m, z4.d, z21.d
/*     36 */	ld1d	z24.d, p0/z, [x22, x6, lsl #3]	//  "a"
/*     36 */	fmul	z22.d, p0/m, z22.d, z5.d
/*     36 */	st1d	z28.d, p0, [x26, x5, lsl #3]	//  "c"
/*     36 */	frecpe	z21.d, z18.d
/*     36 */	frecps	z7.d, z6.d, z1.d
/*     36 */	movprfx	z5.d, p0/z, z8.d
/*     36 */	fmul	z5.d, p0/m, z5.d, z20.d
/*     37 */	ld1d	z20.d, p0/z, [x23, x1, lsl #3]	//  "b"
/*     36 */	fmul	z12.d, p0/m, z12.d, z25.d
/*     36 */	fmul	z16.d, p0/m, z16.d, z26.d
/*     36 */	fmul	z23.d, p0/m, z23.d, z15.d
/*     36 */	frecpe	z8.d, z19.d
/*     36 */	frecps	z15.d, z21.d, z18.d
/*     36 */	fmul	z14.d, p0/m, z14.d, z11.d
/*     36 */	fmul	z27.d, p0/m, z27.d, z17.d
/*     36 */	frecps	z9.d, z4.d, z9.d
/*     37 */	add	x7, x6, 96
/*     36 */	fmul	z22.d, p0/m, z22.d, z10.d
/*     37 */	ld1d	z17.d, p0/z, [x20, x7, lsl #3]	//  "b"
/*     36 */	frecps	z11.d, z8.d, z19.d
/*     36 */	frecps	z10.d, z5.d, z2.d
/*     36 */	ld1d	z28.d, p0/z, [x24, x6, lsl #3]	//  "a"
/*     36 */	frecps	z13.d, z12.d, z13.d
/*     36 */	st1d	z23.d, p0, [x27, x5, lsl #3]	//  "c"
/*     36 */	fmul	z24.d, p0/m, z24.d, z16.d
/*     36 */	fmul	z21.d, p0/m, z21.d, z15.d
/*     37 */	ld1d	z16.d, p0/z, [x21, x4, lsl #3]	//  "b"
/*     36 */	frecpe	z23.d, z20.d
/*     36 */	frecps	z15.d, z14.d, z3.d
/*     36 */	frecps	z0.d, z27.d, z0.d
/*     36 */	fmul	z9.d, p0/m, z9.d, z4.d
/*     36 */	ld1d	z26.d, p0/z, [x25, x6, lsl #3]	//  "a"
/*     36 */	st1d	z22.d, p0, [x28, x5, lsl #3]	//  "c"
/*     36 */	frecps	z22.d, z23.d, z20.d
/*     36 */	fmul	z10.d, p0/m, z10.d, z5.d
/*     36 */	ld1d	z25.d, p0/z, [x22, x2, lsl #3]	//  "a"
/*     36 */	fmul	z13.d, p0/m, z13.d, z12.d
/*     36 */	st1d	z24.d, p0, [x26, x6, lsl #3]	//  "c"
/*     36 */	frecpe	z4.d, z17.d
/*     36 */	frecps	z24.d, z21.d, z18.d
/*     36 */	fmul	z11.d, p0/m, z11.d, z8.d
/*     37 */	ld1d	z12.d, p0/z, [x23, x4, lsl #3]	//  "b"
/*     36 */	fmul	z15.d, p0/m, z15.d, z14.d
/*     36 */	fmul	z0.d, p0/m, z0.d, z27.d
/*     36 */	fmul	z9.d, p0/m, z9.d, z28.d
/*     36 */	frecpe	z8.d, z16.d
/*     36 */	frecps	z5.d, z4.d, z17.d
/*     36 */	fmul	z22.d, p0/m, z22.d, z23.d
/*     36 */	fmul	z7.d, p0/m, z7.d, z6.d
/*     36 */	frecps	z2.d, z10.d, z2.d
/*     37 */	add	x5, x6, 120
/*     36 */	fmul	z13.d, p0/m, z13.d, z26.d
/*     37 */	ld1d	z14.d, p0/z, [x20, x5, lsl #3]	//  "b"
/*     36 */	frecps	z6.d, z8.d, z16.d
/*     36 */	frecps	z26.d, z11.d, z19.d
/*     36 */	ld1d	z23.d, p0/z, [x24, x2, lsl #3]	//  "a"
/*     36 */	frecps	z3.d, z15.d, z3.d
/*     36 */	st1d	z9.d, p0, [x27, x6, lsl #3]	//  "c"
/*     36 */	fmul	z0.d, p0/m, z0.d, z25.d
/*     36 */	fmul	z4.d, p0/m, z4.d, z5.d
/*     37 */	ld1d	z25.d, p0/z, [x21, x7, lsl #3]	//  "b"
/*     36 */	frecpe	z9.d, z12.d
/*     36 */	frecps	z5.d, z22.d, z20.d
/*     36 */	frecps	z1.d, z7.d, z1.d
/*     36 */	fmul	z2.d, p0/m, z2.d, z10.d
/*     36 */	ld1d	z27.d, p0/z, [x25, x2, lsl #3]	//  "a"
/*     36 */	st1d	z13.d, p0, [x28, x6, lsl #3]	//  "c"
/*     36 */	frecps	z10.d, z9.d, z12.d
/*     36 */	fmul	z26.d, p0/m, z26.d, z11.d
/*     36 */	ld1d	z11.d, p0/z, [x22, x1, lsl #3]	//  "a"
/*     36 */	fmul	z3.d, p0/m, z3.d, z15.d
/*     36 */	st1d	z0.d, p0, [x26, x2, lsl #3]	//  "c"
/*     36 */	frecpe	z13.d, z14.d
/*     36 */	frecps	z0.d, z4.d, z17.d
/*     36 */	fmul	z8.d, p0/m, z8.d, z6.d
/*     37 */	ld1d	z6.d, p0/z, [x23, x7, lsl #3]	//  "b"
/*     36 */	fmul	z5.d, p0/m, z5.d, z22.d
/*     36 */	fmul	z1.d, p0/m, z1.d, z7.d
/*     36 */	fmul	z2.d, p0/m, z2.d, z23.d
/*     36 */	frecpe	z15.d, z25.d
/*     36 */	frecps	z7.d, z13.d, z14.d
/*     36 */	fmul	z9.d, p0/m, z9.d, z10.d
/*     36 */	fmul	z21.d, p0/m, z21.d, z24.d
/*     36 */	frecps	z19.d, z26.d, z19.d
/*     37 */	add	x6, x6, 144
/*     36 */	fmul	z3.d, p0/m, z3.d, z27.d
/*     37 */	ld1d	z10.d, p0/z, [x20, x6, lsl #3]	//  "b"
/*     36 */	frecps	z23.d, z15.d, z25.d
/*     36 */	frecps	z22.d, z8.d, z16.d
/*     36 */	ld1d	z24.d, p0/z, [x24, x1, lsl #3]	//  "a"
/*     36 */	frecps	z20.d, z5.d, z20.d
/*     36 */	st1d	z2.d, p0, [x27, x2, lsl #3]	//  "c"
/*     36 */	fmul	z1.d, p0/m, z1.d, z11.d
/*     36 */	fmul	z7.d, p0/m, z7.d, z13.d
/*     37 */	ld1d	z11.d, p0/z, [x21, x5, lsl #3]	//  "b"
/*     36 */	frecpe	z13.d, z6.d
/*     36 */	frecps	z2.d, z9.d, z12.d
/*     36 */	frecps	z18.d, z21.d, z18.d
/*     36 */	fmul	z19.d, p0/m, z19.d, z26.d
/*     36 */	ld1d	z26.d, p0/z, [x25, x1, lsl #3]	//  "a"
/*     36 */	st1d	z3.d, p0, [x28, x2, lsl #3]	//  "c"
/*     37 */	sub	w3, w3, 6
/*     37 */	cmp	w3, 11
/*     37 */	bge	.L110
/*     36 */	frecps	z3.d, z13.d, z6.d
/*     36 */	fmul	z8.d, p0/m, z8.d, z22.d
/*     36 */	ld1d	z22.d, p0/z, [x22, x4, lsl #3]	//  "a"
/*     37 */	add	x2, x6, 24
/*     36 */	st1d	z1.d, p0, [x26, x1, lsl #3]	//  "c"
/*     36 */	fmul	z9.d, p0/m, z9.d, z2.d
/*     37 */	sub	w3, w3, 5
/*     36 */	frecpe	z1.d, z10.d
/*     36 */	fmul	z21.d, p0/m, z21.d, z18.d
/*     36 */	fmul	z15.d, p0/m, z15.d, z23.d
/*     37 */	ld1d	z23.d, p0/z, [x23, x5, lsl #3]	//  "b"
/*     36 */	fmul	z4.d, p0/m, z4.d, z0.d
/*     36 */	fmul	z19.d, p0/m, z19.d, z24.d
/*     36 */	frecpe	z18.d, z11.d
/*     36 */	ld1d	z24.d, p0/z, [x24, x4, lsl #3]	//  "a"
/*     36 */	fmul	z5.d, p0/m, z5.d, z20.d
/*     36 */	frecps	z2.d, z1.d, z10.d
/*     36 */	frecps	z20.d, z7.d, z14.d
/*     36 */	fmul	z3.d, p0/m, z3.d, z13.d
/*     36 */	frecps	z16.d, z8.d, z16.d
/*     36 */	frecps	z13.d, z18.d, z11.d
/*     36 */	frecps	z0.d, z15.d, z25.d
/*     36 */	fmul	z21.d, p0/m, z21.d, z22.d
/*     36 */	frecps	z12.d, z9.d, z12.d
/*     36 */	fmul	z5.d, p0/m, z5.d, z26.d
/*     36 */	st1d	z19.d, p0, [x27, x1, lsl #3]	//  "c"
/*     36 */	fmul	z2.d, p0/m, z2.d, z1.d
/*     37 */	ld1d	z19.d, p0/z, [x21, x6, lsl #3]	//  "b"
/*     36 */	frecpe	z22.d, z23.d
/*     36 */	frecps	z17.d, z4.d, z17.d
/*     36 */	fmul	z20.d, p0/m, z20.d, z7.d
/*     36 */	frecps	z1.d, z3.d, z6.d
/*     36 */	fmul	z16.d, p0/m, z16.d, z8.d
/*     36 */	ld1d	z8.d, p0/z, [x25, x4, lsl #3]	//  "a"
/*     36 */	fmul	z13.d, p0/m, z13.d, z18.d
/*     37 */	ld1d	z18.d, p0/z, [x23, x6, lsl #3]	//  "b"
/*     36 */	fmul	z0.d, p0/m, z0.d, z15.d
/*     36 */	ld1d	z15.d, p0/z, [x22, x7, lsl #3]	//  "a"
/*     36 */	fmul	z12.d, p0/m, z12.d, z9.d
/*     36 */	st1d	z5.d, p0, [x28, x1, lsl #3]	//  "c"
/*     37 */	mov	x1, x2
/*     36 */	frecps	z5.d, z22.d, z23.d
/*     36 */	fmul	z17.d, p0/m, z17.d, z4.d
/*     36 */	fmul	z1.d, p0/m, z1.d, z3.d
/*     36 */	fmul	z16.d, p0/m, z16.d, z24.d
/*     36 */	frecpe	z3.d, z19.d
/*     36 */	st1d	z21.d, p0, [x26, x4, lsl #3]	//  "c"
/*     36 */	frecps	z25.d, z0.d, z25.d
/*     36 */	ld1d	z21.d, p0/z, [x24, x7, lsl #3]	//  "a"
/*     36 */	fmul	z12.d, p0/m, z12.d, z8.d
/*     36 */	frecpe	z8.d, z18.d
/*     36 */	fmul	z5.d, p0/m, z5.d, z22.d
/*     36 */	frecps	z4.d, z3.d, z19.d
/*     36 */	fmul	z17.d, p0/m, z17.d, z15.d
/*     36 */	frecps	z7.d, z13.d, z11.d
/*     36 */	st1d	z16.d, p0, [x27, x4, lsl #3]	//  "c"
/*     36 */	frecps	z6.d, z1.d, z6.d
/*     36 */	ld1d	z16.d, p0/z, [x25, x7, lsl #3]	//  "a"
/*     36 */	fmul	z25.d, p0/m, z25.d, z0.d
/*     36 */	frecps	z0.d, z8.d, z18.d
/*     36 */	frecps	z9.d, z2.d, z10.d
/*     36 */	fmul	z3.d, p0/m, z3.d, z4.d
/*     36 */	ld1d	z4.d, p0/z, [x24, x5, lsl #3]	//  "a"
/*     36 */	frecps	z15.d, z5.d, z23.d
/*     36 */	fmul	z13.d, p0/m, z13.d, z7.d
/*     36 */	ld1d	z7.d, p0/z, [x22, x5, lsl #3]	//  "a"
/*     36 */	frecps	z14.d, z20.d, z14.d
/*     36 */	st1d	z12.d, p0, [x28, x4, lsl #3]	//  "c"
/*     36 */	fmul	z1.d, p0/m, z1.d, z6.d
/*     36 */	fmul	z25.d, p0/m, z25.d, z21.d
/*     36 */	ld1d	z6.d, p0/z, [x25, x5, lsl #3]	//  "a"
/*     36 */	fmul	z8.d, p0/m, z8.d, z0.d
/*     36 */	fmul	z9.d, p0/m, z9.d, z2.d
/*     36 */	frecps	z0.d, z3.d, z19.d
/*     36 */	fmul	z5.d, p0/m, z5.d, z15.d
/*     36 */	st1d	z17.d, p0, [x26, x7, lsl #3]	//  "c"
/*     36 */	fmul	z20.d, p0/m, z20.d, z14.d
/*     36 */	frecps	z11.d, z13.d, z11.d
/*     36 */	fmul	z1.d, p0/m, z1.d, z16.d
/*     36 */	st1d	z25.d, p0, [x27, x7, lsl #3]	//  "c"
/*     36 */	frecps	z2.d, z8.d, z18.d
/*     36 */	frecps	z10.d, z9.d, z10.d
/*     36 */	fmul	z3.d, p0/m, z3.d, z0.d
/*     36 */	ld1d	z0.d, p0/z, [x22, x6, lsl #3]	//  "a"
/*     36 */	frecps	z23.d, z5.d, z23.d
/*     36 */	fmul	z20.d, p0/m, z20.d, z7.d
/*     36 */	fmul	z13.d, p0/m, z13.d, z11.d
/*     36 */	st1d	z1.d, p0, [x28, x7, lsl #3]	//  "c"
/*     36 */	ld1d	z1.d, p0/z, [x24, x6, lsl #3]	//  "a"
/*     36 */	fmul	z8.d, p0/m, z8.d, z2.d
/*     36 */	fmul	z9.d, p0/m, z9.d, z10.d
/*     36 */	frecps	z19.d, z3.d, z19.d
/*     36 */	fmul	z5.d, p0/m, z5.d, z23.d
/*     36 */	fmul	z13.d, p0/m, z13.d, z4.d
/*     36 */	st1d	z20.d, p0, [x26, x5, lsl #3]	//  "c"
/*     36 */	frecps	z18.d, z8.d, z18.d
/*     36 */	fmul	z9.d, p0/m, z9.d, z0.d
/*     36 */	ld1d	z0.d, p0/z, [x25, x6, lsl #3]	//  "a"
/*     36 */	fmul	z3.d, p0/m, z3.d, z19.d
/*     36 */	fmul	z5.d, p0/m, z5.d, z6.d
/*     36 */	st1d	z13.d, p0, [x27, x5, lsl #3]	//  "c"
/*     36 */	fmul	z8.d, p0/m, z8.d, z18.d
/*     36 */	fmul	z3.d, p0/m, z3.d, z1.d
/*     36 */	st1d	z5.d, p0, [x28, x5, lsl #3]	//  "c"
/*     36 */	st1d	z9.d, p0, [x26, x6, lsl #3]	//  "c"
/*     36 */	fmul	z8.d, p0/m, z8.d, z0.d
/*     36 */	st1d	z3.d, p0, [x27, x6, lsl #3]	//  "c"
/*     36 */	st1d	z8.d, p0, [x28, x6, lsl #3]	//  "c"
.L146:					// :entr:term:mod:swpl
/*     37 */	ld1d	z0.d, p0/z, [x20, x1, lsl #3]	//  "b"
/*     37 */	ld1d	z2.d, p0/z, [x21, x1, lsl #3]	//  "b"
/*     37 */	subs	w3, w3, 1
/*     36 */	ld1d	z9.d, p0/z, [x22, x1, lsl #3]	//  "a"
/*     37 */	ld1d	z4.d, p0/z, [x23, x1, lsl #3]	//  "b"
/*     36 */	ld1d	z10.d, p0/z, [x24, x1, lsl #3]	//  "a"
/*     36 */	ld1d	z11.d, p0/z, [x25, x1, lsl #3]	//  "a"
/*     36 */	frecpe	z1.d, z0.d
/*     36 */	frecpe	z3.d, z2.d
/*     36 */	frecpe	z5.d, z4.d
/*     36 */	frecps	z6.d, z1.d, z0.d
/*     36 */	frecps	z7.d, z3.d, z2.d
/*     36 */	frecps	z8.d, z5.d, z4.d
/*     36 */	fmul	z1.d, p0/m, z1.d, z6.d
/*     36 */	fmul	z3.d, p0/m, z3.d, z7.d
/*     36 */	fmul	z5.d, p0/m, z5.d, z8.d
/*     36 */	frecps	z6.d, z1.d, z0.d
/*     36 */	frecps	z7.d, z3.d, z2.d
/*     36 */	frecps	z8.d, z5.d, z4.d
/*     36 */	fmul	z1.d, p0/m, z1.d, z6.d
/*     36 */	fmul	z3.d, p0/m, z3.d, z7.d
/*     36 */	fmul	z5.d, p0/m, z5.d, z8.d
/*     36 */	frecps	z0.d, z1.d, z0.d
/*     36 */	frecps	z2.d, z3.d, z2.d
/*     36 */	frecps	z4.d, z5.d, z4.d
/*     36 */	fmul	z1.d, p0/m, z1.d, z0.d
/*     36 */	fmul	z3.d, p0/m, z3.d, z2.d
/*     36 */	fmul	z5.d, p0/m, z5.d, z4.d
/*     36 */	fmul	z1.d, p0/m, z1.d, z9.d
/*     36 */	fmul	z3.d, p0/m, z3.d, z10.d
/*     36 */	fmul	z5.d, p0/m, z5.d, z11.d
/*     36 */	st1d	z1.d, p0, [x26, x1, lsl #3]	//  "c"
/*     36 */	st1d	z3.d, p0, [x27, x1, lsl #3]	//  "c"
/*     36 */	st1d	z5.d, p0, [x28, x1, lsl #3]	//  "c"
/*     37 */	add	x1, x1, 24
/*     37 */	bge	.L146
/*    ??? */	ldr	x1, [sp, 168]	//  (*)
/*     38 */	subs	w0, w0, 1
/*     37 */	ld1d	z0.d, p0/z, [x1, 0, mul vl]	//  "b"
/*    ??? */	ldr	x1, [sp, 160]	//  (*)
/*     36 */	ld1d	z3.d, p0/z, [x1, 0, mul vl]	//  "a"
/*     36 */	frecpe	z1.d, z0.d
/*     36 */	frecps	z2.d, z1.d, z0.d
/*     36 */	fmul	z1.d, p0/m, z1.d, z2.d
/*     36 */	frecps	z2.d, z1.d, z0.d
/*     36 */	fmul	z1.d, p0/m, z1.d, z2.d
/*     36 */	frecps	z0.d, z1.d, z0.d
/*     36 */	fmul	z1.d, p0/m, z1.d, z0.d
/*     36 */	fmul	z1.d, p0/m, z1.d, z3.d
/*     36 */	st1d	z1.d, p0, [x19, 0, mul vl]	//  "c"
/*     38 */	bne	.L108
.L113:
/*      7 */	mov	w0, 1
/*    ??? */	ldr	x1, [sp, 200]	//  (*)
/*      7 */	bl	clock_gettime
/*    ??? */	ldr	x0, [sp, 200]	//  (*)
/*    ??? */	ldr	d7, [sp, 184]	//  (*)
/*     39 */	ldr	d0, .LC5
/*     40 */	ldr	d2, .LC6
/*      8 */	ldr	x1, [x0]	//  "tp"
/*    ??? */	ldr	w0, [sp, 196]	//  (*)
/*     40 */	scvtf	d1, w0
/*    ??? */	ldr	x0, [sp, 200]	//  (*)
/*      8 */	scvtf	d3, x1
/*      8 */	ldr	x2, [x0, 8]	//  "tp"
/*     41 */	adrp	x0, .LR.2
/*     41 */	add	x0, x0, :lo12:.LR.2
/*      8 */	scvtf	d4, x2
/*     40 */	frecpe	d5, d1
/*     39 */	fsub	d3, d3, d7
/*     40 */	frecps	d6, d1, d5
/*     39 */	fmadd	d0, d4, d0, d3
/*     40 */	fmul	d3, d6, d5
/*     40 */	frecps	d4, d1, d3
/*     40 */	fmul	d3, d4, d3
/*     40 */	frecps	d1, d1, d3
/*     40 */	fmul	d1, d1, d3
/*     40 */	fmul	d1, d2, d1
/*     40 */	fmul	d1, d0, d1
/*     41 */	bl	printf
/*    ??? */	ldr	x0, [sp, 176]	//  (*)
/*     42 */	adrp	x1, .LR.1
/*     42 */	ldr	d0, [x0, :lo12:c]	//  "c"
/*     42 */	adrp	x0, c+16376
/*     42 */	ldr	d1, [x0, :lo12:c+16376]	//  "c"
/*     42 */	add	x0, x1, :lo12:.LR.1
/*     42 */	bl	printf
/*     42 */	mov	w0, 0
/*    ??? */	ldp	x21, x22, [sp, 16]	//  (*)
/*    ??? */	ldp	x23, x24, [sp, 32]	//  (*)
/*    ??? */	ldp	x25, x26, [sp, 48]	//  (*)
/*    ??? */	ldp	x27, x28, [sp, 64]	//  (*)
/*    ??? */	ldr	x30, [sp, 80]	//  (*)
/*    ??? */	ldp	d8, d9, [sp, 88]	//  (*)
/*    ??? */	ldp	d10, d11, [sp, 104]	//  (*)
/*    ??? */	ldp	d12, d13, [sp, 120]	//  (*)
/*    ??? */	ldp	d14, d15, [sp, 136]	//  (*)
/*    ??? */	ldp	x19, x20, [sp], 224	//  (*)
/*     43 */	ret	
	.size	main, .-main
	.align	3
.LC2:
	.word	0,0
	.align	3
.LC3:
	.word	0x9999999a,0x3fc99999
	.align	3
.LC4:
	.word	0x9999999a,0x3fb99999
	.align	3
.LC5:
	.word	0xe826d695,0x3e112e0b
	.align	3
.LC6:
	.word	0,0x415dcd65
	.section	.rodata
	.align	3
.LR.1:
	.ascii "res:\040%lf,\040...,\040%lf\012\000"
	.type	.LR.1, %object
	.size	.LR.1,.-.LR.1
	.section	.rodata
	.align	3
.LR.2:
	.ascii "elaps:\040%.6lf\040sec,\040%.2lf\040cycle/8loop\012"
	.ascii	"\000"
	.type	.LR.2, %object
	.size	.LR.2,.-.LR.2
	.section	.rodata
	.align	3
.LR.3:
	.ascii "bench1:\040rep:%d\040n:%d\012\000"
	.type	.LR.3, %object
	.size	.LR.3,.-.LR.3
	.comm	c,16384,8
	.comm	b,16384,8
	.comm	a,16384,8
	.section	.note.GNU-stack,"",%progbits
