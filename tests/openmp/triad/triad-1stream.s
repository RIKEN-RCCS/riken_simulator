	.ident	"$Options: Fujitsu C/C++ Compiler Version 1.2.0 P-id: Alpha-20170330 (Mar 24 2017 17:23:55) --preinclude /opt/FJTComp4/bin/../lib/c99.pre --gcc --c99 -D__FUJITSU -Dunix -D__aarch64__ -D__unix -D_OPENMP=201107 -D__fcc_version__=0x700 -D__fcc_version=700 -D__USER_LABEL_PREFIX__= -D__OPTIMIZE__ -D__ARM_ARCH=8 -D__FP_FAST_FMA -D__ELF__ -D__unix__ -D__linux__ -D__linux -Asystem(unix) -Dlinux -D__LIBC_6B -D__LP64__ -D_LP64 --K=omp -I../../include --K=noocl -D_REENTRANT -D__MT__ --zmode=64 --sys_include=/opt/FJTComp4/bin/../include --sys_include=/opt/ARM/aarch64-linux-gnu/sysroot-linaro-eglibc-gcc4.9-2014.11-aarch64-linux-gnu/usr/include --K=opt triad-1stream.c -- -ncmdname=fccpx -nspopt=\"-Kfast,openmp -Nlst=t -Koptmsg=2 -I../../include -S -o triad-1stream.s\" -Nnoline -zobe=no-static-clump -O3 -x- -Komitfp,mfunc,rdconv,eval,fp_relaxed,ns,fast_matmul,fp_contract,ilfunc,prefetch_conditional,openmp,threadsafe -Nlst=t -Koptmsg=2 -zsta=am -zsrc=triad-1stream.c triad-1stream.s $"
	.file	"triad-1stream.c"
	.ident	"$Compiler: Fujitsu C/C++ Compiler Version 1.2.0 P-id: Alpha-20170330 (Mar 24 2017 17:23:55) triad-1stream.c get_dtime $"
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
	.ident	"$Compiler: Fujitsu C/C++ Compiler Version 1.2.0 P-id: Alpha-20170330 (Mar 24 2017 17:23:55) triad-1stream.c main $"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
/*    ??? */	stp	x19, x20, [sp, -96]!	//  (*)
/*    ??? */	stp	x21, x22, [sp, 16]	//  (*)
/*    ??? */	str	x30, [sp, 32]	//  (*)
/*    ??? */	str	d8, [sp, 40]	//  (*)
/*     19 */	add	x19, sp, 56
/*     19 */	mov	x20, 0
/*     19 */	adrp	x0, main._OMP_1
/*     19 */	add	x0, x0, :lo12:main._OMP_1
/*     19 */	mov	x1, x19
/*     19 */	mov	x2, x20
/*     19 */	bl	__mpc_opar
/*     16 */	add	x22, sp, 64
/*     16 */	mov	w21, 1
/*     16 */	mov	w0, w21
/*     16 */	mov	x1, x22
/*     16 */	bl	clock_gettime
/*     17 */	ldr	x0, [x22]	//  "ts"
/*     17 */	ldr	x1, [x22, 8]	//  "ts"
/*     17 */	ldr	d8, .LC2
/*     17 */	adrp	x22, time.6
/*     17 */	scvtf	d1, x0
/*     17 */	scvtf	d0, x1
/*     17 */	fmadd	d0, d0, d8, d1
/*     17 */	str	d0, [x22, :lo12:time.6]	//  "time"
/*     33 */	adrp	x0, main._OMP_2
/*     33 */	mov	x1, x19
/*     33 */	mov	x2, x20
/*     33 */	add	x0, x0, :lo12:main._OMP_2
/*     33 */	bl	__mpc_opar
/*     16 */	add	x19, sp, 80
/*     16 */	mov	w0, w21
/*     16 */	mov	x1, x19
/*     16 */	bl	clock_gettime
/*     17 */	ldr	x1, [x19]	//  "ts"
/*     17 */	ldr	x2, [x19, 8]	//  "ts"
/*     37 */	ldr	d2, [x22, :lo12:time.6]	//  "time"
/*     39 */	ldr	d1, .LC3
/*     39 */	adrp	x0, .LR.4
/*     39 */	add	x0, x0, :lo12:.LR.4
/*     17 */	scvtf	d0, x1
/*     17 */	scvtf	d3, x2
/*     17 */	fmadd	d0, d3, d8, d0
/*     37 */	fsub	d2, d0, d2
/*     39 */	fmul	d0, d2, d1
/*     37 */	str	d2, [x22, :lo12:time.6]	//  "time"
/*     39 */	bl	printf
/*     40 */	ldr	d1, [x22, :lo12:time.6]	//  "time"
/*     40 */	ldr	d0, .LC4
/*     40 */	adrp	x0, .LR.3
/*     40 */	add	x0, x0, :lo12:.LR.3
/*     40 */	frecpe	d3, d1
/*     40 */	frecps	d2, d1, d3
/*     40 */	fmul	d3, d2, d3
/*     40 */	frecps	d2, d1, d3
/*     40 */	fmul	d2, d2, d3
/*     40 */	frecps	d1, d1, d2
/*     40 */	fmul	d1, d1, d2
/*     40 */	fmul	d0, d0, d1
/*     40 */	bl	printf
/*     41 */	ldr	d2, [x22, :lo12:time.6]	//  "time"
/*     41 */	ldr	d1, .LC5
/*     41 */	adrp	x0, .LR.2
/*     41 */	add	x0, x0, :lo12:.LR.2
/*     41 */	frecpe	d0, d2
/*     41 */	frecps	d3, d2, d0
/*     41 */	fmul	d3, d3, d0
/*     41 */	frecps	d0, d2, d3
/*     41 */	fmul	d0, d0, d3
/*     41 */	frecps	d2, d2, d0
/*     41 */	fmul	d0, d2, d0
/*     41 */	fmul	d0, d1, d0
/*     41 */	bl	printf
/*     42 */	adrp	x0, .LR.1
/*     42 */	adrp	x2, a
/*     42 */	mov	x1, 24568
/*     42 */	add	x2, x2, :lo12:a
/*     42 */	movk	x1, 38, lsl #16
/*     42 */	add	x0, x0, :lo12:.LR.1
/*     42 */	ldr	d0, [x2, x1]	//  "a"
/*     42 */	bl	printf
/*     44 */	mov	w0, 0
/*    ??? */	ldp	x21, x22, [sp, 16]	//  (*)
/*    ??? */	ldr	d8, [sp, 40]	//  (*)
/*    ??? */	ldr	x30, [sp, 32]	//  (*)
/*    ??? */	ldp	x19, x20, [sp], 96	//  (*)
/*     45 */	ret	
	.size	main, .-main
	.align	3
.LC2:
	.word	0xe826d695,0x3e112e0b
	.align	3
.LC3:
	.word	0,0x408f4000
	.align	3
.LC4:
	.word	0x47669355,0x3f449a38
	.align	3
.LC5:
	.word	0x6b19dcff,0x3f7ee754
	.ident	"$Compiler: Fujitsu C/C++ Compiler Version 1.2.0 P-id: Alpha-20170330 (Mar 24 2017 17:23:55) triad-1stream.c main._OMP_1 $"
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
/*     18 */	str	x0, [sp, 104]	//  ___10
/*     18 */	str	x1, [sp, 112]	//  ___11
/*     18 */	str	x2, [sp, 120]	//  ___12
/*     18 */	str	x3, [sp, 128]	//  ___13
/*     18 */	str	x4, [sp, 136]	//  ___14
/*     18 */	str	x0, [sp, 96]	//  ___47
/*     19 */	ldr	x0, [sp, 96]	//  ___47
/*     19 */	ldr	w0, [x0, 4]	//  ___1
/*     21 */	adrp	x0, .LR.5
/*     21 */	add	x20, x0, :lo12:.LR.5
/*     21 */	bl	omp_get_num_threads
/*     21 */	mov	w19, w0
/*     21 */	bl	omp_get_thread_num
/*     21 */	mov	w2, w0
/*     21 */	mov	x0, x20
/*     21 */	mov	w1, w19
/*     21 */	bl	printf
/*     24 */	mov	x0, 52224
/*     24 */	ldr	x1, [sp, 112]	//  ___11
/*     24 */	movk	x0, 4, lsl #16
/*     24 */	sdiv	x2, x0, x1
/*     24 */	msub	x1, x1, x2, x0
/*     24 */	cbnz	x1, .L177
/*     24 */	ldr	x0, [sp, 120]	//  ___12
/*     24 */	mul	x0, x0, x2
/*     24 */	b	.L180
.L177:
/*     24 */	ldr	x0, [sp, 120]	//  ___12
/*     24 */	cmp	x0, x1
/*     24 */	blt	.L179
/*     24 */	madd	x0, x0, x2, x1
/*     24 */	b	.L180
.L179:
/*     24 */	add	x2, x2, 1
/*     24 */	mul	x0, x0, x2
.L180:
/*     24 */	sub	x1, x2, 1
/*     24 */	add	x1, x1, x0
/*     24 */	cbz	x2, .L191
/*     24 */	ptrue	p0.d, VL8
/*     24 */	sub	w2, w1, w0
/*     25 */	sxtw	x1, w0
/*     24 */	add	w2, w2, 1
/*     27 */	add	w10, w0, 3
/*     24 */	cmp	w2, 1
/*     24 */	mov	x3, 0
/*     24 */	csinc	w0, w2, wzr, ge
/*     24 */	asr	w2, w0, 2
/*     24 */	add	w2, w0, w2, lsr #29
/*     24 */	asr	w6, w2, 3
/*     24 */	sub	w5, w0, w6, lsl #3
/*     24 */	cbz	w6, .L186
/*     24 */	sxtw	x0, w10
/*     24 */	index	z2.d, x1, 1
/*     28 */	sub	w9, w6, 3
/*     24 */	index	z0.d, x0, 1
/*     28 */	cmp	w9, 0
/*     24 */	mov	x2, x1
/*     24 */	mov	x4, 0
/*     28 */	blt	.L194
/*     28 */	adrp	x4, c
/*     27 */	lsl	x0, x1, 3
/*     25 */	fmov	z11.d, 0.000000e+00
/*     28 */	adrp	x8, b
/*     28 */	add	x7, x4, :lo12:c
/*     28 */	adrp	x4, a
/*     27 */	add	x0, x0, 128
/*     28 */	add	x11, x8, :lo12:b
/*     28 */	add	x8, x4, :lo12:a
/*     25 */	mov	x4, x3
/*     27 */	add	x7, x7, x0
/*     26 */	add	x11, x11, x0
/*     25 */	add	x8, x8, x0
/*     24 */	cmp	w9, 12
/*     24 */	blt	.L254
/*     28 */	add	x12, x4, 8
/*     28 */	add	x0, x3, 16
/*     27 */	dup	z1.d, x3
/*     26 */	dup	z3.d, x12
/*     28 */	add	x12, x3, 8
/*     28 */	add	x15, x4, 16
/*     27 */	dup	z4.d, x0
/*     28 */	add	x0, x3, 24
/*     28 */	add	x13, x3, 32
/*     28 */	add	x14, x4, 32
/*     27 */	dup	z5.d, x12
/*     28 */	add	x3, x3, 40
/*     28 */	add	x12, x4, 24
/*     26 */	dup	z6.d, x15
/*     28 */	add	x15, x4, 40
/*     27 */	dup	z7.d, x0
/*     26 */	dup	z8.d, x4
/*     28 */	add	x4, x4, 48
/*     26 */	dup	z9.d, x14
/*     27 */	add	z1.d, z1.d, z0.d
/*     26 */	add	z3.d, z3.d, z2.d
/*     27 */	add	z4.d, z4.d, z0.d
/*     27 */	dup	z10.d, x3
/*     27 */	add	z5.d, z5.d, z0.d
/*     27 */	scvtf	z17.d, p0/m, z1.d
/*     26 */	add	z6.d, z6.d, z2.d
/*     26 */	scvtf	z15.d, p0/m, z3.d
/*     27 */	add	z7.d, z7.d, z0.d
/*     27 */	scvtf	z16.d, p0/m, z4.d
/*     27 */	dup	z1.d, x13
.L184:					// :entr:term:body:swpl
/*     27 */	st1d	z17.d, p0, [x7, -2, mul vl]	//  "c"
/*     27 */	scvtf	z18.d, p0/m, z5.d
/*     28 */	add	x0, x4, 8
/*     28 */	add	x13, x3, 8
/*     26 */	add	z8.d, z8.d, z2.d
/*     26 */	dup	z13.d, x0
/*     26 */	dup	z12.d, x12
/*     26 */	add	z9.d, z9.d, z2.d
/*     25 */	st1d	z11.d, p0, [x8, -2, mul vl]	//  "a"
/*     28 */	add	x0, x3, 16
/*     26 */	scvtf	z17.d, p0/m, z6.d
/*     27 */	scvtf	z6.d, p0/m, z7.d
/*     26 */	dup	z3.d, x15
/*     28 */	add	x12, x3, 24
/*     26 */	scvtf	z7.d, p0/m, z8.d
/*     27 */	dup	z14.d, x12
/*     27 */	dup	z4.d, x13
/*     27 */	add	z10.d, z10.d, z0.d
/*     27 */	st1d	z16.d, p0, [x7, 0, mul vl]	//  "c"
/*     27 */	dup	z5.d, x0
/*     27 */	st1d	z18.d, p0, [x7, -1, mul vl]	//  "c"
/*     26 */	scvtf	z16.d, p0/m, z9.d
/*     26 */	st1d	z15.d, p0, [x11, -1, mul vl]	//  "b"
/*     27 */	scvtf	z15.d, p0/m, z10.d
/*     25 */	st1d	z11.d, p0, [x8, -1, mul vl]	//  "a"
/*     27 */	add	z1.d, z1.d, z0.d
/*     28 */	add	x14, x4, 16
/*     26 */	st1d	z17.d, p0, [x11, 0, mul vl]	//  "b"
/*     28 */	add	x12, x4, 24
/*     25 */	st1d	z11.d, p0, [x8, 0, mul vl]	//  "a"
/*     26 */	add	z3.d, z3.d, z2.d
/*     26 */	st1d	z7.d, p0, [x11, -2, mul vl]	//  "b"
/*     27 */	add	z4.d, z4.d, z0.d
/*     27 */	st1d	z6.d, p0, [x7, 1, mul vl]	//  "c"
/*     27 */	scvtf	z18.d, p0/m, z1.d
/*     28 */	add	x13, x4, 32
/*     28 */	add	x0, x3, 32
/*     26 */	add	z12.d, z12.d, z2.d
/*     26 */	dup	z9.d, x13
/*     26 */	dup	z8.d, x4
/*     26 */	add	z13.d, z13.d, z2.d
/*     25 */	st1d	z11.d, p0, [x8, 1, mul vl]	//  "a"
/*     28 */	add	x13, x3, 40
/*     26 */	scvtf	z3.d, p0/m, z3.d
/*     27 */	scvtf	z17.d, p0/m, z4.d
/*     26 */	dup	z6.d, x14
/*     28 */	add	x3, x3, 48
/*     26 */	scvtf	z4.d, p0/m, z12.d
/*     27 */	dup	z10.d, x3
/*     27 */	dup	z7.d, x0
/*     27 */	add	z14.d, z14.d, z0.d
/*     27 */	st1d	z15.d, p0, [x7, 3, mul vl]	//  "c"
/*     27 */	dup	z1.d, x13
/*     27 */	st1d	z18.d, p0, [x7, 2, mul vl]	//  "c"
/*     26 */	scvtf	z15.d, p0/m, z13.d
/*     26 */	st1d	z16.d, p0, [x11, 2, mul vl]	//  "b"
/*     27 */	scvtf	z16.d, p0/m, z14.d
/*     25 */	st1d	z11.d, p0, [x8, 2, mul vl]	//  "a"
/*     27 */	add	z5.d, z5.d, z0.d
/*     28 */	add	x15, x4, 40
/*     26 */	st1d	z3.d, p0, [x11, 3, mul vl]	//  "b"
/*     28 */	add	x4, x4, 48
/*     28 */	add	x2, x2, 48
/*     25 */	st1d	z11.d, p0, [x8, 3, mul vl]	//  "a"
/*     26 */	add	z6.d, z6.d, z2.d
/*     28 */	add	x8, x8, 384
/*     28 */	add	x11, x11, 384
/*     26 */	st1d	z4.d, p0, [x11, -5, mul vl]	//  "b"
/*     27 */	add	z7.d, z7.d, z0.d
/*     28 */	add	x7, x7, 384
/*     28 */	sub	w9, w9, 6
/*     28 */	cmp	w9, 12
/*     28 */	bge	.L184
/*     28 */	add	x3, x3, 8
/*     26 */	add	z8.d, z8.d, z2.d
/*     26 */	scvtf	z6.d, p0/m, z6.d
/*     28 */	add	x2, x2, 48
/*     27 */	scvtf	z5.d, p0/m, z5.d
/*     27 */	st1d	z17.d, p0, [x7, -2, mul vl]	//  "c"
/*     28 */	sub	w9, w9, 6
/*     26 */	add	z9.d, z9.d, z2.d
/*     25 */	st1d	z11.d, p0, [x8, -2, mul vl]	//  "a"
/*     27 */	scvtf	z7.d, p0/m, z7.d
/*     26 */	st1d	z15.d, p0, [x11, -1, mul vl]	//  "b"
/*     26 */	dup	z3.d, x15
/*     26 */	scvtf	z8.d, p0/m, z8.d
/*     27 */	add	z10.d, z10.d, z0.d
/*     27 */	st1d	z16.d, p0, [x7, 0, mul vl]	//  "c"
/*     26 */	scvtf	z9.d, p0/m, z9.d
/*     25 */	st1d	z11.d, p0, [x8, -1, mul vl]	//  "a"
/*     26 */	dup	z4.d, x12
/*     27 */	add	z1.d, z1.d, z0.d
/*     25 */	st1d	z11.d, p0, [x8, 0, mul vl]	//  "a"
/*     27 */	scvtf	z10.d, p0/m, z10.d
/*     26 */	st1d	z6.d, p0, [x11, 0, mul vl]	//  "b"
/*     27 */	st1d	z5.d, p0, [x7, -1, mul vl]	//  "c"
/*     27 */	scvtf	z1.d, p0/m, z1.d
/*     25 */	st1d	z11.d, p0, [x8, 1, mul vl]	//  "a"
/*     26 */	add	z3.d, z3.d, z2.d
/*     26 */	st1d	z8.d, p0, [x11, -2, mul vl]	//  "b"
/*     27 */	st1d	z7.d, p0, [x7, 1, mul vl]	//  "c"
/*     26 */	add	z4.d, z4.d, z2.d
/*     26 */	scvtf	z3.d, p0/m, z3.d
/*     26 */	st1d	z9.d, p0, [x11, 2, mul vl]	//  "b"
/*     27 */	st1d	z10.d, p0, [x7, 3, mul vl]	//  "c"
/*     26 */	scvtf	z4.d, p0/m, z4.d
/*     25 */	st1d	z11.d, p0, [x8, 2, mul vl]	//  "a"
/*     27 */	st1d	z1.d, p0, [x7, 2, mul vl]	//  "c"
/*     28 */	add	x7, x7, 384
/*     25 */	st1d	z11.d, p0, [x8, 3, mul vl]	//  "a"
/*     28 */	add	x8, x8, 384
/*     26 */	st1d	z3.d, p0, [x11, 3, mul vl]	//  "b"
/*     28 */	add	x11, x11, 384
/*     26 */	st1d	z4.d, p0, [x11, -5, mul vl]	//  "b"
.L254:
.L257:					// :entr:term:mod:swpl
/*     27 */	dup	z1.d, x3
/*     28 */	add	x3, x3, 8
/*     28 */	add	x0, x4, 8
/*     28 */	add	x13, x3, 8
/*     28 */	add	x12, x0, 8
/*     27 */	dup	z4.d, x3
/*     28 */	add	x3, x13, 8
/*     26 */	dup	z5.d, x0
/*     28 */	add	x2, x2, 24
/*     28 */	subs	w9, w9, 3
/*     27 */	dup	z6.d, x13
/*     26 */	dup	z3.d, x4
/*     28 */	add	x4, x12, 8
/*     26 */	dup	z7.d, x12
/*     25 */	st1d	z11.d, p0, [x8, -2, mul vl]	//  "a"
/*     25 */	st1d	z11.d, p0, [x8, -1, mul vl]	//  "a"
/*     27 */	add	z1.d, z1.d, z0.d
/*     27 */	add	z4.d, z4.d, z0.d
/*     26 */	add	z5.d, z5.d, z2.d
/*     27 */	add	z6.d, z6.d, z0.d
/*     26 */	add	z3.d, z3.d, z2.d
/*     27 */	scvtf	z1.d, p0/m, z1.d
/*     26 */	add	z7.d, z7.d, z2.d
/*     27 */	scvtf	z8.d, p0/m, z4.d
/*     26 */	scvtf	z4.d, p0/m, z5.d
/*     27 */	scvtf	z5.d, p0/m, z6.d
/*     26 */	scvtf	z3.d, p0/m, z3.d
/*     26 */	scvtf	z6.d, p0/m, z7.d
/*     25 */	st1d	z11.d, p0, [x8, 0, mul vl]	//  "a"
/*     28 */	add	x8, x8, 192
/*     27 */	st1d	z1.d, p0, [x7, -2, mul vl]	//  "c"
/*     27 */	st1d	z8.d, p0, [x7, -1, mul vl]	//  "c"
/*     26 */	st1d	z4.d, p0, [x11, -1, mul vl]	//  "b"
/*     27 */	st1d	z5.d, p0, [x7, 0, mul vl]	//  "c"
/*     28 */	add	x7, x7, 192
/*     26 */	st1d	z3.d, p0, [x11, -2, mul vl]	//  "b"
/*     26 */	st1d	z6.d, p0, [x11, 0, mul vl]	//  "b"
/*     28 */	add	x11, x11, 192
/*     28 */	bpl	.L257
.L194:
/*     28 */	adds	w0, w9, 2
/*     28 */	bmi	.L186
/*     28 */	adrp	x8, c
/*     28 */	adrp	x7, b
/*     28 */	add	x8, x8, :lo12:c
/*     28 */	add	x7, x7, :lo12:b
/*     28 */	adrp	x9, a
/*     28 */	add	x9, x9, :lo12:a
.L201:					// :entr:term:mod
/*     27 */	dup	z1.d, x3
/*     28 */	add	x3, x3, 8
/*     28 */	subs	w0, w0, 1
/*     26 */	dup	z3.d, x4
/*     28 */	add	x4, x4, 8
/*     25 */	fmov	z4.d, 0.000000e+00
/*     25 */	st1d	z4.d, p0, [x9, x2, lsl #3]	//  "a"
/*     27 */	add	z1.d, z1.d, z0.d
/*     26 */	add	z3.d, z3.d, z2.d
/*     27 */	scvtf	z1.d, p0/m, z1.d
/*     26 */	scvtf	z3.d, p0/m, z3.d
/*     27 */	st1d	z1.d, p0, [x8, x2, lsl #3]	//  "c"
/*     26 */	st1d	z3.d, p0, [x7, x2, lsl #3]	//  "b"
/*     28 */	add	x2, x2, 8
/*     28 */	bpl	.L201
.L186:
/*     24 */	sbfiz	x2, x6, 3, 32
/*     24 */	add	x0, x2, x1
/*     24 */	cbz	w5, .L191
/*     27 */	add	x4, x2, w10, sxtw #0
/*     24 */	adrp	x2, c
/*     24 */	mov	x1, x0
/*     25 */	ldr	d2, .LC6
/*     24 */	add	x3, x2, :lo12:c
/*     24 */	adrp	x6, b
/*     24 */	adrp	x2, a
/*     24 */	add	x6, x6, :lo12:b
/*     24 */	add	x2, x2, :lo12:a
.L188:					// :entr:term
/*     27 */	scvtf	d1, x4
/*     26 */	scvtf	d0, x1
/*     28 */	add	x4, x4, 1
/*     28 */	add	x1, x1, 1
/*     25 */	str	d2, [x2, x0, lsl #3]	//  "a"
/*     28 */	subs	w5, w5, 1
/*     27 */	str	d1, [x3, x0, lsl #3]	//  "c"
/*     26 */	str	d0, [x6, x0, lsl #3]	//  "b"
/*     28 */	add	x0, x0, 1
/*     28 */	bne	.L188
.L191:
/*     28 */	ldr	x0, [sp, 128]	//  ___13
/*     28 */	bl	__mpc_obar
/*    ??? */	ldr	x30, [sp, 16]	//  (*)
/*    ??? */	ldp	d8, d9, [sp, 24]	//  (*)
/*    ??? */	ldp	d10, d11, [sp, 40]	//  (*)
/*    ??? */	ldp	d12, d13, [sp, 56]	//  (*)
/*    ??? */	ldp	d14, d15, [sp, 72]	//  (*)
/*    ??? */	ldp	x19, x20, [sp], 144	//  (*)
/*     29 */	ret	
	.size	main._OMP_1, .-main._OMP_1
	.align	3
.LC6:
	.word	0,0
	.ident	"$Compiler: Fujitsu C/C++ Compiler Version 1.2.0 P-id: Alpha-20170330 (Mar 24 2017 17:23:55) triad-1stream.c main._OMP_2 $"
	.text
	.align	2
	.type	main._OMP_2, %function
main._OMP_2:
/*    ??? */	str	x30, [sp, -128]!	//  (*)
/*    ??? */	stp	d8, d9, [sp, 8]	//  (*)
/*    ??? */	stp	d10, d11, [sp, 24]	//  (*)
/*    ??? */	stp	d12, d13, [sp, 40]	//  (*)
/*    ??? */	stp	d14, d15, [sp, 56]	//  (*)
/*     29 */	str	x0, [sp, 88]	//  ___15
/*     29 */	str	x1, [sp, 96]	//  ___16
/*     29 */	str	x2, [sp, 104]	//  ___17
/*     29 */	str	x3, [sp, 112]	//  ___18
/*     29 */	str	x4, [sp, 120]	//  ___19
/*     29 */	str	x0, [sp, 80]	//  ___48
/*     33 */	ldr	x0, [sp, 80]	//  ___48
/*     33 */	ldr	w0, [x0]	//  ___2
/*     34 */	mov	x0, 52224
/*     34 */	ldr	x1, [sp, 96]	//  ___16
/*     34 */	movk	x0, 4, lsl #16
/*     34 */	sdiv	x2, x0, x1
/*     34 */	msub	x0, x1, x2, x0
/*     34 */	cbnz	x0, .L205
/*     34 */	ldr	x0, [sp, 104]	//  ___17
/*     34 */	mul	x0, x0, x2
/*     34 */	b	.L208
.L205:
/*     34 */	ldr	x1, [sp, 104]	//  ___17
/*     34 */	cmp	x1, x0
/*     34 */	blt	.L207
/*     34 */	madd	x0, x1, x2, x0
/*     34 */	b	.L208
.L207:
/*     34 */	add	x2, x2, 1
/*     34 */	mul	x0, x1, x2
.L208:
/*     34 */	sub	x1, x2, 1
/*     34 */	add	x1, x1, x0
/*     34 */	cbz	x2, .L218
/*     34 */	ptrue	p0.d, VL8
/*     34 */	sub	w2, w1, w0
/*     35 */	sxtw	x1, w0
/*     34 */	add	w0, w2, 1
/*     34 */	cmp	w0, 1
/*     34 */	csinc	w0, w0, wzr, ge
/*     34 */	asr	w2, w0, 2
/*     34 */	add	w2, w0, w2, lsr #29
/*     34 */	asr	w8, w2, 3
/*     34 */	sub	w9, w0, w8, lsl #3
/*     34 */	cbz	w8, .L213
/*     34 */	sub	w3, w8, 3
/*     34 */	mov	x2, x1
/*     34 */	cmp	w3, 0
/*     34 */	blt	.L221
/*     34 */	adrp	x4, c
/*      0 */	lsl	x0, x1, 3
/*      0 */	fdup	z2.d, 3.000000e+00
/*     34 */	adrp	x6, a
/*     34 */	add	x5, x4, :lo12:c
/*     34 */	adrp	x4, b
/*      0 */	add	x0, x0, 128
/*     34 */	add	x4, x4, :lo12:b
/*     34 */	add	x10, x6, :lo12:a
/*     34 */	cmp	w3, 21
/*      0 */	add	x7, x5, x0
/*      0 */	add	x6, x4, x0
/*      0 */	add	x4, x10, x0
/*     34 */	blt	.L265
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
/*     35 */	add	x7, x7, 576
/*     35 */	add	x6, x6, 576
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
/*     35 */	add	x7, x7, 576
/*      0 */	ld1d	z3.d, p0/z, [x7, -2, mul vl]	//  "c"
/*      0 */	ld1d	z17.d, p0/z, [x7, -4, mul vl]	//  "c"
/*     35 */	add	x6, x6, 576
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
/*     35 */	add	x2, x2, 72
/*      0 */	st1d	z20.d, p0, [x4, 5, mul vl]	//  "a"
/*     35 */	add	x4, x4, 576
/*      0 */	st1d	z21.d, p0, [x4, -3, mul vl]	//  "a"
/*     35 */	sub	w3, w3, 9
/*     35 */	cmp	w3, 21
/*     35 */	bge	.L211
/*     35 */	add	x5, x6, 192
/*      0 */	fmad	z11.d, p0/m, z2.d, z10.d
/*      0 */	st1d	z1.d, p0, [x4, -2, mul vl]	//  "a"
/*     35 */	add	x2, x2, 72
/*      0 */	fmad	z15.d, p0/m, z2.d, z14.d
/*      0 */	st1d	z5.d, p0, [x4, -1, mul vl]	//  "a"
/*     35 */	sub	w3, w3, 9
/*     35 */	add	x2, x2, 24
/*      0 */	fmad	z13.d, p0/m, z2.d, z12.d
/*      0 */	st1d	z9.d, p0, [x4, 0, mul vl]	//  "a"
/*     35 */	sub	w3, w3, 3
/*      0 */	st1d	z7.d, p0, [x4, 1, mul vl]	//  "a"
/*      0 */	fmad	z17.d, p0/m, z2.d, z16.d
/*      0 */	ld1d	z6.d, p0/z, [x7, -1, mul vl]	//  "c"
/*      0 */	fmad	z19.d, p0/m, z2.d, z18.d
/*      0 */	movprfx	z1.d, p0/z, z3.d
/*      0 */	fmad	z1.d, p0/m, z2.d, z0.d
/*      0 */	ld1d	z4.d, p0/z, [x6, -1, mul vl]	//  "b"
/*      0 */	ld1d	z10.d, p0/z, [x7, 0, mul vl]	//  "c"
/*     35 */	add	x7, x7, 192
/*      0 */	ld1d	z8.d, p0/z, [x6, 0, mul vl]	//  "b"
/*     35 */	mov	x6, x5
/*      0 */	st1d	z11.d, p0, [x4, 2, mul vl]	//  "a"
/*      0 */	st1d	z15.d, p0, [x4, 3, mul vl]	//  "a"
/*      0 */	st1d	z13.d, p0, [x4, 4, mul vl]	//  "a"
/*      0 */	st1d	z17.d, p0, [x4, 5, mul vl]	//  "a"
/*     35 */	add	x4, x4, 576
/*      0 */	st1d	z19.d, p0, [x4, -3, mul vl]	//  "a"
/*     35 */	add	x0, x4, 192
/*      0 */	st1d	z1.d, p0, [x4, -2, mul vl]	//  "a"
/*      0 */	movprfx	z5.d, p0/z, z6.d
/*      0 */	fmad	z5.d, p0/m, z2.d, z4.d
/*      0 */	movprfx	z9.d, p0/z, z10.d
/*      0 */	fmad	z9.d, p0/m, z2.d, z8.d
/*      0 */	st1d	z5.d, p0, [x4, -1, mul vl]	//  "a"
/*      0 */	st1d	z9.d, p0, [x4, 0, mul vl]	//  "a"
/*     35 */	mov	x4, x0
.L265:
.L268:					// :entr:term:mod:swpl
/*      0 */	ld1d	z1.d, p0/z, [x7, -2, mul vl]	//  "c"
/*      0 */	ld1d	z0.d, p0/z, [x6, -2, mul vl]	//  "b"
/*     35 */	add	x2, x2, 24
/*     35 */	subs	w3, w3, 3
/*      0 */	ld1d	z4.d, p0/z, [x7, -1, mul vl]	//  "c"
/*      0 */	ld1d	z3.d, p0/z, [x6, -1, mul vl]	//  "b"
/*      0 */	ld1d	z6.d, p0/z, [x7, 0, mul vl]	//  "c"
/*      0 */	ld1d	z5.d, p0/z, [x6, 0, mul vl]	//  "b"
/*     35 */	add	x6, x6, 192
/*     35 */	add	x7, x7, 192
/*      0 */	fmad	z1.d, p0/m, z2.d, z0.d
/*      0 */	fmad	z4.d, p0/m, z2.d, z3.d
/*      0 */	fmad	z6.d, p0/m, z2.d, z5.d
/*      0 */	st1d	z1.d, p0, [x4, -2, mul vl]	//  "a"
/*      0 */	st1d	z4.d, p0, [x4, -1, mul vl]	//  "a"
/*      0 */	st1d	z6.d, p0, [x4, 0, mul vl]	//  "a"
/*     35 */	add	x4, x4, 192
/*     35 */	bpl	.L268
.L221:
/*     34 */	adds	w4, w3, 2
/*     34 */	bmi	.L213
/*     34 */	adrp	x0, c
/*     34 */	adrp	x3, b
/*     34 */	add	x0, x0, :lo12:c
/*     34 */	add	x3, x3, :lo12:b
/*     34 */	adrp	x5, a
/*     34 */	add	x5, x5, :lo12:a
.L228:					// :entr:term:mod
/*      0 */	ld1d	z1.d, p0/z, [x0, x2, lsl #3]	//  "c"
/*      0 */	fdup	z2.d, 3.000000e+00
/*      0 */	ld1d	z0.d, p0/z, [x3, x2, lsl #3]	//  "b"
/*     35 */	subs	w4, w4, 1
/*      0 */	fmad	z1.d, p0/m, z2.d, z0.d
/*      0 */	st1d	z1.d, p0, [x5, x2, lsl #3]	//  "a"
/*     35 */	add	x2, x2, 8
/*     35 */	bpl	.L228
.L213:
/*     34 */	sbfiz	x0, x8, 3, 32
/*     34 */	add	x0, x0, x1
/*     34 */	cbz	w9, .L218
/*     34 */	adrp	x1, c
/*      0 */	fmov	d0, 3.000000e+00
/*     34 */	add	x1, x1, :lo12:c
/*     34 */	adrp	x2, b
/*     34 */	adrp	x3, a
/*     34 */	add	x2, x2, :lo12:b
/*     34 */	add	x3, x3, :lo12:a
.L215:					// :entr:term
/*      0 */	ldr	d2, [x1, x0, lsl #3]	//  "c"
/*      0 */	ldr	d1, [x2, x0, lsl #3]	//  "b"
/*     35 */	subs	w9, w9, 1
/*      0 */	fmadd	d1, d2, d0, d1
/*      0 */	str	d1, [x3, x0, lsl #3]	//  "a"
/*     35 */	add	x0, x0, 1
/*     35 */	bne	.L215
.L218:
/*    ??? */	ldp	d8, d9, [sp, 8]	//  (*)
/*    ??? */	ldp	d10, d11, [sp, 24]	//  (*)
/*    ??? */	ldp	d12, d13, [sp, 40]	//  (*)
/*    ??? */	ldp	d14, d15, [sp, 56]	//  (*)
/*    ??? */	ldr	x30, [sp], 128	//  (*)
/*     35 */	ret	
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
	.ascii "GFLOPS\040=\040%lf\012\000"
	.type	.LR.3, %object
	.size	.LR.3,.-.LR.3
	.section	.rodata
	.align	3
.LR.4:
	.ascii "time\040=\040%lf\040[msec]\012\000"
	.type	.LR.4, %object
	.size	.LR.4,.-.LR.4
	.section	.rodata
	.align	3
.LR.5:
	.ascii "%d\040of\040%d\012\000"
	.type	.LR.5, %object
	.size	.LR.5,.-.LR.5
	.local	time.6
	.comm	time.6,8,8
	.comm	c,2514944,256
	.comm	b,2514944,256
	.comm	a,2514944,256
	.section	.note.GNU-stack,"",%progbits
