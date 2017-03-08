	.ident	"$Options: Fujitsu C/C++ Compiler Version 1.2.0 P-id: Alpha-20161222 (Dec 20 2016 18:37:40) --preinclude /opt/FJTComp3/bin/../lib/c99.pre --gcc --c99 -D__FUJITSU -Dunix -D__aarch64__ -D__unix -D__fcc_version__=0x700 -D__fcc_version=700 -D__USER_LABEL_PREFIX__= -D__OPTIMIZE__ -D__ARM_ARCH=8 -D__FP_FAST_FMA -D__ELF__ -D__unix__ -D__linux__ -D__linux -Asystem(unix) -Dlinux -D__LIBC_6B -D__LP64__ -D_LP64 -v --K=noocl --zmode=64 --sys_include=/opt/FJTComp3/bin/../include --sys_include=/dummy/usr/include --K=opt dgemm.c -- -ncmdname=fccpx -nspopt=\"-Kfast,nounroll,noswp -Ksimd=2 -V -Nlst=t -Koptmsg=2 -S -o dgemm.s\" -Nnoline -zobe=no-static-clump -O3 -x- -Komitfp,mfunc,rdconv,eval,fp_relaxed,ns,fast_matmul,fp_contract,ilfunc,prefetch_conditional,nounroll,noswp -Ksimd=2 -V -Nlst=t -Koptmsg=2 -zsta=m -zsrc=dgemm.c dgemm.s $"
	.file	"dgemm.c"
	.ident	"$Compiler: Fujitsu C/C++ Compiler Version 1.2.0 P-id: Alpha-20161222 (Dec 20 2016 18:37:40) dgemm.c main $"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
/*      5 */	sub	sp, sp, 1088
/*    ??? */	stp	x19, x20, [sp, -512]!	//  (*)
/*    ??? */	stp	x21, x22, [sp, 16]	//  (*)
/*    ??? */	stp	x23, x24, [sp, 32]	//  (*)
/*    ??? */	stp	x25, x30, [sp, 48]	//  (*)
/*     10 */	mov	w3, 0
/*     10 */	mov	w5, 8
/*     11 */	ptrue	p1.d, VL8
/*     11 */	index	z0.d, 0, 1
/*     12 */	mov	x1, 0
/*     12 */	mov	w7, 0
/*     19 */	add	x21, sp, 1088
/*     14 */	add	x6, sp, 576
/*     19 */	fmov	z2.d, 0.000000e+00
/*     12 */	mov	x0, 0
/*     12 */	mov	x4, 0
/*     14 */	fdup	z3.d, 1.000000e+00
/*     12 */	add	x2, sp, 64
/*     13 */	add	z0.s, z0.s, 0
.L141:					// :entr:term
/*     11 */	index	z1.d, x4, 1
/*     19 */	add	w7, w7, 8
/*     19 */	add	x4, x4, 8
/*     13 */	dup	z4.s, w3
/*     20 */	add	w3, w3, 1
/*     19 */	add	x1, x1, 1
/*     19 */	st1d	z2.d, p1, [x21, x0, lsl #3]	//  "c"
/*     12 */	add	z1.d, z1.d, 0
/*     13 */	cmpeq	p0.s, p1/z, z4.s, z0.s
/*     20 */	subs	w5, w5, 1
/*     12 */	scvtf	z4.d, p1/m, z1.d
/*     14 */	sel	z1.d, p0, z3.d, z2.d
/*     14 */	st1d	z1.d, p1, [x6, x0, lsl #3]	//  "b"
/*     12 */	st1d	z4.d, p1, [x2, x0, lsl #3]	//  "a"
/*     19 */	add	x0, x0, 8
/*     20 */	bne	.L141
/*     22 */	mov	w4, 0
/*     22 */	mov	w5, 8
/*     25 */	ptrue	p0.d, VL8
/*     27 */	index	z5.d, 0, 8
.L148:					// :entr
/*     23 */	mov	w3, 8
/*     26 */	sbfiz	x7, x4, 3, 32
/*     26 */	mov	x1, 0
/*     28 */	lsl	x0, x7, 3
/*     26 */	ld1d	z1.d, p0/z, [x2, x7, lsl #3]	//  "a"
/*     28 */	add	x7, x0, x21
.L150:					// :entr:term
/*     27 */	mov	x0, x1
/*     28 */	ldr	d4, [x7]	//  "c"
/*     29 */	add	x1, x1, 1
/*     27 */	add	x0, x6, x0, lsl #3
/*     29 */	subs	w3, w3, 1
/*     27 */	ld1d	z0.d, p0/z, [x0, z5.d, lsl #3]	//  "b"
/*     26 */	fmad	z0.d, p0/m, z1.d, z2.d
/*     27 */	mov	z3.d, z0.d
/*     27 */	ext	z3.b, z3.b, z0.b, 32
/*     27 */	fadd	z0.d, z0.d, z3.d
/*     27 */	mov	z3.d, z0.d
/*     27 */	ext	z3.b, z3.b, z0.b, 16
/*     27 */	fadd	z0.d, z0.d, z3.d
/*     27 */	mov	z3.d, z0.d
/*     27 */	ext	z3.b, z3.b, z0.b, 8
/*     27 */	fadd	z0.d, z0.d, z3.d
/*     28 */	fadd	d0, d4, d0
/*     28 */	str	d0, [x7]	//  "c"
/*     29 */	add	x7, x7, 8
/*     29 */	bne	.L150
/*     30 */	add	w4, w4, 1
/*     30 */	subs	w5, w5, 1
/*     30 */	bne	.L148
/*     32 */	mov	w23, 0
/*     32 */	mov	w22, 8
/*     34 */	adrp	x1, .LR.2
/*     36 */	adrp	x0, .LR.1
/*     34 */	add	x20, x1, :lo12:.LR.2
/*     36 */	add	x19, x0, :lo12:.LR.1
.L157:					// :entr
/*     33 */	mov	w25, 8
/*     34 */	sbfiz	x24, x23, 3, 32
.L159:					// :entr:term
/*     34 */	ldr	d0, [x21, x24, lsl #3]	//  "c"
/*     34 */	mov	x0, x20
/*     34 */	bl	printf
/*     35 */	add	x24, x24, 1
/*     35 */	subs	w25, w25, 1
/*     35 */	bne	.L159
/*     36 */	mov	x0, x19
/*     36 */	bl	printf
/*     37 */	add	w23, w23, 1
/*     37 */	subs	w22, w22, 1
/*     37 */	bne	.L157
/*     39 */	mov	w0, 0
/*    ??? */	ldp	x21, x22, [sp, 16]	//  (*)
/*    ??? */	ldp	x23, x24, [sp, 32]	//  (*)
/*    ??? */	ldp	x25, x30, [sp, 48]	//  (*)
/*    ??? */	ldp	x19, x20, [sp], 504	//  (*)
/*     40 */	add	sp, sp, 1096
/*     40 */	ret	
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
	.ascii "%.1lf\011\000"
	.type	.LR.2, %object
	.size	.LR.2,.-.LR.2
	.section	.note.GNU-stack,"",%progbits
