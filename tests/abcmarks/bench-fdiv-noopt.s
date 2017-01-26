	.ident	"$Options: Fujitsu C/C++ Compiler Version 1.2.0 P-id: Alpha-20161007 (Oct  6 2016 19:10:27) --preinclude /opt/FJTComp2/bin/../lib/c99.pre -D__FUJITSU -Dunix -D__aarch64__ -D__unix -D__fcc_version__=0x700 -D__fcc_version=700 -D__ARM_ARCH=8 -D__FP_FAST_FMA -D__ELF__ -D__unix__ -D__linux__ -D__linux -Asystem(unix) -Dlinux -D__LIBC_6B -D__LP64__ -D_LP64 --K=noocl --zmode=64 --c99 -I/opt/FJTComp2/bin/../include -I/dummy/usr/include --K=opt bench-fdiv-noopt.c -- -ncmdname=fccpx -O3 -x- -Komitfp,mfunc,lib,rdconv,eval,fp_relaxed,ns,fast_matmul,fp_contract,ilfunc,prefetch_conditional,simd=2,loop_nofission -Knoswp,nounroll bench-fdiv-noopt.s $"
	.file	"bench-fdiv-noopt.c"
	.ident	"$Compiler: Fujitsu C/C++ Compiler Version 1.2.0 P-id: Alpha-20161007 (Oct  6 2016 19:10:27) bench-fdiv-noopt.c get_dtime $"
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
	.ident	"$Compiler: Fujitsu C/C++ Compiler Version 1.2.0 P-id: Alpha-20161007 (Oct  6 2016 19:10:27) bench-fdiv-noopt.c main $"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
/*    ??? */	stp	x19, x20, [sp, -80]!	//  (*)
/*    ??? */	stp	x21, x22, [sp, 16]	//  (*)
/*    ??? */	stp	x23, x24, [sp, 32]	//  (*)
/*    ??? */	str	x30, [sp, 48]	//  (*)
/*    ??? */	str	d8, [sp, 56]	//  (*)
/*     23 */	cmp	w0, 1
/*     23 */	ble	.L100
/*     24 */	ldr	x0, [x1, 8]	//  (*)
/*     24 */	bl	atoi
/*     24 */	mov	w19, w0
/*     24 */	b	.L101
.L100:
/*     26 */	mov	w19, 1000
.L101:
/*     27 */	adrp	x0, .LR.3
/*     27 */	mov	x2, 2048
/*     27 */	mov	w1, w19
/*     27 */	add	x0, x0, :lo12:.LR.3
/*     27 */	bl	printf
/*     28 */	ptrue	p0.d, VL8
/*     28 */	index	z1.d, 1, 1
/*     28 */	mov	w1, 256
/*     28 */	mov	x2, 0
/*     31 */	ldr	d0, .LC2
/*     30 */	ldr	d2, .LC3
/*     31 */	adrp	x21, c
/*     30 */	ldr	d3, .LC4
/*     28 */	mov	x0, 0
/*     31 */	add	x24, x21, :lo12:c
/*     30 */	adrp	x3, b
/*     30 */	adrp	x4, a
/*     30 */	add	x22, x3, :lo12:b
/*     30 */	add	x23, x4, :lo12:a
/*     31 */	dup	z5.d, z0.d[0]
/*     30 */	dup	z2.d, z2.d[0]
/*     30 */	dup	z4.d, z3.d[0]
.L103:					// :entr:term
/*     29 */	dup	z0.d, x0
/*     32 */	add	x0, x0, 8
/*     32 */	subs	w1, w1, 1
/*     31 */	st1d	z5.d, p0, [x24, x2, lsl #3]	//  "c"
/*     29 */	add	z0.d, p0/m, z0.d, z1.d
/*     29 */	scvtf	z3.d, p0/m, z0.d
/*     30 */	movprfx	z0.d, p0/z, z3.d
/*     30 */	fmul	z0.d, p0/m, z0.d, z2.d
/*     30 */	fmul	z3.d, p0/m, z3.d, z4.d
/*     30 */	st1d	z0.d, p0, [x22, x2, lsl #3]	//  "b"
/*     30 */	st1d	z3.d, p0, [x23, x2, lsl #3]	//  "a"
/*     32 */	add	x2, x2, 8
/*     32 */	bne	.L103
/*      7 */	add	x20, sp, 64
/*      7 */	mov	w0, 1
/*      7 */	mov	x1, x20
/*      7 */	bl	clock_gettime
/*      8 */	ldr	x0, [x20]	//  "tp"
/*      8 */	ldr	x1, [x20, 8]	//  "tp"
/*      8 */	ldr	d0, .LC5
/*      8 */	scvtf	d1, x0
/*      8 */	scvtf	d2, x1
/*      8 */	fmadd	d8, d2, d0, d1
/*     34 */	cmp	w19, 0
/*     34 */	ble	.L113
/*     35 */	ptrue	p0.d, VL8
/*     35 */	mov	w0, w19
.L108:					// :entr
/*     35 */	mov	w2, 256
/*     35 */	mov	x1, 0
.L110:					// :entr:term
/*     37 */	ld1d	z0.d, p0/z, [x22, x1, lsl #3]	//  "b"
/*     36 */	ld1d	z3.d, p0/z, [x23, x1, lsl #3]	//  "a"
/*     37 */	subs	w2, w2, 1
/*     36 */	frecpe	z1.d, z0.d
/*     36 */	frecps	z2.d, z1.d, z0.d
/*     36 */	fmul	z1.d, p0/m, z1.d, z2.d
/*     36 */	frecps	z2.d, z1.d, z0.d
/*     36 */	fmul	z1.d, p0/m, z1.d, z2.d
/*     36 */	frecps	z0.d, z1.d, z0.d
/*     36 */	fmul	z1.d, p0/m, z1.d, z0.d
/*     36 */	fmul	z1.d, p0/m, z1.d, z3.d
/*     36 */	st1d	z1.d, p0, [x24, x1, lsl #3]	//  "c"
/*     37 */	add	x1, x1, 8
/*     37 */	bne	.L110
/*     38 */	subs	w0, w0, 1
/*     38 */	bne	.L108
.L113:
/*      7 */	mov	w0, 1
/*      7 */	mov	x1, x20
/*      7 */	bl	clock_gettime
/*      8 */	ldr	x1, [x20]	//  "tp"
/*     40 */	scvtf	d1, w19
/*      8 */	ldr	x2, [x20, 8]	//  "tp"
/*     39 */	ldr	d0, .LC5
/*     40 */	ldr	d2, .LC6
/*     41 */	adrp	x0, .LR.2
/*     41 */	add	x0, x0, :lo12:.LR.2
/*      8 */	scvtf	d3, x1
/*      8 */	scvtf	d4, x2
/*     40 */	frecpe	d5, d1
/*     40 */	frecps	d6, d1, d5
/*     39 */	fsub	d3, d3, d8
/*     39 */	fmadd	d0, d4, d0, d3
/*     40 */	fmul	d3, d6, d5
/*     40 */	frecps	d4, d1, d3
/*     40 */	fmul	d3, d4, d3
/*     40 */	frecps	d1, d1, d3
/*     40 */	fmul	d1, d1, d3
/*     40 */	fmul	d1, d2, d1
/*     40 */	fmul	d1, d0, d1
/*     41 */	bl	printf
/*     42 */	ldr	d0, [x21, :lo12:c]	//  "c"
/*     42 */	adrp	x0, c+16376
/*     42 */	adrp	x1, .LR.1
/*     42 */	ldr	d1, [x0, :lo12:c+16376]	//  "c"
/*     42 */	add	x0, x1, :lo12:.LR.1
/*     42 */	bl	printf
/*     42 */	mov	w0, 0
/*    ??? */	ldp	x21, x22, [sp, 16]	//  (*)
/*    ??? */	ldr	d8, [sp, 56]	//  (*)
/*    ??? */	ldp	x23, x24, [sp, 32]	//  (*)
/*    ??? */	ldr	x30, [sp, 48]	//  (*)
/*    ??? */	ldp	x19, x20, [sp], 80	//  (*)
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
