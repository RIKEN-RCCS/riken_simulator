	.ident	"$Options: Fujitsu C/C++ Compiler Version 1.2.0 P-id: Alpha-20161222 (Dec 20 2016 18:37:40) --preinclude /opt/FJTComp3/bin/../lib/c99.pre --gcc --c99 -D__FUJITSU -Dunix -D__aarch64__ -D__unix -D__fcc_version__=0x700 -D__fcc_version=700 -D__USER_LABEL_PREFIX__= -D__OPTIMIZE__ -D__ARM_ARCH=8 -D__FP_FAST_FMA -D__ELF__ -D__unix__ -D__linux__ -D__linux -Asystem(unix) -Dlinux -D__LIBC_6B -D__LP64__ -D_LP64 --K=noocl --zmode=64 --sys_include=/opt/FJTComp3/bin/../include --sys_include=/opt/ARM/aarch64-linux-gnu/sysroot-linaro-eglibc-gcc4.9-2014.11-aarch64-linux-gnu/usr/include --K=opt ld1d_64.c -- -ncmdname=fccpx -Nnoline -zobe=no-static-clump -O3 -x- -Komitfp,mfunc,rdconv,eval,fp_relaxed,ns,fast_matmul,fp_contract,ilfunc,prefetch_conditional,loop_nofission ld1d_64.s $"
	.file	"ld1d_64.c"
	.ident	"$Compiler: Fujitsu C/C++ Compiler Version 1.2.0 P-id: Alpha-20161222 (Dec 20 2016 18:37:40) ld1d_64.c main $"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
/*    ??? */	stp	x19, x20, [sp, -160]!	//  (*)
/*    ??? */	str	x30, [sp, 16]	//  (*)
/*     13 */	ptrue	p1.d, VL8
/*     13 */	index	z0.d, 0, 2
/*     14 */	add	x0, sp, 32
/*     15 */	add	x20, sp, 96
/*     10 */	ptrue	p0.d, ALL
/*     15 */	dup	z1.d, 0
/*     22 */	adrp	x1, .LR.2
/*     22 */	add	x19, x1, :lo12:.LR.2
/*     15 */	st1d	z1.d, p1, [x20, 0, mul vl]	//  "y"
/*     14 */	add	z0.d, z0.d, 0
/*     14 */	st1d	z0.d, p1, [x0, 0, mul vl]	//  "x"
/*     18 */	ld1d	z0.d, p0/z, [x0, 0, mul vl]	//  "x"
/*     22 */	mov	x0, x19
/*     19 */	st1d	z0.d, p0, [x20, 0, mul vl]	//  "y"
/*     22 */	ldr	x1, [x20]	//  "y"
/*     22 */	bl	printf
/*     22 */	ldr	x1, [x20, 8]	//  "y"
/*     22 */	mov	x0, x19
/*     22 */	bl	printf
/*     22 */	ldr	x1, [x20, 16]	//  "y"
/*     22 */	mov	x0, x19
/*     22 */	bl	printf
/*     22 */	ldr	x1, [x20, 24]	//  "y"
/*     22 */	mov	x0, x19
/*     22 */	bl	printf
/*     22 */	ldr	x1, [x20, 32]	//  "y"
/*     22 */	mov	x0, x19
/*     22 */	bl	printf
/*     22 */	ldr	x1, [x20, 40]	//  "y"
/*     22 */	mov	x0, x19
/*     22 */	bl	printf
/*     22 */	ldr	x1, [x20, 48]	//  "y"
/*     22 */	mov	x0, x19
/*     22 */	bl	printf
/*     22 */	ldr	x1, [x20, 56]	//  "y"
/*     22 */	mov	x0, x19
/*     22 */	bl	printf
/*     24 */	adrp	x0, .LR.1
/*     24 */	add	x0, x0, :lo12:.LR.1
/*     24 */	bl	printf
/*     26 */	mov	w0, 0
/*    ??? */	ldr	x30, [sp, 16]	//  (*)
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
