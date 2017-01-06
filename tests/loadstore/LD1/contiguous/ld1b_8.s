	.ident	"$Options: Fujitsu C/C++ Compiler Version 1.2.0 P-id: Alpha-20161222 (Dec 20 2016 18:37:40) --preinclude /opt/FJTComp3/bin/../lib/c99.pre --gcc --c99 -D__FUJITSU -Dunix -D__aarch64__ -D__unix -D__fcc_version__=0x700 -D__fcc_version=700 -D__USER_LABEL_PREFIX__= -D__OPTIMIZE__ -D__ARM_ARCH=8 -D__FP_FAST_FMA -D__ELF__ -D__unix__ -D__linux__ -D__linux -Asystem(unix) -Dlinux -D__LIBC_6B -D__LP64__ -D_LP64 --K=noocl --zmode=64 --sys_include=/opt/FJTComp3/bin/../include --sys_include=/opt/ARM/aarch64-linux-gnu/sysroot-linaro-eglibc-gcc4.9-2014.11-aarch64-linux-gnu/usr/include --K=opt ld1b_8.c -- -ncmdname=fccpx -Nnoline -zobe=no-static-clump -O3 -x- -Komitfp,mfunc,rdconv,eval,fp_relaxed,ns,fast_matmul,fp_contract,ilfunc,prefetch_conditional,loop_nofission ld1b_8.s $"
	.file	"ld1b_8.c"
	.ident	"$Compiler: Fujitsu C/C++ Compiler Version 1.2.0 P-id: Alpha-20161222 (Dec 20 2016 18:37:40) ld1b_8.c main $"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
/*    ??? */	stp	x19, x20, [sp, -160]!	//  (*)
/*    ??? */	stp	x21, x30, [sp, 16]	//  (*)
/*     10 */	ptrue	p0.b, ALL
/*     13 */	index	z0.s, 0, 1
/*     13 */	mov	w0, 0
/*     15 */	dup	z3.b, 0
/*     13 */	ptrue	p1.s, VL16
/*     13 */	mov	w3, 4
/*     13 */	mov	x2, 0
/*     14 */	dup	z1.s, w0
/*     15 */	add	x4, sp, 96
/*     14 */	add	x5, sp, 32
/*     14 */	add	z1.s, z1.s, z0.s
/*     16 */	add	w0, w0, 16
/*     14 */	dup	z2.s, w0
/*     14 */	add	z1.b, z1.b, z1.b
/*     15 */	st1b	z3.s, p1, [x4, x2]	//  "y"
/*     14 */	add	z2.s, z2.s, z0.s
/*     16 */	add	x1, x2, 16
/*     14 */	st1b	z1.s, p1, [x5, x2]	//  "x"
/*     16 */	sub	w3, w3, 1
/*     16 */	add	w0, w0, 16
/*     14 */	dup	z1.s, w0
/*     14 */	add	z2.b, z2.b, z2.b
/*     15 */	st1b	z3.s, p1, [x4, x1]	//  "y"
/*     14 */	add	z1.s, z1.s, z0.s
/*     16 */	add	x2, x1, 16
/*     14 */	st1b	z2.s, p1, [x5, x1]	//  "x"
/*     16 */	sub	w3, w3, 1
/*     16 */	add	w0, w0, 16
/*     14 */	add	z1.b, z1.b, z1.b
/*     15 */	st1b	z3.s, p1, [x4, x2]	//  "y"
/*     16 */	add	x1, x2, 16
/*     14 */	st1b	z1.s, p1, [x5, x2]	//  "x"
/*     16 */	sub	w3, w3, 1
/*     16 */	mov	x2, x1
/*     14 */	dup	z1.s, w0
/*     16 */	subs	w3, w3, 1
/*     15 */	st1b	z3.s, p1, [x4, x2]	//  "y"
/*     14 */	add	z1.s, z1.s, z0.s
/*     14 */	add	z1.b, z1.b, z1.b
/*     14 */	st1b	z1.s, p1, [x5, x2]	//  "x"
/*     18 */	ld1b	z0.b, p0/z, [x5, 0, mul vl]	//  "x"
/*     19 */	st1b	z0.b, p0, [x4, 0, mul vl]	//  "y"
/*     21 */	mov	w21, 15
/*     22 */	add	x20, x4, 3
/*     22 */	adrp	x0, .LR.2
/*     22 */	add	x19, x0, :lo12:.LR.2
.L65:					// :entr:term:body
/*     22 */	ldrsb	w1, [x20, -3]	//  "y"
/*     22 */	mov	x0, x19
/*     22 */	bl	printf
/*     22 */	ldrsb	w1, [x20, -2]	//  "y"
/*     22 */	mov	x0, x19
/*     22 */	bl	printf
/*     22 */	ldrsb	w1, [x20, -1]	//  "y"
/*     22 */	mov	x0, x19
/*     22 */	bl	printf
/*     22 */	ldrsb	w1, [x20]	//  "y"
/*     22 */	mov	x0, x19
/*     22 */	bl	printf
/*     23 */	add	x20, x20, 4
/*     23 */	subs	w21, w21, 1
/*     23 */	bge	.L65
/*     24 */	adrp	x0, .LR.1
/*     24 */	add	x0, x0, :lo12:.LR.1
/*     24 */	bl	printf
/*     26 */	mov	w0, 0
/*    ??? */	ldp	x21, x30, [sp, 16]	//  (*)
/*    ??? */	ldp	x19, x20, [sp], 160	//  (*)
/*     27 */	ret	
	.size	main, .-main
	.section	.rodata
	.align	3
.LR.1:
	.ascii "\012\000"
	.type	.LR.1, %object
	.size	.LR.1,.-.LR.1
	.section	.rodata
	.align	3
.LR.2:
	.ascii "%d\040\000"
	.type	.LR.2, %object
	.size	.LR.2,.-.LR.2
	.section	.note.GNU-stack,"",%progbits
