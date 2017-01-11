	.ident	"$Options: Fujitsu C/C++ Compiler Version 1.2.0 P-id: Alpha-20161222 (Dec 20 2016 18:37:40) --preinclude /opt/FJTComp3/bin/../lib/c99.pre --gcc --c99 -D__FUJITSU -Dunix -D__aarch64__ -D__unix -D__fcc_version__=0x700 -D__fcc_version=700 -D__USER_LABEL_PREFIX__= -D__OPTIMIZE__ -D__ARM_ARCH=8 -D__FP_FAST_FMA -D__ELF__ -D__unix__ -D__linux__ -D__linux -Asystem(unix) -Dlinux -D__LIBC_6B -D__LP64__ -D_LP64 --K=noocl --zmode=64 --sys_include=/opt/FJTComp3/bin/../include --sys_include=/dummy/usr/include --K=opt bench1.c -- -ncmdname=fccpx -Nnoline -zobe=no-static-clump -O3 -x- -Komitfp,mfunc,rdconv,eval,fp_relaxed,ns,fast_matmul,fp_contract,ilfunc,prefetch_conditional,simd=2,loop_nofission,nounroll,noswp bench1_noopt.s $"
	.file	"bench1.c"
	.ident	"$Compiler: Fujitsu C/C++ Compiler Version 1.2.0 P-id: Alpha-20161222 (Dec 20 2016 18:37:40) bench1.c get_dtime $"
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
/*      8 */	ldr	d2, .LC1
/*      8 */	scvtf	d0, x0
/*      8 */	scvtf	d1, x1
/*      8 */	fmadd	d0, d1, d2, d0
/*    ??? */	ldp	x19, x30, [sp], 32	//  (*)
/*      9 */	ret	
	.size	get_dtime, .-get_dtime
	.align	3
.LC1:
	.word	0xe826d695,0x3e112e0b
	.ident	"$Compiler: Fujitsu C/C++ Compiler Version 1.2.0 P-id: Alpha-20161222 (Dec 20 2016 18:37:40) bench1.c main $"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
/*    ??? */	stp	x19, x20, [sp, -64]!	//  (*)
/*    ??? */	stp	x21, x22, [sp, 16]	//  (*)
/*    ??? */	str	x30, [sp, 32]	//  (*)
/*    ??? */	str	d8, [sp, 40]	//  (*)
/*     23 */	cmp	w0, 1
/*     23 */	ble	.L107
/*     24 */	ldr	x0, [x1, 8]	//  (*)
/*    280 */	mov	w2, 10
/*    280 */	mov	x1, 0
/*    280 */	bl	strtol
/*    280 */	mov	w19, w0
/*     24 */	b	.L108
.L107:
/*     26 */	mov	w19, 1000
.L108:
/*     27 */	adrp	x0, .LR.3
/*     27 */	mov	x2, 2048
/*     27 */	mov	w1, w19
/*     27 */	add	x0, x0, :lo12:.LR.3
/*     27 */	bl	printf
/*     28 */	ptrue	p0.d, VL8
/*     28 */	index	z0.d, 0, 1
/*     28 */	mov	w2, 256
/*     28 */	mov	x0, 0
/*     30 */	ldr	d2, .LC2
/*     30 */	ldr	d1, .LC3
/*     31 */	adrp	x4, b
/*     31 */	adrp	x3, a
/*     31 */	mov	x1, 0
/*     31 */	add	x22, x4, :lo12:b
/*     31 */	add	x21, x3, :lo12:a
/*     30 */	dup	z2.d, z2.d[0]
/*     30 */	dup	z4.d, z1.d[0]
.L110:					// :entr:term
/*     29 */	dup	z1.d, x0
/*     31 */	add	x0, x0, 8
/*     31 */	subs	w2, w2, 1
/*     29 */	add	z1.d, z1.d, z0.d
/*     29 */	scvtf	z3.d, p0/m, z1.d
/*     30 */	fmul	z1.d, z3.d, z2.d
/*     30 */	fmul	z3.d, z3.d, z4.d
/*     30 */	st1d	z1.d, p0, [x22, x1, lsl #3]	//  "b"
/*     30 */	st1d	z3.d, p0, [x21, x1, lsl #3]	//  "a"
/*     31 */	add	x1, x1, 8
/*     31 */	bne	.L110
/*      7 */	add	x20, sp, 48
/*      7 */	mov	w0, 1
/*      7 */	mov	x1, x20
/*      7 */	bl	clock_gettime
/*      8 */	ldr	x1, [x20]	//  "tp"
/*      8 */	ldr	x0, [x20, 8]	//  "tp"
/*      8 */	ldr	d2, .LC4
/*      8 */	scvtf	d1, x1
/*      8 */	scvtf	d0, x0
/*      8 */	fmadd	d8, d0, d2, d1
/*     33 */	cmp	w19, 0
/*     33 */	ble	.L120
/*     34 */	ptrue	p0.d, VL8
/*     34 */	adrp	x0, c
/*     34 */	add	x2, x0, :lo12:c
/*     34 */	mov	w0, w19
.L115:					// :entr
/*     34 */	mov	w1, 256
/*     34 */	mov	x3, 0
.L117:					// :entr:term
/*     36 */	ld1d	z0.d, p0/z, [x22, x3, lsl #3]	//  "b"
/*     35 */	ld1d	z1.d, p0/z, [x21, x3, lsl #3]	//  "a"
/*     36 */	subs	w1, w1, 1
/*     35 */	fadd	z1.d, z1.d, z0.d
/*     35 */	st1d	z1.d, p0, [x2, x3, lsl #3]	//  "c"
/*     36 */	add	x3, x3, 8
/*     36 */	bne	.L117
/*     37 */	subs	w0, w0, 1
/*     37 */	bne	.L115
.L120:
/*      7 */	mov	w0, 1
/*      7 */	mov	x1, x20
/*      7 */	bl	clock_gettime
/*      8 */	ldr	x1, [x20]	//  "tp"
/*     39 */	scvtf	d1, w19
/*      8 */	ldr	x2, [x20, 8]	//  "tp"
/*     38 */	ldr	d0, .LC4
/*     39 */	ldr	d3, .LC5
/*     40 */	adrp	x0, .LR.2
/*     40 */	add	x0, x0, :lo12:.LR.2
/*      8 */	scvtf	d5, x1
/*      8 */	scvtf	d6, x2
/*     39 */	frecpe	d4, d1
/*     39 */	frecps	d2, d1, d4
/*     38 */	fsub	d5, d5, d8
/*     38 */	fmadd	d0, d6, d0, d5
/*     39 */	fmul	d4, d2, d4
/*     39 */	frecps	d2, d1, d4
/*     39 */	fmul	d2, d2, d4
/*     39 */	frecps	d1, d1, d2
/*     39 */	fmul	d1, d1, d2
/*     39 */	fmul	d1, d3, d1
/*     39 */	fmul	d1, d0, d1
/*     40 */	bl	printf
/*     41 */	adrp	x0, .LR.1
/*     41 */	adrp	x1, c
/*     41 */	add	x0, x0, :lo12:.LR.1
/*     41 */	add	x1, x1, :lo12:c
/*     41 */	ldr	d0, [x1]	//  "c"
/*     41 */	ldr	d1, [x1, 16376]	//  "c"
/*     41 */	bl	printf
/*     41 */	mov	w0, 0
/*    ??? */	ldp	x21, x22, [sp, 16]	//  (*)
/*    ??? */	ldr	d8, [sp, 40]	//  (*)
/*    ??? */	ldr	x30, [sp, 32]	//  (*)
/*    ??? */	ldp	x19, x20, [sp], 64	//  (*)
/*     42 */	ret	
	.size	main, .-main
	.align	3
.LC2:
	.word	0x9999999a,0x3fc99999
	.align	3
.LC3:
	.word	0x9999999a,0x3fb99999
	.align	3
.LC4:
	.word	0xe826d695,0x3e112e0b
	.align	3
.LC5:
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
