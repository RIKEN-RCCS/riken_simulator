	.ident	"$Options: Fujitsu C/C++ Compiler Version 1.2.0 P-id: Alpha-20170413 (Apr 13 2017 12:05:16) --preinclude /opt/FJTComp5/bin/../lib/c99.pre --gcc --c99 -D__FUJITSU -Dunix -D__aarch64__ -D__unix -D__fcc_version__=0x700 -D__fcc_version=700 -D__USER_LABEL_PREFIX__= -D__OPTIMIZE__ -D__ARM_ARCH=8 -D__FP_FAST_FMA -D__ELF__ -D__unix__ -D__linux__ -D__linux -Asystem(unix) -Dlinux -D__LIBC_6B -D__LP64__ -D_LP64 -I../../include -DTIMER -v --K=ocl --zmode=64 --sys_include=/opt/FJTComp5/bin/../include --sys_include=/opt/ARM/aarch64-linux-gnu/sysroot-linaro-eglibc-gcc4.9-2014.11-aarch64-linux-gnu/usr/include --K=opt gather_32_scaled.c -- -ncmdname=fccpx -nspopt=\"-Kfast,ocl,swp_strong,loop_nofusion,nounroll -K__control=0x2 -W0,-zie=Xdiv-fx100 -W0,-zie=Xsqrt-fx100 -W0,-zswpl=insert-move-into-prolog -I../../include -Nlst=t -Koptmsg=2 -DTIMER -V -Nlst=t -Koptmsg=2 -S -o gather_32_scaled.s\" -Nnoline -zobe=no-static-clump -O3 -x- -Komitfp,mfunc,rdconv,eval,fp_relaxed,ns,fast_matmul,fp_contract,ilfunc,prefetch_conditional,ocl,swp_strong,loop_nofusion,nounroll -K__control=0x2 -zie=Xdiv-fx100 -zie=Xsqrt-fx100 -zswpl=insert-move-into-prolog -Nlst=t -Koptmsg=2 -V -Nlst=t -Koptmsg=2 -zsta=m -zsrc=gather_32_scaled.c gather_32_scaled.s $"
	.file	"gather_32_scaled.c"
	.ident	"$Compiler: Fujitsu C/C++ Compiler Version 1.2.0 P-id: Alpha-20170413 (Apr 13 2017 12:05:16) gather_32_scaled.c main $"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
/*      5 */	sub	sp, sp, 48
/*    ??? */	stp	x19, x20, [sp, -512]!	//  (*)
/*    ??? */	stp	x21, x22, [sp, 16]	//  (*)
/*    ??? */	str	x30, [sp, 32]	//  (*)
/*    ??? */	str	d8, [sp, 40]	//  (*)
/*     12 */	ptrue	p0.s, VL8
/*     13 */	mov	w1, 0
/*     14 */	fmov	z8.s, 0.000000e+00
/*     12 */	index	z0.s, w1, 1
/*     15 */	add	w0, w1, 8
/*     15 */	add	w3, w1, 16
/*     14 */	add	x22, sp, 304
/*     12 */	index	z1.s, w0, 1
/*     12 */	index	z2.s, w3, 1
/*     15 */	add	w3, w1, 24
/*     13 */	add	x2, sp, 48
/*     11 */	mov	w4, 8
/*     12 */	index	z6.s, w3, 1
/*     13 */	mov	x0, 0
/*     13 */	scvtf	z0.s, p0/m, z0.s
/*     13 */	scvtf	z7.s, p0/m, z1.s
/*     15 */	add	w1, w3, 8
/*     12 */	index	z1.s, w1, 1
/*     14 */	st1w	z8.s, p0, [x22, x0, lsl #2]	//  "B"
/*     13 */	scvtf	z5.s, p0/m, z2.s
/*     13 */	st1w	z0.s, p0, [x2, x0, lsl #2]	//  "A"
/*     15 */	add	x1, x0, 8
/*     15 */	add	w5, w3, 16
/*     12 */	index	z4.s, w5, 1
/*     14 */	st1w	z8.s, p0, [x22, x1, lsl #2]	//  "B"
/*     13 */	scvtf	z3.s, p0/m, z6.s
/*     13 */	st1w	z7.s, p0, [x2, x1, lsl #2]	//  "A"
/*     15 */	add	x5, x0, 16
/*     15 */	add	w1, w3, 24
/*     12 */	index	z2.s, w1, 1
/*     14 */	st1w	z8.s, p0, [x22, x5, lsl #2]	//  "B"
/*     13 */	scvtf	z0.s, p0/m, z1.s
/*     13 */	st1w	z5.s, p0, [x2, x5, lsl #2]	//  "A"
/*     15 */	add	x1, x0, 24
/*     15 */	add	w3, w3, 32
/*     12 */	index	z6.s, w3, 1
/*     14 */	st1w	z8.s, p0, [x22, x1, lsl #2]	//  "B"
/*     13 */	scvtf	z7.s, p0/m, z4.s
/*     13 */	st1w	z3.s, p0, [x2, x1, lsl #2]	//  "A"
/*     15 */	add	x0, x0, 32
/*     16 */	sub	w4, w4, 4
/*     14 */	st1w	z8.s, p0, [x22, x0, lsl #2]	//  "B"
/*     13 */	scvtf	z1.s, p0/m, z2.s
/*     13 */	st1w	z0.s, p0, [x2, x0, lsl #2]	//  "A"
/*     15 */	add	x1, x0, 8
/*     14 */	st1w	z8.s, p0, [x22, x1, lsl #2]	//  "B"
/*     13 */	scvtf	z0.s, p0/m, z6.s
/*     13 */	st1w	z7.s, p0, [x2, x1, lsl #2]	//  "A"
/*     15 */	add	x1, x0, 16
/*     14 */	st1w	z8.s, p0, [x22, x1, lsl #2]	//  "B"
/*     13 */	st1w	z1.s, p0, [x2, x1, lsl #2]	//  "A"
/*     15 */	add	x0, x0, 24
/*     14 */	st1w	z8.s, p0, [x22, x0, lsl #2]	//  "B"
/*     13 */	st1w	z0.s, p0, [x2, x0, lsl #2]	//  "A"
/*     18 */	ptrue	p0.s, VL8
/*     19 */	index	z0.s, 0, 8
/*     19 */	mov	w0, 0
/*     19 */	add	x1, x2, w0, sxtw #2
/*     19 */	ld1w	z1.s, p0/z, [x1, z0.s, sxtw 2]	//  "A"
/*     19 */	add	x0, x22, w0, sxtw #2
/*     19 */	st1w	z1.s, p0, [x0, z0.s, sxtw 2]	//  "B"
/*     22 */	mov	w20, 8
/*     23 */	mov	x21, 0
/*     23 */	adrp	x0, .LR.1
/*     23 */	add	x19, x0, :lo12:.LR.1
.L100:					// :entr:term
/*     23 */	ldr	s0, [x22, x21, lsl #2]	//  "B"
/*     23 */	mov	x0, x19
/*     23 */	fcvt	d0, s0
/*     23 */	bl	printf
/*     24 */	add	x21, x21, 8
/*     24 */	subs	w20, w20, 1
/*     24 */	bne	.L100
/*     26 */	mov	w0, 0
/*    ??? */	ldp	x21, x22, [sp, 16]	//  (*)
/*    ??? */	ldr	d8, [sp, 40]	//  (*)
/*    ??? */	ldr	x30, [sp, 32]	//  (*)
/*    ??? */	ldp	x19, x20, [sp], 504	//  (*)
/*     27 */	add	sp, sp, 56
/*     27 */	ret	
	.size	main, .-main
	.section	.rodata
	.align	3
.LR.1:
	.ascii "%f\012\000"
	.type	.LR.1, %object
	.size	.LR.1,.-.LR.1
	.section	.note.GNU-stack,"",%progbits
