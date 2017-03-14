	.ident	"$Options: Fujitsu C/C++ Compiler Version 1.2.0 P-id: Alpha-20161007 (Oct  6 2016 19:10:27) --preinclude /opt/FJTComp2/bin/../lib/c99.pre -D__FUJITSU -Dunix -D__aarch64__ -D__unix -D__fcc_version__=0x700 -D__fcc_version=700 -D__ARM_ARCH=8 -D__FP_FAST_FMA -D__ELF__ -D__unix__ -D__linux__ -D__linux -Asystem(unix) -Dlinux -D__LIBC_6B -D__LP64__ -D_LP64 --K=noocl --zmode=64 --c99 -I/opt/FJTComp2/bin/../include -I/dummy/usr/include --K=opt testbfm.c -- -ncmdname=fccpx -O3 -x- -Komitfp,mfunc,lib,rdconv,eval,fp_relaxed,ns,fast_matmul,fp_contract,ilfunc,prefetch_conditional,simd=2,loop_nofission testbfm.s $"
	.file	"testbfm.c"
	.ident	"$Compiler: Fujitsu C/C++ Compiler Version 1.2.0 P-id: Alpha-20161007 (Oct  6 2016 19:10:27) testbfm.c main $"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
/*    ??? */	str	x30, [sp, -16]!	//  (*)
/*      8 */	adrp	x0, a
/*      8 */	adrp	x2, b
/*      8 */	ldr	w1, [x0, :lo12:a]	//  "a"
/*      8 */	ldr	w2, [x2, :lo12:b]	//  "b"
/*     10 */	adrp	x0, .LR.1
/*     10 */	add	x0, x0, :lo12:.LR.1
		mov	w3, w2
		mov	w4, w2
//		bfi	w3, w1, #16, #8
		bfm	w3, w1, #16, #7
//		bfi	w4, w1, #12, #12
		bfm	w4, w1, #20, #11
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
	.align	2
b:
	.type	b, %object
	.size	b, 4
	.word	-2023406815
	.data
	.global	a
	.align	2
a:
	.type	a, %object
	.size	a, 4
	.word	305419896
	.section	.rodata
	.align	3
.LR.1:
	.ascii "a\040=\040%08x,\040b\040=\040%08x,\040c\040=\040%0"
	.ascii	"8x,\040d\040=\040%08x\012\000"
	.type	.LR.1, %object
	.size	.LR.1,.-.LR.1
	.section	.note.GNU-stack,"",%progbits
