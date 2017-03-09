	.ident	"$Options: Fujitsu C/C++ Compiler Version 1.2.0 P-id: Alpha-20161222 (Dec 20 2016 18:37:40) --preinclude /opt/FJTComp3/bin/../lib/c99.pre --gcc --c99 -D__FUJITSU -Dunix -D__aarch64__ -D__unix -D__fcc_version__=0x700 -D__fcc_version=700 -D__USER_LABEL_PREFIX__= -D__OPTIMIZE__ -D__ARM_ARCH=8 -D__FP_FAST_FMA -D__ELF__ -D__unix__ -D__linux__ -D__linux -Asystem(unix) -Dlinux -D__LIBC_6B -D__LP64__ -D_LP64 -v --K=noocl --zmode=64 --sys_include=/opt/FJTComp3/bin/../include --sys_include=/opt/ARM/aarch64-linux-gnu/sysroot-linaro-eglibc-gcc4.9-2014.11-aarch64-linux-gnu/usr/include --K=opt gather_ld1d_2vec.c -- -ncmdname=fccpx -nspopt=\"-Kfast,nounroll,noswp -Ksimd=2 -V -Nlst=t -Koptmsg=2 -S -o gather_ld1d_2vec.s\" -Nnoline -zobe=no-static-clump -O3 -x- -Komitfp,mfunc,rdconv,eval,fp_relaxed,ns,fast_matmul,fp_contract,ilfunc,prefetch_conditional,nounroll,noswp -Ksimd=2 -V -Nlst=t -Koptmsg=2 -zsta=m -zsrc=gather_ld1d_2vec.c gather_ld1d_2vec.s $"
	.file	"gather_ld1d_2vec.c"
	.ident	"$Compiler: Fujitsu C/C++ Compiler Version 1.2.0 P-id: Alpha-20161222 (Dec 20 2016 18:37:40) gather_ld1d_2vec.c main $"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
/*      6 */	sub	sp, sp, 48
/*    ??? */	stp	x19, x20, [sp, -512]!	//  (*)
/*    ??? */	stp	x21, x22, [sp, 16]	//  (*)
/*    ??? */	str	x30, [sp, 32]	//  (*)
/*     11 */	ptrue	p0.d, VL8
/*     11 */	index	z0.d, 0, 1
/*     11 */	mov	w2, 4
/*     11 */	mov	x1, 0
/*     13 */	add	x20, sp, 304
/*     11 */	mov	x4, 0
/*     12 */	add	x3, sp, 48
/*     13 */	mov	x0, 9999
.L79:					// :entr:term
/*     12 */	dup	z1.d, x4
/*     14 */	add	x4, x4, 8
/*     14 */	subs	w2, w2, 1
/*     13 */	dup	z2.d, x0
/*     12 */	add	z1.d, z1.d, z0.d
/*     13 */	st1d	z2.d, p0, [x20, x1, lsl #3]	//  "y"
/*     12 */	st1d	z1.d, p0, [x3, x1, lsl #3]	//  "x"
/*     14 */	add	x1, x1, 8
/*     14 */	bne	.L79
/*     16 */	mov	w4, 2
/*     16 */	ptrue	p0.d, VL8
/*     16 */	mov	x0, 0
/*     17 */	index	z0.d, 0, 2
/*     17 */	mov	x2, 0
.L82:					// :entr:term
/*     17 */	mov	x1, x0
/*     18 */	add	x0, x0, 16
/*     17 */	add	x1, x3, x1, lsl #3
/*     18 */	subs	w4, w4, 1
/*     17 */	ld1d	z1.d, p0/z, [x1, z0.d, lsl #3]	//  "x"
/*     17 */	st1d	z1.d, p0, [x20, x2, lsl #3]	//  "y"
/*     18 */	add	x2, x2, 8
/*     18 */	bne	.L82
/*     20 */	mov	w21, 16
/*     21 */	mov	x22, 0
/*     21 */	adrp	x0, .LR.2
/*     21 */	add	x19, x0, :lo12:.LR.2
.L85:					// :entr:term
/*     21 */	ldr	x1, [x20, x22, lsl #3]	//  "y"
/*     21 */	mov	x0, x19
/*     21 */	bl	printf
/*     22 */	add	x22, x22, 1
/*     22 */	subs	w21, w21, 1
/*     22 */	bne	.L85
/*     23 */	adrp	x0, .LR.1
/*     23 */	add	x0, x0, :lo12:.LR.1
/*     23 */	bl	printf
/*     25 */	mov	w0, 0
/*    ??? */	ldp	x21, x22, [sp, 16]	//  (*)
/*    ??? */	ldr	x30, [sp, 32]	//  (*)
/*    ??? */	ldp	x19, x20, [sp], 504	//  (*)
/*     26 */	add	sp, sp, 56
/*     26 */	ret	
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
	.ascii "%u\040\000"
	.type	.LR.2, %object
	.size	.LR.2,.-.LR.2
	.section	.note.GNU-stack,"",%progbits
