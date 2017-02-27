	.ident	"$Options: Fujitsu C/C++ Compiler Version 1.2.0 P-id: Alpha-20161222 (Dec 20 2016 18:37:40) --preinclude /opt/FJTComp3/bin/../lib/c99.pre --gcc --c99 -D__FUJITSU -Dunix -D__aarch64__ -D__unix -D__fcc_version__=0x700 -D__fcc_version=700 -D__USER_LABEL_PREFIX__= -D__OPTIMIZE__ -D__ARM_ARCH=8 -D__FP_FAST_FMA -D__ELF__ -D__unix__ -D__linux__ -D__linux -Asystem(unix) -Dlinux -D__LIBC_6B -D__LP64__ -D_LP64 -v --K=noocl --zmode=64 --sys_include=/opt/FJTComp3/bin/../include --sys_include=/dummy/usr/include --K=opt gather_ld1b_u8.c -- -ncmdname=fccpx -nspopt=\"-Kfast,nounroll,noswp -Ksimd=2 -V -Nlst=t -Koptmsg=2 -S -o gather_ld1b_u8.s\" -Nnoline -zobe=no-static-clump -O3 -x- -Komitfp,mfunc,rdconv,eval,fp_relaxed,ns,fast_matmul,fp_contract,ilfunc,prefetch_conditional,nounroll,noswp -Ksimd=2 -V -Nlst=t -Koptmsg=2 -zsta=m -zsrc=gather_ld1b_u8.c gather_ld1b_u8.s $"
	.file	"gather_ld1b_u8.c"
	.ident	"$Compiler: Fujitsu C/C++ Compiler Version 1.2.0 P-id: Alpha-20161222 (Dec 20 2016 18:37:40) gather_ld1b_u8.c main $"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
/*    ??? */	stp	x19, x20, [sp, -80]!	//  (*)
/*    ??? */	stp	x21, x22, [sp, 16]	//  (*)
/*    ??? */	str	x30, [sp, 32]	//  (*)
/*     11 */	ptrue	p1.s, VL16
/*     11 */	index	z0.s, 0, 2
/*     12 */	add	x1, sp, 48
/*     17 */	index	z1.d, 0, 2
/*     13 */	add	x22, sp, 64
/*     13 */	dup	z2.b, 99
/*     16 */	ptrue	p0.d, VL8
/*     17 */	sub	x0, x1, 0
/*     17 */	sub	x2, x22, 0
/*     13 */	st1b	z2.s, p1, [x22, 0, mul vl]	//  "y"
/*     12 */	add	z0.s, z0.s, 0
/*     12 */	st1b	z0.s, p1, [x1, 0, mul vl]	//  "x"
/*     17 */	ld1b	z0.d, p0/z, [x0, z1.d]	//  "x"
/*     17 */	st1b	z0.d, p0, [x2, 0, mul vl]	//  "y"
/*     20 */	mov	w20, 16
/*     21 */	mov	x21, 0
/*     21 */	adrp	x0, .LR.2
/*     21 */	add	x19, x0, :lo12:.LR.2
.L85:					// :entr:term
/*     21 */	ldrb	w1, [x22, x21]	//  "y"
/*     21 */	mov	x0, x19
/*     21 */	bl	printf
/*     22 */	add	x21, x21, 1
/*     22 */	subs	w20, w20, 1
/*     22 */	bne	.L85
/*     23 */	adrp	x0, .LR.1
/*     23 */	add	x0, x0, :lo12:.LR.1
/*     23 */	bl	printf
/*     25 */	mov	w0, 0
/*    ??? */	ldp	x21, x22, [sp, 16]	//  (*)
/*    ??? */	ldr	x30, [sp, 32]	//  (*)
/*    ??? */	ldp	x19, x20, [sp], 80	//  (*)
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
