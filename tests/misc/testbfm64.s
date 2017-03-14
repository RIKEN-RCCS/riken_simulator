	.ident	"$Options: Fujitsu C/C++ Compiler Version 1.2.0 P-id: Alpha-20161007 (Oct  6 2016 19:10:27) --preinclude /opt/FJTComp2/bin/../lib/c99.pre -D__FUJITSU -Dunix -D__aarch64__ -D__unix -D__fcc_version__=0x700 -D__fcc_version=700 -D__ARM_ARCH=8 -D__FP_FAST_FMA -D__ELF__ -D__unix__ -D__linux__ -D__linux -Asystem(unix) -Dlinux -D__LIBC_6B -D__LP64__ -D_LP64 --K=noocl --zmode=64 --c99 -I/opt/FJTComp2/bin/../include -I/dummy/usr/include --K=opt testbfm64.c -- -ncmdname=fccpx -O3 -x- -Komitfp,mfunc,lib,rdconv,eval,fp_relaxed,ns,fast_matmul,fp_contract,ilfunc,prefetch_conditional,simd=2,loop_nofission testbfm64.s $"
	.file	"testbfm64.c"
	.ident	"$Compiler: Fujitsu C/C++ Compiler Version 1.2.0 P-id: Alpha-20161007 (Oct  6 2016 19:10:27) testbfm64.c main $"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
/*    ??? */	str	x30, [sp, -16]!	//  (*)
/*      8 */	adrp	x0, a
/*      8 */	adrp	x2, b
/*      8 */	ldr	x1, [x0, :lo12:a]	//  "a"
/*      8 */	ldr	x2, [x2, :lo12:b]	//  "b"
/*     10 */	adrp	x0, .LR.1
/*     10 */	add	x0, x0, :lo12:.LR.1
		mov	x3, x2
		mov	x4, x2
//		bfi	x3, x1, #48, #8
		bfm	x3, x1, #16, #7
//		bfi	x4, x1, #32, #24
		bfm	x4, x1, #32, #23
/*     10 */	bl	printf
/*     10 */	mov	w0, 0
/*    ??? */	ldr	x30, [sp], 16	//  (*)
/*     11 */	ret	
	.size	main, .-main
	.data
	.global	s
	.align	2
s:
	.type	s, %object
	.size	s, 4
	.word	1
	.data
	.global	b
	.align	3
b:
	.type	b, %object
	.size	b, 8
	.xword	-81985529216486896
	.data
	.global	a
	.align	3
a:
	.type	a, %object
	.size	a, 8
	.xword	81985529216486895
	.section	.rodata
	.align	3
.LR.1:
	.ascii "a\040=\040%016lx,\040b\040=\040%016lx,\040c\040=\040"
	.ascii	"%016lx,\040d\040=\040%016lx\012\000"
	.type	.LR.1, %object
	.size	.LR.1,.-.LR.1
	.section	.note.GNU-stack,"",%progbits
