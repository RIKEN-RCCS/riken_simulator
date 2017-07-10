	.ident	"$Options: Fujitsu C/C++ Compiler Version 1.2.0 P-id: Alpha-20170330 (Mar 24 2017 17:23:55) --preinclude /opt/FJTComp4/bin/../lib/c99.pre --gcc --c99 -D__FUJITSU -Dunix -D__aarch64__ -D__unix -D__fcc_version__=0x700 -D__fcc_version=700 -D__USER_LABEL_PREFIX__= -D__OPTIMIZE__ -D__ARM_ARCH=8 -D__FP_FAST_FMA -D__ELF__ -D__unix__ -D__linux__ -D__linux -Asystem(unix) -Dlinux -D__LIBC_6B -D__LP64__ -D_LP64 --K=noocl --zmode=64 --sys_include=/opt/FJTComp4/bin/../include --sys_include=/opt/ARM/aarch64-linux-gnu/sysroot-linaro-eglibc-gcc4.9-2014.11-aarch64-linux-gnu/usr/include --K=opt cross_cacheline_nonactive.c -- -ncmdname=fccpx -nspopt=\"-Kfast,nounroll,noswp -Nlst=t -Koptmsg=2 -S -o cross_cacheline_nonactive.s\" -Nnoline -zobe=no-static-clump -O3 -x- -Komitfp,mfunc,rdconv,eval,fp_relaxed,ns,fast_matmul,fp_contract,ilfunc,prefetch_conditional,nounroll,noswp -Nlst=t -Koptmsg=2 -zsta=m -zsrc=cross_cacheline_nonactive.c cross_cacheline_nonactive.s $"
	.file	"cross_cacheline_nonactive.c"
	.ident	"$Compiler: Fujitsu C/C++ Compiler Version 1.2.0 P-id: Alpha-20170330 (Mar 24 2017 17:23:55) cross_cacheline_nonactive.c main $"
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
/*     17 */	add	x23, x0, :lo12:y
/*     17 */	adrp	x0, x
/*     17 */	mov	x3, 0
/*     17 */	add	x0, x0, :lo12:x
.L79:					// :entr:term
/*     15 */	dup	z1.d, x3
/*     17 */	add	x3, x3, 8
/*     17 */	subs	w2, w2, 1
/*     16 */	st1d	z2.d, p0, [x23, x1, lsl #3]	//  "y"
/*     15 */	add	z1.d, z1.d, z0.d
/*     15 */	scvtf	z1.d, p0/m, z1.d
/*     15 */	st1d	z1.d, p0, [x0, x1, lsl #3]	//  "x"
/*     17 */	add	x1, x1, 8
/*     17 */	bne	.L79
/*     19 */	ptrue	p0.d, VL4
/*     20 */	add	x1, x0, 224
/*     20 */	fdup	z2.d, 3.000000e+00
/*     20 */	add	x0, x23, 224
/*     20 */	ld1d	z1.d, p0/z, [x1, 0, mul vl]	//  "x"
/*     20 */	ld1d	z0.d, p0/z, [x0, 0, mul vl]	//  "y"
/*     20 */	fmad	z1.d, p0/m, z2.d, z0.d
/*     20 */	st1d	z1.d, p0, [x0, 0, mul vl]	//  "y"
/*     23 */	mov	w20, 28
/*     23 */	mov	w21, 8
/*     24 */	adrp	x0, .LR.1
/*     24 */	mov	x22, 28
/*     24 */	add	x19, x0, :lo12:.LR.1
.L85:					// :entr:term
/*     24 */	ldr	d0, [x23, x22, lsl #3]	//  "y"
/*     24 */	mov	x0, x19
/*     24 */	mov	w1, w20
/*     24 */	bl	printf
/*     25 */	add	w20, w20, 1
/*     25 */	add	x22, x22, 1
/*     25 */	subs	w21, w21, 1
/*     25 */	bne	.L85
/*     27 */	mov	w0, 0
/*    ??? */	ldp	x21, x22, [sp, 16]	//  (*)
/*    ??? */	ldp	x23, x30, [sp, 32]	//  (*)
/*    ??? */	ldp	x19, x20, [sp], 48	//  (*)
/*     28 */	ret	
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
