	.ident	"$Options: Fujitsu C/C++ Compiler Version 1.2.0 P-id: Alpha-20170330 (Mar 24 2017 17:23:55) --preinclude /opt/FJTComp4/bin/../lib/c99.pre --gcc --c99 -D__FUJITSU -Dunix -D__aarch64__ -D__unix -D_OPENMP=201107 -D__fcc_version__=0x700 -D__fcc_version=700 -D__USER_LABEL_PREFIX__= -D__OPTIMIZE__ -D__ARM_ARCH=8 -D__FP_FAST_FMA -D__ELF__ -D__unix__ -D__linux__ -D__linux -Asystem(unix) -Dlinux -D__LIBC_6B -D__LP64__ -D_LP64 --K=omp -I../../include --K=noocl -D_REENTRANT -D__MT__ --zmode=64 --sys_include=/opt/FJTComp4/bin/../include --sys_include=/opt/ARM/aarch64-linux-gnu/sysroot-linaro-eglibc-gcc4.9-2014.11-aarch64-linux-gnu/usr/include --K=opt triad-mem-1stream.c -- -ncmdname=fccpx -nspopt=\"-Kfast,openmp -Nlst=t -Koptmsg=2 -I../../include -S -o triad-mem-1stream.s\" -Nnoline -zobe=no-static-clump -O3 -x- -Komitfp,mfunc,rdconv,eval,fp_relaxed,ns,fast_matmul,fp_contract,ilfunc,prefetch_conditional,openmp,threadsafe -Nlst=t -Koptmsg=2 -zsta=am -zsrc=triad-mem-1stream.c triad-mem-1stream.s $"
	.file	"triad-mem-1stream.c"
	.ident	"$Compiler: Fujitsu C/C++ Compiler Version 1.2.0 P-id: Alpha-20170330 (Mar 24 2017 17:23:55) triad-mem-1stream.c get_dtime $"
	.text
	.align	2
	.global	get_dtime
	.type	get_dtime, %function
get_dtime:
/*    ??? */	stp	x19, x30, [sp, -32]!	//  (*)
/*     16 */	add	x19, sp, 16
/*     16 */	mov	w0, 1
/*     16 */	mov	x1, x19
/*     16 */	bl	clock_gettime
/*     17 */	ldr	x0, [x19]	//  "ts"
/*     17 */	ldr	x1, [x19, 8]	//  "ts"
/*     17 */	ldr	d2, .LC1
/*     17 */	scvtf	d0, x0
/*     17 */	scvtf	d1, x1
/*     17 */	fmadd	d0, d1, d2, d0
/*    ??? */	ldp	x19, x30, [sp], 32	//  (*)
/*     18 */	ret	
	.size	get_dtime, .-get_dtime
	.align	3
.LC1:
	.word	0xe826d695,0x3e112e0b
	.ident	"$Compiler: Fujitsu C/C++ Compiler Version 1.2.0 P-id: Alpha-20170330 (Mar 24 2017 17:23:55) triad-mem-1stream.c main $"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
/*    ??? */	stp	x19, x20, [sp, -96]!	//  (*)
/*    ??? */	stp	x21, x22, [sp, 16]	//  (*)
/*    ??? */	str	x30, [sp, 32]	//  (*)
/*    ??? */	str	d8, [sp, 40]	//  (*)
/*     18 */	add	x19, sp, 56
/*     18 */	mov	x20, 0
/*     18 */	adrp	x0, main._OMP_1
/*     18 */	add	x0, x0, :lo12:main._OMP_1
/*     18 */	mov	x1, x19
/*     18 */	mov	x2, x20
/*     18 */	bl	__mpc_opar
/*     16 */	add	x22, sp, 64
/*     16 */	mov	w21, 1
/*     16 */	mov	w0, w21
/*     16 */	mov	x1, x22
/*     16 */	bl	clock_gettime
/*     17 */	ldr	x0, [x22]	//  "ts"
/*     17 */	ldr	x1, [x22, 8]	//  "ts"
/*     17 */	ldr	d8, .LC2
/*     17 */	adrp	x22, time.5
/*     17 */	scvtf	d1, x0
/*     17 */	scvtf	d0, x1
/*     17 */	fmadd	d0, d0, d8, d1
/*     17 */	str	d0, [x22, :lo12:time.5]	//  "time"
/*     32 */	adrp	x0, main._OMP_2
/*     32 */	mov	x1, x19
/*     32 */	mov	x2, x20
/*     32 */	add	x0, x0, :lo12:main._OMP_2
/*     32 */	bl	__mpc_opar
/*     16 */	add	x19, sp, 80
/*     16 */	mov	w0, w21
/*     16 */	mov	x1, x19
/*     16 */	bl	clock_gettime
/*     17 */	ldr	x1, [x19]	//  "ts"
/*     17 */	ldr	x2, [x19, 8]	//  "ts"
/*     36 */	ldr	d0, [x22, :lo12:time.5]	//  "time"
/*     38 */	ldr	d3, .LC3
/*     38 */	adrp	x0, .LR.3
/*     38 */	add	x0, x0, :lo12:.LR.3
/*     17 */	scvtf	d2, x1
/*     17 */	scvtf	d1, x2
/*     17 */	fmadd	d1, d1, d8, d2
/*     36 */	fsub	d1, d1, d0
/*     38 */	fmul	d0, d1, d3
/*     36 */	str	d1, [x22, :lo12:time.5]	//  "time"
/*     38 */	bl	printf
/*     39 */	ldr	d1, [x22, :lo12:time.5]	//  "time"
/*     39 */	ldr	d0, .LC4
/*     39 */	adrp	x0, .LR.2
/*     39 */	add	x0, x0, :lo12:.LR.2
/*     39 */	frecpe	d3, d1
/*     39 */	frecps	d2, d1, d3
/*     39 */	fmul	d3, d2, d3
/*     39 */	frecps	d2, d1, d3
/*     39 */	fmul	d2, d2, d3
/*     39 */	frecps	d1, d1, d2
/*     39 */	fmul	d1, d1, d2
/*     39 */	fmul	d0, d0, d1
/*     39 */	bl	printf
/*     40 */	adrp	x0, .LR.1
/*     40 */	adrp	x2, a
/*     40 */	mov	x1, 21832
/*     40 */	add	x2, x2, :lo12:a
/*     40 */	movk	x1, 85, lsl #16
/*     40 */	add	x0, x0, :lo12:.LR.1
/*     40 */	ldr	d0, [x2, x1]	//  "a"
/*     40 */	bl	printf
/*     42 */	mov	w0, 0
/*    ??? */	ldp	x21, x22, [sp, 16]	//  (*)
/*    ??? */	ldr	d8, [sp, 40]	//  (*)
/*    ??? */	ldr	x30, [sp, 32]	//  (*)
/*    ??? */	ldp	x19, x20, [sp], 96	//  (*)
/*     43 */	ret	
	.size	main, .-main
	.align	3
.LC2:
	.word	0xe826d695,0x3e112e0b
	.align	3
.LC3:
	.word	0,0x408f4000
	.align	3
.LC4:
	.word	0xd5461813,0x3f912e0a
	.ident	"$Compiler: Fujitsu C/C++ Compiler Version 1.2.0 P-id: Alpha-20170330 (Mar 24 2017 17:23:55) triad-mem-1stream.c main._OMP_1 $"
	.text
	.align	2
	.type	main._OMP_1, %function
main._OMP_1:
/*    ??? */	stp	x19, x20, [sp, -144]!	//  (*)
/*    ??? */	str	x30, [sp, 16]	//  (*)
/*    ??? */	stp	d8, d9, [sp, 24]	//  (*)
/*    ??? */	stp	d10, d11, [sp, 40]	//  (*)
/*    ??? */	stp	d12, d13, [sp, 56]	//  (*)
/*    ??? */	stp	d14, d15, [sp, 72]	//  (*)
/*     18 */	str	x0, [sp, 104]	//  ___9
/*     18 */	str	x1, [sp, 112]	//  ___10
/*     18 */	str	x2, [sp, 120]	//  ___11
/*     18 */	str	x3, [sp, 128]	//  ___12
/*     18 */	str	x4, [sp, 136]	//  ___13
/*     18 */	str	x0, [sp, 96]	//  ___46
/*     18 */	ldr	x0, [sp, 96]	//  ___46
/*     18 */	ldr	w0, [x0, 4]	//  ___1
/*     20 */	adrp	x0, .LR.4
/*     20 */	add	x20, x0, :lo12:.LR.4
/*     20 */	bl	omp_get_num_threads
/*     20 */	mov	w19, w0
/*     20 */	bl	omp_get_thread_num
/*     20 */	mov	w2, w0
/*     20 */	mov	x0, x20
/*     20 */	mov	w1, w19
/*     20 */	bl	printf
/*     23 */	mov	x0, 43690
/*     23 */	ldr	x1, [sp, 112]	//  ___10
/*     23 */	movk	x0, 10, lsl #16
/*     23 */	sdiv	x2, x0, x1
/*     23 */	msub	x1, x1, x2, x0
/*     23 */	cbnz	x1, .L177
/*     23 */	ldr	x0, [sp, 120]	//  ___11
/*     23 */	mul	x0, x0, x2
/*     23 */	b	.L180
.L177:
/*     23 */	ldr	x0, [sp, 120]	//  ___11
/*     23 */	cmp	x0, x1
/*     23 */	blt	.L179
/*     23 */	madd	x0, x0, x2, x1
/*     23 */	b	.L180
.L179:
/*     23 */	add	x2, x2, 1
/*     23 */	mul	x0, x0, x2
.L180:
/*     23 */	sub	x1, x2, 1
/*     23 */	add	x1, x1, x0
/*     23 */	cbz	x2, .L191
/*     23 */	ptrue	p0.d, VL8
/*     23 */	sub	w2, w1, w0
/*     24 */	sxtw	x1, w0
/*     23 */	add	w2, w2, 1
/*     26 */	add	w10, w0, 3
/*     23 */	cmp	w2, 1
/*     23 */	mov	x3, 0
/*     23 */	csinc	w0, w2, wzr, ge
/*     23 */	asr	w2, w0, 2
/*     23 */	add	w2, w0, w2, lsr #29
/*     23 */	asr	w6, w2, 3
/*     23 */	sub	w5, w0, w6, lsl #3
/*     23 */	cbz	w6, .L186
/*     23 */	sxtw	x0, w10
/*     23 */	index	z2.d, x1, 1
/*     27 */	sub	w9, w6, 3
/*     23 */	index	z0.d, x0, 1
/*     27 */	cmp	w9, 0
/*     23 */	mov	x2, x1
/*     23 */	mov	x4, 0
/*     27 */	blt	.L194
/*     27 */	adrp	x4, c
/*     26 */	lsl	x0, x1, 3
/*     24 */	fmov	z11.d, 0.000000e+00
/*     27 */	adrp	x8, b
/*     27 */	add	x7, x4, :lo12:c
/*     27 */	adrp	x4, a
/*     26 */	add	x0, x0, 128
/*     27 */	add	x11, x8, :lo12:b
/*     27 */	add	x8, x4, :lo12:a
/*     24 */	mov	x4, x3
/*     26 */	add	x7, x7, x0
/*     25 */	add	x11, x11, x0
/*     24 */	add	x8, x8, x0
/*     23 */	cmp	w9, 12
/*     23 */	blt	.L254
/*     27 */	add	x12, x4, 8
/*     27 */	add	x0, x3, 16
/*     26 */	dup	z1.d, x3
/*     25 */	dup	z3.d, x12
/*     27 */	add	x12, x3, 8
/*     27 */	add	x15, x4, 16
/*     26 */	dup	z4.d, x0
/*     27 */	add	x0, x3, 24
/*     27 */	add	x13, x3, 32
/*     27 */	add	x14, x4, 32
/*     26 */	dup	z5.d, x12
/*     27 */	add	x3, x3, 40
/*     27 */	add	x12, x4, 24
/*     25 */	dup	z6.d, x15
/*     27 */	add	x15, x4, 40
/*     26 */	dup	z7.d, x0
/*     25 */	dup	z8.d, x4
/*     27 */	add	x4, x4, 48
/*     25 */	dup	z9.d, x14
/*     26 */	add	z1.d, z1.d, z0.d
/*     25 */	add	z3.d, z3.d, z2.d
/*     26 */	add	z4.d, z4.d, z0.d
/*     26 */	dup	z10.d, x3
/*     26 */	add	z5.d, z5.d, z0.d
/*     26 */	scvtf	z17.d, p0/m, z1.d
/*     25 */	add	z6.d, z6.d, z2.d
/*     25 */	scvtf	z15.d, p0/m, z3.d
/*     26 */	add	z7.d, z7.d, z0.d
/*     26 */	scvtf	z16.d, p0/m, z4.d
/*     26 */	dup	z1.d, x13
.L184:					// :entr:term:body:swpl
/*     26 */	st1d	z17.d, p0, [x7, -2, mul vl]	//  "c"
/*     26 */	scvtf	z18.d, p0/m, z5.d
/*     27 */	add	x0, x4, 8
/*     27 */	add	x13, x3, 8
/*     25 */	add	z8.d, z8.d, z2.d
/*     25 */	dup	z13.d, x0
/*     25 */	dup	z12.d, x12
/*     25 */	add	z9.d, z9.d, z2.d
/*     24 */	st1d	z11.d, p0, [x8, -2, mul vl]	//  "a"
/*     27 */	add	x0, x3, 16
/*     25 */	scvtf	z17.d, p0/m, z6.d
/*     26 */	scvtf	z6.d, p0/m, z7.d
/*     25 */	dup	z3.d, x15
/*     27 */	add	x12, x3, 24
/*     25 */	scvtf	z7.d, p0/m, z8.d
/*     26 */	dup	z14.d, x12
/*     26 */	dup	z4.d, x13
/*     26 */	add	z10.d, z10.d, z0.d
/*     26 */	st1d	z16.d, p0, [x7, 0, mul vl]	//  "c"
/*     26 */	dup	z5.d, x0
/*     26 */	st1d	z18.d, p0, [x7, -1, mul vl]	//  "c"
/*     25 */	scvtf	z16.d, p0/m, z9.d
/*     25 */	st1d	z15.d, p0, [x11, -1, mul vl]	//  "b"
/*     26 */	scvtf	z15.d, p0/m, z10.d
/*     24 */	st1d	z11.d, p0, [x8, -1, mul vl]	//  "a"
/*     26 */	add	z1.d, z1.d, z0.d
/*     27 */	add	x14, x4, 16
/*     25 */	st1d	z17.d, p0, [x11, 0, mul vl]	//  "b"
/*     27 */	add	x12, x4, 24
/*     24 */	st1d	z11.d, p0, [x8, 0, mul vl]	//  "a"
/*     25 */	add	z3.d, z3.d, z2.d
/*     25 */	st1d	z7.d, p0, [x11, -2, mul vl]	//  "b"
/*     26 */	add	z4.d, z4.d, z0.d
/*     26 */	st1d	z6.d, p0, [x7, 1, mul vl]	//  "c"
/*     26 */	scvtf	z18.d, p0/m, z1.d
/*     27 */	add	x13, x4, 32
/*     27 */	add	x0, x3, 32
/*     25 */	add	z12.d, z12.d, z2.d
/*     25 */	dup	z9.d, x13
/*     25 */	dup	z8.d, x4
/*     25 */	add	z13.d, z13.d, z2.d
/*     24 */	st1d	z11.d, p0, [x8, 1, mul vl]	//  "a"
/*     27 */	add	x13, x3, 40
/*     25 */	scvtf	z3.d, p0/m, z3.d
/*     26 */	scvtf	z17.d, p0/m, z4.d
/*     25 */	dup	z6.d, x14
/*     27 */	add	x3, x3, 48
/*     25 */	scvtf	z4.d, p0/m, z12.d
/*     26 */	dup	z10.d, x3
/*     26 */	dup	z7.d, x0
/*     26 */	add	z14.d, z14.d, z0.d
/*     26 */	st1d	z15.d, p0, [x7, 3, mul vl]	//  "c"
/*     26 */	dup	z1.d, x13
/*     26 */	st1d	z18.d, p0, [x7, 2, mul vl]	//  "c"
/*     25 */	scvtf	z15.d, p0/m, z13.d
/*     25 */	st1d	z16.d, p0, [x11, 2, mul vl]	//  "b"
/*     26 */	scvtf	z16.d, p0/m, z14.d
/*     24 */	st1d	z11.d, p0, [x8, 2, mul vl]	//  "a"
/*     26 */	add	z5.d, z5.d, z0.d
/*     27 */	add	x15, x4, 40
/*     25 */	st1d	z3.d, p0, [x11, 3, mul vl]	//  "b"
/*     27 */	add	x4, x4, 48
/*     27 */	add	x2, x2, 48
/*     24 */	st1d	z11.d, p0, [x8, 3, mul vl]	//  "a"
/*     25 */	add	z6.d, z6.d, z2.d
/*     27 */	add	x8, x8, 384
/*     27 */	add	x11, x11, 384
/*     25 */	st1d	z4.d, p0, [x11, -5, mul vl]	//  "b"
/*     26 */	add	z7.d, z7.d, z0.d
/*     27 */	add	x7, x7, 384
/*     27 */	sub	w9, w9, 6
/*     27 */	cmp	w9, 12
/*     27 */	bge	.L184
/*     27 */	add	x3, x3, 8
/*     25 */	add	z8.d, z8.d, z2.d
/*     25 */	scvtf	z6.d, p0/m, z6.d
/*     27 */	add	x2, x2, 48
/*     26 */	scvtf	z5.d, p0/m, z5.d
/*     26 */	st1d	z17.d, p0, [x7, -2, mul vl]	//  "c"
/*     27 */	sub	w9, w9, 6
/*     25 */	add	z9.d, z9.d, z2.d
/*     24 */	st1d	z11.d, p0, [x8, -2, mul vl]	//  "a"
/*     26 */	scvtf	z7.d, p0/m, z7.d
/*     25 */	st1d	z15.d, p0, [x11, -1, mul vl]	//  "b"
/*     25 */	dup	z3.d, x15
/*     25 */	scvtf	z8.d, p0/m, z8.d
/*     26 */	add	z10.d, z10.d, z0.d
/*     26 */	st1d	z16.d, p0, [x7, 0, mul vl]	//  "c"
/*     25 */	scvtf	z9.d, p0/m, z9.d
/*     24 */	st1d	z11.d, p0, [x8, -1, mul vl]	//  "a"
/*     25 */	dup	z4.d, x12
/*     26 */	add	z1.d, z1.d, z0.d
/*     24 */	st1d	z11.d, p0, [x8, 0, mul vl]	//  "a"
/*     26 */	scvtf	z10.d, p0/m, z10.d
/*     25 */	st1d	z6.d, p0, [x11, 0, mul vl]	//  "b"
/*     26 */	st1d	z5.d, p0, [x7, -1, mul vl]	//  "c"
/*     26 */	scvtf	z1.d, p0/m, z1.d
/*     24 */	st1d	z11.d, p0, [x8, 1, mul vl]	//  "a"
/*     25 */	add	z3.d, z3.d, z2.d
/*     25 */	st1d	z8.d, p0, [x11, -2, mul vl]	//  "b"
/*     26 */	st1d	z7.d, p0, [x7, 1, mul vl]	//  "c"
/*     25 */	add	z4.d, z4.d, z2.d
/*     25 */	scvtf	z3.d, p0/m, z3.d
/*     25 */	st1d	z9.d, p0, [x11, 2, mul vl]	//  "b"
/*     26 */	st1d	z10.d, p0, [x7, 3, mul vl]	//  "c"
/*     25 */	scvtf	z4.d, p0/m, z4.d
/*     24 */	st1d	z11.d, p0, [x8, 2, mul vl]	//  "a"
/*     26 */	st1d	z1.d, p0, [x7, 2, mul vl]	//  "c"
/*     27 */	add	x7, x7, 384
/*     24 */	st1d	z11.d, p0, [x8, 3, mul vl]	//  "a"
/*     27 */	add	x8, x8, 384
/*     25 */	st1d	z3.d, p0, [x11, 3, mul vl]	//  "b"
/*     27 */	add	x11, x11, 384
/*     25 */	st1d	z4.d, p0, [x11, -5, mul vl]	//  "b"
.L254:
.L257:					// :entr:term:mod:swpl
/*     26 */	dup	z1.d, x3
/*     27 */	add	x3, x3, 8
/*     27 */	add	x0, x4, 8
/*     27 */	add	x13, x3, 8
/*     27 */	add	x12, x0, 8
/*     26 */	dup	z4.d, x3
/*     27 */	add	x3, x13, 8
/*     25 */	dup	z5.d, x0
/*     27 */	add	x2, x2, 24
/*     27 */	subs	w9, w9, 3
/*     26 */	dup	z6.d, x13
/*     25 */	dup	z3.d, x4
/*     27 */	add	x4, x12, 8
/*     25 */	dup	z7.d, x12
/*     24 */	st1d	z11.d, p0, [x8, -2, mul vl]	//  "a"
/*     24 */	st1d	z11.d, p0, [x8, -1, mul vl]	//  "a"
/*     26 */	add	z1.d, z1.d, z0.d
/*     26 */	add	z4.d, z4.d, z0.d
/*     25 */	add	z5.d, z5.d, z2.d
/*     26 */	add	z6.d, z6.d, z0.d
/*     25 */	add	z3.d, z3.d, z2.d
/*     26 */	scvtf	z1.d, p0/m, z1.d
/*     25 */	add	z7.d, z7.d, z2.d
/*     26 */	scvtf	z8.d, p0/m, z4.d
/*     25 */	scvtf	z4.d, p0/m, z5.d
/*     26 */	scvtf	z5.d, p0/m, z6.d
/*     25 */	scvtf	z3.d, p0/m, z3.d
/*     25 */	scvtf	z6.d, p0/m, z7.d
/*     24 */	st1d	z11.d, p0, [x8, 0, mul vl]	//  "a"
/*     27 */	add	x8, x8, 192
/*     26 */	st1d	z1.d, p0, [x7, -2, mul vl]	//  "c"
/*     26 */	st1d	z8.d, p0, [x7, -1, mul vl]	//  "c"
/*     25 */	st1d	z4.d, p0, [x11, -1, mul vl]	//  "b"
/*     26 */	st1d	z5.d, p0, [x7, 0, mul vl]	//  "c"
/*     27 */	add	x7, x7, 192
/*     25 */	st1d	z3.d, p0, [x11, -2, mul vl]	//  "b"
/*     25 */	st1d	z6.d, p0, [x11, 0, mul vl]	//  "b"
/*     27 */	add	x11, x11, 192
/*     27 */	bpl	.L257
.L194:
/*     27 */	adds	w0, w9, 2
/*     27 */	bmi	.L186
/*     27 */	adrp	x8, c
/*     27 */	adrp	x7, b
/*     27 */	add	x8, x8, :lo12:c
/*     27 */	add	x7, x7, :lo12:b
/*     27 */	adrp	x9, a
/*     27 */	add	x9, x9, :lo12:a
.L201:					// :entr:term:mod
/*     26 */	dup	z1.d, x3
/*     27 */	add	x3, x3, 8
/*     27 */	subs	w0, w0, 1
/*     25 */	dup	z3.d, x4
/*     27 */	add	x4, x4, 8
/*     24 */	fmov	z4.d, 0.000000e+00
/*     24 */	st1d	z4.d, p0, [x9, x2, lsl #3]	//  "a"
/*     26 */	add	z1.d, z1.d, z0.d
/*     25 */	add	z3.d, z3.d, z2.d
/*     26 */	scvtf	z1.d, p0/m, z1.d
/*     25 */	scvtf	z3.d, p0/m, z3.d
/*     26 */	st1d	z1.d, p0, [x8, x2, lsl #3]	//  "c"
/*     25 */	st1d	z3.d, p0, [x7, x2, lsl #3]	//  "b"
/*     27 */	add	x2, x2, 8
/*     27 */	bpl	.L201
.L186:
/*     23 */	sbfiz	x2, x6, 3, 32
/*     23 */	add	x0, x2, x1
/*     23 */	cbz	w5, .L191
/*     26 */	add	x4, x2, w10, sxtw #0
/*     23 */	adrp	x2, c
/*     23 */	mov	x1, x0
/*     24 */	ldr	d2, .LC5
/*     23 */	add	x3, x2, :lo12:c
/*     23 */	adrp	x6, b
/*     23 */	adrp	x2, a
/*     23 */	add	x6, x6, :lo12:b
/*     23 */	add	x2, x2, :lo12:a
.L188:					// :entr:term
/*     26 */	scvtf	d1, x4
/*     25 */	scvtf	d0, x1
/*     27 */	add	x4, x4, 1
/*     27 */	add	x1, x1, 1
/*     24 */	str	d2, [x2, x0, lsl #3]	//  "a"
/*     27 */	subs	w5, w5, 1
/*     26 */	str	d1, [x3, x0, lsl #3]	//  "c"
/*     25 */	str	d0, [x6, x0, lsl #3]	//  "b"
/*     27 */	add	x0, x0, 1
/*     27 */	bne	.L188
.L191:
/*     27 */	ldr	x0, [sp, 128]	//  ___12
/*     27 */	bl	__mpc_obar
/*    ??? */	ldr	x30, [sp, 16]	//  (*)
/*    ??? */	ldp	d8, d9, [sp, 24]	//  (*)
/*    ??? */	ldp	d10, d11, [sp, 40]	//  (*)
/*    ??? */	ldp	d12, d13, [sp, 56]	//  (*)
/*    ??? */	ldp	d14, d15, [sp, 72]	//  (*)
/*    ??? */	ldp	x19, x20, [sp], 144	//  (*)
/*     28 */	ret	
	.size	main._OMP_1, .-main._OMP_1
	.align	3
.LC5:
	.word	0,0
	.ident	"$Compiler: Fujitsu C/C++ Compiler Version 1.2.0 P-id: Alpha-20170330 (Mar 24 2017 17:23:55) triad-mem-1stream.c main._OMP_2 $"
	.text
	.align	2
	.type	main._OMP_2, %function
main._OMP_2:
/*    ??? */	str	x30, [sp, -128]!	//  (*)
/*    ??? */	stp	d8, d9, [sp, 8]	//  (*)
/*    ??? */	stp	d10, d11, [sp, 24]	//  (*)
/*    ??? */	stp	d12, d13, [sp, 40]	//  (*)
/*    ??? */	stp	d14, d15, [sp, 56]	//  (*)
/*     28 */	str	x0, [sp, 88]	//  ___14
/*     28 */	str	x1, [sp, 96]	//  ___15
/*     28 */	str	x2, [sp, 104]	//  ___16
/*     28 */	str	x3, [sp, 112]	//  ___17
/*     28 */	str	x4, [sp, 120]	//  ___18
/*     28 */	str	x0, [sp, 80]	//  ___47
/*     32 */	ldr	x0, [sp, 80]	//  ___47
/*     32 */	ldr	w0, [x0]	//  ___2
/*     33 */	mov	x0, 43690
/*     33 */	ldr	x1, [sp, 96]	//  ___15
/*     33 */	movk	x0, 10, lsl #16
/*     33 */	sdiv	x2, x0, x1
/*     33 */	msub	x0, x1, x2, x0
/*     33 */	cbnz	x0, .L205
/*     33 */	ldr	x0, [sp, 104]	//  ___16
/*     33 */	mul	x0, x0, x2
/*     33 */	b	.L208
.L205:
/*     33 */	ldr	x1, [sp, 104]	//  ___16
/*     33 */	cmp	x1, x0
/*     33 */	blt	.L207
/*     33 */	madd	x0, x1, x2, x0
/*     33 */	b	.L208
.L207:
/*     33 */	add	x2, x2, 1
/*     33 */	mul	x0, x1, x2
.L208:
/*     33 */	sub	x1, x2, 1
/*     33 */	add	x1, x1, x0
/*     33 */	cbz	x2, .L218
/*     33 */	ptrue	p0.d, VL8
/*     33 */	sub	w2, w1, w0
/*     34 */	sxtw	x1, w0
/*     33 */	add	w0, w2, 1
/*     33 */	cmp	w0, 1
/*     33 */	csinc	w0, w0, wzr, ge
/*     33 */	asr	w2, w0, 2
/*     33 */	add	w2, w0, w2, lsr #29
/*     33 */	asr	w8, w2, 3
/*     33 */	sub	w9, w0, w8, lsl #3
/*     33 */	cbz	w8, .L213
/*     33 */	sub	w3, w8, 3
/*     33 */	mov	x2, x1
/*     33 */	cmp	w3, 0
/*     33 */	blt	.L221
/*     33 */	adrp	x4, c
/*      0 */	lsl	x0, x1, 3
/*      0 */	fdup	z2.d, 3.000000e+00
/*     33 */	adrp	x6, a
/*     33 */	add	x5, x4, :lo12:c
/*     33 */	adrp	x4, b
/*      0 */	add	x0, x0, 128
/*     33 */	add	x4, x4, :lo12:b
/*     33 */	add	x10, x6, :lo12:a
/*     33 */	cmp	w3, 21
/*      0 */	add	x7, x5, x0
/*      0 */	add	x6, x4, x0
/*      0 */	add	x4, x10, x0
/*     33 */	blt	.L265
/*      0 */	ld1d	z3.d, p0/z, [x7, -2, mul vl]	//  "c"
/*      0 */	ld1d	z0.d, p0/z, [x6, -2, mul vl]	//  "b"
/*      0 */	ld1d	z7.d, p0/z, [x7, 1, mul vl]	//  "c"
/*      0 */	ld1d	z5.d, p0/z, [x7, -1, mul vl]	//  "c"
/*      0 */	ld1d	z6.d, p0/z, [x6, 1, mul vl]	//  "b"
/*      0 */	ld1d	z4.d, p0/z, [x6, -1, mul vl]	//  "b"
/*      0 */	ld1d	z9.d, p0/z, [x7, 0, mul vl]	//  "c"
/*      0 */	ld1d	z8.d, p0/z, [x6, 0, mul vl]	//  "b"
/*      0 */	ld1d	z13.d, p0/z, [x7, 4, mul vl]	//  "c"
/*      0 */	ld1d	z11.d, p0/z, [x7, 2, mul vl]	//  "c"
/*      0 */	ld1d	z12.d, p0/z, [x6, 4, mul vl]	//  "b"
/*      0 */	ld1d	z10.d, p0/z, [x6, 2, mul vl]	//  "b"
/*      0 */	ld1d	z15.d, p0/z, [x7, 3, mul vl]	//  "c"
/*      0 */	ld1d	z14.d, p0/z, [x6, 3, mul vl]	//  "b"
/*     34 */	add	x7, x7, 576
/*     34 */	add	x6, x6, 576
/*      0 */	ld1d	z17.d, p0/z, [x7, -4, mul vl]	//  "c"
/*      0 */	ld1d	z16.d, p0/z, [x6, -4, mul vl]	//  "b"
/*      0 */	ld1d	z19.d, p0/z, [x7, -3, mul vl]	//  "c"
/*      0 */	ld1d	z18.d, p0/z, [x6, -3, mul vl]	//  "b"
/*      0 */	movprfx	z1.d, p0/z, z3.d
/*      0 */	fmad	z1.d, p0/m, z2.d, z0.d
/*      0 */	ld1d	z3.d, p0/z, [x7, -2, mul vl]	//  "c"
/*      0 */	ld1d	z0.d, p0/z, [x6, -2, mul vl]	//  "b"
/*      0 */	fmad	z5.d, p0/m, z2.d, z4.d
/*      0 */	fmad	z7.d, p0/m, z2.d, z6.d
/*      0 */	fmad	z9.d, p0/m, z2.d, z8.d
.L211:					// :entr:term:body:swpl
/*      0 */	st1d	z1.d, p0, [x4, -2, mul vl]	//  "a"
/*      0 */	ld1d	z27.d, p0/z, [x7, 1, mul vl]	//  "c"
/*      0 */	ld1d	z23.d, p0/z, [x7, -1, mul vl]	//  "c"
/*      0 */	movprfx	z4.d, p0/z, z11.d
/*      0 */	fmad	z4.d, p0/m, z2.d, z10.d
/*      0 */	ld1d	z26.d, p0/z, [x6, 1, mul vl]	//  "b"
/*      0 */	ld1d	z22.d, p0/z, [x6, -1, mul vl]	//  "b"
/*      0 */	movprfx	z6.d, p0/z, z15.d
/*      0 */	fmad	z6.d, p0/m, z2.d, z14.d
/*      0 */	ld1d	z25.d, p0/z, [x7, 0, mul vl]	//  "c"
/*      0 */	movprfx	z8.d, p0/z, z13.d
/*      0 */	fmad	z8.d, p0/m, z2.d, z12.d
/*      0 */	ld1d	z24.d, p0/z, [x6, 0, mul vl]	//  "b"
/*      0 */	st1d	z5.d, p0, [x4, -1, mul vl]	//  "a"
/*      0 */	st1d	z9.d, p0, [x4, 0, mul vl]	//  "a"
/*      0 */	st1d	z7.d, p0, [x4, 1, mul vl]	//  "a"
/*      0 */	ld1d	z13.d, p0/z, [x7, 4, mul vl]	//  "c"
/*      0 */	ld1d	z11.d, p0/z, [x7, 2, mul vl]	//  "c"
/*      0 */	movprfx	z20.d, p0/z, z17.d
/*      0 */	fmad	z20.d, p0/m, z2.d, z16.d
/*      0 */	ld1d	z12.d, p0/z, [x6, 4, mul vl]	//  "b"
/*      0 */	ld1d	z10.d, p0/z, [x6, 2, mul vl]	//  "b"
/*      0 */	movprfx	z21.d, p0/z, z19.d
/*      0 */	fmad	z21.d, p0/m, z2.d, z18.d
/*      0 */	ld1d	z15.d, p0/z, [x7, 3, mul vl]	//  "c"
/*      0 */	movprfx	z1.d, p0/z, z3.d
/*      0 */	fmad	z1.d, p0/m, z2.d, z0.d
/*      0 */	ld1d	z14.d, p0/z, [x6, 3, mul vl]	//  "b"
/*      0 */	st1d	z4.d, p0, [x4, 2, mul vl]	//  "a"
/*      0 */	st1d	z6.d, p0, [x4, 3, mul vl]	//  "a"
/*      0 */	st1d	z8.d, p0, [x4, 4, mul vl]	//  "a"
/*     34 */	add	x7, x7, 576
/*      0 */	ld1d	z3.d, p0/z, [x7, -2, mul vl]	//  "c"
/*      0 */	ld1d	z17.d, p0/z, [x7, -4, mul vl]	//  "c"
/*     34 */	add	x6, x6, 576
/*      0 */	movprfx	z5.d, p0/z, z23.d
/*      0 */	fmad	z5.d, p0/m, z2.d, z22.d
/*      0 */	ld1d	z0.d, p0/z, [x6, -2, mul vl]	//  "b"
/*      0 */	ld1d	z16.d, p0/z, [x6, -4, mul vl]	//  "b"
/*      0 */	movprfx	z9.d, p0/z, z25.d
/*      0 */	fmad	z9.d, p0/m, z2.d, z24.d
/*      0 */	ld1d	z19.d, p0/z, [x7, -3, mul vl]	//  "c"
/*      0 */	movprfx	z7.d, p0/z, z27.d
/*      0 */	fmad	z7.d, p0/m, z2.d, z26.d
/*      0 */	ld1d	z18.d, p0/z, [x6, -3, mul vl]	//  "b"
/*     34 */	add	x2, x2, 72
/*      0 */	st1d	z20.d, p0, [x4, 5, mul vl]	//  "a"
/*     34 */	add	x4, x4, 576
/*      0 */	st1d	z21.d, p0, [x4, -3, mul vl]	//  "a"
/*     34 */	sub	w3, w3, 9
/*     34 */	cmp	w3, 21
/*     34 */	bge	.L211
/*     34 */	add	x5, x6, 192
/*      0 */	fmad	z11.d, p0/m, z2.d, z10.d
/*      0 */	st1d	z1.d, p0, [x4, -2, mul vl]	//  "a"
/*     34 */	add	x2, x2, 72
/*      0 */	fmad	z15.d, p0/m, z2.d, z14.d
/*      0 */	st1d	z5.d, p0, [x4, -1, mul vl]	//  "a"
/*     34 */	sub	w3, w3, 9
/*     34 */	add	x2, x2, 24
/*      0 */	fmad	z13.d, p0/m, z2.d, z12.d
/*      0 */	st1d	z9.d, p0, [x4, 0, mul vl]	//  "a"
/*     34 */	sub	w3, w3, 3
/*      0 */	st1d	z7.d, p0, [x4, 1, mul vl]	//  "a"
/*      0 */	fmad	z17.d, p0/m, z2.d, z16.d
/*      0 */	ld1d	z6.d, p0/z, [x7, -1, mul vl]	//  "c"
/*      0 */	fmad	z19.d, p0/m, z2.d, z18.d
/*      0 */	movprfx	z1.d, p0/z, z3.d
/*      0 */	fmad	z1.d, p0/m, z2.d, z0.d
/*      0 */	ld1d	z4.d, p0/z, [x6, -1, mul vl]	//  "b"
/*      0 */	ld1d	z10.d, p0/z, [x7, 0, mul vl]	//  "c"
/*     34 */	add	x7, x7, 192
/*      0 */	ld1d	z8.d, p0/z, [x6, 0, mul vl]	//  "b"
/*     34 */	mov	x6, x5
/*      0 */	st1d	z11.d, p0, [x4, 2, mul vl]	//  "a"
/*      0 */	st1d	z15.d, p0, [x4, 3, mul vl]	//  "a"
/*      0 */	st1d	z13.d, p0, [x4, 4, mul vl]	//  "a"
/*      0 */	st1d	z17.d, p0, [x4, 5, mul vl]	//  "a"
/*     34 */	add	x4, x4, 576
/*      0 */	st1d	z19.d, p0, [x4, -3, mul vl]	//  "a"
/*     34 */	add	x0, x4, 192
/*      0 */	st1d	z1.d, p0, [x4, -2, mul vl]	//  "a"
/*      0 */	movprfx	z5.d, p0/z, z6.d
/*      0 */	fmad	z5.d, p0/m, z2.d, z4.d
/*      0 */	movprfx	z9.d, p0/z, z10.d
/*      0 */	fmad	z9.d, p0/m, z2.d, z8.d
/*      0 */	st1d	z5.d, p0, [x4, -1, mul vl]	//  "a"
/*      0 */	st1d	z9.d, p0, [x4, 0, mul vl]	//  "a"
/*     34 */	mov	x4, x0
.L265:
.L268:					// :entr:term:mod:swpl
/*      0 */	ld1d	z1.d, p0/z, [x7, -2, mul vl]	//  "c"
/*      0 */	ld1d	z0.d, p0/z, [x6, -2, mul vl]	//  "b"
/*     34 */	add	x2, x2, 24
/*     34 */	subs	w3, w3, 3
/*      0 */	ld1d	z4.d, p0/z, [x7, -1, mul vl]	//  "c"
/*      0 */	ld1d	z3.d, p0/z, [x6, -1, mul vl]	//  "b"
/*      0 */	ld1d	z6.d, p0/z, [x7, 0, mul vl]	//  "c"
/*      0 */	ld1d	z5.d, p0/z, [x6, 0, mul vl]	//  "b"
/*     34 */	add	x6, x6, 192
/*     34 */	add	x7, x7, 192
/*      0 */	fmad	z1.d, p0/m, z2.d, z0.d
/*      0 */	fmad	z4.d, p0/m, z2.d, z3.d
/*      0 */	fmad	z6.d, p0/m, z2.d, z5.d
/*      0 */	st1d	z1.d, p0, [x4, -2, mul vl]	//  "a"
/*      0 */	st1d	z4.d, p0, [x4, -1, mul vl]	//  "a"
/*      0 */	st1d	z6.d, p0, [x4, 0, mul vl]	//  "a"
/*     34 */	add	x4, x4, 192
/*     34 */	bpl	.L268
.L221:
/*     33 */	adds	w4, w3, 2
/*     33 */	bmi	.L213
/*     33 */	adrp	x0, c
/*     33 */	adrp	x3, b
/*     33 */	add	x0, x0, :lo12:c
/*     33 */	add	x3, x3, :lo12:b
/*     33 */	adrp	x5, a
/*     33 */	add	x5, x5, :lo12:a
.L228:					// :entr:term:mod
/*      0 */	ld1d	z1.d, p0/z, [x0, x2, lsl #3]	//  "c"
/*      0 */	fdup	z2.d, 3.000000e+00
/*      0 */	ld1d	z0.d, p0/z, [x3, x2, lsl #3]	//  "b"
/*     34 */	subs	w4, w4, 1
/*      0 */	fmad	z1.d, p0/m, z2.d, z0.d
/*      0 */	st1d	z1.d, p0, [x5, x2, lsl #3]	//  "a"
/*     34 */	add	x2, x2, 8
/*     34 */	bpl	.L228
.L213:
/*     33 */	sbfiz	x0, x8, 3, 32
/*     33 */	add	x0, x0, x1
/*     33 */	cbz	w9, .L218
/*     33 */	adrp	x1, c
/*      0 */	fmov	d0, 3.000000e+00
/*     33 */	add	x1, x1, :lo12:c
/*     33 */	adrp	x2, b
/*     33 */	adrp	x3, a
/*     33 */	add	x2, x2, :lo12:b
/*     33 */	add	x3, x3, :lo12:a
.L215:					// :entr:term
/*      0 */	ldr	d2, [x1, x0, lsl #3]	//  "c"
/*      0 */	ldr	d1, [x2, x0, lsl #3]	//  "b"
/*     34 */	subs	w9, w9, 1
/*      0 */	fmadd	d1, d2, d0, d1
/*      0 */	str	d1, [x3, x0, lsl #3]	//  "a"
/*     34 */	add	x0, x0, 1
/*     34 */	bne	.L215
.L218:
/*    ??? */	ldp	d8, d9, [sp, 8]	//  (*)
/*    ??? */	ldp	d10, d11, [sp, 24]	//  (*)
/*    ??? */	ldp	d12, d13, [sp, 40]	//  (*)
/*    ??? */	ldp	d14, d15, [sp, 56]	//  (*)
/*    ??? */	ldr	x30, [sp], 128	//  (*)
/*     34 */	ret	
	.size	main._OMP_2, .-main._OMP_2
	.data
	.global	ALPHA
	.align	3
ALPHA:
	.type	ALPHA, %object
	.size	ALPHA, 8
	.word	0,0x40080000
	.section	.rodata
	.align	3
.LR.1:
	.ascii "dummy:\040%lf\012\000"
	.type	.LR.1, %object
	.size	.LR.1,.-.LR.1
	.section	.rodata
	.align	3
.LR.2:
	.ascii "BW\040=\040%lf\040[GB/s]\012\000"
	.type	.LR.2, %object
	.size	.LR.2,.-.LR.2
	.section	.rodata
	.align	3
.LR.3:
	.ascii "time\040=\040%lf\040[msec]\012\000"
	.type	.LR.3, %object
	.size	.LR.3,.-.LR.3
	.section	.rodata
	.align	3
.LR.4:
	.ascii "%d\040of\040%d\012\000"
	.type	.LR.4, %object
	.size	.LR.4,.-.LR.4
	.local	time.5
	.comm	time.5,8,8
	.comm	c,5592400,256
	.comm	b,5592400,256
	.comm	a,5592400,256
	.section	.note.GNU-stack,"",%progbits
