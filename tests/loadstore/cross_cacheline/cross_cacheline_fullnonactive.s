	.ident	"$Options: Fujitsu C/C++ Compiler Version 1.2.0 P-id: Alpha-20170330 (Mar 24 2017 17:23:55) --preinclude /opt/FJTComp4/bin/../lib/c99.pre --gcc --c99 -D__FUJITSU -Dunix -D__aarch64__ -D__unix -D__fcc_version__=0x700 -D__fcc_version=700 -D__USER_LABEL_PREFIX__= -D__OPTIMIZE__ -D__ARM_ARCH=8 -D__FP_FAST_FMA -D__ELF__ -D__unix__ -D__linux__ -D__linux -Asystem(unix) -Dlinux -D__LIBC_6B -D__LP64__ -D_LP64 --K=noocl --zmode=64 --sys_include=/opt/FJTComp4/bin/../include --sys_include=/opt/ARM/aarch64-linux-gnu/sysroot-linaro-eglibc-gcc4.9-2014.11-aarch64-linux-gnu/usr/include --K=opt cross_cacheline_fullnonactive.c -- -ncmdname=fccpx -nspopt=\"-Kfast,nounroll,noswp -Nlst=t -Koptmsg=2 -S -o cross_cacheline_fullnonactive.s\" -Nnoline -zobe=no-static-clump -O3 -x- -Komitfp,mfunc,rdconv,eval,fp_relaxed,ns,fast_matmul,fp_contract,ilfunc,prefetch_conditional,nounroll,noswp -Nlst=t -Koptmsg=2 -zsta=m -zsrc=cross_cacheline_fullnonactive.c cross_cacheline_fullnonactive.s $"
	.file	"cross_cacheline_fullnonactive.c"
	.ident	"$Compiler: Fujitsu C/C++ Compiler Version 1.2.0 P-id: Alpha-20170330 (Mar 24 2017 17:23:55) cross_cacheline_fullnonactive.c main $"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
/*    ??? */	stp	x19, x20, [sp, -48]!	//  (*)
/*    ??? */	stp	x21, x22, [sp, 16]	//  (*)
/*    ??? */	stp	x23, x30, [sp, 32]	//  (*)
/*     14 */	ptrue	p0.d, VL8
/*     14 */	index	z0.d, 0, 1
/*     14 */	mov	w2, 16
/*     14 */	mov	x1, 0
/*     17 */	adrp	x0, y
/*     16 */	fmov	z2.d, 0.000000e+00
/*     17 */	add	x21, x0, :lo12:y
/*     17 */	adrp	x3, x
/*     17 */	mov	x0, 0
/*     17 */	add	x3, x3, :lo12:x
.L83:					// :entr:term
/*     15 */	dup	z1.d, x0
/*     17 */	add	x0, x0, 8
/*     17 */	subs	w2, w2, 1
/*     16 */	st1d	z2.d, p0, [x21, x1, lsl #3]	//  "y"
/*     15 */	add	z1.d, z1.d, z0.d
/*     15 */	scvtf	z1.d, p0/m, z1.d
/*     15 */	st1d	z1.d, p0, [x3, x1, lsl #3]	//  "x"
/*     17 */	add	x1, x1, 8
/*     17 */	bne	.L83
/*     19 */	ptrue	p0.d, VL8
/*     19 */	mov	x0, 28
/*     20 */	dup	z1.s, 36
/*     19 */	index	z0.d, x0, 1
/*     21 */	add	x0, x3, 224
/*     21 */	add	x1, x21, 224
/*     21 */	fdup	z2.d, 3.000000e+00
/*     20 */	cmpgt	p0.s, p0/z, z0.s, z1.s
/*     21 */	ld1d	z1.d, p0/z, [x0, 0, mul vl]	//  "x"
/*     21 */	ld1d	z0.d, p0/z, [x1, 0, mul vl]	//  "y"
/*     21 */	fmad	z1.d, p0/m, z2.d, z0.d
/*     21 */	st1d	z1.d, p0, [x1, 0, mul vl]	//  "y"
/*     25 */	mov	w20, 28
/*     25 */	mov	w23, 8
/*     26 */	adrp	x0, .LR.1
/*     26 */	mov	x22, 28
/*     26 */	add	x19, x0, :lo12:.LR.1
.L89:					// :entr:term
/*     26 */	ldr	d0, [x21, x22, lsl #3]	//  "y"
/*     26 */	mov	x0, x19
/*     26 */	mov	w1, w20
/*     26 */	bl	printf
/*     27 */	add	w20, w20, 1
/*     27 */	add	x22, x22, 1
/*     27 */	subs	w23, w23, 1
/*     27 */	bne	.L89
/*     29 */	mov	w0, 0
/*    ??? */	ldp	x21, x22, [sp, 16]	//  (*)
/*    ??? */	ldp	x23, x30, [sp, 32]	//  (*)
/*    ??? */	ldp	x19, x20, [sp], 48	//  (*)
/*     30 */	ret	
	.size	main, .-main
	.section	.rodata
	.align	3
.LR.1:
	.ascii "y[%d]\040=\040%lf\012\000"
	.type	.LR.1, %object
	.size	.LR.1,.-.LR.1
	.comm	y,1024,256
	.comm	x,1024,256
	.section	.note.GNU-stack,"",%progbits
