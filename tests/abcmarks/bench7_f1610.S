	.ident	"$Options: Fujitsu C/C++ Compiler Version 1.2.0 P-id: Alpha-20161007 (Oct  6 2016 19:10:27) --preinclude /opt/FJTComp2/bin/../lib/c99.pre -D__FUJITSU -Dunix -D__aarch64__ -D__unix -D__fcc_version__=0x700 -D__fcc_version=700 -D__ARM_ARCH=8 -D__FP_FAST_FMA -D__ELF__ -D__unix__ -D__linux__ -D__linux -Asystem(unix) -Dlinux -D__LIBC_6B -D__LP64__ -D_LP64 --K=noocl --zmode=64 --c99 -I/opt/FJTComp2/bin/../include -I/dummy/usr/include --K=opt bench7.c -- -ncmdname=fccpx -O3 -x- -Komitfp,mfunc,lib,rdconv,eval,fp_relaxed,ns,fast_matmul,fp_contract,ilfunc,prefetch_conditional,simd=2,loop_nofission bench7.s $"
	.file	"bench7.c"
	.ident	"$Compiler: Fujitsu C/C++ Compiler Version 1.2.0 P-id: Alpha-20161007 (Oct  6 2016 19:10:27) bench7.c main $"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
/*    ??? */	stp	x29, x30, [sp, -112]!	//  (*)
/*     11 */	add	x29, sp, 0
/*    ??? */	str	x19, [sp, 16]	//  (*)
/*    ??? */	stp	d8, d9, [sp, 24]	//  (*)
/*    ??? */	stp	d10, d11, [sp, 40]	//  (*)
/*    ??? */	stp	d12, d13, [sp, 56]	//  (*)
/*    ??? */	stp	d14, d15, [sp, 72]	//  (*)
/*    ??? */	addvl	sp, sp, -4
/*     16 */	cmp	w0, 1
/*     16 */	ble	.L93
/*     17 */	ldr	x0, [x1, 8]	//  (*)
/*     17 */	bl	atoi
/*     17 */	mov	w19, w0
/*     17 */	b	.L94
.L93:
/*     19 */	mov	w19, 1000
.L94:
/*     20 */	adrp	x0, .LR.2
/*     20 */	mov	w2, 4064
/*     20 */	mov	w1, w19
/*     20 */	add	x0, x0, :lo12:.LR.2
/*     20 */	bl	printf
/*     22 */	ptrue	p0.d, VL8
/*     22 */	index	z0.d, 0, 1
/*     24 */	ldr	d1, .LC1
/*     24 */	ldr	d2, .LC2
/*     22 */	mov	w3, 168
/*     22 */	mov	x0, 0
/*     24 */	adrp	x1, x2
/*     24 */	adrp	x2, x1
/*     24 */	add	x1, x1, :lo12:x2
/*     24 */	add	x2, x2, :lo12:x1
/*     24 */	adrp	x4, x2+64
/*     24 */	adrp	x5, x1+64
/*     24 */	add	x4, x4, :lo12:x2+64
/*     24 */	add	x5, x5, :lo12:x1+64
/*     24 */	adrp	x6, x2+128
/*     24 */	adrp	x7, x1+128
/*     24 */	add	x6, x6, :lo12:x2+128
/*     24 */	add	x7, x7, :lo12:x1+128
/*     22 */	mov	x8, 0
/*     24 */	dup	z9.d, z1.d[0]
/*     24 */	dup	z7.d, z2.d[0]
/*     25 */	add	x9, x0, 8
/*     23 */	dup	z1.d, x0
/*     25 */	add	x10, x0, 16
/*     23 */	dup	z2.d, x10
/*     25 */	add	x10, x0, 24
/*     25 */	add	x11, x0, 40
/*     23 */	dup	z3.d, x9
/*     25 */	add	x9, x0, 32
/*     25 */	add	x12, x0, 48
/*     23 */	dup	z4.d, x11
/*     25 */	add	x11, x0, 56
/*     25 */	add	x0, x0, 64
/*     23 */	dup	z5.d, x10
/*     23 */	dup	z6.d, x9
/*     23 */	dup	z13.d, x12
/*     23 */	dup	z12.d, x0
/*     23 */	add	z1.d, p0/m, z1.d, z0.d
/*     23 */	add	z2.d, p0/m, z2.d, z0.d
/*     23 */	add	z3.d, p0/m, z3.d, z0.d
/*     23 */	add	z4.d, p0/m, z4.d, z0.d
/*     23 */	scvtf	z8.d, p0/m, z1.d
/*     23 */	add	z5.d, p0/m, z5.d, z0.d
/*     23 */	scvtf	z10.d, p0/m, z2.d
/*     23 */	add	z6.d, p0/m, z6.d, z0.d
/*     23 */	scvtf	z11.d, p0/m, z3.d
/*     23 */	dup	z14.d, x11
/*     23 */	scvtf	z4.d, p0/m, z4.d
/*     24 */	movprfx	z1.d, p0/z, z8.d
/*     24 */	fmul	z1.d, p0/m, z1.d, z7.d
/*     24 */	movprfx	z2.d, p0/z, z10.d
/*     24 */	fmul	z2.d, p0/m, z2.d, z9.d
/*     24 */	movprfx	z3.d, p0/z, z11.d
/*     24 */	fmul	z3.d, p0/m, z3.d, z9.d
.L97:					// :entr:term:body:swpl
/*     24 */	fmul	z11.d, p0/m, z11.d, z7.d
/*     23 */	scvtf	z15.d, p0/m, z5.d
/*     24 */	fmul	z8.d, p0/m, z8.d, z9.d
/*     24 */	fmul	z10.d, p0/m, z10.d, z7.d
/*     25 */	add	x9, x0, 8
/*     24 */	st1d	z2.d, p0, [x6, x8, lsl #3]	//  "x2"
/*     23 */	scvtf	z16.d, p0/m, z6.d
/*     25 */	add	x10, x0, 16
/*     23 */	dup	z19.d, x9
/*     23 */	add	z12.d, p0/m, z12.d, z0.d
/*     25 */	add	x9, x0, 24
/*     23 */	dup	z17.d, x9
/*     24 */	st1d	z1.d, p0, [x2, x8, lsl #3]	//  "x1"
/*     24 */	movprfx	z1.d, p0/z, z4.d
/*     24 */	fmul	z1.d, p0/m, z1.d, z9.d
/*     23 */	add	z13.d, p0/m, z13.d, z0.d
/*     23 */	dup	z20.d, x10
/*     24 */	st1d	z3.d, p0, [x4, x8, lsl #3]	//  "x2"
/*     23 */	scvtf	z18.d, p0/m, z12.d
/*     24 */	st1d	z11.d, p0, [x5, x8, lsl #3]	//  "x1"
/*     24 */	movprfx	z2.d, p0/z, z15.d
/*     24 */	fmul	z2.d, p0/m, z2.d, z7.d
/*     24 */	st1d	z10.d, p0, [x7, x8, lsl #3]	//  "x1"
/*     23 */	add	z14.d, p0/m, z14.d, z0.d
/*     24 */	st1d	z8.d, p0, [x1, x8, lsl #3]	//  "x2"
/*     24 */	movprfx	z3.d, p0/z, z16.d
/*     24 */	fmul	z3.d, p0/m, z3.d, z9.d
/*     25 */	add	x9, x8, 24
/*     24 */	fmul	z16.d, p0/m, z16.d, z7.d
/*     23 */	scvtf	z21.d, p0/m, z13.d
/*     24 */	fmul	z15.d, p0/m, z15.d, z9.d
/*     24 */	fmul	z4.d, p0/m, z4.d, z7.d
/*     25 */	add	x10, x0, 32
/*     24 */	st1d	z1.d, p0, [x6, x9, lsl #3]	//  "x2"
/*     23 */	scvtf	z22.d, p0/m, z14.d
/*     25 */	add	x11, x0, 40
/*     23 */	dup	z5.d, x10
/*     23 */	add	z17.d, p0/m, z17.d, z0.d
/*     25 */	add	x10, x0, 48
/*     23 */	dup	z23.d, x10
/*     24 */	st1d	z2.d, p0, [x2, x9, lsl #3]	//  "x1"
/*     24 */	movprfx	z1.d, p0/z, z18.d
/*     24 */	fmul	z1.d, p0/m, z1.d, z9.d
/*     23 */	add	z19.d, p0/m, z19.d, z0.d
/*     23 */	dup	z6.d, x11
/*     24 */	st1d	z3.d, p0, [x4, x9, lsl #3]	//  "x2"
/*     23 */	scvtf	z10.d, p0/m, z17.d
/*     24 */	st1d	z16.d, p0, [x5, x9, lsl #3]	//  "x1"
/*     24 */	movprfx	z2.d, p0/z, z21.d
/*     24 */	fmul	z2.d, p0/m, z2.d, z7.d
/*     24 */	st1d	z4.d, p0, [x7, x9, lsl #3]	//  "x1"
/*     23 */	add	z20.d, p0/m, z20.d, z0.d
/*     24 */	st1d	z15.d, p0, [x1, x9, lsl #3]	//  "x2"
/*     24 */	movprfx	z3.d, p0/z, z22.d
/*     24 */	fmul	z3.d, p0/m, z3.d, z9.d
/*     25 */	add	x9, x8, 48
/*     24 */	fmul	z22.d, p0/m, z22.d, z7.d
/*     23 */	scvtf	z8.d, p0/m, z19.d
/*     24 */	fmul	z21.d, p0/m, z21.d, z9.d
/*     24 */	fmul	z18.d, p0/m, z18.d, z7.d
/*     25 */	add	x10, x0, 56
/*     24 */	st1d	z1.d, p0, [x6, x9, lsl #3]	//  "x2"
/*     23 */	scvtf	z11.d, p0/m, z20.d
/*     25 */	add	x11, x0, 64
/*     23 */	dup	z13.d, x10
/*     23 */	add	z23.d, p0/m, z23.d, z0.d
/*     25 */	add	x0, x0, 72
/*     23 */	dup	z12.d, x0
/*     24 */	st1d	z2.d, p0, [x2, x9, lsl #3]	//  "x1"
/*     24 */	movprfx	z2.d, p0/z, z10.d
/*     24 */	fmul	z2.d, p0/m, z2.d, z9.d
/*     23 */	add	z5.d, p0/m, z5.d, z0.d
/*     23 */	dup	z14.d, x11
/*     24 */	st1d	z3.d, p0, [x4, x9, lsl #3]	//  "x2"
/*     23 */	scvtf	z4.d, p0/m, z23.d
/*     24 */	st1d	z22.d, p0, [x5, x9, lsl #3]	//  "x1"
/*     24 */	movprfx	z1.d, p0/z, z8.d
/*     24 */	fmul	z1.d, p0/m, z1.d, z7.d
/*     24 */	st1d	z18.d, p0, [x7, x9, lsl #3]	//  "x1"
/*     23 */	add	z6.d, p0/m, z6.d, z0.d
/*     24 */	st1d	z21.d, p0, [x1, x9, lsl #3]	//  "x2"
/*     24 */	movprfx	z3.d, p0/z, z11.d
/*     24 */	fmul	z3.d, p0/m, z3.d, z9.d
/*     25 */	add	x8, x8, 72
/*     25 */	sub	w3, w3, 3
/*     25 */	cmp	w3, 6
/*     25 */	bge	.L97
/*     24 */	st1d	z2.d, p0, [x6, x8, lsl #3]	//  "x2"
/*     25 */	add	x9, x8, 24
/*     25 */	add	x10, x8, 48
/*     24 */	fmul	z11.d, p0/m, z11.d, z7.d
/*     25 */	add	x0, x0, 8
/*     23 */	scvtf	z6.d, p0/m, z6.d
/*     23 */	scvtf	z5.d, p0/m, z5.d
/*     25 */	sub	w3, w3, 3
/*     24 */	st1d	z1.d, p0, [x2, x8, lsl #3]	//  "x1"
/*     24 */	fmul	z10.d, p0/m, z10.d, z7.d
/*     24 */	st1d	z3.d, p0, [x4, x8, lsl #3]	//  "x2"
/*     24 */	fmul	z8.d, p0/m, z8.d, z9.d
/*     24 */	movprfx	z1.d, p0/z, z4.d
/*     24 */	fmul	z1.d, p0/m, z1.d, z9.d
/*     23 */	add	z14.d, p0/m, z14.d, z0.d
/*     23 */	add	z12.d, p0/m, z12.d, z0.d
/*     23 */	add	z13.d, p0/m, z13.d, z0.d
/*     24 */	fmul	z4.d, p0/m, z4.d, z7.d
/*     23 */	scvtf	z14.d, p0/m, z14.d
/*     24 */	st1d	z11.d, p0, [x5, x8, lsl #3]	//  "x1"
/*     24 */	movprfx	z2.d, p0/z, z6.d
/*     24 */	fmul	z2.d, p0/m, z2.d, z9.d
/*     24 */	movprfx	z3.d, p0/z, z5.d
/*     24 */	fmul	z3.d, p0/m, z3.d, z7.d
/*     24 */	fmul	z6.d, p0/m, z6.d, z7.d
/*     24 */	st1d	z10.d, p0, [x7, x8, lsl #3]	//  "x1"
/*     23 */	scvtf	z12.d, p0/m, z12.d
/*     24 */	st1d	z8.d, p0, [x1, x8, lsl #3]	//  "x2"
/*     25 */	add	x8, x8, 72
/*     23 */	scvtf	z13.d, p0/m, z13.d
/*     24 */	st1d	z1.d, p0, [x6, x9, lsl #3]	//  "x2"
/*     24 */	fmul	z5.d, p0/m, z5.d, z9.d
/*     24 */	movprfx	z10.d, p0/z, z14.d
/*     24 */	fmul	z10.d, p0/m, z10.d, z9.d
/*     24 */	fmul	z14.d, p0/m, z14.d, z7.d
/*     24 */	st1d	z3.d, p0, [x2, x9, lsl #3]	//  "x1"
/*     24 */	st1d	z2.d, p0, [x4, x9, lsl #3]	//  "x2"
/*     24 */	movprfx	z1.d, p0/z, z12.d
/*     24 */	fmul	z1.d, p0/m, z1.d, z9.d
/*     24 */	st1d	z6.d, p0, [x5, x9, lsl #3]	//  "x1"
/*     24 */	movprfx	z8.d, p0/z, z13.d
/*     24 */	fmul	z8.d, p0/m, z8.d, z7.d
/*     24 */	fmul	z12.d, p0/m, z12.d, z7.d
/*     24 */	fmul	z13.d, p0/m, z13.d, z9.d
/*     24 */	st1d	z4.d, p0, [x7, x9, lsl #3]	//  "x1"
/*     24 */	st1d	z5.d, p0, [x1, x9, lsl #3]	//  "x2"
/*     24 */	st1d	z1.d, p0, [x6, x10, lsl #3]	//  "x2"
/*     24 */	st1d	z8.d, p0, [x2, x10, lsl #3]	//  "x1"
/*     24 */	st1d	z10.d, p0, [x4, x10, lsl #3]	//  "x2"
/*     24 */	st1d	z14.d, p0, [x5, x10, lsl #3]	//  "x1"
/*     24 */	st1d	z12.d, p0, [x7, x10, lsl #3]	//  "x1"
/*     24 */	st1d	z13.d, p0, [x1, x10, lsl #3]	//  "x2"
/*     23 */	dup	z1.d, x0
/*     25 */	add	x0, x0, 8
/*     25 */	sub	w3, w3, 1
/*     24 */	ldr	d8, .LC1
/*     23 */	dup	z2.d, x0
/*     25 */	add	x0, x0, 8
/*     24 */	ldr	d10, .LC2
/*     25 */	cmp	w3, 0
/*     23 */	dup	z3.d, x0
/*     25 */	add	x0, x0, 8
/*     24 */	adrp	x3, x2+32448
/*     23 */	dup	z4.d, x0
/*     24 */	add	x0, x3, :lo12:x2+32448
/*     24 */	adrp	x3, x1+32448
/*     24 */	add	x3, x3, :lo12:x1+32448
/*     23 */	add	z1.d, p0/m, z1.d, z0.d
/*     23 */	add	z2.d, p0/m, z2.d, z0.d
/*     23 */	add	z3.d, p0/m, z3.d, z0.d
/*     23 */	add	z4.d, p0/m, z4.d, z0.d
/*     23 */	scvtf	z1.d, p0/m, z1.d
/*     23 */	scvtf	z5.d, p0/m, z2.d
/*     23 */	scvtf	z3.d, p0/m, z3.d
/*     23 */	scvtf	z6.d, p0/m, z4.d
/*     24 */	dup	z4.d, z8.d[0]
/*     24 */	dup	z8.d, z10.d[0]
/*     24 */	movprfx	z0.d, p0/z, z1.d
/*     24 */	fmul	z0.d, p0/m, z0.d, z9.d
/*     24 */	fmul	z1.d, p0/m, z1.d, z7.d
/*     24 */	movprfx	z2.d, p0/z, z5.d
/*     24 */	fmul	z2.d, p0/m, z2.d, z9.d
/*     24 */	fmul	z5.d, p0/m, z5.d, z7.d
/*     24 */	fmul	z9.d, p0/m, z9.d, z3.d
/*     24 */	fmul	z3.d, p0/m, z3.d, z7.d
/*     24 */	fmul	z4.d, p0/m, z4.d, z6.d
/*     24 */	fmul	z6.d, p0/m, z6.d, z8.d
/*     24 */	st1d	z0.d, p0, [x1, x8, lsl #3]	//  "x2"
/*     24 */	st1d	z1.d, p0, [x2, x8, lsl #3]	//  "x1"
/*     24 */	st1d	z2.d, p0, [x4, x8, lsl #3]	//  "x2"
/*     24 */	st1d	z5.d, p0, [x5, x8, lsl #3]	//  "x1"
/*     24 */	st1d	z9.d, p0, [x6, x8, lsl #3]	//  "x2"
/*     24 */	st1d	z3.d, p0, [x7, x8, lsl #3]	//  "x1"
/*     24 */	st1d	z4.d, p0, [x0, 0, mul vl]	//  "x2"
/*     24 */	st1d	z6.d, p0, [x3, 0, mul vl]	//  "x1"
/*     27 */	cmp	w19, 0
/*     27 */	ble	.L109
/*     29 */	ldr	d0, .LC3
/*     31 */	adrp	x0, x2+192
/*     31 */	add	x8, x0, :lo12:x2+192
/*     30 */	adrp	x0, x1+192
/*     30 */	add	x9, x0, :lo12:x1+192
/*     31 */	adrp	x10, s0
/*    ??? */	str	d0, [x29, 104]	//  (*)
.L102:					// :entr
/*     29 */	ptrue	p0.d, VL8
/*    ??? */	ldr	d0, [x29, 104]	//  (*)
/*     29 */	mov	w3, 126
/*     29 */	mov	x0, 0
/*     29 */	dup	z4.d, z0.d[0]
/*     29 */	mov	z1.d, z4.d
/*     31 */	mov	z8.d, z4.d
/*     31 */	mov	z11.d, z4.d
/*     29 */	fmov	d1, d0
/*     31 */	ld1d	z2.d, p0/z, [x1, x0, lsl #3]	//  "x2"
/*     30 */	ld1d	z3.d, p0/z, [x2, x0, lsl #3]	//  "x1"
/*     31 */	add	x11, x0, 32
/*     31 */	ld1d	z6.d, p0/z, [x4, x0, lsl #3]	//  "x2"
/*     30 */	ld1d	z7.d, p0/z, [x5, x0, lsl #3]	//  "x1"
/*     31 */	ld1d	z10.d, p0/z, [x6, x0, lsl #3]	//  "x2"
/*     30 */	ld1d	z9.d, p0/z, [x7, x0, lsl #3]	//  "x1"
/*     31 */	ld1d	z14.d, p0/z, [x8, x0, lsl #3]	//  "x2"
/*     30 */	ld1d	z13.d, p0/z, [x9, x0, lsl #3]	//  "x1"
/*     31 */	add	x0, x0, 64
/*     31 */	ld1d	z16.d, p0/z, [x1, x11, lsl #3]	//  "x2"
/*     30 */	ld1d	z15.d, p0/z, [x2, x11, lsl #3]	//  "x1"
/*     31 */	ld1d	z18.d, p0/z, [x4, x11, lsl #3]	//  "x2"
/*     30 */	ld1d	z17.d, p0/z, [x5, x11, lsl #3]	//  "x1"
/*     31 */	ld1d	z19.d, p0/z, [x6, x11, lsl #3]	//  "x2"
/*     30 */	ld1d	z27.d, p0/z, [x7, x11, lsl #3]	//  "x1"
/*     31 */	ld1d	z21.d, p0/z, [x8, x11, lsl #3]	//  "x2"
/*     30 */	ld1d	z20.d, p0/z, [x9, x11, lsl #3]	//  "x1"
.L105:					// :entr:term:body:swpl
/*     31 */	ld1d	z0.d, p0/z, [x1, x0, lsl #3]	//  "x2"
/*     31 */	sub	w3, w3, 4
/*     31 */	cmp	w3, 6
/* #00001 */	str	z0, [x29, -1, mul vl]	//  (*)
/*     30 */	ld1d	z0.d, p0/z, [x2, x0, lsl #3]	//  "x1"
/* #00001 */	str	z0, [x29, -2, mul vl]	//  (*)
/*     31 */	ld1d	z0.d, p0/z, [x4, x0, lsl #3]	//  "x2"
/* #00001 */	str	z0, [x29, -3, mul vl]	//  (*)
/*     30 */	ld1d	z0.d, p0/z, [x5, x0, lsl #3]	//  "x1"
/*     31 */	ld1d	z22.d, p0/z, [x6, x0, lsl #3]	//  "x2"
/*     30 */	ld1d	z28.d, p0/z, [x7, x0, lsl #3]	//  "x1"
/* #00001 */	str	z0, [x29, -4, mul vl]	//  (*)
/*     30 */	movprfx	z0.d, p0/z, z3.d
/*     30 */	fmad	z0.d, p0/m, z2.d, z1.d
/*     31 */	ld1d	z23.d, p0/z, [x8, x0, lsl #3]	//  "x2"
/*     30 */	movprfx	z5.d, p0/z, z7.d
/*     30 */	fmad	z5.d, p0/m, z6.d, z4.d
/*     30 */	ld1d	z29.d, p0/z, [x9, x0, lsl #3]	//  "x1"
/*     30 */	fmad	z9.d, p0/m, z10.d, z8.d
/*     30 */	movprfx	z12.d, p0/z, z13.d
/*     30 */	fmad	z12.d, p0/m, z14.d, z11.d
/*     31 */	add	x11, x0, 32
/* #00001 */	ldr	z13, [x29, -2, mul vl]	//  (*)
/*     31 */	ld1d	z24.d, p0/z, [x1, x11, lsl #3]	//  "x2"
/* #00001 */	ldr	z14, [x29, -1, mul vl]	//  (*)
/*     30 */	ld1d	z1.d, p0/z, [x2, x11, lsl #3]	//  "x1"
/*     31 */	ld1d	z25.d, p0/z, [x4, x11, lsl #3]	//  "x2"
/*     30 */	ld1d	z4.d, p0/z, [x5, x11, lsl #3]	//  "x1"
/*     31 */	ld1d	z26.d, p0/z, [x6, x11, lsl #3]	//  "x2"
/*     30 */	ld1d	z8.d, p0/z, [x7, x11, lsl #3]	//  "x1"
/*     30 */	fmla	z0.d, p0/m, z16.d, z15.d
/* #00001 */	ldr	z15, [x29, -3, mul vl]	//  (*)
/*     31 */	ld1d	z30.d, p0/z, [x8, x11, lsl #3]	//  "x2"
/*     30 */	fmla	z5.d, p0/m, z18.d, z17.d
/*     30 */	ld1d	z11.d, p0/z, [x9, x11, lsl #3]	//  "x1"
/*     30 */	fmad	z27.d, p0/m, z19.d, z9.d
/*     30 */	fmla	z12.d, p0/m, z21.d, z20.d
/*     31 */	add	x11, x0, 64
/*     31 */	ld1d	z2.d, p0/z, [x1, x11, lsl #3]	//  "x2"
/*     30 */	ld1d	z3.d, p0/z, [x2, x11, lsl #3]	//  "x1"
/*     31 */	ld1d	z6.d, p0/z, [x4, x11, lsl #3]	//  "x2"
/*     30 */	ld1d	z7.d, p0/z, [x5, x11, lsl #3]	//  "x1"
/*     31 */	ld1d	z10.d, p0/z, [x6, x11, lsl #3]	//  "x2"
/*     30 */	ld1d	z9.d, p0/z, [x7, x11, lsl #3]	//  "x1"
/*     30 */	fmla	z0.d, p0/m, z14.d, z13.d
/* #00001 */	ldr	z13, [x29, -4, mul vl]	//  (*)
/*     31 */	ld1d	z14.d, p0/z, [x8, x11, lsl #3]	//  "x2"
/*     30 */	fmla	z5.d, p0/m, z15.d, z13.d
/*     30 */	ld1d	z13.d, p0/z, [x9, x11, lsl #3]	//  "x1"
/*     30 */	fmad	z28.d, p0/m, z22.d, z27.d
/*     30 */	fmad	z29.d, p0/m, z23.d, z12.d
/*     31 */	add	x11, x0, 96
/*     31 */	ld1d	z16.d, p0/z, [x1, x11, lsl #3]	//  "x2"
/*     30 */	ld1d	z15.d, p0/z, [x2, x11, lsl #3]	//  "x1"
/*     31 */	ld1d	z18.d, p0/z, [x4, x11, lsl #3]	//  "x2"
/*     30 */	ld1d	z17.d, p0/z, [x5, x11, lsl #3]	//  "x1"
/*     31 */	ld1d	z19.d, p0/z, [x6, x11, lsl #3]	//  "x2"
/*     30 */	ld1d	z27.d, p0/z, [x7, x11, lsl #3]	//  "x1"
/*     30 */	fmad	z1.d, p0/m, z24.d, z0.d
/*     31 */	ld1d	z21.d, p0/z, [x8, x11, lsl #3]	//  "x2"
/*     30 */	fmad	z4.d, p0/m, z25.d, z5.d
/*     30 */	ld1d	z20.d, p0/z, [x9, x11, lsl #3]	//  "x1"
/*     30 */	fmad	z8.d, p0/m, z26.d, z28.d
/*     30 */	fmad	z11.d, p0/m, z30.d, z29.d
/*     31 */	add	x0, x0, 128
/*     31 */	bge	.L105
/*     30 */	fmla	z1.d, p0/m, z2.d, z3.d
/*     30 */	fmla	z4.d, p0/m, z6.d, z7.d
/*     31 */	sub	w3, w3, 2
/*     30 */	fmla	z8.d, p0/m, z10.d, z9.d
/*     30 */	fmla	z11.d, p0/m, z14.d, z13.d
/*     30 */	fmla	z1.d, p0/m, z16.d, z15.d
/*     30 */	fmla	z4.d, p0/m, z18.d, z17.d
/*     30 */	fmla	z8.d, p0/m, z19.d, z27.d
/*     30 */	fmla	z11.d, p0/m, z21.d, z20.d
/*     31 */	ld1d	z0.d, p0/z, [x1, x0, lsl #3]	//  "x2"
/*     30 */	ld1d	z2.d, p0/z, [x2, x0, lsl #3]	//  "x1"
/*     31 */	sub	w3, w3, 1
/*     31 */	ld1d	z3.d, p0/z, [x4, x0, lsl #3]	//  "x2"
/*     30 */	ld1d	z5.d, p0/z, [x5, x0, lsl #3]	//  "x1"
/*     31 */	cmp	w3, 0
/*     33 */	subs	w19, w19, 1
/*     31 */	ld1d	z6.d, p0/z, [x6, x0, lsl #3]	//  "x2"
/*     30 */	ld1d	z7.d, p0/z, [x7, x0, lsl #3]	//  "x1"
/*     31 */	ld1d	z9.d, p0/z, [x8, x0, lsl #3]	//  "x2"
/*     30 */	ld1d	z10.d, p0/z, [x9, x0, lsl #3]	//  "x1"
/*     30 */	fmla	z1.d, p0/m, z0.d, z2.d
/*     30 */	fmla	z4.d, p0/m, z3.d, z5.d
/*     30 */	fmla	z8.d, p0/m, z6.d, z7.d
/*     30 */	fmla	z11.d, p0/m, z9.d, z10.d
/*     30 */	fadd	z1.d, p0/m, z1.d, z4.d
/*     30 */	fadd	z8.d, p0/m, z8.d, z11.d
/*     30 */	fadd	z1.d, p0/m, z1.d, z8.d
/*     31 */	movprfx	z0, z1
/*     31 */	ext	z0.b, z0.b, z1.b, 32
/*     31 */	fadd	z1.d, p0/m, z1.d, z0.d
/*     31 */	movprfx	z0, z1
/*     31 */	ext	z0.b, z0.b, z1.b, 16
/*     31 */	fadd	z1.d, p0/m, z1.d, z0.d
/*     31 */	movprfx	z0, z1
/*     31 */	ext	z0.b, z0.b, z1.b, 8
/*     31 */	fadd	z1.d, p0/m, z1.d, z0.d
/*     31 */	str	d1, [x10, :lo12:s0]	//  "s0"
/*     33 */	bne	.L102
.L109:
/*     35 */	adrp	x0, .LR.1
/*     35 */	adrp	x1, s0
/*     35 */	add	x0, x0, :lo12:.LR.1
/*     35 */	ldr	d0, [x1, :lo12:s0]	//  "s0"
/*     35 */	bl	printf
/*     35 */	mov	w0, 0
/*    ??? */	add	sp, x29, 0
/*    ??? */	ldr	x19, [sp, 16]	//  (*)
/*    ??? */	ldp	d8, d9, [sp, 24]	//  (*)
/*    ??? */	ldp	d10, d11, [sp, 40]	//  (*)
/*    ??? */	ldp	d12, d13, [sp, 56]	//  (*)
/*    ??? */	ldp	d14, d15, [sp, 72]	//  (*)
/*    ??? */	ldp	x29, x30, [sp], 112	//  (*)
/*     36 */	ret	
	.size	main, .-main
	.align	3
.LC1:
	.word	0x9999999a,0x3fc99999
	.align	3
.LC2:
	.word	0x9999999a,0x3fb99999
	.align	3
.LC3:
	.word	0,0
	.section	.rodata
	.align	3
.LR.1:
	.ascii "res:\040%f\012\000"
	.type	.LR.1, %object
	.size	.LR.1,.-.LR.1
	.section	.rodata
	.align	3
.LR.2:
	.ascii "bench7:\040rep:%d\040n:%d\012\000"
	.type	.LR.2, %object
	.size	.LR.2,.-.LR.2
	.comm	s0,8,8
	.comm	x2,32512,8
	.comm	x1,32512,8
	.section	.note.GNU-stack,"",%progbits
