	.ident	"$Options: Fujitsu C/C++ Compiler Version 1.2.0 P-id: Alpha-20161222 (Dec 20 2016 18:37:40) --preinclude /opt/FJTComp3/bin/../lib/c99.pre --gcc --c99 -D__FUJITSU -Dunix -D__aarch64__ -D__unix -D__fcc_version__=0x700 -D__fcc_version=700 -D__USER_LABEL_PREFIX__= -D__OPTIMIZE__ -D__ARM_ARCH=8 -D__FP_FAST_FMA -D__ELF__ -D__unix__ -D__linux__ -D__linux -Asystem(unix) -Dlinux -D__LIBC_6B -D__LP64__ -D_LP64 --K=noocl --zmode=64 --sys_include=/opt/FJTComp3/bin/../include --sys_include=/opt/ARM/aarch64-linux-gnu/sysroot-linaro-eglibc-gcc4.9-2014.11-aarch64-linux-gnu/usr/include --K=opt ld1h_16.c -- -ncmdname=fccpx -Nnoline -zobe=no-static-clump -O3 -x- -Komitfp,mfunc,rdconv,eval,fp_relaxed,ns,fast_matmul,fp_contract,ilfunc,prefetch_conditional,loop_nofission ld1h_16.s $"
	.file	"ld1h_16.c"
	.ident	"$Compiler: Fujitsu C/C++ Compiler Version 1.2.0 P-id: Alpha-20161222 (Dec 20 2016 18:37:40) ld1h_16.c main $"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
/*    ??? */	stp	x19, x20, [sp, -160]!	//  (*)
/*    ??? */	stp	x21, x30, [sp, 16]	//  (*)
/*     10 */	ptrue	p1.h, ALL
/*     13 */	index	z0.s, 0, 1
/*     13 */	ptrue	p0.s, VL16
/*     13 */	mov	w2, 2
/*     13 */	mov	x3, 0
/*     15 */	dup	z2.h, 0
/*     15 */	add	x0, sp, 96
/*     13 */	mov	w4, 0
/*     14 */	add	x1, sp, 32
.L62:					// :entr:term
/*     14 */	dup	z1.s, w4
/*     16 */	add	w4, w4, 16
/*     16 */	subs	w2, w2, 1
/*     15 */	st1h	z2.s, p0, [x0, x3, lsl #1]	//  "y"
/*     14 */	add	z1.s, z1.s, z0.s
/*     14 */	add	z1.h, z1.h, z1.h
/*     14 */	st1h	z1.s, p0, [x1, x3, lsl #1]	//  "x"
/*     16 */	add	x3, x3, 16
/*     16 */	bne	.L62
/*     18 */	ld1h	z0.h, p1/z, [x1, 0, mul vl]	//  "x"
/*     19 */	st1h	z0.h, p1, [x0, 0, mul vl]	//  "y"
/*     21 */	mov	w21, 7
/*     22 */	add	x20, x0, 6
/*     22 */	adrp	x0, .LR.2
/*     22 */	add	x19, x0, :lo12:.LR.2
.L65:					// :entr:term:body
/*     22 */	ldrsh	w1, [x20, -6]	//  "y"
/*     22 */	mov	x0, x19
/*     22 */	bl	printf
/*     22 */	ldrsh	w1, [x20, -4]	//  "y"
/*     22 */	mov	x0, x19
/*     22 */	bl	printf
/*     22 */	ldrsh	w1, [x20, -2]	//  "y"
/*     22 */	mov	x0, x19
/*     22 */	bl	printf
/*     22 */	ldrsh	w1, [x20]	//  "y"
/*     22 */	mov	x0, x19
/*     22 */	bl	printf
/*     23 */	add	x20, x20, 8
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
