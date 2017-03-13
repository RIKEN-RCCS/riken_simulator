	.ident	"$Options: Fujitsu C/C++ Compiler Version 1.2.0 P-id: Alpha-20161222 (Dec 20 2016 18:37:40) --preinclude /opt/FJTComp3/bin/../lib/c99.pre --gcc --c99 -D__FUJITSU -Dunix -D__aarch64__ -D__unix -D__fcc_version__=0x700 -D__fcc_version=700 -D__USER_LABEL_PREFIX__= -D__OPTIMIZE__ -D__ARM_ARCH=8 -D__FP_FAST_FMA -D__ELF__ -D__unix__ -D__linux__ -D__linux -Asystem(unix) -Dlinux -D__LIBC_6B -D__LP64__ -D_LP64 --K=noocl --zmode=64 --sys_include=/opt/FJTComp3/bin/../include --sys_include=/dummy/usr/include --K=opt main.c -- -ncmdname=fccpx -Nnoline -zobe=no-static-clump -O3 -x- -Komitfp,mfunc,rdconv,eval,fp_relaxed,ns,fast_matmul,fp_contract,ilfunc,prefetch_conditional,simd=2,loop_nofission main.s $"
	.file	"main.c"
	.ident	"$Compiler: Fujitsu C/C++ Compiler Version 1.2.0 P-id: Alpha-20161222 (Dec 20 2016 18:37:40) main.c init $"
	.text
	.align	2
	.global	init
	.type	init, %function
init:
/*     11 */	ldr	x4, .LC1
/*     13 */	ldr	x3, .LC2
/*     11 */	str	x4, [x0]	//  (*)
/*     12 */	str	x4, [x1]	//  (*)
/*     13 */	str	x3, [x2]	//  (*)
/*     11 */	str	x4, [x0, 8]	//  (*)
/*     12 */	str	x4, [x1, 8]	//  (*)
/*     13 */	str	x3, [x2, 8]	//  (*)
/*     11 */	str	x4, [x0, 16]	//  (*)
/*     12 */	str	x4, [x1, 16]	//  (*)
/*     13 */	str	x3, [x2, 16]	//  (*)
/*     11 */	str	x4, [x0, 24]	//  (*)
/*     12 */	str	x4, [x1, 24]	//  (*)
/*     13 */	str	x3, [x2, 24]	//  (*)
/*     11 */	str	x4, [x0, 32]	//  (*)
/*     12 */	str	x4, [x1, 32]	//  (*)
/*     13 */	str	x3, [x2, 32]	//  (*)
/*     11 */	str	x4, [x0, 40]	//  (*)
/*     12 */	str	x4, [x1, 40]	//  (*)
/*     13 */	str	x3, [x2, 40]	//  (*)
/*     11 */	str	x4, [x0, 48]	//  (*)
/*     12 */	str	x4, [x1, 48]	//  (*)
/*     13 */	str	x3, [x2, 48]	//  (*)
/*     11 */	str	x4, [x0, 56]	//  (*)
/*     12 */	str	x4, [x1, 56]	//  (*)
/*     13 */	str	x3, [x2, 56]	//  (*)
/*     11 */	str	x4, [x0, 64]	//  (*)
/*     12 */	str	x4, [x1, 64]	//  (*)
/*     13 */	str	x3, [x2, 64]	//  (*)
/*     11 */	str	x4, [x0, 72]	//  (*)
/*     12 */	str	x4, [x1, 72]	//  (*)
/*     13 */	str	x3, [x2, 72]	//  (*)
/*     11 */	str	x4, [x0, 80]	//  (*)
/*     12 */	str	x4, [x1, 80]	//  (*)
/*     13 */	str	x3, [x2, 80]	//  (*)
/*     11 */	str	x4, [x0, 88]	//  (*)
/*     12 */	str	x4, [x1, 88]	//  (*)
/*     13 */	str	x3, [x2, 88]	//  (*)
/*     11 */	str	x4, [x0, 96]	//  (*)
/*     12 */	str	x4, [x1, 96]	//  (*)
/*     13 */	str	x3, [x2, 96]	//  (*)
/*     11 */	str	x4, [x0, 104]	//  (*)
/*     12 */	str	x4, [x1, 104]	//  (*)
/*     13 */	str	x3, [x2, 104]	//  (*)
/*     11 */	str	x4, [x0, 112]	//  (*)
/*     12 */	str	x4, [x1, 112]	//  (*)
/*     13 */	str	x3, [x2, 112]	//  (*)
/*     11 */	str	x4, [x0, 120]	//  (*)
/*     12 */	str	x4, [x1, 120]	//  (*)
/*     13 */	str	x3, [x2, 120]	//  (*)
/*     11 */	str	x4, [x0, 128]	//  (*)
/*     12 */	str	x4, [x1, 128]	//  (*)
/*     13 */	str	x3, [x2, 128]	//  (*)
/*     11 */	str	x4, [x0, 136]	//  (*)
/*     12 */	str	x4, [x1, 136]	//  (*)
/*     13 */	str	x3, [x2, 136]	//  (*)
/*     11 */	str	x4, [x0, 144]	//  (*)
/*     12 */	str	x4, [x1, 144]	//  (*)
/*     13 */	str	x3, [x2, 144]	//  (*)
/*     11 */	str	x4, [x0, 152]	//  (*)
/*     12 */	str	x4, [x1, 152]	//  (*)
/*     13 */	str	x3, [x2, 152]	//  (*)
/*     11 */	str	x4, [x0, 160]	//  (*)
/*     12 */	str	x4, [x1, 160]	//  (*)
/*     13 */	str	x3, [x2, 160]	//  (*)
/*     11 */	str	x4, [x0, 168]	//  (*)
/*     12 */	str	x4, [x1, 168]	//  (*)
/*     13 */	str	x3, [x2, 168]	//  (*)
/*     11 */	str	x4, [x0, 176]	//  (*)
/*     12 */	str	x4, [x1, 176]	//  (*)
/*     13 */	str	x3, [x2, 176]	//  (*)
/*     11 */	str	x4, [x0, 184]	//  (*)
/*     12 */	str	x4, [x1, 184]	//  (*)
/*     13 */	str	x3, [x2, 184]	//  (*)
/*     11 */	str	x4, [x0, 192]	//  (*)
/*     12 */	str	x4, [x1, 192]	//  (*)
/*     13 */	str	x3, [x2, 192]	//  (*)
/*     11 */	str	x4, [x0, 200]	//  (*)
/*     12 */	str	x4, [x1, 200]	//  (*)
/*     13 */	str	x3, [x2, 200]	//  (*)
/*     11 */	str	x4, [x0, 208]	//  (*)
/*     12 */	str	x4, [x1, 208]	//  (*)
/*     13 */	str	x3, [x2, 208]	//  (*)
/*     11 */	str	x4, [x0, 216]	//  (*)
/*     12 */	str	x4, [x1, 216]	//  (*)
/*     13 */	str	x3, [x2, 216]	//  (*)
/*     11 */	str	x4, [x0, 224]	//  (*)
/*     12 */	str	x4, [x1, 224]	//  (*)
/*     13 */	str	x3, [x2, 224]	//  (*)
/*     11 */	str	x4, [x0, 232]	//  (*)
/*     12 */	str	x4, [x1, 232]	//  (*)
/*     13 */	str	x3, [x2, 232]	//  (*)
/*     11 */	str	x4, [x0, 240]	//  (*)
/*     12 */	str	x4, [x1, 240]	//  (*)
/*     13 */	str	x3, [x2, 240]	//  (*)
/*     11 */	str	x4, [x0, 248]	//  (*)
/*     12 */	str	x4, [x1, 248]	//  (*)
/*     13 */	str	x3, [x2, 248]	//  (*)
/*     11 */	str	x4, [x0, 256]	//  (*)
/*     12 */	str	x4, [x1, 256]	//  (*)
/*     13 */	str	x3, [x2, 256]	//  (*)
/*     11 */	str	x4, [x0, 264]	//  (*)
/*     12 */	str	x4, [x1, 264]	//  (*)
/*     13 */	str	x3, [x2, 264]	//  (*)
/*     11 */	str	x4, [x0, 272]	//  (*)
/*     12 */	str	x4, [x1, 272]	//  (*)
/*     13 */	str	x3, [x2, 272]	//  (*)
/*     11 */	str	x4, [x0, 280]	//  (*)
/*     12 */	str	x4, [x1, 280]	//  (*)
/*     13 */	str	x3, [x2, 280]	//  (*)
/*     11 */	str	x4, [x0, 288]	//  (*)
/*     12 */	str	x4, [x1, 288]	//  (*)
/*     13 */	str	x3, [x2, 288]	//  (*)
/*     11 */	str	x4, [x0, 296]	//  (*)
/*     12 */	str	x4, [x1, 296]	//  (*)
/*     13 */	str	x3, [x2, 296]	//  (*)
/*     11 */	str	x4, [x0, 304]	//  (*)
/*     12 */	str	x4, [x1, 304]	//  (*)
/*     13 */	str	x3, [x2, 304]	//  (*)
/*     11 */	str	x4, [x0, 312]	//  (*)
/*     12 */	str	x4, [x1, 312]	//  (*)
/*     13 */	str	x3, [x2, 312]	//  (*)
/*     11 */	str	x4, [x0, 320]	//  (*)
/*     12 */	str	x4, [x1, 320]	//  (*)
/*     13 */	str	x3, [x2, 320]	//  (*)
/*     11 */	str	x4, [x0, 328]	//  (*)
/*     12 */	str	x4, [x1, 328]	//  (*)
/*     13 */	str	x3, [x2, 328]	//  (*)
/*     11 */	str	x4, [x0, 336]	//  (*)
/*     12 */	str	x4, [x1, 336]	//  (*)
/*     13 */	str	x3, [x2, 336]	//  (*)
/*     11 */	str	x4, [x0, 344]	//  (*)
/*     12 */	str	x4, [x1, 344]	//  (*)
/*     13 */	str	x3, [x2, 344]	//  (*)
/*     11 */	str	x4, [x0, 352]	//  (*)
/*     12 */	str	x4, [x1, 352]	//  (*)
/*     13 */	str	x3, [x2, 352]	//  (*)
/*     11 */	str	x4, [x0, 360]	//  (*)
/*     12 */	str	x4, [x1, 360]	//  (*)
/*     13 */	str	x3, [x2, 360]	//  (*)
/*     11 */	str	x4, [x0, 368]	//  (*)
/*     12 */	str	x4, [x1, 368]	//  (*)
/*     13 */	str	x3, [x2, 368]	//  (*)
/*     11 */	str	x4, [x0, 376]	//  (*)
/*     12 */	str	x4, [x1, 376]	//  (*)
/*     13 */	str	x3, [x2, 376]	//  (*)
/*     11 */	str	x4, [x0, 384]	//  (*)
/*     12 */	str	x4, [x1, 384]	//  (*)
/*     13 */	str	x3, [x2, 384]	//  (*)
/*     11 */	str	x4, [x0, 392]	//  (*)
/*     12 */	str	x4, [x1, 392]	//  (*)
/*     13 */	str	x3, [x2, 392]	//  (*)
/*     11 */	str	x4, [x0, 400]	//  (*)
/*     12 */	str	x4, [x1, 400]	//  (*)
/*     13 */	str	x3, [x2, 400]	//  (*)
/*     11 */	str	x4, [x0, 408]	//  (*)
/*     12 */	str	x4, [x1, 408]	//  (*)
/*     13 */	str	x3, [x2, 408]	//  (*)
/*     11 */	str	x4, [x0, 416]	//  (*)
/*     12 */	str	x4, [x1, 416]	//  (*)
/*     13 */	str	x3, [x2, 416]	//  (*)
/*     11 */	str	x4, [x0, 424]	//  (*)
/*     12 */	str	x4, [x1, 424]	//  (*)
/*     13 */	str	x3, [x2, 424]	//  (*)
/*     11 */	str	x4, [x0, 432]	//  (*)
/*     12 */	str	x4, [x1, 432]	//  (*)
/*     13 */	str	x3, [x2, 432]	//  (*)
/*     11 */	str	x4, [x0, 440]	//  (*)
/*     12 */	str	x4, [x1, 440]	//  (*)
/*     13 */	str	x3, [x2, 440]	//  (*)
/*     11 */	str	x4, [x0, 448]	//  (*)
/*     12 */	str	x4, [x1, 448]	//  (*)
/*     13 */	str	x3, [x2, 448]	//  (*)
/*     11 */	str	x4, [x0, 456]	//  (*)
/*     12 */	str	x4, [x1, 456]	//  (*)
/*     13 */	str	x3, [x2, 456]	//  (*)
/*     11 */	str	x4, [x0, 464]	//  (*)
/*     12 */	str	x4, [x1, 464]	//  (*)
/*     13 */	str	x3, [x2, 464]	//  (*)
/*     11 */	str	x4, [x0, 472]	//  (*)
/*     12 */	str	x4, [x1, 472]	//  (*)
/*     13 */	str	x3, [x2, 472]	//  (*)
/*     11 */	str	x4, [x0, 480]	//  (*)
/*     12 */	str	x4, [x1, 480]	//  (*)
/*     13 */	str	x3, [x2, 480]	//  (*)
/*     11 */	str	x4, [x0, 488]	//  (*)
/*     12 */	str	x4, [x1, 488]	//  (*)
/*     13 */	str	x3, [x2, 488]	//  (*)
/*     11 */	str	x4, [x0, 496]	//  (*)
/*     12 */	str	x4, [x1, 496]	//  (*)
/*     13 */	str	x3, [x2, 496]	//  (*)
/*     11 */	str	x4, [x0, 504]	//  (*)
/*     12 */	str	x4, [x1, 504]	//  (*)
/*     13 */	str	x3, [x2, 504]	//  (*)
/*     16 */	ret	
	.size	init, .-init
	.align	3
.LC1:
	.word	0,0x3ff00000
	.align	3
.LC2:
	.word	0,0
	.ident	"$Compiler: Fujitsu C/C++ Compiler Version 1.2.0 P-id: Alpha-20161222 (Dec 20 2016 18:37:40) main.c dgemm $"
	.text
	.align	2
	.global	dgemm
	.type	dgemm, %function
dgemm:
/*     21 */	mov	w3, 8
/*     24 */	add	x0, x0, 56
/*     24 */	add	x2, x2, 56
.L556:					// :entr:term
/*     24 */	ldr	d1, [x0, -56]	//  (*)
/*     24 */	ldr	d2, [x1]	//  (*)
/*     27 */	subs	w3, w3, 1
/*     24 */	ldr	d0, [x2, -56]	//  (*)
/*     24 */	fmadd	d0, d1, d2, d0
/*     24 */	str	d0, [x2, -56]	//  (*)
/*     24 */	ldr	d1, [x0, -48]	//  (*)
/*     24 */	ldr	d2, [x1, 64]	//  (*)
/*     24 */	fmadd	d2, d1, d2, d0
/*     24 */	str	d2, [x2, -56]	//  (*)
/*     24 */	ldr	d0, [x0, -40]	//  (*)
/*     24 */	ldr	d1, [x1, 128]	//  (*)
/*     24 */	fmadd	d1, d0, d1, d2
/*     24 */	str	d1, [x2, -56]	//  (*)
/*     24 */	ldr	d2, [x0, -32]	//  (*)
/*     24 */	ldr	d0, [x1, 192]	//  (*)
/*     24 */	fmadd	d2, d2, d0, d1
/*     24 */	str	d2, [x2, -56]	//  (*)
/*     24 */	ldr	d1, [x0, -24]	//  (*)
/*     24 */	ldr	d0, [x1, 256]	//  (*)
/*     24 */	fmadd	d2, d1, d0, d2
/*     24 */	str	d2, [x2, -56]	//  (*)
/*     24 */	ldr	d1, [x0, -16]	//  (*)
/*     24 */	ldr	d0, [x1, 320]	//  (*)
/*     24 */	fmadd	d1, d1, d0, d2
/*     24 */	str	d1, [x2, -56]	//  (*)
/*     24 */	ldr	d0, [x0, -8]	//  (*)
/*     24 */	ldr	d2, [x1, 384]	//  (*)
/*     24 */	fmadd	d2, d0, d2, d1
/*     24 */	str	d2, [x2, -56]	//  (*)
/*     24 */	ldr	d1, [x0]	//  (*)
/*     24 */	ldr	d0, [x1, 448]	//  (*)
/*     24 */	fmadd	d0, d1, d0, d2
/*     24 */	str	d0, [x2, -56]	//  (*)
/*     24 */	ldr	d0, [x2, -48]	//  (*)
/*     24 */	ldr	d2, [x0, -56]	//  (*)
/*     24 */	ldr	d1, [x1, 8]	//  (*)
/*     24 */	fmadd	d2, d2, d1, d0
/*     24 */	str	d2, [x2, -48]	//  (*)
/*     24 */	ldr	d1, [x0, -48]	//  (*)
/*     24 */	ldr	d0, [x1, 72]	//  (*)
/*     24 */	fmadd	d0, d1, d0, d2
/*     24 */	str	d0, [x2, -48]	//  (*)
/*     24 */	ldr	d1, [x0, -40]	//  (*)
/*     24 */	ldr	d2, [x1, 136]	//  (*)
/*     24 */	fmadd	d1, d1, d2, d0
/*     24 */	str	d1, [x2, -48]	//  (*)
/*     24 */	ldr	d2, [x0, -32]	//  (*)
/*     24 */	ldr	d0, [x1, 200]	//  (*)
/*     24 */	fmadd	d0, d2, d0, d1
/*     24 */	str	d0, [x2, -48]	//  (*)
/*     24 */	ldr	d1, [x0, -24]	//  (*)
/*     24 */	ldr	d2, [x1, 264]	//  (*)
/*     24 */	fmadd	d2, d1, d2, d0
/*     24 */	str	d2, [x2, -48]	//  (*)
/*     24 */	ldr	d0, [x0, -16]	//  (*)
/*     24 */	ldr	d1, [x1, 328]	//  (*)
/*     24 */	fmadd	d1, d0, d1, d2
/*     24 */	str	d1, [x2, -48]	//  (*)
/*     24 */	ldr	d0, [x0, -8]	//  (*)
/*     24 */	ldr	d2, [x1, 392]	//  (*)
/*     24 */	fmadd	d1, d0, d2, d1
/*     24 */	str	d1, [x2, -48]	//  (*)
/*     24 */	ldr	d2, [x0]	//  (*)
/*     24 */	ldr	d0, [x1, 456]	//  (*)
/*     24 */	fmadd	d0, d2, d0, d1
/*     24 */	ldr	d2, [x2, -40]	//  (*)
/*     24 */	str	d0, [x2, -48]	//  (*)
/*     24 */	ldr	d0, [x0, -56]	//  (*)
/*     24 */	ldr	d1, [x1, 16]	//  (*)
/*     24 */	fmadd	d0, d0, d1, d2
/*     24 */	str	d0, [x2, -40]	//  (*)
/*     24 */	ldr	d2, [x0, -48]	//  (*)
/*     24 */	ldr	d1, [x1, 80]	//  (*)
/*     24 */	fmadd	d1, d2, d1, d0
/*     24 */	str	d1, [x2, -40]	//  (*)
/*     24 */	ldr	d0, [x0, -40]	//  (*)
/*     24 */	ldr	d2, [x1, 144]	//  (*)
/*     24 */	fmadd	d2, d0, d2, d1
/*     24 */	str	d2, [x2, -40]	//  (*)
/*     24 */	ldr	d1, [x0, -32]	//  (*)
/*     24 */	ldr	d0, [x1, 208]	//  (*)
/*     24 */	fmadd	d0, d1, d0, d2
/*     24 */	str	d0, [x2, -40]	//  (*)
/*     24 */	ldr	d1, [x0, -24]	//  (*)
/*     24 */	ldr	d2, [x1, 272]	//  (*)
/*     24 */	fmadd	d0, d1, d2, d0
/*     24 */	str	d0, [x2, -40]	//  (*)
/*     24 */	ldr	d1, [x0, -16]	//  (*)
/*     24 */	ldr	d2, [x1, 336]	//  (*)
/*     24 */	fmadd	d0, d1, d2, d0
/*     24 */	str	d0, [x2, -40]	//  (*)
/*     24 */	ldr	d1, [x0, -8]	//  (*)
/*     24 */	ldr	d2, [x1, 400]	//  (*)
/*     24 */	fmadd	d0, d1, d2, d0
/*     24 */	str	d0, [x2, -40]	//  (*)
/*     24 */	ldr	d2, [x0]	//  (*)
/*     24 */	ldr	d1, [x1, 464]	//  (*)
/*     24 */	fmadd	d0, d2, d1, d0
/*     24 */	ldr	d2, [x2, -32]	//  (*)
/*     24 */	str	d0, [x2, -40]	//  (*)
/*     24 */	ldr	d1, [x0, -56]	//  (*)
/*     24 */	ldr	d0, [x1, 24]	//  (*)
/*     24 */	fmadd	d0, d1, d0, d2
/*     24 */	str	d0, [x2, -32]	//  (*)
/*     24 */	ldr	d1, [x0, -48]	//  (*)
/*     24 */	ldr	d2, [x1, 88]	//  (*)
/*     24 */	fmadd	d0, d1, d2, d0
/*     24 */	str	d0, [x2, -32]	//  (*)
/*     24 */	ldr	d1, [x0, -40]	//  (*)
/*     24 */	ldr	d2, [x1, 152]	//  (*)
/*     24 */	fmadd	d1, d1, d2, d0
/*     24 */	str	d1, [x2, -32]	//  (*)
/*     24 */	ldr	d0, [x0, -32]	//  (*)
/*     24 */	ldr	d2, [x1, 216]	//  (*)
/*     24 */	fmadd	d0, d0, d2, d1
/*     24 */	str	d0, [x2, -32]	//  (*)
/*     24 */	ldr	d1, [x0, -24]	//  (*)
/*     24 */	ldr	d2, [x1, 280]	//  (*)
/*     24 */	fmadd	d1, d1, d2, d0
/*     24 */	str	d1, [x2, -32]	//  (*)
/*     24 */	ldr	d2, [x0, -16]	//  (*)
/*     24 */	ldr	d0, [x1, 344]	//  (*)
/*     24 */	fmadd	d0, d2, d0, d1
/*     24 */	str	d0, [x2, -32]	//  (*)
/*     24 */	ldr	d1, [x0, -8]	//  (*)
/*     24 */	ldr	d2, [x1, 408]	//  (*)
/*     24 */	fmadd	d1, d1, d2, d0
/*     24 */	str	d1, [x2, -32]	//  (*)
/*     24 */	ldr	d0, [x0]	//  (*)
/*     24 */	ldr	d2, [x1, 472]	//  (*)
/*     24 */	fmadd	d0, d0, d2, d1
/*     24 */	ldr	d2, [x2, -24]	//  (*)
/*     24 */	str	d0, [x2, -32]	//  (*)
/*     24 */	ldr	d0, [x0, -56]	//  (*)
/*     24 */	ldr	d1, [x1, 32]	//  (*)
/*     24 */	fmadd	d0, d0, d1, d2
/*     24 */	str	d0, [x2, -24]	//  (*)
/*     24 */	ldr	d1, [x0, -48]	//  (*)
/*     24 */	ldr	d2, [x1, 96]	//  (*)
/*     24 */	fmadd	d0, d1, d2, d0
/*     24 */	str	d0, [x2, -24]	//  (*)
/*     24 */	ldr	d1, [x0, -40]	//  (*)
/*     24 */	ldr	d2, [x1, 160]	//  (*)
/*     24 */	fmadd	d0, d1, d2, d0
/*     24 */	str	d0, [x2, -24]	//  (*)
/*     24 */	ldr	d1, [x0, -32]	//  (*)
/*     24 */	ldr	d2, [x1, 224]	//  (*)
/*     24 */	fmadd	d0, d1, d2, d0
/*     24 */	str	d0, [x2, -24]	//  (*)
/*     24 */	ldr	d1, [x0, -24]	//  (*)
/*     24 */	ldr	d2, [x1, 288]	//  (*)
/*     24 */	fmadd	d0, d1, d2, d0
/*     24 */	str	d0, [x2, -24]	//  (*)
/*     24 */	ldr	d1, [x0, -16]	//  (*)
/*     24 */	ldr	d2, [x1, 352]	//  (*)
/*     24 */	fmadd	d0, d1, d2, d0
/*     24 */	str	d0, [x2, -24]	//  (*)
/*     24 */	ldr	d1, [x0, -8]	//  (*)
/*     24 */	ldr	d2, [x1, 416]	//  (*)
/*     24 */	fmadd	d0, d1, d2, d0
/*     24 */	str	d0, [x2, -24]	//  (*)
/*     24 */	ldr	d1, [x0]	//  (*)
/*     24 */	ldr	d2, [x1, 480]	//  (*)
/*     24 */	fmadd	d0, d1, d2, d0
/*     24 */	ldr	d2, [x2, -16]	//  (*)
/*     24 */	str	d0, [x2, -24]	//  (*)
/*     24 */	ldr	d0, [x0, -56]	//  (*)
/*     24 */	ldr	d1, [x1, 40]	//  (*)
/*     24 */	fmadd	d0, d0, d1, d2
/*     24 */	str	d0, [x2, -16]	//  (*)
/*     24 */	ldr	d1, [x0, -48]	//  (*)
/*     24 */	ldr	d2, [x1, 104]	//  (*)
/*     24 */	fmadd	d0, d1, d2, d0
/*     24 */	str	d0, [x2, -16]	//  (*)
/*     24 */	ldr	d1, [x0, -40]	//  (*)
/*     24 */	ldr	d2, [x1, 168]	//  (*)
/*     24 */	fmadd	d0, d1, d2, d0
/*     24 */	str	d0, [x2, -16]	//  (*)
/*     24 */	ldr	d1, [x0, -32]	//  (*)
/*     24 */	ldr	d2, [x1, 232]	//  (*)
/*     24 */	fmadd	d0, d1, d2, d0
/*     24 */	str	d0, [x2, -16]	//  (*)
/*     24 */	ldr	d1, [x0, -24]	//  (*)
/*     24 */	ldr	d2, [x1, 296]	//  (*)
/*     24 */	fmadd	d0, d1, d2, d0
/*     24 */	str	d0, [x2, -16]	//  (*)
/*     24 */	ldr	d1, [x0, -16]	//  (*)
/*     24 */	ldr	d2, [x1, 360]	//  (*)
/*     24 */	fmadd	d0, d1, d2, d0
/*     24 */	str	d0, [x2, -16]	//  (*)
/*     24 */	ldr	d1, [x0, -8]	//  (*)
/*     24 */	ldr	d2, [x1, 424]	//  (*)
/*     24 */	fmadd	d0, d1, d2, d0
/*     24 */	str	d0, [x2, -16]	//  (*)
/*     24 */	ldr	d1, [x0]	//  (*)
/*     24 */	ldr	d2, [x1, 488]	//  (*)
/*     24 */	fmadd	d0, d1, d2, d0
/*     24 */	ldr	d2, [x2, -8]	//  (*)
/*     24 */	str	d0, [x2, -16]	//  (*)
/*     24 */	ldr	d0, [x0, -56]	//  (*)
/*     24 */	ldr	d1, [x1, 48]	//  (*)
/*     24 */	fmadd	d0, d0, d1, d2
/*     24 */	str	d0, [x2, -8]	//  (*)
/*     24 */	ldr	d1, [x0, -48]	//  (*)
/*     24 */	ldr	d2, [x1, 112]	//  (*)
/*     24 */	fmadd	d0, d1, d2, d0
/*     24 */	str	d0, [x2, -8]	//  (*)
/*     24 */	ldr	d2, [x0, -40]	//  (*)
/*     24 */	ldr	d1, [x1, 176]	//  (*)
/*     24 */	fmadd	d1, d2, d1, d0
/*     24 */	str	d1, [x2, -8]	//  (*)
/*     24 */	ldr	d2, [x0, -32]	//  (*)
/*     24 */	ldr	d0, [x1, 240]	//  (*)
/*     24 */	fmadd	d1, d2, d0, d1
/*     24 */	str	d1, [x2, -8]	//  (*)
/*     24 */	ldr	d2, [x0, -24]	//  (*)
/*     24 */	ldr	d0, [x1, 304]	//  (*)
/*     24 */	fmadd	d1, d2, d0, d1
/*     24 */	str	d1, [x2, -8]	//  (*)
/*     24 */	ldr	d2, [x0, -16]	//  (*)
/*     24 */	ldr	d0, [x1, 368]	//  (*)
/*     24 */	fmadd	d1, d2, d0, d1
/*     24 */	str	d1, [x2, -8]	//  (*)
/*     24 */	ldr	d2, [x0, -8]	//  (*)
/*     24 */	ldr	d0, [x1, 432]	//  (*)
/*     24 */	fmadd	d1, d2, d0, d1
/*     24 */	str	d1, [x2, -8]	//  (*)
/*     24 */	ldr	d2, [x0]	//  (*)
/*     24 */	ldr	d0, [x1, 496]	//  (*)
/*     24 */	fmadd	d0, d2, d0, d1
/*     24 */	ldr	d2, [x2]	//  (*)
/*     24 */	str	d0, [x2, -8]	//  (*)
/*     24 */	ldr	d1, [x0, -56]	//  (*)
/*     24 */	ldr	d0, [x1, 56]	//  (*)
/*     24 */	fmadd	d2, d1, d0, d2
/*     24 */	str	d2, [x2]	//  (*)
/*     24 */	ldr	d1, [x0, -48]	//  (*)
/*     24 */	ldr	d0, [x1, 120]	//  (*)
/*     24 */	fmadd	d1, d1, d0, d2
/*     24 */	str	d1, [x2]	//  (*)
/*     24 */	ldr	d0, [x0, -40]	//  (*)
/*     24 */	ldr	d2, [x1, 184]	//  (*)
/*     24 */	fmadd	d2, d0, d2, d1
/*     24 */	str	d2, [x2]	//  (*)
/*     24 */	ldr	d1, [x0, -32]	//  (*)
/*     24 */	ldr	d0, [x1, 248]	//  (*)
/*     24 */	fmadd	d1, d1, d0, d2
/*     24 */	str	d1, [x2]	//  (*)
/*     24 */	ldr	d0, [x0, -24]	//  (*)
/*     24 */	ldr	d2, [x1, 312]	//  (*)
/*     24 */	fmadd	d0, d0, d2, d1
/*     24 */	str	d0, [x2]	//  (*)
/*     24 */	ldr	d1, [x0, -16]	//  (*)
/*     24 */	ldr	d2, [x1, 376]	//  (*)
/*     24 */	fmadd	d0, d1, d2, d0
/*     24 */	str	d0, [x2]	//  (*)
/*     24 */	ldr	d1, [x0, -8]	//  (*)
/*     24 */	ldr	d2, [x1, 440]	//  (*)
/*     24 */	fmadd	d2, d1, d2, d0
/*     24 */	str	d2, [x2]	//  (*)
/*     24 */	ldr	d0, [x0]	//  (*)
/*     24 */	ldr	d1, [x1, 504]	//  (*)
/*     25 */	add	x0, x0, 64
/*     24 */	fmadd	d0, d0, d1, d2
/*     24 */	str	d0, [x2]	//  (*)
/*     25 */	add	x2, x2, 64
/*     27 */	bne	.L556
/*     28 */	ret	
	.size	dgemm, .-dgemm
	.ident	"$Compiler: Fujitsu C/C++ Compiler Version 1.2.0 P-id: Alpha-20161222 (Dec 20 2016 18:37:40) main.c result $"
	.text
	.align	2
	.global	result
	.type	result, %function
result:
/*    ??? */	stp	x19, x20, [sp, -32]!	//  (*)
/*     28 */	mov	x19, x0
/*    ??? */	stp	x21, x30, [sp, 16]	//  (*)
/*     35 */	adrp	x0, .LR.5
/*     35 */	ldr	d0, [x19]	//  (*)
/*     35 */	add	x20, x0, :lo12:.LR.5
/*     35 */	mov	x0, x20
/*     35 */	bl	printf
/*     35 */	ldr	d0, [x19, 8]	//  (*)
/*     35 */	mov	x0, x20
/*     35 */	bl	printf
/*     35 */	ldr	d0, [x19, 16]	//  (*)
/*     35 */	mov	x0, x20
/*     35 */	bl	printf
/*     35 */	ldr	d0, [x19, 24]	//  (*)
/*     35 */	mov	x0, x20
/*     35 */	bl	printf
/*     35 */	ldr	d0, [x19, 32]	//  (*)
/*     35 */	mov	x0, x20
/*     35 */	bl	printf
/*     35 */	ldr	d0, [x19, 40]	//  (*)
/*     35 */	mov	x0, x20
/*     35 */	bl	printf
/*     35 */	ldr	d0, [x19, 48]	//  (*)
/*     35 */	mov	x0, x20
/*     35 */	bl	printf
/*     35 */	ldr	d0, [x19, 56]	//  (*)
/*     35 */	mov	x0, x20
/*     35 */	bl	printf
/*     37 */	adrp	x0, .LR.4
/*     37 */	add	x21, x0, :lo12:.LR.4
/*     37 */	mov	x0, x21
/*     37 */	bl	printf
/*     35 */	ldr	d0, [x19, 64]	//  (*)
/*     35 */	mov	x0, x20
/*     35 */	bl	printf
/*     35 */	ldr	d0, [x19, 72]	//  (*)
/*     35 */	mov	x0, x20
/*     35 */	bl	printf
/*     35 */	ldr	d0, [x19, 80]	//  (*)
/*     35 */	mov	x0, x20
/*     35 */	bl	printf
/*     35 */	ldr	d0, [x19, 88]	//  (*)
/*     35 */	mov	x0, x20
/*     35 */	bl	printf
/*     35 */	ldr	d0, [x19, 96]	//  (*)
/*     35 */	mov	x0, x20
/*     35 */	bl	printf
/*     35 */	ldr	d0, [x19, 104]	//  (*)
/*     35 */	mov	x0, x20
/*     35 */	bl	printf
/*     35 */	ldr	d0, [x19, 112]	//  (*)
/*     35 */	mov	x0, x20
/*     35 */	bl	printf
/*     35 */	ldr	d0, [x19, 120]	//  (*)
/*     35 */	mov	x0, x20
/*     35 */	bl	printf
/*     37 */	mov	x0, x21
/*     37 */	bl	printf
/*     35 */	ldr	d0, [x19, 128]	//  (*)
/*     35 */	mov	x0, x20
/*     35 */	bl	printf
/*     35 */	ldr	d0, [x19, 136]	//  (*)
/*     35 */	mov	x0, x20
/*     35 */	bl	printf
/*     35 */	ldr	d0, [x19, 144]	//  (*)
/*     35 */	mov	x0, x20
/*     35 */	bl	printf
/*     35 */	ldr	d0, [x19, 152]	//  (*)
/*     35 */	mov	x0, x20
/*     35 */	bl	printf
/*     35 */	ldr	d0, [x19, 160]	//  (*)
/*     35 */	mov	x0, x20
/*     35 */	bl	printf
/*     35 */	ldr	d0, [x19, 168]	//  (*)
/*     35 */	mov	x0, x20
/*     35 */	bl	printf
/*     35 */	ldr	d0, [x19, 176]	//  (*)
/*     35 */	mov	x0, x20
/*     35 */	bl	printf
/*     35 */	ldr	d0, [x19, 184]	//  (*)
/*     35 */	mov	x0, x20
/*     35 */	bl	printf
/*     37 */	mov	x0, x21
/*     37 */	bl	printf
/*     35 */	ldr	d0, [x19, 192]	//  (*)
/*     35 */	mov	x0, x20
/*     35 */	bl	printf
/*     35 */	ldr	d0, [x19, 200]	//  (*)
/*     35 */	mov	x0, x20
/*     35 */	bl	printf
/*     35 */	ldr	d0, [x19, 208]	//  (*)
/*     35 */	mov	x0, x20
/*     35 */	bl	printf
/*     35 */	ldr	d0, [x19, 216]	//  (*)
/*     35 */	mov	x0, x20
/*     35 */	bl	printf
/*     35 */	ldr	d0, [x19, 224]	//  (*)
/*     35 */	mov	x0, x20
/*     35 */	bl	printf
/*     35 */	ldr	d0, [x19, 232]	//  (*)
/*     35 */	mov	x0, x20
/*     35 */	bl	printf
/*     35 */	ldr	d0, [x19, 240]	//  (*)
/*     35 */	mov	x0, x20
/*     35 */	bl	printf
/*     35 */	ldr	d0, [x19, 248]	//  (*)
/*     35 */	mov	x0, x20
/*     35 */	bl	printf
/*     37 */	mov	x0, x21
/*     37 */	bl	printf
/*     35 */	ldr	d0, [x19, 256]	//  (*)
/*     35 */	mov	x0, x20
/*     35 */	bl	printf
/*     35 */	ldr	d0, [x19, 264]	//  (*)
/*     35 */	mov	x0, x20
/*     35 */	bl	printf
/*     35 */	ldr	d0, [x19, 272]	//  (*)
/*     35 */	mov	x0, x20
/*     35 */	bl	printf
/*     35 */	ldr	d0, [x19, 280]	//  (*)
/*     35 */	mov	x0, x20
/*     35 */	bl	printf
/*     35 */	ldr	d0, [x19, 288]	//  (*)
/*     35 */	mov	x0, x20
/*     35 */	bl	printf
/*     35 */	ldr	d0, [x19, 296]	//  (*)
/*     35 */	mov	x0, x20
/*     35 */	bl	printf
/*     35 */	ldr	d0, [x19, 304]	//  (*)
/*     35 */	mov	x0, x20
/*     35 */	bl	printf
/*     35 */	ldr	d0, [x19, 312]	//  (*)
/*     35 */	mov	x0, x20
/*     35 */	bl	printf
/*     37 */	mov	x0, x21
/*     37 */	bl	printf
/*     35 */	ldr	d0, [x19, 320]	//  (*)
/*     35 */	mov	x0, x20
/*     35 */	bl	printf
/*     35 */	ldr	d0, [x19, 328]	//  (*)
/*     35 */	mov	x0, x20
/*     35 */	bl	printf
/*     35 */	ldr	d0, [x19, 336]	//  (*)
/*     35 */	mov	x0, x20
/*     35 */	bl	printf
/*     35 */	ldr	d0, [x19, 344]	//  (*)
/*     35 */	mov	x0, x20
/*     35 */	bl	printf
/*     35 */	ldr	d0, [x19, 352]	//  (*)
/*     35 */	mov	x0, x20
/*     35 */	bl	printf
/*     35 */	ldr	d0, [x19, 360]	//  (*)
/*     35 */	mov	x0, x20
/*     35 */	bl	printf
/*     35 */	ldr	d0, [x19, 368]	//  (*)
/*     35 */	mov	x0, x20
/*     35 */	bl	printf
/*     35 */	ldr	d0, [x19, 376]	//  (*)
/*     35 */	mov	x0, x20
/*     35 */	bl	printf
/*     37 */	mov	x0, x21
/*     37 */	bl	printf
/*     35 */	ldr	d0, [x19, 384]	//  (*)
/*     35 */	mov	x0, x20
/*     35 */	bl	printf
/*     35 */	ldr	d0, [x19, 392]	//  (*)
/*     35 */	mov	x0, x20
/*     35 */	bl	printf
/*     35 */	ldr	d0, [x19, 400]	//  (*)
/*     35 */	mov	x0, x20
/*     35 */	bl	printf
/*     35 */	ldr	d0, [x19, 408]	//  (*)
/*     35 */	mov	x0, x20
/*     35 */	bl	printf
/*     35 */	ldr	d0, [x19, 416]	//  (*)
/*     35 */	mov	x0, x20
/*     35 */	bl	printf
/*     35 */	ldr	d0, [x19, 424]	//  (*)
/*     35 */	mov	x0, x20
/*     35 */	bl	printf
/*     35 */	ldr	d0, [x19, 432]	//  (*)
/*     35 */	mov	x0, x20
/*     35 */	bl	printf
/*     35 */	ldr	d0, [x19, 440]	//  (*)
/*     35 */	mov	x0, x20
/*     35 */	bl	printf
/*     37 */	mov	x0, x21
/*     37 */	bl	printf
/*     35 */	ldr	d0, [x19, 448]	//  (*)
/*     35 */	mov	x0, x20
/*     35 */	bl	printf
/*     35 */	ldr	d0, [x19, 456]	//  (*)
/*     35 */	mov	x0, x20
/*     35 */	bl	printf
/*     35 */	ldr	d0, [x19, 464]	//  (*)
/*     35 */	mov	x0, x20
/*     35 */	bl	printf
/*     35 */	ldr	d0, [x19, 472]	//  (*)
/*     35 */	mov	x0, x20
/*     35 */	bl	printf
/*     35 */	ldr	d0, [x19, 480]	//  (*)
/*     35 */	mov	x0, x20
/*     35 */	bl	printf
/*     35 */	ldr	d0, [x19, 488]	//  (*)
/*     35 */	mov	x0, x20
/*     35 */	bl	printf
/*     35 */	ldr	d0, [x19, 496]	//  (*)
/*     35 */	mov	x0, x20
/*     35 */	bl	printf
/*     35 */	ldr	d0, [x19, 504]	//  (*)
/*     35 */	mov	x0, x20
/*     35 */	bl	printf
/*     37 */	mov	x0, x21
/*    ??? */	ldp	x21, x30, [sp, 16]	//  (*)
/*    ??? */	ldp	x19, x20, [sp], 32	//  (*)
/*     37 */	b	printf
	.size	result, .-result
	.ident	"$Compiler: Fujitsu C/C++ Compiler Version 1.2.0 P-id: Alpha-20161222 (Dec 20 2016 18:37:40) main.c main $"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
/*    ??? */	stp	x29, x30, [sp, -144]!	//  (*)
/*     39 */	add	x29, sp, 0
/*    ??? */	stp	x19, x20, [sp, 16]	//  (*)
/*     39 */	addvl	x19, x29, -1
/*    ??? */	stp	x21, x22, [sp, 32]	//  (*)
/*    ??? */	stp	x23, x24, [sp, 48]	//  (*)
/*    ??? */	str	x25, [sp, 64]	//  (*)
/*    ??? */	stp	d8, d9, [sp, 72]	//  (*)
/*    ??? */	stp	d10, d11, [sp, 88]	//  (*)
/*    ??? */	stp	d12, d13, [sp, 104]	//  (*)
/*    ??? */	stp	d14, d15, [sp, 120]	//  (*)
/*    ??? */	addvl	sp, sp, -1
/*    ??? */	addpl	sp, sp, -8
/*     10 */	ptrue	p0.d, VL8
/*     13 */	adrp	x0, c
/*     13 */	fmov	z1.d, 0.000000e+00
/*     11 */	adrp	x1, a
/*     13 */	add	x21, x0, :lo12:c
/*     12 */	adrp	x0, b
/*     12 */	fdup	z0.d, 1.000000e+00
/*     11 */	add	x24, x1, :lo12:a
/*     12 */	add	x23, x0, :lo12:b
/*     44 */	adrp	x0, .LR.3
/*    ??? */	str	p0, [x19, -1, mul vl]	//  (*)
/*     44 */	add	x0, x0, :lo12:.LR.3
/*     13 */	st1d	z1.d, p0, [x21, 0, mul vl]	//  "c"
/*     12 */	st1d	z0.d, p0, [x23, 0, mul vl]	//  "b"
/*     11 */	st1d	z0.d, p0, [x24, 0, mul vl]	//  "a"
/*     13 */	st1d	z1.d, p0, [x21, 1, mul vl]	//  "c"
/*     12 */	st1d	z0.d, p0, [x23, 1, mul vl]	//  "b"
/*     11 */	st1d	z0.d, p0, [x24, 1, mul vl]	//  "a"
/*     13 */	st1d	z1.d, p0, [x21, 2, mul vl]	//  "c"
/*     12 */	st1d	z0.d, p0, [x23, 2, mul vl]	//  "b"
/*     11 */	st1d	z0.d, p0, [x24, 2, mul vl]	//  "a"
/*     13 */	st1d	z1.d, p0, [x21, 3, mul vl]	//  "c"
/*     12 */	st1d	z0.d, p0, [x23, 3, mul vl]	//  "b"
/*     11 */	st1d	z0.d, p0, [x24, 3, mul vl]	//  "a"
/*     13 */	st1d	z1.d, p0, [x21, 4, mul vl]	//  "c"
/*     12 */	st1d	z0.d, p0, [x23, 4, mul vl]	//  "b"
/*     11 */	st1d	z0.d, p0, [x24, 4, mul vl]	//  "a"
/*     13 */	st1d	z1.d, p0, [x21, 5, mul vl]	//  "c"
/*     12 */	st1d	z0.d, p0, [x23, 5, mul vl]	//  "b"
/*     11 */	st1d	z0.d, p0, [x24, 5, mul vl]	//  "a"
/*     13 */	st1d	z1.d, p0, [x21, 6, mul vl]	//  "c"
/*     12 */	st1d	z0.d, p0, [x23, 6, mul vl]	//  "b"
/*     11 */	st1d	z0.d, p0, [x24, 6, mul vl]	//  "a"
/*    ??? */	str	z1, [x29, -1, mul vl]	//  (*)
/*     13 */	st1d	z1.d, p0, [x21, 7, mul vl]	//  "c"
/*     12 */	st1d	z0.d, p0, [x23, 7, mul vl]	//  "b"
/*     11 */	st1d	z0.d, p0, [x24, 7, mul vl]	//  "a"
/*     44 */	bl	printf
/*     35 */	adrp	x0, .LR.5
/*     35 */	ldr	d0, [x24]	//  "a"
/*     35 */	add	x20, x0, :lo12:.LR.5
/*     35 */	mov	x0, x20
/*     35 */	bl	printf
/*     35 */	ldr	d0, [x24, 8]	//  "a"
/*     35 */	mov	x0, x20
/*     35 */	bl	printf
/*     35 */	ldr	d0, [x24, 16]	//  "a"
/*     35 */	mov	x0, x20
/*     35 */	bl	printf
/*     35 */	ldr	d0, [x24, 24]	//  "a"
/*     35 */	mov	x0, x20
/*     35 */	bl	printf
/*     35 */	ldr	d0, [x24, 32]	//  "a"
/*     35 */	mov	x0, x20
/*     35 */	bl	printf
/*     35 */	ldr	d0, [x24, 40]	//  "a"
/*     35 */	mov	x0, x20
/*     35 */	bl	printf
/*     35 */	ldr	d0, [x24, 48]	//  "a"
/*     35 */	mov	x0, x20
/*     35 */	bl	printf
/*     35 */	ldr	d0, [x24, 56]	//  "a"
/*     35 */	mov	x0, x20
/*     35 */	bl	printf
/*     37 */	adrp	x0, .LR.4
/*     37 */	add	x25, x0, :lo12:.LR.4
/*     37 */	mov	x0, x25
/*     37 */	bl	printf
/*     35 */	ldr	d0, [x24, 64]	//  "a"
/*     35 */	mov	x0, x20
/*     35 */	bl	printf
/*     35 */	ldr	d0, [x24, 72]	//  "a"
/*     35 */	mov	x0, x20
/*     35 */	bl	printf
/*     35 */	ldr	d0, [x24, 80]	//  "a"
/*     35 */	mov	x0, x20
/*     35 */	bl	printf
/*     35 */	ldr	d0, [x24, 88]	//  "a"
/*     35 */	mov	x0, x20
/*     35 */	bl	printf
/*     35 */	ldr	d0, [x24, 96]	//  "a"
/*     35 */	mov	x0, x20
/*     35 */	bl	printf
/*     35 */	ldr	d0, [x24, 104]	//  "a"
/*     35 */	mov	x0, x20
/*     35 */	bl	printf
/*     35 */	ldr	d0, [x24, 112]	//  "a"
/*     35 */	mov	x0, x20
/*     35 */	bl	printf
/*     35 */	ldr	d0, [x24, 120]	//  "a"
/*     35 */	mov	x0, x20
/*     35 */	bl	printf
/*     37 */	mov	x0, x25
/*     37 */	bl	printf
/*     35 */	ldr	d0, [x24, 128]	//  "a"
/*     35 */	mov	x0, x20
/*     35 */	bl	printf
/*     35 */	ldr	d0, [x24, 136]	//  "a"
/*     35 */	mov	x0, x20
/*     35 */	bl	printf
/*     35 */	ldr	d0, [x24, 144]	//  "a"
/*     35 */	mov	x0, x20
/*     35 */	bl	printf
/*     35 */	ldr	d0, [x24, 152]	//  "a"
/*     35 */	mov	x0, x20
/*     35 */	bl	printf
/*     35 */	ldr	d0, [x24, 160]	//  "a"
/*     35 */	mov	x0, x20
/*     35 */	bl	printf
/*     35 */	ldr	d0, [x24, 168]	//  "a"
/*     35 */	mov	x0, x20
/*     35 */	bl	printf
/*     35 */	ldr	d0, [x24, 176]	//  "a"
/*     35 */	mov	x0, x20
/*     35 */	bl	printf
/*     35 */	ldr	d0, [x24, 184]	//  "a"
/*     35 */	mov	x0, x20
/*     35 */	bl	printf
/*     37 */	mov	x0, x25
/*     37 */	bl	printf
/*     35 */	ldr	d0, [x24, 192]	//  "a"
/*     35 */	mov	x0, x20
/*     35 */	bl	printf
/*     35 */	ldr	d0, [x24, 200]	//  "a"
/*     35 */	mov	x0, x20
/*     35 */	bl	printf
/*     35 */	ldr	d0, [x24, 208]	//  "a"
/*     35 */	mov	x0, x20
/*     35 */	bl	printf
/*     35 */	ldr	d0, [x24, 216]	//  "a"
/*     35 */	mov	x0, x20
/*     35 */	bl	printf
/*     35 */	ldr	d0, [x24, 224]	//  "a"
/*     35 */	mov	x0, x20
/*     35 */	bl	printf
/*     35 */	ldr	d0, [x24, 232]	//  "a"
/*     35 */	mov	x0, x20
/*     35 */	bl	printf
/*     35 */	ldr	d0, [x24, 240]	//  "a"
/*     35 */	mov	x0, x20
/*     35 */	bl	printf
/*     35 */	ldr	d0, [x24, 248]	//  "a"
/*     35 */	mov	x0, x20
/*     35 */	bl	printf
/*     37 */	mov	x0, x25
/*     37 */	bl	printf
/*     35 */	ldr	d0, [x24, 256]	//  "a"
/*     35 */	mov	x0, x20
/*     35 */	bl	printf
/*     35 */	ldr	d0, [x24, 264]	//  "a"
/*     35 */	mov	x0, x20
/*     35 */	bl	printf
/*     35 */	ldr	d0, [x24, 272]	//  "a"
/*     35 */	mov	x0, x20
/*     35 */	bl	printf
/*     35 */	ldr	d0, [x24, 280]	//  "a"
/*     35 */	mov	x0, x20
/*     35 */	bl	printf
/*     35 */	ldr	d0, [x24, 288]	//  "a"
/*     35 */	mov	x0, x20
/*     35 */	bl	printf
/*     35 */	ldr	d0, [x24, 296]	//  "a"
/*     35 */	mov	x0, x20
/*     35 */	bl	printf
/*     35 */	ldr	d0, [x24, 304]	//  "a"
/*     35 */	mov	x0, x20
/*     35 */	bl	printf
/*     35 */	ldr	d0, [x24, 312]	//  "a"
/*     35 */	mov	x0, x20
/*     35 */	bl	printf
/*     37 */	mov	x0, x25
/*     37 */	bl	printf
/*     35 */	ldr	d0, [x24, 320]	//  "a"
/*     35 */	mov	x0, x20
/*     35 */	bl	printf
/*     35 */	ldr	d0, [x24, 328]	//  "a"
/*     35 */	mov	x0, x20
/*     35 */	bl	printf
/*     35 */	ldr	d0, [x24, 336]	//  "a"
/*     35 */	mov	x0, x20
/*     35 */	bl	printf
/*     35 */	ldr	d0, [x24, 344]	//  "a"
/*     35 */	mov	x0, x20
/*     35 */	bl	printf
/*     35 */	ldr	d0, [x24, 352]	//  "a"
/*     35 */	mov	x0, x20
/*     35 */	bl	printf
/*     35 */	ldr	d0, [x24, 360]	//  "a"
/*     35 */	mov	x0, x20
/*     35 */	bl	printf
/*     35 */	ldr	d0, [x24, 368]	//  "a"
/*     35 */	mov	x0, x20
/*     35 */	bl	printf
/*     35 */	ldr	d0, [x24, 376]	//  "a"
/*     35 */	mov	x0, x20
/*     35 */	bl	printf
/*     37 */	mov	x0, x25
/*     37 */	bl	printf
/*     35 */	ldr	d0, [x24, 384]	//  "a"
/*     35 */	mov	x0, x20
/*     35 */	bl	printf
/*     35 */	ldr	d0, [x24, 392]	//  "a"
/*     35 */	mov	x0, x20
/*     35 */	bl	printf
/*     35 */	ldr	d0, [x24, 400]	//  "a"
/*     35 */	mov	x0, x20
/*     35 */	bl	printf
/*     35 */	ldr	d0, [x24, 408]	//  "a"
/*     35 */	mov	x0, x20
/*     35 */	bl	printf
/*     35 */	ldr	d0, [x24, 416]	//  "a"
/*     35 */	mov	x0, x20
/*     35 */	bl	printf
/*     35 */	ldr	d0, [x24, 424]	//  "a"
/*     35 */	mov	x0, x20
/*     35 */	bl	printf
/*     35 */	ldr	d0, [x24, 432]	//  "a"
/*     35 */	mov	x0, x20
/*     35 */	bl	printf
/*     35 */	ldr	d0, [x24, 440]	//  "a"
/*     35 */	mov	x0, x20
/*     35 */	bl	printf
/*     37 */	mov	x0, x25
/*     37 */	bl	printf
/*     35 */	ldr	d0, [x24, 448]	//  "a"
/*     35 */	mov	x0, x20
/*     35 */	bl	printf
/*     35 */	ldr	d0, [x24, 456]	//  "a"
/*     35 */	mov	x0, x20
/*     35 */	bl	printf
/*     35 */	ldr	d0, [x24, 464]	//  "a"
/*     35 */	mov	x0, x20
/*     35 */	bl	printf
/*     35 */	ldr	d0, [x24, 472]	//  "a"
/*     35 */	mov	x0, x20
/*     35 */	bl	printf
/*     35 */	ldr	d0, [x24, 480]	//  "a"
/*     35 */	mov	x0, x20
/*     35 */	bl	printf
/*     35 */	ldr	d0, [x24, 488]	//  "a"
/*     35 */	mov	x0, x20
/*     35 */	bl	printf
/*     35 */	ldr	d0, [x24, 496]	//  "a"
/*     35 */	mov	x0, x20
/*     35 */	bl	printf
/*     35 */	ldr	d0, [x24, 504]	//  "a"
/*     35 */	mov	x0, x20
/*     35 */	bl	printf
/*     37 */	mov	x0, x25
/*     37 */	bl	printf
/*     46 */	adrp	x0, .LR.2
/*     46 */	add	x0, x0, :lo12:.LR.2
/*     46 */	bl	printf
/*     35 */	ldr	d0, [x23]	//  "b"
/*     35 */	mov	x0, x20
/*     35 */	bl	printf
/*     35 */	ldr	d0, [x23, 8]	//  "b"
/*     35 */	mov	x0, x20
/*     35 */	bl	printf
/*     35 */	ldr	d0, [x23, 16]	//  "b"
/*     35 */	mov	x0, x20
/*     35 */	bl	printf
/*     35 */	ldr	d0, [x23, 24]	//  "b"
/*     35 */	mov	x0, x20
/*     35 */	bl	printf
/*     35 */	ldr	d0, [x23, 32]	//  "b"
/*     35 */	mov	x0, x20
/*     35 */	bl	printf
/*     35 */	ldr	d0, [x23, 40]	//  "b"
/*     35 */	mov	x0, x20
/*     35 */	bl	printf
/*     35 */	ldr	d0, [x23, 48]	//  "b"
/*     35 */	mov	x0, x20
/*     35 */	bl	printf
/*     35 */	ldr	d0, [x23, 56]	//  "b"
/*     35 */	mov	x0, x20
/*     35 */	bl	printf
/*     37 */	mov	x0, x25
/*     37 */	bl	printf
/*     35 */	ldr	d0, [x23, 64]	//  "b"
/*     35 */	mov	x0, x20
/*     35 */	bl	printf
/*     35 */	ldr	d0, [x23, 72]	//  "b"
/*     35 */	mov	x0, x20
/*     35 */	bl	printf
/*     35 */	ldr	d0, [x23, 80]	//  "b"
/*     35 */	mov	x0, x20
/*     35 */	bl	printf
/*     35 */	ldr	d0, [x23, 88]	//  "b"
/*     35 */	mov	x0, x20
/*     35 */	bl	printf
/*     35 */	ldr	d0, [x23, 96]	//  "b"
/*     35 */	mov	x0, x20
/*     35 */	bl	printf
/*     35 */	ldr	d0, [x23, 104]	//  "b"
/*     35 */	mov	x0, x20
/*     35 */	bl	printf
/*     35 */	ldr	d0, [x23, 112]	//  "b"
/*     35 */	mov	x0, x20
/*     35 */	bl	printf
/*     35 */	ldr	d0, [x23, 120]	//  "b"
/*     35 */	mov	x0, x20
/*     35 */	bl	printf
/*     37 */	mov	x0, x25
/*     37 */	bl	printf
/*     35 */	ldr	d0, [x23, 128]	//  "b"
/*     35 */	mov	x0, x20
/*     35 */	bl	printf
/*     35 */	ldr	d0, [x23, 136]	//  "b"
/*     35 */	mov	x0, x20
/*     35 */	bl	printf
/*     35 */	ldr	d0, [x23, 144]	//  "b"
/*     35 */	mov	x0, x20
/*     35 */	bl	printf
/*     35 */	ldr	d0, [x23, 152]	//  "b"
/*     35 */	mov	x0, x20
/*     35 */	bl	printf
/*     35 */	ldr	d0, [x23, 160]	//  "b"
/*     35 */	mov	x0, x20
/*     35 */	bl	printf
/*     35 */	ldr	d0, [x23, 168]	//  "b"
/*     35 */	mov	x0, x20
/*     35 */	bl	printf
/*     35 */	ldr	d0, [x23, 176]	//  "b"
/*     35 */	mov	x0, x20
/*     35 */	bl	printf
/*     35 */	ldr	d0, [x23, 184]	//  "b"
/*     35 */	mov	x0, x20
/*     35 */	bl	printf
/*     37 */	mov	x0, x25
/*     37 */	bl	printf
/*     35 */	ldr	d0, [x23, 192]	//  "b"
/*     35 */	mov	x0, x20
/*     35 */	bl	printf
/*     35 */	ldr	d0, [x23, 200]	//  "b"
/*     35 */	mov	x0, x20
/*     35 */	bl	printf
/*     35 */	ldr	d0, [x23, 208]	//  "b"
/*     35 */	mov	x0, x20
/*     35 */	bl	printf
/*     35 */	ldr	d0, [x23, 216]	//  "b"
/*     35 */	mov	x0, x20
/*     35 */	bl	printf
/*     35 */	ldr	d0, [x23, 224]	//  "b"
/*     35 */	mov	x0, x20
/*     35 */	bl	printf
/*     35 */	ldr	d0, [x23, 232]	//  "b"
/*     35 */	mov	x0, x20
/*     35 */	bl	printf
/*     35 */	ldr	d0, [x23, 240]	//  "b"
/*     35 */	mov	x0, x20
/*     35 */	bl	printf
/*     35 */	ldr	d0, [x23, 248]	//  "b"
/*     35 */	mov	x0, x20
/*     35 */	bl	printf
/*     37 */	mov	x0, x25
/*     37 */	bl	printf
/*     35 */	ldr	d0, [x23, 256]	//  "b"
/*     35 */	mov	x0, x20
/*     35 */	bl	printf
/*     35 */	ldr	d0, [x23, 264]	//  "b"
/*     35 */	mov	x0, x20
/*     35 */	bl	printf
/*     35 */	ldr	d0, [x23, 272]	//  "b"
/*     35 */	mov	x0, x20
/*     35 */	bl	printf
/*     35 */	ldr	d0, [x23, 280]	//  "b"
/*     35 */	mov	x0, x20
/*     35 */	bl	printf
/*     35 */	ldr	d0, [x23, 288]	//  "b"
/*     35 */	mov	x0, x20
/*     35 */	bl	printf
/*     35 */	ldr	d0, [x23, 296]	//  "b"
/*     35 */	mov	x0, x20
/*     35 */	bl	printf
/*     35 */	ldr	d0, [x23, 304]	//  "b"
/*     35 */	mov	x0, x20
/*     35 */	bl	printf
/*     35 */	ldr	d0, [x23, 312]	//  "b"
/*     35 */	mov	x0, x20
/*     35 */	bl	printf
/*     37 */	mov	x0, x25
/*     37 */	bl	printf
/*     35 */	ldr	d0, [x23, 320]	//  "b"
/*     35 */	mov	x0, x20
/*     35 */	bl	printf
/*     35 */	ldr	d0, [x23, 328]	//  "b"
/*     35 */	mov	x0, x20
/*     35 */	bl	printf
/*     35 */	ldr	d0, [x23, 336]	//  "b"
/*     35 */	mov	x0, x20
/*     35 */	bl	printf
/*     35 */	ldr	d0, [x23, 344]	//  "b"
/*     35 */	mov	x0, x20
/*     35 */	bl	printf
/*     35 */	ldr	d0, [x23, 352]	//  "b"
/*     35 */	mov	x0, x20
/*     35 */	bl	printf
/*     35 */	ldr	d0, [x23, 360]	//  "b"
/*     35 */	mov	x0, x20
/*     35 */	bl	printf
/*     35 */	ldr	d0, [x23, 368]	//  "b"
/*     35 */	mov	x0, x20
/*     35 */	bl	printf
/*     35 */	ldr	d0, [x23, 376]	//  "b"
/*     35 */	mov	x0, x20
/*     35 */	bl	printf
/*     37 */	mov	x0, x25
/*     37 */	bl	printf
/*     35 */	ldr	d0, [x23, 384]	//  "b"
/*     35 */	mov	x0, x20
/*     35 */	bl	printf
/*     35 */	ldr	d0, [x23, 392]	//  "b"
/*     35 */	mov	x0, x20
/*     35 */	bl	printf
/*     35 */	ldr	d0, [x23, 400]	//  "b"
/*     35 */	mov	x0, x20
/*     35 */	bl	printf
/*     35 */	ldr	d0, [x23, 408]	//  "b"
/*     35 */	mov	x0, x20
/*     35 */	bl	printf
/*     35 */	ldr	d0, [x23, 416]	//  "b"
/*     35 */	mov	x0, x20
/*     35 */	bl	printf
/*     35 */	ldr	d0, [x23, 424]	//  "b"
/*     35 */	mov	x0, x20
/*     35 */	bl	printf
/*     35 */	ldr	d0, [x23, 432]	//  "b"
/*     35 */	mov	x0, x20
/*     35 */	bl	printf
/*     35 */	ldr	d0, [x23, 440]	//  "b"
/*     35 */	mov	x0, x20
/*     35 */	bl	printf
/*     37 */	mov	x0, x25
/*     37 */	bl	printf
/*     35 */	ldr	d0, [x23, 448]	//  "b"
/*     35 */	mov	x0, x20
/*     35 */	bl	printf
/*     35 */	ldr	d0, [x23, 456]	//  "b"
/*     35 */	mov	x0, x20
/*     35 */	bl	printf
/*     35 */	ldr	d0, [x23, 464]	//  "b"
/*     35 */	mov	x0, x20
/*     35 */	bl	printf
/*     35 */	ldr	d0, [x23, 472]	//  "b"
/*     35 */	mov	x0, x20
/*     35 */	bl	printf
/*     35 */	ldr	d0, [x23, 480]	//  "b"
/*     35 */	mov	x0, x20
/*     35 */	bl	printf
/*     35 */	ldr	d0, [x23, 488]	//  "b"
/*     35 */	mov	x0, x20
/*     35 */	bl	printf
/*     35 */	ldr	d0, [x23, 496]	//  "b"
/*     35 */	mov	x0, x20
/*     35 */	bl	printf
/*     35 */	ldr	d0, [x23, 504]	//  "b"
/*     35 */	mov	x0, x20
/*     35 */	bl	printf
/*     37 */	mov	x0, x25
/*     37 */	bl	printf
/*     48 */	adrp	x0, .LR.1
/*     48 */	add	x22, x0, :lo12:.LR.1
/*     48 */	mov	x0, x22
/*     48 */	bl	printf
/*     35 */	ldr	d0, [x21]	//  "c"
/*     35 */	mov	x0, x20
/*     35 */	bl	printf
/*     35 */	ldr	d0, [x21, 8]	//  "c"
/*     35 */	mov	x0, x20
/*     35 */	bl	printf
/*     35 */	ldr	d0, [x21, 16]	//  "c"
/*     35 */	mov	x0, x20
/*     35 */	bl	printf
/*     35 */	ldr	d0, [x21, 24]	//  "c"
/*     35 */	mov	x0, x20
/*     35 */	bl	printf
/*     35 */	ldr	d0, [x21, 32]	//  "c"
/*     35 */	mov	x0, x20
/*     35 */	bl	printf
/*     35 */	ldr	d0, [x21, 40]	//  "c"
/*     35 */	mov	x0, x20
/*     35 */	bl	printf
/*     35 */	ldr	d0, [x21, 48]	//  "c"
/*     35 */	mov	x0, x20
/*     35 */	bl	printf
/*     35 */	ldr	d0, [x21, 56]	//  "c"
/*     35 */	mov	x0, x20
/*     35 */	bl	printf
/*     37 */	mov	x0, x25
/*     37 */	bl	printf
/*     35 */	ldr	d0, [x21, 64]	//  "c"
/*     35 */	mov	x0, x20
/*     35 */	bl	printf
/*     35 */	ldr	d0, [x21, 72]	//  "c"
/*     35 */	mov	x0, x20
/*     35 */	bl	printf
/*     35 */	ldr	d0, [x21, 80]	//  "c"
/*     35 */	mov	x0, x20
/*     35 */	bl	printf
/*     35 */	ldr	d0, [x21, 88]	//  "c"
/*     35 */	mov	x0, x20
/*     35 */	bl	printf
/*     35 */	ldr	d0, [x21, 96]	//  "c"
/*     35 */	mov	x0, x20
/*     35 */	bl	printf
/*     35 */	ldr	d0, [x21, 104]	//  "c"
/*     35 */	mov	x0, x20
/*     35 */	bl	printf
/*     35 */	ldr	d0, [x21, 112]	//  "c"
/*     35 */	mov	x0, x20
/*     35 */	bl	printf
/*     35 */	ldr	d0, [x21, 120]	//  "c"
/*     35 */	mov	x0, x20
/*     35 */	bl	printf
/*     37 */	mov	x0, x25
/*     37 */	bl	printf
/*     35 */	ldr	d0, [x21, 128]	//  "c"
/*     35 */	mov	x0, x20
/*     35 */	bl	printf
/*     35 */	ldr	d0, [x21, 136]	//  "c"
/*     35 */	mov	x0, x20
/*     35 */	bl	printf
/*     35 */	ldr	d0, [x21, 144]	//  "c"
/*     35 */	mov	x0, x20
/*     35 */	bl	printf
/*     35 */	ldr	d0, [x21, 152]	//  "c"
/*     35 */	mov	x0, x20
/*     35 */	bl	printf
/*     35 */	ldr	d0, [x21, 160]	//  "c"
/*     35 */	mov	x0, x20
/*     35 */	bl	printf
/*     35 */	ldr	d0, [x21, 168]	//  "c"
/*     35 */	mov	x0, x20
/*     35 */	bl	printf
/*     35 */	ldr	d0, [x21, 176]	//  "c"
/*     35 */	mov	x0, x20
/*     35 */	bl	printf
/*     35 */	ldr	d0, [x21, 184]	//  "c"
/*     35 */	mov	x0, x20
/*     35 */	bl	printf
/*     37 */	mov	x0, x25
/*     37 */	bl	printf
/*     35 */	ldr	d0, [x21, 192]	//  "c"
/*     35 */	mov	x0, x20
/*     35 */	bl	printf
/*     35 */	ldr	d0, [x21, 200]	//  "c"
/*     35 */	mov	x0, x20
/*     35 */	bl	printf
/*     35 */	ldr	d0, [x21, 208]	//  "c"
/*     35 */	mov	x0, x20
/*     35 */	bl	printf
/*     35 */	ldr	d0, [x21, 216]	//  "c"
/*     35 */	mov	x0, x20
/*     35 */	bl	printf
/*     35 */	ldr	d0, [x21, 224]	//  "c"
/*     35 */	mov	x0, x20
/*     35 */	bl	printf
/*     35 */	ldr	d0, [x21, 232]	//  "c"
/*     35 */	mov	x0, x20
/*     35 */	bl	printf
/*     35 */	ldr	d0, [x21, 240]	//  "c"
/*     35 */	mov	x0, x20
/*     35 */	bl	printf
/*     35 */	ldr	d0, [x21, 248]	//  "c"
/*     35 */	mov	x0, x20
/*     35 */	bl	printf
/*     37 */	mov	x0, x25
/*     37 */	bl	printf
/*     35 */	ldr	d0, [x21, 256]	//  "c"
/*     35 */	mov	x0, x20
/*     35 */	bl	printf
/*     35 */	ldr	d0, [x21, 264]	//  "c"
/*     35 */	mov	x0, x20
/*     35 */	bl	printf
/*     35 */	ldr	d0, [x21, 272]	//  "c"
/*     35 */	mov	x0, x20
/*     35 */	bl	printf
/*     35 */	ldr	d0, [x21, 280]	//  "c"
/*     35 */	mov	x0, x20
/*     35 */	bl	printf
/*     35 */	ldr	d0, [x21, 288]	//  "c"
/*     35 */	mov	x0, x20
/*     35 */	bl	printf
/*     35 */	ldr	d0, [x21, 296]	//  "c"
/*     35 */	mov	x0, x20
/*     35 */	bl	printf
/*     35 */	ldr	d0, [x21, 304]	//  "c"
/*     35 */	mov	x0, x20
/*     35 */	bl	printf
/*     35 */	ldr	d0, [x21, 312]	//  "c"
/*     35 */	mov	x0, x20
/*     35 */	bl	printf
/*     37 */	mov	x0, x25
/*     37 */	bl	printf
/*     35 */	ldr	d0, [x21, 320]	//  "c"
/*     35 */	mov	x0, x20
/*     35 */	bl	printf
/*     35 */	ldr	d0, [x21, 328]	//  "c"
/*     35 */	mov	x0, x20
/*     35 */	bl	printf
/*     35 */	ldr	d0, [x21, 336]	//  "c"
/*     35 */	mov	x0, x20
/*     35 */	bl	printf
/*     35 */	ldr	d0, [x21, 344]	//  "c"
/*     35 */	mov	x0, x20
/*     35 */	bl	printf
/*     35 */	ldr	d0, [x21, 352]	//  "c"
/*     35 */	mov	x0, x20
/*     35 */	bl	printf
/*     35 */	ldr	d0, [x21, 360]	//  "c"
/*     35 */	mov	x0, x20
/*     35 */	bl	printf
/*     35 */	ldr	d0, [x21, 368]	//  "c"
/*     35 */	mov	x0, x20
/*     35 */	bl	printf
/*     35 */	ldr	d0, [x21, 376]	//  "c"
/*     35 */	mov	x0, x20
/*     35 */	bl	printf
/*     37 */	mov	x0, x25
/*     37 */	bl	printf
/*     35 */	ldr	d0, [x21, 384]	//  "c"
/*     35 */	mov	x0, x20
/*     35 */	bl	printf
/*     35 */	ldr	d0, [x21, 392]	//  "c"
/*     35 */	mov	x0, x20
/*     35 */	bl	printf
/*     35 */	ldr	d0, [x21, 400]	//  "c"
/*     35 */	mov	x0, x20
/*     35 */	bl	printf
/*     35 */	ldr	d0, [x21, 408]	//  "c"
/*     35 */	mov	x0, x20
/*     35 */	bl	printf
/*     35 */	ldr	d0, [x21, 416]	//  "c"
/*     35 */	mov	x0, x20
/*     35 */	bl	printf
/*     35 */	ldr	d0, [x21, 424]	//  "c"
/*     35 */	mov	x0, x20
/*     35 */	bl	printf
/*     35 */	ldr	d0, [x21, 432]	//  "c"
/*     35 */	mov	x0, x20
/*     35 */	bl	printf
/*     35 */	ldr	d0, [x21, 440]	//  "c"
/*     35 */	mov	x0, x20
/*     35 */	bl	printf
/*     37 */	mov	x0, x25
/*     37 */	bl	printf
/*     35 */	ldr	d0, [x21, 448]	//  "c"
/*     35 */	mov	x0, x20
/*     35 */	bl	printf
/*     35 */	ldr	d0, [x21, 456]	//  "c"
/*     35 */	mov	x0, x20
/*     35 */	bl	printf
/*     35 */	ldr	d0, [x21, 464]	//  "c"
/*     35 */	mov	x0, x20
/*     35 */	bl	printf
/*     35 */	ldr	d0, [x21, 472]	//  "c"
/*     35 */	mov	x0, x20
/*     35 */	bl	printf
/*     35 */	ldr	d0, [x21, 480]	//  "c"
/*     35 */	mov	x0, x20
/*     35 */	bl	printf
/*     35 */	ldr	d0, [x21, 488]	//  "c"
/*     35 */	mov	x0, x20
/*     35 */	bl	printf
/*     35 */	ldr	d0, [x21, 496]	//  "c"
/*     35 */	mov	x0, x20
/*     35 */	bl	printf
/*     35 */	ldr	d0, [x21, 504]	//  "c"
/*     35 */	mov	x0, x20
/*     35 */	bl	printf
/*     37 */	mov	x0, x25
/*     37 */	bl	printf
/*     25 */	index	z13.d, 0, 8
/*     25 */	mov	x0, 0
/*    ??? */	ldr	p1, [x19, -1, mul vl]	//  (*)
/*     25 */	mov	x1, 1
/*     25 */	mov	x2, 2
/*    ??? */	ldr	z15, [x29, -1, mul vl]	//  (*)
/*     24 */	ldr	d14, [x21]	//  "c"
/*     25 */	add	x10, x23, x0, lsl #3
/*     25 */	mov	x6, 6
/*     25 */	mov	x3, 3
/*     25 */	add	x8, x23, x1, lsl #3
/*     25 */	mov	x4, 4
/*     25 */	mov	x5, 5
/*     25 */	add	x9, x23, x2, lsl #3
/*     25 */	mov	x7, 7
/*     25 */	add	x14, x23, x6, lsl #3
/*     24 */	ld1d	z0.d, p1/z, [x24, 0, mul vl]	//  "a"
/*     23 */	mov	p0.b, p1.b
/*     25 */	ld1d	z1.d, p1/z, [x10, z13.d, lsl #3]	//  "b"
/*     25 */	add	x11, x23, x3, lsl #3
/*     25 */	ld1d	z2.d, p1/z, [x8, z13.d, lsl #3]	//  "b"
/*     25 */	ld1d	z3.d, p1/z, [x9, z13.d, lsl #3]	//  "b"
/*     25 */	add	x12, x23, x4, lsl #3
/*     25 */	ld1d	z7.d, p1/z, [x14, z13.d, lsl #3]	//  "b"
/*     25 */	ld1d	z4.d, p1/z, [x11, z13.d, lsl #3]	//  "b"
/*     25 */	add	x13, x23, x5, lsl #3
/*     25 */	ld1d	z5.d, p1/z, [x12, z13.d, lsl #3]	//  "b"
/*     25 */	ld1d	z6.d, p1/z, [x13, z13.d, lsl #3]	//  "b"
/*     25 */	add	x15, x23, x7, lsl #3
/*     25 */	add	x6, x23, x6, lsl #3
/*     25 */	add	x5, x23, x5, lsl #3
/*     25 */	add	x7, x23, x7, lsl #3
/*     24 */	fmad	z1.d, p1/m, z0.d, z15.d
/*     24 */	fmad	z2.d, p1/m, z0.d, z15.d
/*     24 */	fmad	z3.d, p1/m, z0.d, z15.d
/*     24 */	fmad	z7.d, p1/m, z0.d, z15.d
/*     24 */	fmad	z4.d, p1/m, z0.d, z15.d
/*     24 */	fmad	z5.d, p1/m, z0.d, z15.d
/*     24 */	fmad	z6.d, p1/m, z0.d, z15.d
/*     25 */	mov	z8.d, z1.d
/*     25 */	mov	z9.d, z2.d
/*     25 */	mov	z10.d, z3.d
/*     25 */	ext	z8.b, z8.b, z1.b, 32
/*     25 */	mov	z11.d, z4.d
/*     25 */	ext	z9.b, z9.b, z2.b, 32
/*     25 */	mov	z12.d, z5.d
/*     25 */	ext	z10.b, z10.b, z3.b, 32
/*     25 */	ext	z11.b, z11.b, z4.b, 32
/*     25 */	ext	z12.b, z12.b, z5.b, 32
/*     25 */	fadd	z1.d, z1.d, z8.d
/*     25 */	mov	z8.d, z6.d
/*     25 */	fadd	z2.d, z2.d, z9.d
/*     25 */	mov	z9.d, z7.d
/*     25 */	fadd	z3.d, z3.d, z10.d
/*     25 */	fadd	z4.d, z4.d, z11.d
/*     25 */	fadd	z5.d, z5.d, z12.d
/*     25 */	ext	z9.b, z9.b, z7.b, 32
/*     25 */	ext	z8.b, z8.b, z6.b, 32
/*     25 */	mov	z10.d, z1.d
/*     25 */	mov	z11.d, z2.d
/*     25 */	mov	z12.d, z3.d
/*     25 */	fadd	z7.d, z7.d, z9.d
/*     25 */	ext	z10.b, z10.b, z1.b, 16
/*     25 */	fadd	z6.d, z6.d, z8.d
/*     25 */	ext	z11.b, z11.b, z2.b, 16
/*     25 */	mov	z16.d, z4.d
/*     25 */	ext	z12.b, z12.b, z3.b, 16
/*     25 */	mov	z8.d, z5.d
/*     25 */	ext	z16.b, z16.b, z4.b, 16
/*     25 */	fadd	z1.d, z1.d, z10.d
/*     25 */	fadd	z2.d, z2.d, z11.d
/*     25 */	fadd	z3.d, z3.d, z12.d
/*     25 */	ext	z8.b, z8.b, z5.b, 16
/*     25 */	fadd	z4.d, z4.d, z16.d
/*     25 */	mov	z9.d, z1.d
/*     25 */	fadd	z5.d, z5.d, z8.d
/*     25 */	mov	z10.d, z2.d
/*     25 */	mov	z8.d, z6.d
/*     25 */	mov	z11.d, z3.d
/*     25 */	ext	z9.b, z9.b, z1.b, 8
/*     25 */	ext	z10.b, z10.b, z2.b, 8
/*     25 */	mov	z12.d, z4.d
/*     25 */	ext	z11.b, z11.b, z3.b, 8
/*     25 */	ext	z8.b, z8.b, z6.b, 16
/*     25 */	ext	z12.b, z12.b, z4.b, 8
/*     25 */	fadd	z1.d, z1.d, z9.d
/*     25 */	fadd	z2.d, z2.d, z10.d
/*     25 */	fadd	z3.d, z3.d, z11.d
/*     25 */	fadd	z6.d, z6.d, z8.d
/*     25 */	mov	z8.d, z5.d
/*     25 */	ld1d	z9.d, p1/z, [x12, z13.d, lsl #3]	//  "b"
/*     25 */	fadd	z4.d, z4.d, z12.d
/*     25 */	ld1d	z11.d, p1/z, [x14, z13.d, lsl #3]	//  "b"
/*     25 */	ext	z8.b, z8.b, z5.b, 8
/*     25 */	ld1d	z10.d, p1/z, [x13, z13.d, lsl #3]	//  "b"
/*     25 */	fadd	d1, d14, d1
/*     25 */	fadd	z5.d, z5.d, z8.d
/*     25 */	mov	z8.d, z6.d
/*     25 */	ext	z8.b, z8.b, z6.b, 8
/*     24 */	str	d1, [x21]	//  "c"
/*     24 */	ldr	d1, [x21, 8]	//  "c"
/*     25 */	fadd	z6.d, z6.d, z8.d
/*     25 */	ld1d	z8.d, p1/z, [x11, z13.d, lsl #3]	//  "b"
/*     25 */	fadd	d1, d1, d2
/*     24 */	ld1d	z2.d, p1/z, [x24, 1, mul vl]	//  "a"
/*     24 */	str	d1, [x21, 8]	//  "c"
/*     24 */	ldr	d1, [x21, 16]	//  "c"
/*     24 */	fmad	z9.d, p1/m, z2.d, z15.d
/*     24 */	fmad	z11.d, p1/m, z2.d, z15.d
/*     24 */	fmad	z10.d, p1/m, z2.d, z15.d
/*     24 */	fmad	z8.d, p1/m, z2.d, z15.d
/*     25 */	fadd	d1, d1, d3
/*     25 */	ld1d	z3.d, p1/z, [x10, z13.d, lsl #3]	//  "b"
/*     24 */	str	d1, [x21, 16]	//  "c"
/*     24 */	ldr	d1, [x21, 24]	//  "c"
/*     25 */	fadd	d1, d1, d4
/*     25 */	ld1d	z4.d, p1/z, [x8, z13.d, lsl #3]	//  "b"
/*     24 */	fmad	z3.d, p1/m, z2.d, z15.d
/*     24 */	str	d1, [x21, 24]	//  "c"
/*     24 */	ldr	d1, [x21, 32]	//  "c"
/*     24 */	ldr	d14, [x21, 48]	//  "c"
/*     25 */	fadd	d1, d1, d5
/*     25 */	ld1d	z5.d, p1/z, [x15, z13.d, lsl #3]	//  "b"
/*     24 */	fmad	z4.d, p1/m, z2.d, z15.d
/*     24 */	str	d1, [x21, 32]	//  "c"
/*     24 */	ldr	d1, [x21, 40]	//  "c"
/*     25 */	fadd	d1, d1, d6
/*     25 */	ld1d	z6.d, p1/z, [x9, z13.d, lsl #3]	//  "b"
/*     24 */	fmad	z5.d, p1/m, z0.d, z15.d
/*     25 */	mov	z0.d, z3.d
/*     25 */	ext	z0.b, z0.b, z3.b, 32
/*     24 */	str	d1, [x21, 40]	//  "c"
/*     25 */	mov	z1.d, z7.d
/*     25 */	mov	z12.d, z5.d
/*     25 */	ext	z1.b, z1.b, z7.b, 16
/*     25 */	fadd	z3.d, z3.d, z0.d
/*     25 */	mov	z0.d, z9.d
/*     25 */	ext	z12.b, z12.b, z5.b, 32
/*     25 */	ext	z0.b, z0.b, z9.b, 32
/*     25 */	fadd	z7.d, z7.d, z1.d
/*     24 */	fmad	z6.d, p1/m, z2.d, z15.d
/*     25 */	fadd	z5.d, z5.d, z12.d
/*     25 */	mov	z12.d, z3.d
/*     25 */	fadd	z9.d, z9.d, z0.d
/*     25 */	ext	z12.b, z12.b, z3.b, 16
/*     25 */	mov	z1.d, z7.d
/*     25 */	mov	z0.d, z5.d
/*     25 */	ext	z1.b, z1.b, z7.b, 8
/*     25 */	fadd	z3.d, z3.d, z12.d
/*     25 */	ext	z0.b, z0.b, z5.b, 16
/*     25 */	fadd	z7.d, z7.d, z1.d
/*     25 */	mov	z1.d, z4.d
/*     25 */	fadd	z5.d, z5.d, z0.d
/*     25 */	mov	z0.d, z9.d
/*     25 */	ext	z1.b, z1.b, z4.b, 32
/*     25 */	ext	z0.b, z0.b, z9.b, 16
/*     25 */	fadd	z4.d, z4.d, z1.d
/*     25 */	mov	z1.d, z10.d
/*     25 */	fadd	d16, d14, d7
/*     25 */	mov	z7.d, z6.d
/*     25 */	fadd	z9.d, z9.d, z0.d
/*     25 */	mov	z0.d, z5.d
/*     25 */	mov	z14.d, z8.d
/*     25 */	ext	z1.b, z1.b, z10.b, 32
/*     25 */	ext	z7.b, z7.b, z6.b, 32
/*     25 */	ext	z0.b, z0.b, z5.b, 8
/*     25 */	ext	z14.b, z14.b, z8.b, 32
/*     24 */	str	d16, [x21, 48]	//  "c"
/*     25 */	fadd	z10.d, z10.d, z1.d
/*     25 */	fadd	z6.d, z6.d, z7.d
/*     25 */	mov	z7.d, z11.d
/*     25 */	fadd	z5.d, z5.d, z0.d
/*     25 */	mov	z0.d, z9.d
/*     25 */	fadd	z8.d, z8.d, z14.d
/*     25 */	mov	z14.d, z4.d
/*     25 */	ext	z7.b, z7.b, z11.b, 32
/*     24 */	ldr	d17, [x21, 56]	//  "c"
/*     25 */	ext	z0.b, z0.b, z9.b, 8
/*     25 */	ext	z14.b, z14.b, z4.b, 16
/*     25 */	mov	z16.d, z6.d
/*     25 */	fadd	z11.d, z11.d, z7.d
/*     25 */	mov	z7.d, z3.d
/*     25 */	mov	z1.d, z8.d
/*     25 */	fadd	z9.d, z9.d, z0.d
/*     25 */	fadd	z4.d, z4.d, z14.d
/*     25 */	fadd	d0, d17, d5
/*     25 */	ext	z7.b, z7.b, z3.b, 8
/*     25 */	ext	z16.b, z16.b, z6.b, 16
/*     25 */	ext	z1.b, z1.b, z8.b, 16
/*     25 */	ld1d	z5.d, p1/z, [x8, z13.d, lsl #3]	//  "b"
/*     25 */	mov	z12.d, z4.d
/*     25 */	fadd	z3.d, z3.d, z7.d
/*     25 */	fadd	z6.d, z6.d, z16.d
/*     24 */	str	d0, [x21, 56]	//  "c"
/*     25 */	fadd	z8.d, z8.d, z1.d
/*     25 */	mov	z1.d, z10.d
/*     24 */	ldr	d0, [x21, 64]	//  "c"
/*     25 */	ld1d	z7.d, p1/z, [x11, z13.d, lsl #3]	//  "b"
/*     25 */	ext	z12.b, z12.b, z4.b, 8
/*     25 */	ext	z1.b, z1.b, z10.b, 16
/*     25 */	mov	z14.d, z6.d
/*     25 */	fadd	z4.d, z4.d, z12.d
/*     25 */	fadd	z10.d, z10.d, z1.d
/*     25 */	fadd	d0, d0, d3
/*     24 */	ld1d	z3.d, p1/z, [x24, 2, mul vl]	//  "a"
/*     25 */	ext	z14.b, z14.b, z6.b, 8
/*     25 */	mov	z1.d, z8.d
/*     25 */	ext	z1.b, z1.b, z8.b, 8
/*     25 */	fadd	z6.d, z6.d, z14.d
/*     24 */	str	d0, [x21, 64]	//  "c"
/*     24 */	ldr	d0, [x21, 72]	//  "c"
/*     25 */	fadd	z8.d, z8.d, z1.d
/*     25 */	mov	z1.d, z10.d
/*     24 */	fmad	z5.d, p1/m, z3.d, z15.d
/*     24 */	fmad	z7.d, p1/m, z3.d, z15.d
/*     25 */	ext	z1.b, z1.b, z10.b, 8
/*     25 */	fadd	d0, d0, d4
/*     25 */	ld1d	z4.d, p1/z, [x10, z13.d, lsl #3]	//  "b"
/*     25 */	mov	z12.d, z5.d
/*     25 */	fadd	z10.d, z10.d, z1.d
/*     25 */	ld1d	z1.d, p1/z, [x15, z13.d, lsl #3]	//  "b"
/*     25 */	ext	z12.b, z12.b, z5.b, 32
/*     24 */	str	d0, [x21, 72]	//  "c"
/*     24 */	ldr	d0, [x21, 80]	//  "c"
/*     25 */	fadd	z5.d, z5.d, z12.d
/*     25 */	fadd	d0, d0, d6
/*     25 */	ld1d	z6.d, p1/z, [x9, z13.d, lsl #3]	//  "b"
/*     24 */	fmad	z4.d, p1/m, z3.d, z15.d
/*     24 */	str	d0, [x21, 80]	//  "c"
/*     24 */	fmad	z1.d, p1/m, z2.d, z15.d
/*     24 */	ldr	d0, [x21, 88]	//  "c"
/*     25 */	mov	z2.d, z4.d
/*     25 */	ext	z2.b, z2.b, z4.b, 32
/*     25 */	fadd	d0, d0, d8
/*     25 */	ld1d	z8.d, p1/z, [x12, z13.d, lsl #3]	//  "b"
/*     24 */	fmad	z6.d, p1/m, z3.d, z15.d
/*     25 */	fadd	z4.d, z4.d, z2.d
/*     24 */	str	d0, [x21, 88]	//  "c"
/*     24 */	ldr	d0, [x21, 96]	//  "c"
/*     25 */	mov	z14.d, z6.d
/*     25 */	mov	z12.d, z4.d
/*     24 */	ldr	d16, [x21, 112]	//  "c"
/*     25 */	ext	z14.b, z14.b, z6.b, 32
/*     25 */	ext	z12.b, z12.b, z4.b, 16
/*     25 */	fadd	d0, d0, d9
/*     25 */	ld1d	z9.d, p1/z, [x13, z13.d, lsl #3]	//  "b"
/*     24 */	fmad	z8.d, p1/m, z3.d, z15.d
/*     25 */	fadd	z6.d, z6.d, z14.d
/*     25 */	mov	z14.d, z5.d
/*     25 */	fadd	z4.d, z4.d, z12.d
/*     24 */	str	d0, [x21, 96]	//  "c"
/*     24 */	ldr	d0, [x21, 104]	//  "c"
/*     25 */	ext	z14.b, z14.b, z5.b, 16
/*     25 */	mov	z12.d, z4.d
/*     25 */	fadd	z5.d, z5.d, z14.d
/*     25 */	fadd	d0, d0, d10
/*     25 */	ext	z12.b, z12.b, z4.b, 8
/*     25 */	ld1d	z10.d, p1/z, [x14, z13.d, lsl #3]	//  "b"
/*     24 */	fmad	z9.d, p1/m, z3.d, z15.d
/*     25 */	mov	z14.d, z5.d
/*     25 */	fadd	z4.d, z4.d, z12.d
/*     24 */	str	d0, [x21, 104]	//  "c"
/*     25 */	mov	z0.d, z11.d
/*     25 */	ext	z14.b, z14.b, z5.b, 8
/*     25 */	mov	z2.d, z9.d
/*     25 */	ext	z0.b, z0.b, z11.b, 16
/*     25 */	ext	z2.b, z2.b, z9.b, 32
/*     25 */	fadd	z5.d, z5.d, z14.d
/*     25 */	fadd	z11.d, z11.d, z0.d
/*     25 */	fadd	z9.d, z9.d, z2.d
/*     25 */	mov	z2.d, z6.d
/*     24 */	fmad	z10.d, p1/m, z3.d, z15.d
/*     25 */	ext	z2.b, z2.b, z6.b, 16
/*     25 */	mov	z0.d, z11.d
/*     25 */	ext	z0.b, z0.b, z11.b, 8
/*     25 */	fadd	z6.d, z6.d, z2.d
/*     25 */	mov	z2.d, z9.d
/*     25 */	ext	z2.b, z2.b, z9.b, 16
/*     25 */	fadd	z11.d, z11.d, z0.d
/*     25 */	mov	z0.d, z1.d
/*     25 */	ext	z0.b, z0.b, z1.b, 32
/*     25 */	fadd	z9.d, z9.d, z2.d
/*     25 */	mov	z2.d, z6.d
/*     25 */	ext	z2.b, z2.b, z6.b, 8
/*     25 */	fadd	z1.d, z1.d, z0.d
/*     25 */	mov	z0.d, z7.d
/*     25 */	fadd	d16, d16, d11
/*     25 */	mov	z11.d, z8.d
/*     25 */	ext	z0.b, z0.b, z7.b, 32
/*     25 */	fadd	z6.d, z6.d, z2.d
/*     25 */	mov	z2.d, z9.d
/*     25 */	ext	z11.b, z11.b, z8.b, 32
/*     25 */	ext	z2.b, z2.b, z9.b, 8
/*     25 */	fadd	z7.d, z7.d, z0.d
/*     25 */	mov	z0.d, z1.d
/*     24 */	str	d16, [x21, 112]	//  "c"
/*     25 */	fadd	z8.d, z8.d, z11.d
/*     25 */	mov	z11.d, z10.d
/*     25 */	ext	z0.b, z0.b, z1.b, 16
/*     25 */	fadd	z9.d, z9.d, z2.d
/*     25 */	ext	z11.b, z11.b, z10.b, 32
/*     24 */	ldr	d17, [x21, 120]	//  "c"
/*     25 */	ld1d	z2.d, p1/z, [x10, z13.d, lsl #3]	//  "b"
/*     25 */	fadd	z1.d, z1.d, z0.d
/*     25 */	mov	z0.d, z7.d
/*     25 */	mov	z16.d, z8.d
/*     25 */	fadd	z10.d, z10.d, z11.d
/*     25 */	ext	z0.b, z0.b, z7.b, 16
/*     25 */	ext	z16.b, z16.b, z8.b, 16
/*     25 */	fadd	z7.d, z7.d, z0.d
/*     25 */	mov	z0.d, z1.d
/*     25 */	fadd	z8.d, z8.d, z16.d
/*     25 */	mov	z11.d, z10.d
/*     25 */	ext	z0.b, z0.b, z1.b, 8
/*     25 */	ext	z11.b, z11.b, z10.b, 16
/*     25 */	mov	z16.d, z8.d
/*     25 */	fadd	z1.d, z1.d, z0.d
/*     25 */	mov	z0.d, z7.d
/*     25 */	fadd	z10.d, z10.d, z11.d
/*     25 */	ld1d	z11.d, p0/z, [x6, z13.d, lsl #3]	//  "b"
/*     25 */	ext	z16.b, z16.b, z8.b, 8
/*     25 */	ext	z0.b, z0.b, z7.b, 8
/*     25 */	fadd	z8.d, z8.d, z16.d
/*     25 */	fadd	z7.d, z7.d, z0.d
/*     25 */	mov	z0.d, z10.d
/*     25 */	fadd	d1, d17, d1
/*     25 */	ext	z0.b, z0.b, z10.b, 8
/*     24 */	str	d1, [x21, 120]	//  "c"
/*     25 */	fadd	z10.d, z10.d, z0.d
/*     24 */	ldr	d1, [x21, 128]	//  "c"
/*     25 */	ld1d	z0.d, p1/z, [x15, z13.d, lsl #3]	//  "b"
/*     25 */	fadd	d1, d1, d4
/*     25 */	ld1d	z4.d, p1/z, [x8, z13.d, lsl #3]	//  "b"
/*     25 */	add	x8, x23, x0, lsl #3
/*     24 */	str	d1, [x21, 128]	//  "c"
/*     24 */	ldr	d1, [x21, 136]	//  "c"
/*     24 */	fmad	z0.d, p1/m, z3.d, z15.d
/*     25 */	fadd	d1, d1, d5
/*     25 */	ld1d	z5.d, p1/z, [x9, z13.d, lsl #3]	//  "b"
/*     25 */	add	x9, x23, x1, lsl #3
/*     25 */	add	x1, x23, x2, lsl #3
/*     25 */	add	x2, x23, x3, lsl #3
/*     25 */	add	x3, x23, x4, lsl #3
/*     24 */	str	d1, [x21, 136]	//  "c"
/*     24 */	ldr	d1, [x21, 144]	//  "c"
/*     25 */	fadd	d1, d1, d6
/*     25 */	ld1d	z6.d, p1/z, [x11, z13.d, lsl #3]	//  "b"
/*     24 */	str	d1, [x21, 144]	//  "c"
/*     24 */	ldr	d1, [x21, 152]	//  "c"
/*     25 */	fadd	d1, d1, d7
/*     25 */	ld1d	z7.d, p1/z, [x12, z13.d, lsl #3]	//  "b"
/*     24 */	str	d1, [x21, 152]	//  "c"
/*     24 */	ldr	d1, [x21, 160]	//  "c"
/*     24 */	ldr	d12, [x21, 176]	//  "c"
/*     25 */	fadd	d1, d1, d8
/*     24 */	ld1d	z8.d, p0/z, [x24, 3, mul vl]	//  "a"
/*     25 */	fadd	d10, d12, d10
/*     24 */	str	d1, [x21, 160]	//  "c"
/*     24 */	ldr	d1, [x21, 168]	//  "c"
/*     24 */	fmad	z11.d, p0/m, z8.d, z15.d
/*     25 */	fadd	d1, d1, d9
/*     25 */	ld1d	z9.d, p0/z, [x5, z13.d, lsl #3]	//  "b"
/*     24 */	str	d1, [x21, 168]	//  "c"
/*     24 */	ld1d	z1.d, p1/z, [x24, 3, mul vl]	//  "a"
/*     24 */	str	d10, [x21, 176]	//  "c"
/*     24 */	ldr	d17, [x21, 184]	//  "c"
/*     24 */	fmad	z2.d, p1/m, z1.d, z15.d
/*     24 */	fmad	z4.d, p1/m, z1.d, z15.d
/*     24 */	fmad	z5.d, p1/m, z1.d, z15.d
/*     24 */	fmad	z6.d, p1/m, z1.d, z15.d
/*     24 */	fmad	z7.d, p1/m, z1.d, z15.d
/*     25 */	mov	z1.d, z0.d
/*     24 */	fmad	z9.d, p0/m, z8.d, z15.d
/*     25 */	ext	z1.b, z1.b, z0.b, 32
/*     25 */	mov	z3.d, z2.d
/*     25 */	mov	z10.d, z4.d
/*     25 */	mov	z12.d, z5.d
/*     25 */	mov	z14.d, z6.d
/*     25 */	mov	z16.d, z7.d
/*     25 */	ext	z3.b, z3.b, z2.b, 32
/*     25 */	fadd	z0.d, z0.d, z1.d
/*     25 */	ext	z10.b, z10.b, z4.b, 32
/*     25 */	mov	z1.d, z9.d
/*     25 */	ext	z12.b, z12.b, z5.b, 32
/*     25 */	ext	z14.b, z14.b, z6.b, 32
/*     25 */	ext	z16.b, z16.b, z7.b, 32
/*     25 */	ext	z1.b, z1.b, z9.b, 32
/*     25 */	fadd	z2.d, z2.d, z3.d
/*     25 */	mov	z3.d, z11.d
/*     25 */	fadd	z4.d, z4.d, z10.d
/*     25 */	fadd	z5.d, z5.d, z12.d
/*     25 */	mov	z10.d, z0.d
/*     25 */	fadd	z6.d, z6.d, z14.d
/*     25 */	fadd	z7.d, z7.d, z16.d
/*     25 */	ext	z3.b, z3.b, z11.b, 32
/*     25 */	fadd	z9.d, z9.d, z1.d
/*     25 */	ext	z10.b, z10.b, z0.b, 16
/*     25 */	mov	z12.d, z2.d
/*     25 */	mov	z14.d, z4.d
/*     25 */	mov	z16.d, z5.d
/*     25 */	fadd	z11.d, z11.d, z3.d
/*     25 */	mov	z18.d, z6.d
/*     25 */	mov	z1.d, z7.d
/*     25 */	fadd	z0.d, z0.d, z10.d
/*     25 */	ext	z12.b, z12.b, z2.b, 16
/*     25 */	ext	z14.b, z14.b, z4.b, 16
/*     25 */	ext	z16.b, z16.b, z5.b, 16
/*     25 */	ext	z18.b, z18.b, z6.b, 16
/*     25 */	ext	z1.b, z1.b, z7.b, 16
/*     25 */	fadd	z2.d, z2.d, z12.d
/*     25 */	fadd	z4.d, z4.d, z14.d
/*     25 */	mov	z3.d, z0.d
/*     25 */	fadd	z5.d, z5.d, z16.d
/*     25 */	fadd	z6.d, z6.d, z18.d
/*     25 */	mov	z18.d, z11.d
/*     25 */	fadd	z7.d, z7.d, z1.d
/*     25 */	mov	z1.d, z9.d
/*     25 */	ext	z3.b, z3.b, z0.b, 8
/*     25 */	ext	z18.b, z18.b, z11.b, 16
/*     25 */	mov	z10.d, z2.d
/*     25 */	mov	z12.d, z4.d
/*     25 */	mov	z14.d, z5.d
/*     25 */	mov	z16.d, z6.d
/*     25 */	fadd	z0.d, z0.d, z3.d
/*     25 */	ext	z10.b, z10.b, z2.b, 8
/*     25 */	ext	z12.b, z12.b, z4.b, 8
/*     25 */	fadd	z11.d, z11.d, z18.d
/*     25 */	ext	z14.b, z14.b, z5.b, 8
/*     25 */	ext	z16.b, z16.b, z6.b, 8
/*     25 */	ext	z1.b, z1.b, z9.b, 16
/*     25 */	ld1d	z3.d, p0/z, [x7, z13.d, lsl #3]	//  "b"
/*     25 */	fadd	z2.d, z2.d, z10.d
/*     25 */	fadd	z4.d, z4.d, z12.d
/*     25 */	fadd	z5.d, z5.d, z14.d
/*     25 */	fadd	z6.d, z6.d, z16.d
/*     25 */	fadd	z9.d, z9.d, z1.d
/*     25 */	mov	z1.d, z7.d
/*     25 */	fadd	d0, d17, d0
/*     25 */	ext	z1.b, z1.b, z7.b, 8
/*     24 */	str	d0, [x21, 184]	//  "c"
/*     24 */	ldr	d0, [x21, 192]	//  "c"
/*     25 */	fadd	z7.d, z7.d, z1.d
/*     25 */	mov	z1.d, z9.d
/*     24 */	fmad	z3.d, p0/m, z8.d, z15.d
/*     25 */	fadd	d0, d0, d2
/*     25 */	ext	z1.b, z1.b, z9.b, 8
/*     25 */	ld1d	z2.d, p0/z, [x5, z13.d, lsl #3]	//  "b"
/*     25 */	mov	z8.d, z3.d
/*     25 */	fadd	z9.d, z9.d, z1.d
/*     24 */	ld1d	z1.d, p0/z, [x24, 4, mul vl]	//  "a"
/*     24 */	str	d0, [x21, 192]	//  "c"
/*     24 */	ldr	d0, [x21, 200]	//  "c"
/*     25 */	ext	z8.b, z8.b, z3.b, 32
/*     25 */	fadd	z3.d, z3.d, z8.d
/*     25 */	fadd	d0, d0, d4
/*     25 */	ld1d	z4.d, p0/z, [x8, z13.d, lsl #3]	//  "b"
/*     24 */	fmad	z2.d, p0/m, z1.d, z15.d
/*     24 */	str	d0, [x21, 200]	//  "c"
/*     24 */	ldr	d0, [x21, 208]	//  "c"
/*     25 */	fadd	d0, d0, d5
/*     25 */	ld1d	z5.d, p0/z, [x9, z13.d, lsl #3]	//  "b"
/*     24 */	fmad	z4.d, p0/m, z1.d, z15.d
/*     24 */	str	d0, [x21, 208]	//  "c"
/*     24 */	ldr	d0, [x21, 216]	//  "c"
/*     25 */	fadd	d0, d0, d6
/*     25 */	ld1d	z6.d, p0/z, [x1, z13.d, lsl #3]	//  "b"
/*     24 */	fmad	z5.d, p0/m, z1.d, z15.d
/*     24 */	str	d0, [x21, 216]	//  "c"
/*     24 */	ldr	d0, [x21, 224]	//  "c"
/*     24 */	ldr	d10, [x21, 240]	//  "c"
/*     25 */	fadd	d0, d0, d7
/*     25 */	ld1d	z7.d, p0/z, [x2, z13.d, lsl #3]	//  "b"
/*     24 */	fmad	z6.d, p0/m, z1.d, z15.d
/*     24 */	str	d0, [x21, 224]	//  "c"
/*     24 */	ldr	d0, [x21, 232]	//  "c"
/*     25 */	fadd	d0, d0, d9
/*     25 */	ld1d	z9.d, p0/z, [x3, z13.d, lsl #3]	//  "b"
/*     24 */	fmad	z7.d, p0/m, z1.d, z15.d
/*     24 */	str	d0, [x21, 232]	//  "c"
/*     25 */	mov	z0.d, z11.d
/*     25 */	mov	z8.d, z7.d
/*     25 */	ext	z0.b, z0.b, z11.b, 8
/*     24 */	ldr	d12, [x21, 248]	//  "c"
/*     25 */	ext	z8.b, z8.b, z7.b, 32
/*     25 */	fadd	z11.d, z11.d, z0.d
/*     25 */	mov	z0.d, z2.d
/*     24 */	fmad	z9.d, p0/m, z1.d, z15.d
/*     25 */	fadd	z7.d, z7.d, z8.d
/*     25 */	ext	z0.b, z0.b, z2.b, 32
/*     25 */	fadd	z2.d, z2.d, z0.d
/*     25 */	mov	z0.d, z6.d
/*     25 */	fadd	d11, d10, d11
/*     25 */	mov	z10.d, z4.d
/*     25 */	ext	z0.b, z0.b, z6.b, 32
/*     25 */	ext	z10.b, z10.b, z4.b, 32
/*     25 */	fadd	z6.d, z6.d, z0.d
/*     25 */	mov	z0.d, z3.d
/*     24 */	str	d11, [x21, 240]	//  "c"
/*     25 */	mov	z11.d, z5.d
/*     25 */	fadd	z4.d, z4.d, z10.d
/*     25 */	mov	z10.d, z9.d
/*     25 */	ext	z0.b, z0.b, z3.b, 16
/*     25 */	ext	z11.b, z11.b, z5.b, 32
/*     25 */	ext	z10.b, z10.b, z9.b, 32
/*     25 */	fadd	z3.d, z3.d, z0.d
/*     25 */	mov	z0.d, z6.d
/*     25 */	fadd	z5.d, z5.d, z11.d
/*     25 */	mov	z8.d, z4.d
/*     25 */	fadd	z9.d, z9.d, z10.d
/*     25 */	mov	z10.d, z2.d
/*     25 */	ext	z0.b, z0.b, z6.b, 16
/*     25 */	ext	z8.b, z8.b, z4.b, 16
/*     25 */	ext	z10.b, z10.b, z2.b, 16
/*     25 */	mov	z11.d, z5.d
/*     25 */	fadd	z6.d, z6.d, z0.d
/*     25 */	mov	z0.d, z3.d
/*     25 */	fadd	z4.d, z4.d, z8.d
/*     25 */	mov	z8.d, z7.d
/*     25 */	fadd	z2.d, z2.d, z10.d
/*     25 */	mov	z10.d, z9.d
/*     25 */	ext	z11.b, z11.b, z5.b, 16
/*     25 */	ext	z0.b, z0.b, z3.b, 8
/*     25 */	ext	z8.b, z8.b, z7.b, 16
/*     25 */	ext	z10.b, z10.b, z9.b, 16
/*     25 */	fadd	z5.d, z5.d, z11.d
/*     25 */	fadd	z3.d, z3.d, z0.d
/*     25 */	mov	z0.d, z6.d
/*     25 */	fadd	z7.d, z7.d, z8.d
/*     25 */	mov	z8.d, z4.d
/*     25 */	fadd	z9.d, z9.d, z10.d
/*     25 */	mov	z10.d, z2.d
/*     25 */	ext	z0.b, z0.b, z6.b, 8
/*     25 */	ext	z8.b, z8.b, z4.b, 8
/*     25 */	ext	z10.b, z10.b, z2.b, 8
/*     25 */	mov	z11.d, z5.d
/*     25 */	fadd	z6.d, z6.d, z0.d
/*     25 */	fadd	z4.d, z4.d, z8.d
/*     25 */	mov	z8.d, z7.d
/*     25 */	fadd	z2.d, z2.d, z10.d
/*     25 */	fadd	d0, d12, d3
/*     25 */	ext	z11.b, z11.b, z5.b, 8
/*     25 */	mov	z10.d, z9.d
/*     25 */	ld1d	z3.d, p0/z, [x7, z13.d, lsl #3]	//  "b"
/*     25 */	ext	z8.b, z8.b, z7.b, 8
/*     25 */	ext	z10.b, z10.b, z9.b, 8
/*     25 */	fadd	z5.d, z5.d, z11.d
/*     24 */	str	d0, [x21, 248]	//  "c"
/*     25 */	fadd	z7.d, z7.d, z8.d
/*     24 */	ldr	d0, [x21, 256]	//  "c"
/*     25 */	ld1d	z8.d, p0/z, [x2, z13.d, lsl #3]	//  "b"
/*     25 */	fadd	z9.d, z9.d, z10.d
/*     25 */	ld1d	z10.d, p0/z, [x5, z13.d, lsl #3]	//  "b"
/*     25 */	fadd	d0, d0, d4
/*     24 */	ld1d	z4.d, p0/z, [x24, 5, mul vl]	//  "a"
/*     24 */	fmad	z3.d, p0/m, z1.d, z15.d
/*     24 */	str	d0, [x21, 256]	//  "c"
/*     24 */	ldr	d0, [x21, 264]	//  "c"
/*     24 */	fmad	z8.d, p0/m, z4.d, z15.d
/*     24 */	fmad	z10.d, p0/m, z4.d, z15.d
/*     25 */	fadd	d0, d0, d5
/*     25 */	ld1d	z5.d, p0/z, [x8, z13.d, lsl #3]	//  "b"
/*     25 */	mov	z16.d, z8.d
/*     25 */	ext	z16.b, z16.b, z8.b, 32
/*     24 */	str	d0, [x21, 264]	//  "c"
/*     24 */	ldr	d0, [x21, 272]	//  "c"
/*     25 */	fadd	z8.d, z8.d, z16.d
/*     24 */	ldr	d11, [x21, 296]	//  "c"
/*     25 */	fadd	d0, d0, d6
/*     25 */	ld1d	z6.d, p0/z, [x9, z13.d, lsl #3]	//  "b"
/*     24 */	fmad	z5.d, p0/m, z4.d, z15.d
/*     25 */	fadd	d2, d11, d2
/*     24 */	str	d0, [x21, 272]	//  "c"
/*     24 */	ldr	d0, [x21, 280]	//  "c"
/*     25 */	mov	z11.d, z5.d
/*     25 */	ext	z11.b, z11.b, z5.b, 32
/*     25 */	fadd	d0, d0, d7
/*     25 */	ld1d	z7.d, p0/z, [x1, z13.d, lsl #3]	//  "b"
/*     24 */	fmad	z6.d, p0/m, z4.d, z15.d
/*     25 */	fadd	z5.d, z5.d, z11.d
/*     24 */	str	d0, [x21, 280]	//  "c"
/*     24 */	ldr	d0, [x21, 288]	//  "c"
/*     25 */	mov	z12.d, z6.d
/*     25 */	ext	z12.b, z12.b, z6.b, 32
/*     25 */	fadd	d0, d0, d9
/*     25 */	ld1d	z9.d, p0/z, [x3, z13.d, lsl #3]	//  "b"
/*     24 */	fmad	z7.d, p0/m, z4.d, z15.d
/*     25 */	fadd	z6.d, z6.d, z12.d
/*     24 */	str	d0, [x21, 288]	//  "c"
/*     25 */	ld1d	z0.d, p0/z, [x6, z13.d, lsl #3]	//  "b"
/*     24 */	str	d2, [x21, 296]	//  "c"
/*     25 */	mov	z2.d, z3.d
/*     25 */	mov	z14.d, z7.d
/*     25 */	mov	z16.d, z6.d
/*     24 */	ldr	d17, [x21, 304]	//  "c"
/*     25 */	ext	z2.b, z2.b, z3.b, 32
/*     25 */	ext	z14.b, z14.b, z7.b, 32
/*     25 */	ext	z16.b, z16.b, z6.b, 16
/*     24 */	fmad	z9.d, p0/m, z4.d, z15.d
/*     25 */	fadd	z3.d, z3.d, z2.d
/*     25 */	fadd	z7.d, z7.d, z14.d
/*     25 */	mov	z14.d, z5.d
/*     25 */	mov	z2.d, z10.d
/*     25 */	fadd	z6.d, z6.d, z16.d
/*     25 */	ext	z14.b, z14.b, z5.b, 16
/*     25 */	ext	z2.b, z2.b, z10.b, 32
/*     24 */	fmad	z0.d, p0/m, z1.d, z15.d
/*     25 */	mov	z12.d, z3.d
/*     25 */	mov	z18.d, z7.d
/*     25 */	mov	z16.d, z6.d
/*     25 */	fadd	z5.d, z5.d, z14.d
/*     25 */	ext	z12.b, z12.b, z3.b, 16
/*     25 */	fadd	z10.d, z10.d, z2.d
/*     25 */	ext	z18.b, z18.b, z7.b, 16
/*     25 */	ext	z16.b, z16.b, z6.b, 8
/*     25 */	mov	z1.d, z0.d
/*     25 */	fadd	z3.d, z3.d, z12.d
/*     25 */	fadd	z7.d, z7.d, z18.d
/*     25 */	mov	z14.d, z5.d
/*     25 */	ext	z1.b, z1.b, z0.b, 32
/*     25 */	fadd	z6.d, z6.d, z16.d
/*     25 */	mov	z2.d, z10.d
/*     25 */	ext	z14.b, z14.b, z5.b, 8
/*     25 */	ext	z2.b, z2.b, z10.b, 16
/*     25 */	fadd	z0.d, z0.d, z1.d
/*     25 */	mov	z12.d, z3.d
/*     25 */	mov	z1.d, z9.d
/*     25 */	mov	z18.d, z7.d
/*     25 */	fadd	z5.d, z5.d, z14.d
/*     25 */	ext	z12.b, z12.b, z3.b, 8
/*     25 */	ext	z1.b, z1.b, z9.b, 32
/*     25 */	fadd	z10.d, z10.d, z2.d
/*     25 */	ext	z18.b, z18.b, z7.b, 8
/*     25 */	mov	z11.d, z0.d
/*     25 */	fadd	z3.d, z3.d, z12.d
/*     25 */	fadd	z9.d, z9.d, z1.d
/*     25 */	ext	z11.b, z11.b, z0.b, 16
/*     25 */	mov	z1.d, z8.d
/*     25 */	fadd	z7.d, z7.d, z18.d
/*     25 */	mov	z2.d, z10.d
/*     25 */	ext	z1.b, z1.b, z8.b, 16
/*     25 */	ext	z2.b, z2.b, z10.b, 8
/*     25 */	fadd	z0.d, z0.d, z11.d
/*     25 */	fadd	z8.d, z8.d, z1.d
/*     25 */	mov	z1.d, z9.d
/*     25 */	fadd	z10.d, z10.d, z2.d
/*     24 */	ld1d	z2.d, p0/z, [x24, 6, mul vl]	//  "a"
/*     25 */	mov	z11.d, z0.d
/*     25 */	ext	z1.b, z1.b, z9.b, 16
/*     25 */	ext	z11.b, z11.b, z0.b, 8
/*     25 */	fadd	z9.d, z9.d, z1.d
/*     25 */	mov	z1.d, z8.d
/*     25 */	fadd	z0.d, z0.d, z11.d
/*     25 */	ext	z1.b, z1.b, z8.b, 8
/*     25 */	fadd	z8.d, z8.d, z1.d
/*     25 */	mov	z1.d, z9.d
/*     25 */	ext	z1.b, z1.b, z9.b, 8
/*     25 */	fadd	d0, d17, d0
/*     25 */	fadd	z9.d, z9.d, z1.d
/*     25 */	ld1d	z1.d, p0/z, [x7, z13.d, lsl #3]	//  "b"
/*     24 */	str	d0, [x21, 304]	//  "c"
/*     24 */	ldr	d0, [x21, 312]	//  "c"
/*     25 */	fadd	d0, d0, d3
/*     25 */	ld1d	z3.d, p0/z, [x8, z13.d, lsl #3]	//  "b"
/*     24 */	str	d0, [x21, 312]	//  "c"
/*     24 */	fmad	z1.d, p0/m, z4.d, z15.d
/*     24 */	ldr	d0, [x21, 320]	//  "c"
/*     25 */	mov	z11.d, z1.d
/*     25 */	fadd	d0, d0, d5
/*     24 */	fmad	z3.d, p0/m, z2.d, z15.d
/*     25 */	ext	z11.b, z11.b, z1.b, 32
/*     24 */	str	d0, [x21, 320]	//  "c"
/*     24 */	ldr	d0, [x21, 328]	//  "c"
/*     25 */	fadd	z1.d, z1.d, z11.d
/*     25 */	mov	z12.d, z3.d
/*     25 */	ext	z12.b, z12.b, z3.b, 32
/*     25 */	fadd	d0, d0, d6
/*     25 */	ld1d	z6.d, p0/z, [x1, z13.d, lsl #3]	//  "b"
/*     25 */	fadd	z3.d, z3.d, z12.d
/*     24 */	str	d0, [x21, 328]	//  "c"
/*     24 */	ldr	d0, [x21, 336]	//  "c"
/*     25 */	fadd	d0, d0, d7
/*     25 */	ld1d	z7.d, p0/z, [x2, z13.d, lsl #3]	//  "b"
/*     24 */	fmad	z6.d, p0/m, z2.d, z15.d
/*     24 */	str	d0, [x21, 336]	//  "c"
/*     24 */	ldr	d0, [x21, 344]	//  "c"
/*     25 */	mov	z16.d, z6.d
/*     25 */	ext	z16.b, z16.b, z6.b, 32
/*     25 */	fadd	d0, d0, d8
/*     25 */	ld1d	z8.d, p0/z, [x3, z13.d, lsl #3]	//  "b"
/*     24 */	fmad	z7.d, p0/m, z2.d, z15.d
/*     25 */	fadd	z6.d, z6.d, z16.d
/*     25 */	mov	z16.d, z1.d
/*     24 */	str	d0, [x21, 344]	//  "c"
/*     24 */	ldr	d0, [x21, 352]	//  "c"
/*     25 */	ext	z16.b, z16.b, z1.b, 16
/*     25 */	fadd	z1.d, z1.d, z16.d
/*     25 */	fadd	d0, d0, d9
/*     25 */	ld1d	z9.d, p0/z, [x5, z13.d, lsl #3]	//  "b"
/*     24 */	fmad	z8.d, p0/m, z2.d, z15.d
/*     25 */	mov	z16.d, z1.d
/*     24 */	str	d0, [x21, 352]	//  "c"
/*     24 */	ldr	d0, [x21, 360]	//  "c"
/*     25 */	ext	z16.b, z16.b, z1.b, 8
/*     25 */	mov	z11.d, z8.d
/*     24 */	ldr	d17, [x21, 368]	//  "c"
/*     25 */	ext	z11.b, z11.b, z8.b, 32
/*     25 */	fadd	z1.d, z1.d, z16.d
/*     25 */	fadd	d5, d0, d10
/*     25 */	ld1d	z0.d, p0/z, [x6, z13.d, lsl #3]	//  "b"
/*     25 */	ld1d	z10.d, p0/z, [x6, z13.d, lsl #3]	//  "b"
/*     24 */	fmad	z9.d, p0/m, z2.d, z15.d
/*     25 */	fadd	z8.d, z8.d, z11.d
/*     25 */	mov	z11.d, z6.d
/*     24 */	str	d5, [x21, 360]	//  "c"
/*     25 */	ld1d	z5.d, p0/z, [x9, z13.d, lsl #3]	//  "b"
/*     25 */	ext	z11.b, z11.b, z6.b, 16
/*     25 */	mov	z12.d, z9.d
/*     25 */	ext	z12.b, z12.b, z9.b, 32
/*     25 */	fadd	z6.d, z6.d, z11.d
/*     25 */	mov	z11.d, z8.d
/*     24 */	fmad	z0.d, p0/m, z4.d, z15.d
/*     25 */	fadd	z9.d, z9.d, z12.d
/*     25 */	ext	z11.b, z11.b, z8.b, 16
/*     24 */	fmad	z10.d, p0/m, z2.d, z15.d
/*     25 */	fadd	z8.d, z8.d, z11.d
/*     25 */	mov	z11.d, z6.d
/*     24 */	fmad	z5.d, p0/m, z2.d, z15.d
/*     25 */	mov	z4.d, z0.d
/*     25 */	mov	z12.d, z9.d
/*     25 */	ext	z11.b, z11.b, z6.b, 8
/*     25 */	ext	z4.b, z4.b, z0.b, 32
/*     25 */	ext	z12.b, z12.b, z9.b, 16
/*     25 */	mov	z14.d, z5.d
/*     25 */	fadd	z6.d, z6.d, z11.d
/*     25 */	mov	z11.d, z8.d
/*     25 */	fadd	z0.d, z0.d, z4.d
/*     25 */	mov	z4.d, z7.d
/*     25 */	fadd	z9.d, z9.d, z12.d
/*     25 */	ext	z14.b, z14.b, z5.b, 32
/*     25 */	ext	z11.b, z11.b, z8.b, 8
/*     25 */	ext	z4.b, z4.b, z7.b, 32
/*     25 */	fadd	z5.d, z5.d, z14.d
/*     25 */	mov	z14.d, z0.d
/*     25 */	mov	z12.d, z9.d
/*     25 */	fadd	z8.d, z8.d, z11.d
/*     25 */	fadd	z7.d, z7.d, z4.d
/*     25 */	mov	z4.d, z3.d
/*     25 */	ext	z14.b, z14.b, z0.b, 16
/*     25 */	ext	z12.b, z12.b, z9.b, 8
/*     25 */	ext	z4.b, z4.b, z3.b, 16
/*     25 */	mov	z18.d, z5.d
/*     25 */	fadd	z0.d, z0.d, z14.d
/*     25 */	fadd	z9.d, z9.d, z12.d
/*     25 */	fadd	z3.d, z3.d, z4.d
/*     25 */	mov	z4.d, z7.d
/*     25 */	ext	z18.b, z18.b, z5.b, 16
/*     25 */	ext	z4.b, z4.b, z7.b, 16
/*     25 */	mov	z14.d, z0.d
/*     25 */	fadd	z5.d, z5.d, z18.d
/*     25 */	ext	z14.b, z14.b, z0.b, 8
/*     25 */	fadd	z7.d, z7.d, z4.d
/*     25 */	mov	z4.d, z3.d
/*     25 */	ext	z4.b, z4.b, z3.b, 8
/*     25 */	mov	z18.d, z5.d
/*     25 */	fadd	z0.d, z0.d, z14.d
/*     25 */	ext	z18.b, z18.b, z5.b, 8
/*     25 */	fadd	z3.d, z3.d, z4.d
/*     25 */	mov	z4.d, z7.d
/*     25 */	fadd	z5.d, z5.d, z18.d
/*     25 */	ext	z4.b, z4.b, z7.b, 8
/*     25 */	fadd	d0, d17, d0
/*     25 */	fadd	z7.d, z7.d, z4.d
/*     24 */	str	d0, [x21, 368]	//  "c"
/*     24 */	ldr	d0, [x21, 376]	//  "c"
/*     25 */	fadd	d0, d0, d1
/*     24 */	str	d0, [x21, 376]	//  "c"
/*     24 */	ldr	d0, [x21, 384]	//  "c"
/*     25 */	fadd	d0, d0, d3
/*     24 */	str	d0, [x21, 384]	//  "c"
/*     24 */	ldr	d0, [x21, 392]	//  "c"
/*     25 */	fadd	d0, d0, d5
/*     24 */	str	d0, [x21, 392]	//  "c"
/*     24 */	ldr	d0, [x21, 400]	//  "c"
/*     25 */	fadd	d0, d0, d6
/*     24 */	str	d0, [x21, 400]	//  "c"
/*     24 */	ldr	d0, [x21, 408]	//  "c"
/*     25 */	fadd	d0, d0, d7
/*     24 */	str	d0, [x21, 408]	//  "c"
/*     24 */	ldr	d0, [x21, 416]	//  "c"
/*     25 */	fadd	d0, d0, d8
/*     24 */	str	d0, [x21, 416]	//  "c"
/*     24 */	ldr	d0, [x21, 424]	//  "c"
/*     25 */	fadd	d0, d0, d9
/*     24 */	str	d0, [x21, 424]	//  "c"
/*     24 */	ld1d	z3.d, p0/z, [x24, 7, mul vl]	//  "a"
/*     25 */	mov	x0, 6
/*     25 */	mov	z0.d, z10.d
/*     25 */	ld1d	z1.d, p0/z, [x7, z13.d, lsl #3]	//  "b"
/*     24 */	ldr	d14, [x21, 432]	//  "c"
/*     25 */	add	x0, x23, x0, lsl #3
/*     25 */	ld1d	z7.d, p0/z, [x2, z13.d, lsl #3]	//  "b"
/*     25 */	ld1d	z4.d, p0/z, [x8, z13.d, lsl #3]	//  "b"
/*     25 */	ext	z0.b, z0.b, z10.b, 32
/*     25 */	ld1d	z9.d, p0/z, [x5, z13.d, lsl #3]	//  "b"
/*     25 */	ld1d	z5.d, p0/z, [x9, z13.d, lsl #3]	//  "b"
/*     25 */	ld1d	z6.d, p0/z, [x1, z13.d, lsl #3]	//  "b"
/*     25 */	ld1d	z8.d, p0/z, [x3, z13.d, lsl #3]	//  "b"
/*     25 */	ld1d	z11.d, p0/z, [x0, z13.d, lsl #3]	//  "b"
/*     25 */	mov	x0, 7
/*     25 */	fadd	z10.d, z10.d, z0.d
/*     25 */	add	x0, x23, x0, lsl #3
/*     25 */	mov	z0.d, z10.d
/*     24 */	fmad	z1.d, p0/m, z2.d, z15.d
/*     24 */	fmad	z7.d, p0/m, z3.d, z15.d
/*     25 */	ext	z0.b, z0.b, z10.b, 16
/*     24 */	fmad	z4.d, p0/m, z3.d, z15.d
/*     24 */	fmad	z9.d, p0/m, z3.d, z15.d
/*     24 */	fmad	z5.d, p0/m, z3.d, z15.d
/*     24 */	fmad	z6.d, p0/m, z3.d, z15.d
/*     24 */	fmad	z8.d, p0/m, z3.d, z15.d
/*     25 */	fadd	z10.d, z10.d, z0.d
/*     25 */	mov	z0.d, z1.d
/*     24 */	fmad	z11.d, p0/m, z3.d, z15.d
/*     25 */	mov	z12.d, z4.d
/*     25 */	ext	z0.b, z0.b, z1.b, 32
/*     25 */	mov	z16.d, z5.d
/*     25 */	ext	z12.b, z12.b, z4.b, 32
/*     25 */	mov	z17.d, z6.d
/*     25 */	mov	z2.d, z10.d
/*     25 */	ext	z16.b, z16.b, z5.b, 32
/*     25 */	fadd	z1.d, z1.d, z0.d
/*     25 */	mov	z0.d, z7.d
/*     25 */	ext	z17.b, z17.b, z6.b, 32
/*     25 */	ext	z2.b, z2.b, z10.b, 8
/*     25 */	fadd	z4.d, z4.d, z12.d
/*     25 */	mov	z12.d, z9.d
/*     25 */	ext	z0.b, z0.b, z7.b, 32
/*     25 */	fadd	z5.d, z5.d, z16.d
/*     25 */	fadd	z6.d, z6.d, z17.d
/*     25 */	ext	z12.b, z12.b, z9.b, 32
/*     25 */	fadd	z10.d, z10.d, z2.d
/*     25 */	mov	z2.d, z8.d
/*     25 */	fadd	z7.d, z7.d, z0.d
/*     25 */	mov	z0.d, z1.d
/*     25 */	mov	z16.d, z4.d
/*     25 */	ext	z2.b, z2.b, z8.b, 32
/*     25 */	mov	z17.d, z5.d
/*     25 */	fadd	z9.d, z9.d, z12.d
/*     25 */	ext	z0.b, z0.b, z1.b, 16
/*     25 */	ext	z16.b, z16.b, z4.b, 16
/*     25 */	ext	z17.b, z17.b, z5.b, 16
/*     25 */	fadd	z8.d, z8.d, z2.d
/*     25 */	mov	z2.d, z6.d
/*     25 */	fadd	z1.d, z1.d, z0.d
/*     25 */	mov	z0.d, z7.d
/*     25 */	fadd	d10, d14, d10
/*     25 */	fadd	z4.d, z4.d, z16.d
/*     25 */	ext	z2.b, z2.b, z6.b, 16
/*     25 */	fadd	z5.d, z5.d, z17.d
/*     25 */	ext	z0.b, z0.b, z7.b, 16
/*     25 */	fadd	z6.d, z6.d, z2.d
/*     25 */	mov	z2.d, z8.d
/*     24 */	str	d10, [x21, 432]	//  "c"
/*     25 */	mov	z10.d, z9.d
/*     25 */	fadd	z7.d, z7.d, z0.d
/*     25 */	mov	z0.d, z1.d
/*     25 */	mov	z12.d, z4.d
/*     25 */	mov	z14.d, z5.d
/*     25 */	ext	z2.b, z2.b, z8.b, 16
/*     25 */	ext	z10.b, z10.b, z9.b, 16
/*     25 */	ext	z0.b, z0.b, z1.b, 8
/*     25 */	ext	z12.b, z12.b, z4.b, 8
/*     24 */	ldr	d16, [x21, 440]	//  "c"
/*     25 */	ext	z14.b, z14.b, z5.b, 8
/*     25 */	fadd	z8.d, z8.d, z2.d
/*     25 */	mov	z2.d, z6.d
/*     25 */	fadd	z9.d, z9.d, z10.d
/*     25 */	fadd	z1.d, z1.d, z0.d
/*     25 */	mov	z0.d, z7.d
/*     25 */	fadd	z4.d, z4.d, z12.d
/*     25 */	fadd	z5.d, z5.d, z14.d
/*     25 */	ext	z2.b, z2.b, z6.b, 8
/*     25 */	ext	z0.b, z0.b, z7.b, 8
/*     25 */	fadd	z6.d, z6.d, z2.d
/*     25 */	fadd	z7.d, z7.d, z0.d
/*     25 */	mov	z0.d, z9.d
/*     25 */	mov	z2.d, z8.d
/*     25 */	fadd	d1, d16, d1
/*     25 */	ext	z0.b, z0.b, z9.b, 8
/*     25 */	ext	z2.b, z2.b, z8.b, 8
/*     25 */	fadd	z9.d, z9.d, z0.d
/*     24 */	ldr	d0, [x21, 448]	//  "c"
/*     25 */	fadd	z8.d, z8.d, z2.d
/*     24 */	str	d1, [x21, 440]	//  "c"
/*     25 */	ld1d	z1.d, p0/z, [x0, z13.d, lsl #3]	//  "b"
/*     51 */	mov	x0, x22
/*     25 */	fadd	d0, d0, d4
/*     24 */	str	d0, [x21, 448]	//  "c"
/*     24 */	ldr	d0, [x21, 456]	//  "c"
/*     24 */	fmad	z1.d, p0/m, z3.d, z15.d
/*     25 */	fadd	d0, d0, d5
/*     25 */	mov	z2.d, z1.d
/*     24 */	str	d0, [x21, 456]	//  "c"
/*     24 */	ldr	d0, [x21, 464]	//  "c"
/*     25 */	ext	z2.b, z2.b, z1.b, 32
/*     25 */	fadd	z1.d, z1.d, z2.d
/*     25 */	fadd	d0, d6, d0
/*     24 */	str	d0, [x21, 464]	//  "c"
/*     24 */	ldr	d0, [x21, 472]	//  "c"
/*     24 */	ldr	d4, [x21, 496]	//  "c"
/*     25 */	fadd	d0, d0, d7
/*     24 */	str	d0, [x21, 472]	//  "c"
/*     24 */	ldr	d0, [x21, 480]	//  "c"
/*     25 */	fadd	d0, d0, d8
/*     24 */	str	d0, [x21, 480]	//  "c"
/*     24 */	ldr	d0, [x21, 488]	//  "c"
/*     25 */	fadd	d0, d0, d9
/*     24 */	str	d0, [x21, 488]	//  "c"
/*     25 */	mov	z0.d, z11.d
/*     25 */	ext	z0.b, z0.b, z11.b, 32
/*     25 */	fadd	z11.d, z11.d, z0.d
/*     25 */	mov	z0.d, z11.d
/*     25 */	ext	z0.b, z0.b, z11.b, 16
/*     25 */	fadd	z11.d, z11.d, z0.d
/*     25 */	mov	z0.d, z11.d
/*     25 */	ext	z0.b, z0.b, z11.b, 8
/*     25 */	fadd	z11.d, z11.d, z0.d
/*     25 */	mov	z0.d, z1.d
/*     25 */	ext	z0.b, z0.b, z1.b, 16
/*     25 */	fadd	z1.d, z1.d, z0.d
/*     25 */	fadd	d2, d4, d11
/*     25 */	mov	z0.d, z1.d
/*     24 */	str	d2, [x21, 496]	//  "c"
/*     24 */	ldr	d2, [x21, 504]	//  "c"
/*     25 */	ext	z0.b, z0.b, z1.b, 8
/*     25 */	fadd	z1.d, z1.d, z0.d
/*     25 */	fadd	d0, d1, d2
/*     24 */	str	d0, [x21, 504]	//  "c"
/*     51 */	bl	printf
/*     35 */	ldr	d0, [x21]	//  "c"
/*     35 */	mov	x0, x20
/*     35 */	bl	printf
/*     35 */	ldr	d0, [x21, 8]	//  "c"
/*     35 */	mov	x0, x20
/*     35 */	bl	printf
/*     35 */	ldr	d0, [x21, 16]	//  "c"
/*     35 */	mov	x0, x20
/*     35 */	bl	printf
/*     35 */	ldr	d0, [x21, 24]	//  "c"
/*     35 */	mov	x0, x20
/*     35 */	bl	printf
/*     35 */	ldr	d0, [x21, 32]	//  "c"
/*     35 */	mov	x0, x20
/*     35 */	bl	printf
/*     35 */	ldr	d0, [x21, 40]	//  "c"
/*     35 */	mov	x0, x20
/*     35 */	bl	printf
/*     35 */	ldr	d0, [x21, 48]	//  "c"
/*     35 */	mov	x0, x20
/*     35 */	bl	printf
/*     35 */	ldr	d0, [x21, 56]	//  "c"
/*     35 */	mov	x0, x20
/*     35 */	bl	printf
/*     37 */	mov	x0, x25
/*     37 */	bl	printf
/*     35 */	ldr	d0, [x21, 64]	//  "c"
/*     35 */	mov	x0, x20
/*     35 */	bl	printf
/*     35 */	ldr	d0, [x21, 72]	//  "c"
/*     35 */	mov	x0, x20
/*     35 */	bl	printf
/*     35 */	ldr	d0, [x21, 80]	//  "c"
/*     35 */	mov	x0, x20
/*     35 */	bl	printf
/*     35 */	ldr	d0, [x21, 88]	//  "c"
/*     35 */	mov	x0, x20
/*     35 */	bl	printf
/*     35 */	ldr	d0, [x21, 96]	//  "c"
/*     35 */	mov	x0, x20
/*     35 */	bl	printf
/*     35 */	ldr	d0, [x21, 104]	//  "c"
/*     35 */	mov	x0, x20
/*     35 */	bl	printf
/*     35 */	ldr	d0, [x21, 112]	//  "c"
/*     35 */	mov	x0, x20
/*     35 */	bl	printf
/*     35 */	ldr	d0, [x21, 120]	//  "c"
/*     35 */	mov	x0, x20
/*     35 */	bl	printf
/*     37 */	mov	x0, x25
/*     37 */	bl	printf
/*     35 */	ldr	d0, [x21, 128]	//  "c"
/*     35 */	mov	x0, x20
/*     35 */	bl	printf
/*     35 */	ldr	d0, [x21, 136]	//  "c"
/*     35 */	mov	x0, x20
/*     35 */	bl	printf
/*     35 */	ldr	d0, [x21, 144]	//  "c"
/*     35 */	mov	x0, x20
/*     35 */	bl	printf
/*     35 */	ldr	d0, [x21, 152]	//  "c"
/*     35 */	mov	x0, x20
/*     35 */	bl	printf
/*     35 */	ldr	d0, [x21, 160]	//  "c"
/*     35 */	mov	x0, x20
/*     35 */	bl	printf
/*     35 */	ldr	d0, [x21, 168]	//  "c"
/*     35 */	mov	x0, x20
/*     35 */	bl	printf
/*     35 */	ldr	d0, [x21, 176]	//  "c"
/*     35 */	mov	x0, x20
/*     35 */	bl	printf
/*     35 */	ldr	d0, [x21, 184]	//  "c"
/*     35 */	mov	x0, x20
/*     35 */	bl	printf
/*     37 */	mov	x0, x25
/*     37 */	bl	printf
/*     35 */	ldr	d0, [x21, 192]	//  "c"
/*     35 */	mov	x0, x20
/*     35 */	bl	printf
/*     35 */	ldr	d0, [x21, 200]	//  "c"
/*     35 */	mov	x0, x20
/*     35 */	bl	printf
/*     35 */	ldr	d0, [x21, 208]	//  "c"
/*     35 */	mov	x0, x20
/*     35 */	bl	printf
/*     35 */	ldr	d0, [x21, 216]	//  "c"
/*     35 */	mov	x0, x20
/*     35 */	bl	printf
/*     35 */	ldr	d0, [x21, 224]	//  "c"
/*     35 */	mov	x0, x20
/*     35 */	bl	printf
/*     35 */	ldr	d0, [x21, 232]	//  "c"
/*     35 */	mov	x0, x20
/*     35 */	bl	printf
/*     35 */	ldr	d0, [x21, 240]	//  "c"
/*     35 */	mov	x0, x20
/*     35 */	bl	printf
/*     35 */	ldr	d0, [x21, 248]	//  "c"
/*     35 */	mov	x0, x20
/*     35 */	bl	printf
/*     37 */	mov	x0, x25
/*     37 */	bl	printf
/*     35 */	ldr	d0, [x21, 256]	//  "c"
/*     35 */	mov	x0, x20
/*     35 */	bl	printf
/*     35 */	ldr	d0, [x21, 264]	//  "c"
/*     35 */	mov	x0, x20
/*     35 */	bl	printf
/*     35 */	ldr	d0, [x21, 272]	//  "c"
/*     35 */	mov	x0, x20
/*     35 */	bl	printf
/*     35 */	ldr	d0, [x21, 280]	//  "c"
/*     35 */	mov	x0, x20
/*     35 */	bl	printf
/*     35 */	ldr	d0, [x21, 288]	//  "c"
/*     35 */	mov	x0, x20
/*     35 */	bl	printf
/*     35 */	ldr	d0, [x21, 296]	//  "c"
/*     35 */	mov	x0, x20
/*     35 */	bl	printf
/*     35 */	ldr	d0, [x21, 304]	//  "c"
/*     35 */	mov	x0, x20
/*     35 */	bl	printf
/*     35 */	ldr	d0, [x21, 312]	//  "c"
/*     35 */	mov	x0, x20
/*     35 */	bl	printf
/*     37 */	mov	x0, x25
/*     37 */	bl	printf
/*     35 */	ldr	d0, [x21, 320]	//  "c"
/*     35 */	mov	x0, x20
/*     35 */	bl	printf
/*     35 */	ldr	d0, [x21, 328]	//  "c"
/*     35 */	mov	x0, x20
/*     35 */	bl	printf
/*     35 */	ldr	d0, [x21, 336]	//  "c"
/*     35 */	mov	x0, x20
/*     35 */	bl	printf
/*     35 */	ldr	d0, [x21, 344]	//  "c"
/*     35 */	mov	x0, x20
/*     35 */	bl	printf
/*     35 */	ldr	d0, [x21, 352]	//  "c"
/*     35 */	mov	x0, x20
/*     35 */	bl	printf
/*     35 */	ldr	d0, [x21, 360]	//  "c"
/*     35 */	mov	x0, x20
/*     35 */	bl	printf
/*     35 */	ldr	d0, [x21, 368]	//  "c"
/*     35 */	mov	x0, x20
/*     35 */	bl	printf
/*     35 */	ldr	d0, [x21, 376]	//  "c"
/*     35 */	mov	x0, x20
/*     35 */	bl	printf
/*     37 */	mov	x0, x25
/*     37 */	bl	printf
/*     35 */	ldr	d0, [x21, 384]	//  "c"
/*     35 */	mov	x0, x20
/*     35 */	bl	printf
/*     35 */	ldr	d0, [x21, 392]	//  "c"
/*     35 */	mov	x0, x20
/*     35 */	bl	printf
/*     35 */	ldr	d0, [x21, 400]	//  "c"
/*     35 */	mov	x0, x20
/*     35 */	bl	printf
/*     35 */	ldr	d0, [x21, 408]	//  "c"
/*     35 */	mov	x0, x20
/*     35 */	bl	printf
/*     35 */	ldr	d0, [x21, 416]	//  "c"
/*     35 */	mov	x0, x20
/*     35 */	bl	printf
/*     35 */	ldr	d0, [x21, 424]	//  "c"
/*     35 */	mov	x0, x20
/*     35 */	bl	printf
/*     35 */	ldr	d0, [x21, 432]	//  "c"
/*     35 */	mov	x0, x20
/*     35 */	bl	printf
/*     35 */	ldr	d0, [x21, 440]	//  "c"
/*     35 */	mov	x0, x20
/*     35 */	bl	printf
/*     37 */	mov	x0, x25
/*     37 */	bl	printf
/*     35 */	ldr	d0, [x21, 448]	//  "c"
/*     35 */	mov	x0, x20
/*     35 */	bl	printf
/*     35 */	ldr	d0, [x21, 456]	//  "c"
/*     35 */	mov	x0, x20
/*     35 */	bl	printf
/*     35 */	ldr	d0, [x21, 464]	//  "c"
/*     35 */	mov	x0, x20
/*     35 */	bl	printf
/*     35 */	ldr	d0, [x21, 472]	//  "c"
/*     35 */	mov	x0, x20
/*     35 */	bl	printf
/*     35 */	ldr	d0, [x21, 480]	//  "c"
/*     35 */	mov	x0, x20
/*     35 */	bl	printf
/*     35 */	ldr	d0, [x21, 488]	//  "c"
/*     35 */	mov	x0, x20
/*     35 */	bl	printf
/*     35 */	ldr	d0, [x21, 496]	//  "c"
/*     35 */	mov	x0, x20
/*     35 */	bl	printf
/*     35 */	ldr	d0, [x21, 504]	//  "c"
/*     35 */	mov	x0, x20
/*     35 */	bl	printf
/*     37 */	mov	x0, x25
/*     37 */	bl	printf
/*     52 */	mov	w0, 0
/*    ??? */	add	sp, x29, 0
/*    ??? */	ldp	x19, x20, [sp, 16]	//  (*)
/*    ??? */	ldp	x21, x22, [sp, 32]	//  (*)
/*    ??? */	ldp	x23, x24, [sp, 48]	//  (*)
/*    ??? */	ldr	x25, [sp, 64]	//  (*)
/*    ??? */	ldp	d8, d9, [sp, 72]	//  (*)
/*    ??? */	ldp	d10, d11, [sp, 88]	//  (*)
/*    ??? */	ldp	d12, d13, [sp, 104]	//  (*)
/*    ??? */	ldp	d14, d15, [sp, 120]	//  (*)
/*    ??? */	ldp	x29, x30, [sp], 144	//  (*)
/*     53 */	ret	
	.size	main, .-main
	.section	.rodata
	.align	3
.LR.1:
	.ascii "c=\012\000"
	.type	.LR.1, %object
	.size	.LR.1,.-.LR.1
	.section	.rodata
	.align	3
.LR.2:
	.ascii "b=\012\000"
	.type	.LR.2, %object
	.size	.LR.2,.-.LR.2
	.section	.rodata
	.align	3
.LR.3:
	.ascii "a=\012\000"
	.type	.LR.3, %object
	.size	.LR.3,.-.LR.3
	.section	.rodata
	.align	3
.LR.4:
	.ascii "\012\000"
	.type	.LR.4, %object
	.size	.LR.4,.-.LR.4
	.section	.rodata
	.align	3
.LR.5:
	.ascii "%7.1f\040\000"
	.type	.LR.5, %object
	.size	.LR.5,.-.LR.5
	.comm	c,512,8
	.comm	b,512,8
	.comm	a,512,8
	.section	.note.GNU-stack,"",%progbits
