	.ident	"$Options: Fujitsu C/C++ Compiler Version 1.2.0 P-id: Alpha-20161222 (Dec 20 2016 18:37:40) --preinclude /opt/FJTComp3/bin/../lib/c99.pre --gcc --c99 -D__FUJITSU -Dunix -D__aarch64__ -D__unix -D__fcc_version__=0x700 -D__fcc_version=700 -D__USER_LABEL_PREFIX__= -D__OPTIMIZE__ -D__ARM_ARCH=8 -D__FP_FAST_FMA -D__ELF__ -D__unix__ -D__linux__ -D__linux -Asystem(unix) -Dlinux -D__LIBC_6B -D__LP64__ -D_LP64 --K=noocl --zmode=64 --sys_include=/opt/FJTComp3/bin/../include --sys_include=/dummy/usr/include --K=opt scatterstore.c -- -ncmdname=fccpx -Nnoline -zobe=no-static-clump -O3 -x- -Komitfp,mfunc,rdconv,eval,fp_relaxed,ns,fast_matmul,fp_contract,ilfunc,prefetch_conditional,simd=2,loop_nofission,nounroll,noswp scatterstore.s $"
	.file	"scatterstore.c"
	.ident	"$Compiler: Fujitsu C/C++ Compiler Version 1.2.0 P-id: Alpha-20161222 (Dec 20 2016 18:37:40) scatterstore.c main $"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
/*    ??? */	str	x30, [sp, -16]!	//  (*)
/*     13 */	cmp	w0, 1
/*     13 */	ble	.L80
/*     14 */	ldr	x0, [x1, 8]	//  (*)
/*    280 */	mov	w2, 10
/*    280 */	mov	x1, 0
/*    280 */	bl	strtol
/*    280 */	mov	w1, w0
/*     14 */	b	.L81
.L80:
/*     16 */	mov	w1, 100
.L81:
/*     17 */	adrp	x0, .LR.2
/*     17 */	mov	x2, 2048
/*     17 */	add	x0, x0, :lo12:.LR.2
/*     17 */	bl	printf
/*     18 */	ptrue	p0.d, VL8
/*     18 */	mov	w0, 256
/*     18 */	mov	x1, 0
/*     20 */	adrp	x2, a
/*     19 */	fdup	z0.d, -1.000000e+00
/*     20 */	add	x2, x2, :lo12:a
.L83:					// :entr:term
/*     19 */	st1d	z0.d, p0, [x2, x1, lsl #3]	//  "a"
/*     20 */	add	x1, x1, 8
/*     20 */	subs	w0, w0, 1
/*     20 */	bne	.L83
/*     21 */	ptrue	p0.d, VL8
/*     21 */	index	z0.d, 1, 2
/*     21 */	mov	w3, 128
/*     21 */	mov	x4, 0
/*     22 */	ldr	d1, .LC1
/*     22 */	index	z3.d, 0, 2
/*     23 */	mov	x0, 0
/*     22 */	dup	z2.d, z1.d[0]
.L86:					// :entr:term
/*     22 */	dup	z1.d, x4
/*     22 */	mov	x1, x0
/*     23 */	add	x4, x4, 16
/*     22 */	add	x1, x2, x1, lsl #3
/*     23 */	add	x0, x0, 16
/*     23 */	subs	w3, w3, 1
/*     22 */	add	z1.d, z1.d, z0.d
/*     22 */	scvtf	z1.d, p0/m, z1.d
/*     22 */	fmul	z1.d, z1.d, z2.d
/*     22 */	st1d	z1.d, p0, [x1, z3.d, lsl #3]	//  "a"
/*     23 */	bne	.L86
/*     24 */	ldr	d0, [x2]	//  "a"
/*     24 */	ldr	d1, [x2, 8]	//  "a"
/*     24 */	adrp	x0, .LR.1
/*     24 */	add	x0, x0, :lo12:.LR.1
/*     24 */	bl	printf
/*     24 */	mov	w0, 0
/*    ??? */	ldr	x30, [sp], 16	//  (*)
/*     26 */	ret	
	.size	main, .-main
	.align	3
.LC1:
	.word	0x9999999a,0x3fb99999
	.section	.rodata
	.align	3
.LR.1:
	.ascii "a[0]\040=\040%lf,\040a[1]\040=\040%lf\012\000"
	.type	.LR.1, %object
	.size	.LR.1,.-.LR.1
	.section	.rodata
	.align	3
.LR.2:
	.ascii "bench1:\040rep:%d\040n:%d\012\000"
	.type	.LR.2, %object
	.size	.LR.2,.-.LR.2
	.comm	a,16384,8
	.section	.note.GNU-stack,"",%progbits
