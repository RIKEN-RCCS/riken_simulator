	.ident	"$Options: Fujitsu C/C++ Compiler Version 1.2.0 P-id: Alpha-20161222 (Dec 20 2016 18:37:40) --preinclude /opt/FJTComp3/bin/../lib/c99.pre --gcc --c99 -D__FUJITSU -Dunix -D__aarch64__ -D__unix -D__fcc_version__=0x700 -D__fcc_version=700 -D__USER_LABEL_PREFIX__= -D__OPTIMIZE__ -D__ARM_ARCH=8 -D__FP_FAST_FMA -D__ELF__ -D__unix__ -D__linux__ -D__linux -Asystem(unix) -Dlinux -D__LIBC_6B -D__LP64__ -D_LP64 -v --K=noocl --zmode=64 --sys_include=/opt/FJTComp3/bin/../include --sys_include=/dummy/usr/include --K=opt ld1b_8-nc.c -- -ncmdname=fccpx -nspopt=\"-Kfast,nounroll,noswp -Ksimd=2 -V -Nlst=t -Koptmsg=2 -S -o ld1b_8-nc.s\" -Nnoline -zobe=no-static-clump -O3 -x- -Komitfp,mfunc,rdconv,eval,fp_relaxed,ns,fast_matmul,fp_contract,ilfunc,prefetch_conditional,nounroll,noswp -Ksimd=2 -V -Nlst=t -Koptmsg=2 -zsta=m -zsrc=ld1b_8-nc.c ld1b_8-nc.s $"
	.file	"ld1b_8-nc.c"
	.ident	"$Compiler: Fujitsu C/C++ Compiler Version 1.2.0 P-id: Alpha-20161222 (Dec 20 2016 18:37:40) ld1b_8-nc.c main $"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
/*    ??? */	stp	x19, x20, [sp, -176]!	//  (*)
/*    ??? */	stp	x21, x22, [sp, 16]	//  (*)
/*    ??? */	str	x30, [sp, 32]	//  (*)
/*     16 */	ptrue	p1.b, VL6
/*     29 */	index	z0.s, 0, 2
/*     17 */	ptrue	p0.b, VL7
/*     10 */	ptrue	p4.b, ALL
/*     14 */	ptrue	p3.b, VL4
/*     15 */	ptrue	p2.b, VL5
/*     18 */	nor	p1.b, p0/z, p1.b, p1.b
/*     12 */	ptrue	p5.b, VL2
/*     13 */	ptrue	p0.b, VL3
/*     19 */	nor	p3.b, p2/z, p3.b, p3.b
/*     22 */	nor	p1.b, p4/z, p1.b, p1.b
/*     20 */	nor	p5.b, p0/z, p5.b, p5.b
/*     11 */	ptrue	p0.b, VL1
/*     23 */	nor	p3.b, p1/z, p3.b, p3.b
/*     29 */	ptrue	p1.s, VL16
/*     24 */	nor	p5.b, p3/z, p5.b, p5.b
/*     25 */	nor	p0.b, p5/z, p0.b, p0.b
/*     29 */	mov	w0, 4
/*     29 */	mov	x1, 0
/*     31 */	dup	z2.b, -1
/*     31 */	add	x21, sp, 112
/*     29 */	mov	w2, 0
/*     30 */	add	x3, sp, 48
.L62:					// :entr:term
/*     30 */	dup	z1.s, w2
/*     32 */	add	w2, w2, 32
/*     32 */	subs	w0, w0, 1
/*     31 */	st1b	z2.s, p1, [x21, x1]	//  "y"
/*     30 */	add	z1.s, z1.s, z0.s
/*     30 */	st1b	z1.s, p1, [x3, x1]	//  "x"
/*     32 */	add	x1, x1, 16
/*     32 */	bne	.L62
/*     34 */	ld1b	z0.b, p4/z, [x3, 0, mul vl]	//  "x"
/*     35 */	st1b	z0.b, p0, [x21, 0, mul vl]	//  "y"
/*     37 */	mov	w22, 64
/*     38 */	mov	x20, 0
/*     38 */	adrp	x0, .LR.2
/*     38 */	add	x19, x0, :lo12:.LR.2
.L65:					// :entr:term
/*     38 */	ldrsb	w1, [x21, x20]	//  "y"
/*     38 */	mov	x0, x19
/*     38 */	bl	printf
/*     39 */	add	x20, x20, 1
/*     39 */	subs	w22, w22, 1
/*     39 */	bne	.L65
/*     40 */	adrp	x0, .LR.1
/*     40 */	add	x0, x0, :lo12:.LR.1
/*     40 */	bl	printf
/*     42 */	mov	w0, 0
/*    ??? */	ldp	x21, x22, [sp, 16]	//  (*)
/*    ??? */	ldr	x30, [sp, 32]	//  (*)
/*    ??? */	ldp	x19, x20, [sp], 176	//  (*)
/*     43 */	ret	
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
