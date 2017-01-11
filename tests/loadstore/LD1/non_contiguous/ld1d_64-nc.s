	.ident	"$Options: Fujitsu C/C++ Compiler Version 1.2.0 P-id: Alpha-20161222 (Dec 20 2016 18:37:40) --preinclude /opt/FJTComp3/bin/../lib/c99.pre --gcc --c99 -D__FUJITSU -Dunix -D__aarch64__ -D__unix -D__fcc_version__=0x700 -D__fcc_version=700 -D__USER_LABEL_PREFIX__= -D__OPTIMIZE__ -D__ARM_ARCH=8 -D__FP_FAST_FMA -D__ELF__ -D__unix__ -D__linux__ -D__linux -Asystem(unix) -Dlinux -D__LIBC_6B -D__LP64__ -D_LP64 -v --K=noocl --zmode=64 --sys_include=/opt/FJTComp3/bin/../include --sys_include=/dummy/usr/include --K=opt ld1d_64-nc.c -- -ncmdname=fccpx -nspopt=\"-Kfast,nounroll,noswp -Ksimd=2 -V -Nlst=t -Koptmsg=2 -S -o ld1d_64-nc.s\" -Nnoline -zobe=no-static-clump -O3 -x- -Komitfp,mfunc,rdconv,eval,fp_relaxed,ns,fast_matmul,fp_contract,ilfunc,prefetch_conditional,nounroll,noswp -Ksimd=2 -V -Nlst=t -Koptmsg=2 -zsta=m -zsrc=ld1d_64-nc.c ld1d_64-nc.s $"
	.file	"ld1d_64-nc.c"
	.ident	"$Compiler: Fujitsu C/C++ Compiler Version 1.2.0 P-id: Alpha-20161222 (Dec 20 2016 18:37:40) ld1d_64-nc.c main $"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
/*    ??? */	stp	x19, x20, [sp, -176]!	//  (*)
/*    ??? */	stp	x21, x22, [sp, 16]	//  (*)
/*    ??? */	str	x30, [sp, 32]	//  (*)
/*     29 */	ptrue	p5.d, VL8
/*     29 */	index	z0.d, 0, 2
/*     30 */	add	x0, sp, 48
/*     31 */	add	x22, sp, 112
/*     16 */	ptrue	p1.d, VL6
/*     31 */	dup	z1.d, -1
/*     17 */	ptrue	p0.d, VL7
/*     10 */	ptrue	p4.d, ALL
/*     14 */	ptrue	p3.d, VL4
/*     15 */	ptrue	p2.d, VL5
/*     18 */	nor	p1.b, p0/z, p1.b, p1.b
/*     12 */	ptrue	p0.d, VL2
/*     13 */	ptrue	p6.d, VL3
/*     30 */	add	z0.d, z0.d, 0
/*     19 */	nor	p3.b, p2/z, p3.b, p3.b
/*     22 */	nor	p1.b, p4/z, p1.b, p1.b
/*     20 */	nor	p0.b, p6/z, p0.b, p0.b
/*     11 */	ptrue	p2.d, VL1
/*     30 */	st1d	z0.d, p5, [x0, 0, mul vl]	//  "x"
/*     23 */	nor	p3.b, p1/z, p3.b, p3.b
/*     31 */	st1d	z1.d, p5, [x22, 0, mul vl]	//  "y"
/*     24 */	nor	p0.b, p3/z, p0.b, p0.b
/*     34 */	ld1d	z0.d, p4/z, [x0, 0, mul vl]	//  "x"
/*     25 */	nor	p2.b, p0/z, p2.b, p2.b
/*     35 */	st1d	z0.d, p2, [x22, 0, mul vl]	//  "y"
/*     37 */	mov	w20, 8
/*     38 */	mov	x21, 0
/*     38 */	adrp	x0, .LR.2
/*     38 */	add	x19, x0, :lo12:.LR.2
.L65:					// :entr:term
/*     38 */	ldr	x1, [x22, x21, lsl #3]	//  "y"
/*     38 */	mov	x0, x19
/*     38 */	bl	printf
/*     39 */	add	x21, x21, 1
/*     39 */	subs	w20, w20, 1
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
