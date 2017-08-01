	.ident	"$Options: Fujitsu C/C++ Compiler Version 1.2.0 P-id: Alpha-20170330 (Mar 24 2017 17:23:55) --preinclude /opt/FJTComp4/bin/../lib/c99.pre --gcc --c99 -D__FUJITSU -Dunix -D__aarch64__ -D__unix -D_OPENMP=201107 -D__fcc_version__=0x700 -D__fcc_version=700 -D__USER_LABEL_PREFIX__= -D__OPTIMIZE__ -D__ARM_ARCH=8 -D__FP_FAST_FMA -D__ELF__ -D__unix__ -D__linux__ -D__linux -Asystem(unix) -Dlinux -D__LIBC_6B -D__LP64__ -D_LP64 --K=omp -I../../include --K=noocl -D_REENTRANT -D__MT__ --zmode=64 --sys_include=/opt/FJTComp4/bin/../include --sys_include=/opt/ARM/aarch64-linux-gnu/sysroot-linaro-eglibc-gcc4.9-2014.11-aarch64-linux-gnu/usr/include --K=opt triad-3stream.c -- -ncmdname=fccpx -nspopt=\"-Kfast,openmp -Nlst=t -Koptmsg=2 -I../../include -S -o triad-3stream.s\" -Nnoline -zobe=no-static-clump -O3 -x- -Komitfp,mfunc,rdconv,eval,fp_relaxed,ns,fast_matmul,fp_contract,ilfunc,prefetch_conditional,openmp,threadsafe -Nlst=t -Koptmsg=2 -zsta=am -zsrc=triad-3stream.c triad-3stream.s $"
	.file	"triad-3stream.c"
	.ident	"$Compiler: Fujitsu C/C++ Compiler Version 1.2.0 P-id: Alpha-20170330 (Mar 24 2017 17:23:55) triad-3stream.c get_dtime $"
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
	.ident	"$Compiler: Fujitsu C/C++ Compiler Version 1.2.0 P-id: Alpha-20170330 (Mar 24 2017 17:23:55) triad-3stream.c main $"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
/*    ??? */	stp	x19, x20, [sp, -96]!	//  (*)
/*    ??? */	stp	x21, x22, [sp, 16]	//  (*)
/*    ??? */	str	x30, [sp, 32]	//  (*)
/*    ??? */	str	d8, [sp, 40]	//  (*)
/*     26 */	add	x19, sp, 56
/*     26 */	mov	x20, 0
/*     26 */	adrp	x0, main._OMP_1
/*     26 */	add	x0, x0, :lo12:main._OMP_1
/*     26 */	mov	x1, x19
/*     26 */	mov	x2, x20
/*     26 */	bl	__mpc_opar
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
/*     46 */	adrp	x0, main._OMP_2
/*     46 */	mov	x1, x19
/*     46 */	mov	x2, x20
/*     46 */	add	x0, x0, :lo12:main._OMP_2
/*     46 */	bl	__mpc_opar
/*     16 */	add	x19, sp, 80
/*     16 */	mov	w0, w21
/*     16 */	mov	x1, x19
/*     16 */	bl	clock_gettime
/*     17 */	ldr	x1, [x19]	//  "ts"
/*     17 */	ldr	x2, [x19, 8]	//  "ts"
/*     53 */	ldr	d0, [x22, :lo12:time.6]	//  "time"
/*     55 */	ldr	d2, .LC3
/*     55 */	adrp	x0, .LR.4
/*     55 */	add	x0, x0, :lo12:.LR.4
/*     17 */	scvtf	d1, x1
/*     17 */	scvtf	d3, x2
/*     17 */	fmadd	d1, d3, d8, d1
/*     53 */	fsub	d1, d1, d0
/*     55 */	fmul	d0, d1, d2
/*     53 */	str	d1, [x22, :lo12:time.6]	//  "time"
/*     55 */	bl	printf
/*     56 */	ldr	d0, [x22, :lo12:time.6]	//  "time"
/*     56 */	ldr	d1, .LC4
/*     56 */	adrp	x0, .LR.3
/*     56 */	add	x0, x0, :lo12:.LR.3
/*     56 */	frecpe	d3, d0
/*     56 */	frecps	d2, d0, d3
/*     56 */	fmul	d3, d2, d3
/*     56 */	frecps	d2, d0, d3
/*     56 */	fmul	d2, d2, d3
/*     56 */	frecps	d0, d0, d2
/*     56 */	fmul	d0, d0, d2
/*     56 */	fmul	d0, d1, d0
/*     56 */	bl	printf
/*     57 */	ldr	d1, [x22, :lo12:time.6]	//  "time"
/*     57 */	ldr	d2, .LC5
/*     57 */	adrp	x0, .LR.2
/*     57 */	add	x0, x0, :lo12:.LR.2
/*     57 */	frecpe	d0, d1
/*     57 */	frecps	d3, d1, d0
/*     57 */	fmul	d3, d3, d0
/*     57 */	frecps	d0, d1, d3
/*     57 */	fmul	d0, d0, d3
/*     57 */	frecps	d1, d1, d0
/*     57 */	fmul	d0, d1, d0
/*     57 */	fmul	d0, d2, d0
/*     57 */	bl	printf
/*     58 */	adrp	x2, a0
/*     58 */	adrp	x3, a1
/*     58 */	mov	x1, 52216
/*     58 */	adrp	x0, .LR.1
/*     58 */	add	x2, x2, :lo12:a0
/*     58 */	add	x3, x3, :lo12:a1
/*     58 */	adrp	x4, a2
/*     58 */	add	x4, x4, :lo12:a2
/*     58 */	movk	x1, 12, lsl #16
/*     58 */	add	x0, x0, :lo12:.LR.1
/*     58 */	ldr	d0, [x2, x1]	//  "a0"
/*     58 */	ldr	d1, [x3, x1]	//  "a1"
/*     58 */	ldr	d2, [x4, x1]	//  "a2"
/*     58 */	bl	printf
/*     60 */	mov	w0, 0
/*    ??? */	ldp	x21, x22, [sp, 16]	//  (*)
/*    ??? */	ldr	d8, [sp, 40]	//  (*)
/*    ??? */	ldr	x30, [sp, 32]	//  (*)
/*    ??? */	ldp	x19, x20, [sp], 96	//  (*)
/*     61 */	ret	
	.size	main, .-main
	.align	3
.LC2:
	.word	0xe826d695,0x3e112e0b
	.align	3
.LC3:
	.word	0,0x408f4000
	.align	3
.LC4:
	.word	0xbda203f,0x3f2b7b28
	.align	3
.LC5:
	.word	0xd556447,0x3f7eea8d
	.ident	"$Compiler: Fujitsu C/C++ Compiler Version 1.2.0 P-id: Alpha-20170330 (Mar 24 2017 17:23:55) triad-3stream.c main._OMP_1 $"
	.text
	.align	2
	.type	main._OMP_1, %function
main._OMP_1:
/*    ??? */	stp	x19, x20, [sp, -96]!	//  (*)
/*    ??? */	str	x30, [sp, 16]	//  (*)
/*    ??? */	stp	d8, d9, [sp, 24]	//  (*)
/*     18 */	str	x0, [sp, 56]	//  ___10
/*     18 */	str	x1, [sp, 64]	//  ___11
/*     18 */	str	x2, [sp, 72]	//  ___12
/*     18 */	str	x3, [sp, 80]	//  ___13
/*     18 */	str	x4, [sp, 88]	//  ___14
/*     18 */	str	x0, [sp, 48]	//  ___47
/*     26 */	ldr	x0, [sp, 48]	//  ___47
/*     26 */	ldr	w0, [x0, 4]	//  ___1
/*     28 */	adrp	x0, .LR.5
/*     28 */	add	x20, x0, :lo12:.LR.5
/*     28 */	bl	omp_get_num_threads
/*     28 */	mov	w19, w0
/*     28 */	bl	omp_get_thread_num
/*     28 */	mov	w2, w0
/*     28 */	mov	x0, x20
/*     28 */	mov	w1, w19
/*     28 */	bl	printf
/*     31 */	mov	x0, 39296
/*     31 */	ldr	x1, [sp, 64]	//  ___11
/*     31 */	movk	x0, 1, lsl #16
/*     31 */	sdiv	x2, x0, x1
/*     31 */	msub	x0, x1, x2, x0
/*     31 */	cbnz	x0, .L177
/*     31 */	ldr	x0, [sp, 72]	//  ___12
/*     31 */	mul	x0, x0, x2
/*     31 */	b	.L180
.L177:
/*     31 */	ldr	x1, [sp, 72]	//  ___12
/*     31 */	cmp	x1, x0
/*     31 */	blt	.L179
/*     31 */	madd	x0, x1, x2, x0
/*     31 */	b	.L180
.L179:
/*     31 */	add	x2, x2, 1
/*     31 */	mul	x0, x1, x2
.L180:
/*     31 */	sub	x1, x2, 1
/*     31 */	add	x1, x1, x0
/*     31 */	cbz	x2, .L191
/*     31 */	ptrue	p0.d, VL8
/*     31 */	sub	w2, w1, w0
/*     32 */	sxtw	x1, w0
/*     31 */	add	w2, w2, 1
/*     34 */	add	w11, w0, 3
/*     31 */	cmp	w2, 1
/*     31 */	mov	x3, 0
/*     31 */	csinc	w0, w2, wzr, ge
/*     31 */	asr	w2, w0, 2
/*     31 */	add	w2, w0, w2, lsr #29
/*     31 */	asr	w12, w2, 3
/*     31 */	sub	w10, w0, w12, lsl #3
/*     31 */	cbz	w12, .L186
/*     31 */	sxtw	x0, w11
/*     31 */	index	z2.d, x1, 1
/*     41 */	sub	w13, w12, 2
/*     31 */	index	z0.d, x0, 1
/*     41 */	cmp	w13, 0
/*     31 */	mov	x2, x1
/*     31 */	mov	x4, 0
/*     41 */	blt	.L194
/*     41 */	adrp	x4, a2
/*     38 */	lsl	x0, x1, 3
/*     38 */	fmov	z7.d, 0.000000e+00
/*     41 */	adrp	x5, a1
/*     41 */	add	x16, x4, :lo12:a2
/*     41 */	adrp	x4, c2
/*     41 */	add	x8, x5, :lo12:a1
/*     38 */	add	x0, x0, 64
/*     41 */	add	x14, x4, :lo12:c2
/*     41 */	adrp	x5, c1
/*     41 */	adrp	x4, c0
/*     41 */	add	x7, x5, :lo12:c1
/*     41 */	adrp	x5, b2
/*     41 */	add	x15, x4, :lo12:c0
/*     41 */	adrp	x4, b1
/*     41 */	add	x6, x5, :lo12:b2
/*     41 */	add	x19, x4, :lo12:b1
/*     41 */	adrp	x5, b0
/*     40 */	add	x17, x14, x0
/*     41 */	adrp	x4, a0
/*     41 */	add	x9, x5, :lo12:b0
/*     39 */	add	x18, x6, x0
/*     41 */	add	x5, x4, :lo12:a0
/*     32 */	mov	x4, x3
/*     38 */	add	x16, x16, x0
/*     35 */	add	x8, x8, x0
/*     37 */	add	x14, x7, x0
/*     37 */	add	x15, x15, x0
/*     36 */	add	x19, x19, x0
/*     36 */	add	x6, x9, x0
/*     32 */	add	x5, x5, x0
/*     31 */	cmp	w13, 6
/*     31 */	blt	.L252
/*     34 */	dup	z1.d, x3
/*     41 */	add	x20, x4, 8
/*     41 */	add	x3, x3, 8
/*     33 */	dup	z3.d, x4
/*     33 */	dup	z5.d, x20
/*     34 */	dup	z4.d, x3
/*     34 */	add	z1.d, z1.d, z0.d
/*     33 */	add	z3.d, z3.d, z2.d
/*     34 */	scvtf	z8.d, p0/m, z1.d
/*     33 */	scvtf	z9.d, p0/m, z3.d
.L184:					// :entr:term:body:swpl
/*     40 */	st1d	z8.d, p0, [x17, -1, mul vl]	//  "c2"
/*     41 */	add	x0, x3, 8
/*     34 */	add	z4.d, z4.d, z0.d
/*     34 */	dup	z1.d, x0
/*     37 */	st1d	z8.d, p0, [x14, -1, mul vl]	//  "c1"
/*     37 */	st1d	z8.d, p0, [x15, -1, mul vl]	//  "c0"
/*     41 */	add	x0, x20, 8
/*     33 */	add	z5.d, z5.d, z2.d
/*     33 */	dup	z3.d, x0
/*     38 */	st1d	z7.d, p0, [x16, -1, mul vl]	//  "a2"
/*     34 */	scvtf	z6.d, p0/m, z4.d
/*     39 */	st1d	z9.d, p0, [x18, -1, mul vl]	//  "b2"
/*     36 */	st1d	z9.d, p0, [x19, -1, mul vl]	//  "b1"
/*     36 */	st1d	z9.d, p0, [x6, -1, mul vl]	//  "b0"
/*     33 */	scvtf	z5.d, p0/m, z5.d
/*     41 */	add	x0, x20, 16
/*     34 */	add	z1.d, z1.d, z0.d
/*     33 */	dup	z4.d, x0
/*     32 */	st1d	z7.d, p0, [x5, -1, mul vl]	//  "a0"
/*     38 */	st1d	z7.d, p0, [x16, 0, mul vl]	//  "a2"
/*     35 */	st1d	z7.d, p0, [x8, 0, mul vl]	//  "a1"
/*     41 */	add	x0, x3, 16
/*     34 */	scvtf	z8.d, p0/m, z1.d
/*     34 */	dup	z1.d, x0
/*     40 */	st1d	z6.d, p0, [x17, 0, mul vl]	//  "c2"
/*     37 */	st1d	z6.d, p0, [x14, 0, mul vl]	//  "c1"
/*     33 */	add	z3.d, z3.d, z2.d
/*     37 */	st1d	z6.d, p0, [x15, 0, mul vl]	//  "c0"
/*     39 */	st1d	z5.d, p0, [x18, 0, mul vl]	//  "b2"
/*     36 */	st1d	z5.d, p0, [x19, 0, mul vl]	//  "b1"
/*     36 */	st1d	z5.d, p0, [x6, 0, mul vl]	//  "b0"
/*     33 */	scvtf	z5.d, p0/m, z3.d
/*     32 */	st1d	z7.d, p0, [x5, 0, mul vl]	//  "a0"
/*     35 */	st1d	z7.d, p0, [x8, -1, mul vl]	//  "a1"
/*     40 */	st1d	z8.d, p0, [x17, 1, mul vl]	//  "c2"
/*     41 */	add	x0, x3, 24
/*     34 */	add	z1.d, z1.d, z0.d
/*     34 */	dup	z3.d, x0
/*     37 */	st1d	z8.d, p0, [x14, 1, mul vl]	//  "c1"
/*     37 */	st1d	z8.d, p0, [x15, 1, mul vl]	//  "c0"
/*     41 */	add	x0, x20, 24
/*     33 */	add	z4.d, z4.d, z2.d
/*     33 */	dup	z6.d, x0
/*     38 */	st1d	z7.d, p0, [x16, 1, mul vl]	//  "a2"
/*     34 */	scvtf	z1.d, p0/m, z1.d
/*     39 */	st1d	z5.d, p0, [x18, 1, mul vl]	//  "b2"
/*     36 */	st1d	z5.d, p0, [x19, 1, mul vl]	//  "b1"
/*     36 */	st1d	z5.d, p0, [x6, 1, mul vl]	//  "b0"
/*     33 */	scvtf	z9.d, p0/m, z4.d
/*     41 */	add	x20, x20, 32
/*     34 */	add	z3.d, z3.d, z0.d
/*     33 */	dup	z5.d, x20
/*     32 */	st1d	z7.d, p0, [x5, 1, mul vl]	//  "a0"
/*     38 */	st1d	z7.d, p0, [x16, 2, mul vl]	//  "a2"
/*     35 */	st1d	z7.d, p0, [x8, 2, mul vl]	//  "a1"
/*     41 */	add	x3, x3, 32
/*     34 */	scvtf	z8.d, p0/m, z3.d
/*     34 */	dup	z4.d, x3
/*     40 */	st1d	z1.d, p0, [x17, 2, mul vl]	//  "c2"
/*     37 */	st1d	z1.d, p0, [x14, 2, mul vl]	//  "c1"
/*     33 */	add	z6.d, z6.d, z2.d
/*     37 */	st1d	z1.d, p0, [x15, 2, mul vl]	//  "c0"
/*     41 */	add	x2, x2, 32
/*     39 */	st1d	z9.d, p0, [x18, 2, mul vl]	//  "b2"
/*     41 */	add	x5, x5, 256
/*     41 */	add	x6, x6, 256
/*     36 */	st1d	z9.d, p0, [x19, 2, mul vl]	//  "b1"
/*     41 */	add	x19, x19, 256
/*     41 */	add	x18, x18, 256
/*     36 */	st1d	z9.d, p0, [x6, -2, mul vl]	//  "b0"
/*     33 */	scvtf	z9.d, p0/m, z6.d
/*     41 */	add	x15, x15, 256
/*     41 */	add	x14, x14, 256
/*     32 */	st1d	z7.d, p0, [x5, -2, mul vl]	//  "a0"
/*     41 */	add	x17, x17, 256
/*     41 */	add	x8, x8, 256
/*     35 */	st1d	z7.d, p0, [x8, -3, mul vl]	//  "a1"
/*     41 */	add	x16, x16, 256
/*     41 */	sub	w13, w13, 4
/*     41 */	cmp	w13, 6
/*     41 */	bge	.L184
/*     34 */	add	z4.d, z4.d, z0.d
/*     33 */	add	z5.d, z5.d, z2.d
/*     41 */	add	x0, x5, 128
/*     41 */	add	x7, x6, 128
/*     40 */	st1d	z8.d, p0, [x17, -1, mul vl]	//  "c2"
/*     41 */	add	x3, x3, 8
/*     41 */	add	x9, x8, 128
/*     37 */	st1d	z8.d, p0, [x14, -1, mul vl]	//  "c1"
/*     41 */	add	x4, x20, 8
/*     41 */	add	x2, x2, 16
/*     37 */	st1d	z8.d, p0, [x15, -1, mul vl]	//  "c0"
/*     41 */	sub	w13, w13, 2
/*     34 */	scvtf	z1.d, p0/m, z4.d
/*     33 */	scvtf	z3.d, p0/m, z5.d
/*     38 */	st1d	z7.d, p0, [x16, -1, mul vl]	//  "a2"
/*     39 */	st1d	z9.d, p0, [x18, -1, mul vl]	//  "b2"
/*     36 */	st1d	z9.d, p0, [x19, -1, mul vl]	//  "b1"
/*     36 */	st1d	z9.d, p0, [x6, -1, mul vl]	//  "b0"
/*     32 */	st1d	z7.d, p0, [x5, -1, mul vl]	//  "a0"
/*     35 */	st1d	z7.d, p0, [x8, 0, mul vl]	//  "a1"
/*     38 */	st1d	z7.d, p0, [x16, 0, mul vl]	//  "a2"
/*     41 */	add	x16, x16, 128
/*     32 */	st1d	z7.d, p0, [x5, 0, mul vl]	//  "a0"
/*     41 */	mov	x5, x0
/*     40 */	st1d	z1.d, p0, [x17, 0, mul vl]	//  "c2"
/*     41 */	add	x17, x17, 128
/*     37 */	st1d	z1.d, p0, [x14, 0, mul vl]	//  "c1"
/*     41 */	add	x14, x14, 128
/*     37 */	st1d	z1.d, p0, [x15, 0, mul vl]	//  "c0"
/*     41 */	add	x15, x15, 128
/*     39 */	st1d	z3.d, p0, [x18, 0, mul vl]	//  "b2"
/*     41 */	add	x18, x18, 128
/*     36 */	st1d	z3.d, p0, [x19, 0, mul vl]	//  "b1"
/*     41 */	add	x19, x19, 128
/*     36 */	st1d	z3.d, p0, [x6, 0, mul vl]	//  "b0"
/*     41 */	mov	x6, x7
/*     35 */	st1d	z7.d, p0, [x8, -1, mul vl]	//  "a1"
/*     41 */	mov	x8, x9
.L252:
.L255:					// :entr:term:mod:swpl
/*     34 */	dup	z1.d, x3
/*     41 */	add	x7, x3, 8
/*     41 */	add	x0, x4, 8
/*     33 */	dup	z3.d, x4
/*     41 */	add	x3, x7, 8
/*     41 */	add	x4, x0, 8
/*     34 */	dup	z4.d, x7
/*     41 */	add	x2, x2, 16
/*     41 */	subs	w13, w13, 2
/*     33 */	dup	z5.d, x0
/*     38 */	st1d	z7.d, p0, [x16, -1, mul vl]	//  "a2"
/*     35 */	st1d	z7.d, p0, [x8, -1, mul vl]	//  "a1"
/*     32 */	st1d	z7.d, p0, [x5, -1, mul vl]	//  "a0"
/*     38 */	st1d	z7.d, p0, [x16, 0, mul vl]	//  "a2"
/*     41 */	add	x16, x16, 128
/*     34 */	add	z1.d, z1.d, z0.d
/*     33 */	add	z3.d, z3.d, z2.d
/*     34 */	add	z4.d, z4.d, z0.d
/*     33 */	add	z5.d, z5.d, z2.d
/*     34 */	scvtf	z1.d, p0/m, z1.d
/*     33 */	scvtf	z3.d, p0/m, z3.d
/*     34 */	scvtf	z4.d, p0/m, z4.d
/*     33 */	scvtf	z5.d, p0/m, z5.d
/*     35 */	st1d	z7.d, p0, [x8, 0, mul vl]	//  "a1"
/*     41 */	add	x8, x8, 128
/*     32 */	st1d	z7.d, p0, [x5, 0, mul vl]	//  "a0"
/*     41 */	add	x5, x5, 128
/*     40 */	st1d	z1.d, p0, [x17, -1, mul vl]	//  "c2"
/*     37 */	st1d	z1.d, p0, [x14, -1, mul vl]	//  "c1"
/*     37 */	st1d	z1.d, p0, [x15, -1, mul vl]	//  "c0"
/*     39 */	st1d	z3.d, p0, [x18, -1, mul vl]	//  "b2"
/*     36 */	st1d	z3.d, p0, [x19, -1, mul vl]	//  "b1"
/*     36 */	st1d	z3.d, p0, [x6, -1, mul vl]	//  "b0"
/*     40 */	st1d	z4.d, p0, [x17, 0, mul vl]	//  "c2"
/*     41 */	add	x17, x17, 128
/*     37 */	st1d	z4.d, p0, [x14, 0, mul vl]	//  "c1"
/*     41 */	add	x14, x14, 128
/*     37 */	st1d	z4.d, p0, [x15, 0, mul vl]	//  "c0"
/*     41 */	add	x15, x15, 128
/*     39 */	st1d	z5.d, p0, [x18, 0, mul vl]	//  "b2"
/*     41 */	add	x18, x18, 128
/*     36 */	st1d	z5.d, p0, [x19, 0, mul vl]	//  "b1"
/*     41 */	add	x19, x19, 128
/*     36 */	st1d	z5.d, p0, [x6, 0, mul vl]	//  "b0"
/*     41 */	add	x6, x6, 128
/*     41 */	bpl	.L255
.L194:
/*     41 */	adds	w8, w13, 1
/*     41 */	bmi	.L186
/*     41 */	adrp	x5, a2
/*     41 */	adrp	x0, a1
/*     41 */	add	x7, x5, :lo12:a2
/*     41 */	add	x6, x0, :lo12:a1
/*     41 */	adrp	x0, c2
/*     41 */	adrp	x9, b2
/*     41 */	adrp	x5, c1
/*     41 */	add	x0, x0, :lo12:c2
/*     41 */	add	x14, x9, :lo12:b2
/*     41 */	add	x5, x5, :lo12:c1
/*     41 */	adrp	x13, c0
/*     41 */	adrp	x9, b1
/*     41 */	add	x13, x13, :lo12:c0
/*     41 */	adrp	x15, b0
/*     41 */	add	x9, x9, :lo12:b1
/*     41 */	adrp	x16, a0
/*     41 */	add	x15, x15, :lo12:b0
/*     41 */	add	x16, x16, :lo12:a0
.L200:					// :entr:term:mod
/*     34 */	dup	z1.d, x3
/*     41 */	add	x3, x3, 8
/*     41 */	subs	w8, w8, 1
/*     33 */	dup	z3.d, x4
/*     41 */	add	x4, x4, 8
/*     38 */	fmov	z4.d, 0.000000e+00
/*     38 */	st1d	z4.d, p0, [x7, x2, lsl #3]	//  "a2"
/*     35 */	st1d	z4.d, p0, [x6, x2, lsl #3]	//  "a1"
/*     34 */	add	z1.d, z1.d, z0.d
/*     33 */	add	z3.d, z3.d, z2.d
/*     32 */	st1d	z4.d, p0, [x16, x2, lsl #3]	//  "a0"
/*     34 */	scvtf	z1.d, p0/m, z1.d
/*     33 */	scvtf	z3.d, p0/m, z3.d
/*     40 */	st1d	z1.d, p0, [x0, x2, lsl #3]	//  "c2"
/*     37 */	st1d	z1.d, p0, [x5, x2, lsl #3]	//  "c1"
/*     37 */	st1d	z1.d, p0, [x13, x2, lsl #3]	//  "c0"
/*     39 */	st1d	z3.d, p0, [x14, x2, lsl #3]	//  "b2"
/*     36 */	st1d	z3.d, p0, [x9, x2, lsl #3]	//  "b1"
/*     36 */	st1d	z3.d, p0, [x15, x2, lsl #3]	//  "b0"
/*     41 */	add	x2, x2, 8
/*     41 */	bpl	.L200
.L186:
/*     31 */	sbfiz	x2, x12, 3, 32
/*     31 */	add	x0, x2, x1
/*     31 */	cbz	w10, .L191
/*     34 */	add	x7, x2, w11, sxtw #0
/*     31 */	mov	x1, x0
/*     31 */	adrp	x3, c2
/*     38 */	ldr	x8, .LC6
/*     31 */	add	x9, x3, :lo12:c2
/*     31 */	adrp	x5, c1
/*     31 */	adrp	x2, a2
/*     31 */	adrp	x3, c0
/*     31 */	add	x12, x5, :lo12:c1
/*     31 */	add	x4, x2, :lo12:a2
/*     31 */	adrp	x2, a1
/*     31 */	add	x5, x3, :lo12:c0
/*     31 */	adrp	x6, b2
/*     31 */	add	x2, x2, :lo12:a1
/*     31 */	adrp	x3, b1
/*     31 */	add	x13, x6, :lo12:b2
/*     31 */	add	x3, x3, :lo12:b1
/*     31 */	adrp	x6, b0
/*     31 */	adrp	x11, a0
/*     31 */	add	x6, x6, :lo12:b0
/*     31 */	add	x11, x11, :lo12:a0
.L188:					// :entr:term
/*     34 */	scvtf	d1, x7
/*     33 */	scvtf	d0, x1
/*     41 */	add	x7, x7, 1
/*     41 */	add	x1, x1, 1
/*     38 */	str	x8, [x4, x0, lsl #3]	//  "a2"
/*     41 */	subs	w10, w10, 1
/*     35 */	str	x8, [x2, x0, lsl #3]	//  "a1"
/*     32 */	str	x8, [x11, x0, lsl #3]	//  "a0"
/*     40 */	fmov	x14, d1
/*     39 */	fmov	x15, d0
/*     40 */	str	x14, [x9, x0, lsl #3]	//  "c2"
/*     37 */	str	x14, [x12, x0, lsl #3]	//  "c1"
/*     37 */	str	x14, [x5, x0, lsl #3]	//  "c0"
/*     39 */	str	x15, [x13, x0, lsl #3]	//  "b2"
/*     36 */	str	x15, [x3, x0, lsl #3]	//  "b1"
/*     36 */	str	x15, [x6, x0, lsl #3]	//  "b0"
/*     41 */	add	x0, x0, 1
/*     41 */	bne	.L188
.L191:
/*     41 */	ldr	x0, [sp, 80]	//  ___13
/*     41 */	bl	__mpc_obar
/*    ??? */	ldr	x30, [sp, 16]	//  (*)
/*    ??? */	ldp	d8, d9, [sp, 24]	//  (*)
/*    ??? */	ldp	x19, x20, [sp], 96	//  (*)
/*     42 */	ret	
	.size	main._OMP_1, .-main._OMP_1
	.align	3
.LC6:
	.word	0,0
	.ident	"$Compiler: Fujitsu C/C++ Compiler Version 1.2.0 P-id: Alpha-20170330 (Mar 24 2017 17:23:55) triad-3stream.c main._OMP_2 $"
	.text
	.align	2
	.type	main._OMP_2, %function
main._OMP_2:
/*    ??? */	stp	x19, x30, [sp, -128]!	//  (*)
/*    ??? */	stp	d8, d9, [sp, 16]	//  (*)
/*    ??? */	stp	d10, d11, [sp, 32]	//  (*)
/*    ??? */	stp	d12, d13, [sp, 48]	//  (*)
/*    ??? */	stp	d14, d15, [sp, 64]	//  (*)
/*     42 */	str	x0, [sp, 88]	//  ___15
/*     42 */	str	x1, [sp, 96]	//  ___16
/*     42 */	str	x2, [sp, 104]	//  ___17
/*     42 */	str	x3, [sp, 112]	//  ___18
/*     42 */	str	x4, [sp, 120]	//  ___19
/*     42 */	str	x0, [sp, 80]	//  ___48
/*     46 */	ldr	x0, [sp, 80]	//  ___48
/*     46 */	ldr	w0, [x0]	//  ___2
/*     47 */	mov	x0, 39296
/*     47 */	ldr	x1, [sp, 96]	//  ___16
/*     47 */	movk	x0, 1, lsl #16
/*     47 */	sdiv	x2, x0, x1
/*     47 */	msub	x1, x1, x2, x0
/*     47 */	cbnz	x1, .L204
/*     47 */	ldr	x0, [sp, 104]	//  ___17
/*     47 */	mul	x0, x0, x2
/*     47 */	b	.L207
.L204:
/*     47 */	ldr	x0, [sp, 104]	//  ___17
/*     47 */	cmp	x0, x1
/*     47 */	blt	.L206
/*     47 */	madd	x0, x0, x2, x1
/*     47 */	b	.L207
.L206:
/*     47 */	add	x2, x2, 1
/*     47 */	mul	x0, x0, x2
.L207:
/*     47 */	sub	x1, x2, 1
/*     47 */	add	x1, x1, x0
/*     47 */	cbz	x2, .L217
/*     47 */	ptrue	p0.d, VL8
/*     47 */	sub	w2, w1, w0
/*     48 */	sxtw	x1, w0
/*     47 */	add	w0, w2, 1
/*     47 */	cmp	w0, 1
/*     47 */	csinc	w0, w0, wzr, ge
/*     47 */	asr	w2, w0, 2
/*     47 */	add	w2, w0, w2, lsr #29
/*     47 */	asr	w5, w2, 3
/*     47 */	sub	w3, w0, w5, lsl #3
/*     47 */	cbz	w5, .L212
/*     47 */	sub	w7, w5, 2
/*     47 */	mov	x2, x1
/*     47 */	cmp	w7, 0
/*     47 */	blt	.L220
/*     47 */	adrp	x4, c2
/*     50 */	lsl	x0, x1, 3
/*     50 */	fdup	z2.d, 3.000000e+00
/*     47 */	adrp	x6, b2
/*     47 */	add	x11, x4, :lo12:c2
/*     47 */	adrp	x4, a2
/*     50 */	add	x0, x0, 64
/*     47 */	add	x8, x6, :lo12:b2
/*     47 */	add	x10, x4, :lo12:a2
/*     47 */	adrp	x6, c1
/*     47 */	adrp	x4, b1
/*     47 */	add	x15, x6, :lo12:c1
/*     47 */	adrp	x6, a1
/*     47 */	add	x9, x4, :lo12:b1
/*     47 */	adrp	x4, c0
/*     50 */	add	x13, x11, x0
/*     47 */	add	x14, x6, :lo12:a1
/*     47 */	adrp	x12, b0
/*     50 */	add	x11, x10, x0
/*     47 */	add	x4, x4, :lo12:c0
/*     47 */	adrp	x6, a0
/*     49 */	add	x10, x15, x0
/*     47 */	add	x12, x12, :lo12:b0
/*     48 */	add	x15, x4, x0
/*     47 */	add	x6, x6, :lo12:a0
/*     48 */	add	x4, x12, x0
/*     47 */	cmp	w7, 8
/*     50 */	add	x8, x8, x0
/*     49 */	add	x9, x9, x0
/*     49 */	add	x14, x14, x0
/*     48 */	add	x12, x6, x0
/*     47 */	blt	.L263
/*     50 */	ld1d	z1.d, p0/z, [x13, -1, mul vl]	//  "c2"
/*     50 */	ld1d	z0.d, p0/z, [x8, -1, mul vl]	//  "b2"
/*     51 */	add	x6, x13, 128
/*     51 */	add	x17, x8, 128
/*     49 */	ld1d	z4.d, p0/z, [x10, -1, mul vl]	//  "c1"
/*     49 */	ld1d	z3.d, p0/z, [x9, -1, mul vl]	//  "b1"
/*     51 */	add	x0, x10, 128
/*     51 */	add	x19, x9, 128
/*     48 */	ld1d	z6.d, p0/z, [x15, -1, mul vl]	//  "c0"
/*     48 */	ld1d	z5.d, p0/z, [x4, -1, mul vl]	//  "b0"
/*     51 */	add	x18, x15, 128
/*     51 */	add	x16, x4, 128
/*     50 */	ld1d	z8.d, p0/z, [x13, 0, mul vl]	//  "c2"
/*     50 */	ld1d	z14.d, p0/z, [x13, 1, mul vl]	//  "c2"
/*     51 */	add	x13, x13, 256
/*     50 */	ld1d	z7.d, p0/z, [x8, 0, mul vl]	//  "b2"
/*     49 */	ld1d	z10.d, p0/z, [x10, 0, mul vl]	//  "c1"
/*     50 */	ld1d	z13.d, p0/z, [x8, 1, mul vl]	//  "b2"
/*     49 */	ld1d	z9.d, p0/z, [x9, 0, mul vl]	//  "b1"
/*     48 */	ld1d	z12.d, p0/z, [x15, 0, mul vl]	//  "c0"
/*     48 */	ld1d	z11.d, p0/z, [x4, 0, mul vl]	//  "b0"
/*     49 */	ld1d	z16.d, p0/z, [x10, 1, mul vl]	//  "c1"
/*     49 */	ld1d	z15.d, p0/z, [x9, 1, mul vl]	//  "b1"
/*     48 */	ld1d	z17.d, p0/z, [x15, 1, mul vl]	//  "c0"
/*     50 */	fmad	z1.d, p0/m, z2.d, z0.d
/*     48 */	ld1d	z0.d, p0/z, [x4, 1, mul vl]	//  "b0"
/*     49 */	fmad	z4.d, p0/m, z2.d, z3.d
/*     48 */	fmad	z6.d, p0/m, z2.d, z5.d
.L210:					// :entr:term:body:swpl
/*     50 */	ld1d	z5.d, p0/z, [x6, 0, mul vl]	//  "c2"
/*     50 */	fmad	z8.d, p0/m, z2.d, z7.d
/*     50 */	ld1d	z25.d, p0/z, [x13, -1, mul vl]	//  "c2"
/*     50 */	ld1d	z7.d, p0/z, [x17, 0, mul vl]	//  "b2"
/*     49 */	ld1d	z24.d, p0/z, [x0, 0, mul vl]	//  "c1"
/*     49 */	fmad	z10.d, p0/m, z2.d, z9.d
/*     50 */	ld1d	z20.d, p0/z, [x17, 1, mul vl]	//  "b2"
/*     49 */	ld1d	z9.d, p0/z, [x19, 0, mul vl]	//  "b1"
/*     48 */	fmad	z12.d, p0/m, z2.d, z11.d
/*     48 */	ld1d	z23.d, p0/z, [x18, 0, mul vl]	//  "c0"
/*     48 */	ld1d	z11.d, p0/z, [x16, 0, mul vl]	//  "b0"
/*     50 */	st1d	z1.d, p0, [x11, -1, mul vl]	//  "a2"
/*     49 */	ld1d	z18.d, p0/z, [x0, 1, mul vl]	//  "c1"
/*     49 */	ld1d	z19.d, p0/z, [x19, 1, mul vl]	//  "b1"
/*     49 */	st1d	z4.d, p0, [x14, -1, mul vl]	//  "a1"
/*     48 */	ld1d	z21.d, p0/z, [x18, 1, mul vl]	//  "c0"
/*     50 */	movprfx	z1.d, p0/z, z14.d
/*     50 */	fmad	z1.d, p0/m, z2.d, z13.d
/*     48 */	ld1d	z22.d, p0/z, [x16, 1, mul vl]	//  "b0"
/*     48 */	st1d	z6.d, p0, [x12, -1, mul vl]	//  "a0"
/*     50 */	st1d	z8.d, p0, [x11, 0, mul vl]	//  "a2"
/*     49 */	movprfx	z3.d, p0/z, z16.d
/*     49 */	fmad	z3.d, p0/m, z2.d, z15.d
/*     49 */	st1d	z10.d, p0, [x14, 0, mul vl]	//  "a1"
/*     48 */	st1d	z12.d, p0, [x12, 0, mul vl]	//  "a0"
/*     48 */	movprfx	z4.d, p0/z, z17.d
/*     48 */	fmad	z4.d, p0/m, z2.d, z0.d
/*     51 */	add	x6, x13, 128
/*     50 */	ld1d	z8.d, p0/z, [x13, 0, mul vl]	//  "c2"
/*     50 */	fmad	z5.d, p0/m, z2.d, z7.d
/*     50 */	ld1d	z14.d, p0/z, [x13, 1, mul vl]	//  "c2"
/*     50 */	ld1d	z7.d, p0/z, [x17, 2, mul vl]	//  "b2"
/*     49 */	ld1d	z10.d, p0/z, [x0, 2, mul vl]	//  "c1"
/*     51 */	add	x17, x17, 256
/*     49 */	fmad	z24.d, p0/m, z2.d, z9.d
/*     50 */	ld1d	z13.d, p0/z, [x17, -1, mul vl]	//  "b2"
/*     49 */	ld1d	z9.d, p0/z, [x19, 2, mul vl]	//  "b1"
/*     48 */	fmad	z23.d, p0/m, z2.d, z11.d
/*     48 */	ld1d	z12.d, p0/z, [x18, 2, mul vl]	//  "c0"
/*     48 */	ld1d	z11.d, p0/z, [x16, 2, mul vl]	//  "b0"
/*     50 */	st1d	z1.d, p0, [x11, 1, mul vl]	//  "a2"
/*     51 */	add	x0, x0, 256
/*     51 */	add	x19, x19, 256
/*     49 */	ld1d	z16.d, p0/z, [x0, -1, mul vl]	//  "c1"
/*     49 */	ld1d	z15.d, p0/z, [x19, -1, mul vl]	//  "b1"
/*     51 */	add	x18, x18, 256
/*     49 */	st1d	z3.d, p0, [x14, 1, mul vl]	//  "a1"
/*     51 */	add	x16, x16, 256
/*     51 */	add	x2, x2, 32
/*     48 */	ld1d	z17.d, p0/z, [x18, -1, mul vl]	//  "c0"
/*     50 */	movprfx	z1.d, p0/z, z25.d
/*     50 */	fmad	z1.d, p0/m, z2.d, z20.d
/*     51 */	add	x12, x12, 256
/*     48 */	ld1d	z0.d, p0/z, [x16, -1, mul vl]	//  "b0"
/*     48 */	st1d	z4.d, p0, [x12, -3, mul vl]	//  "a0"
/*     51 */	add	x14, x14, 256
/*     50 */	st1d	z5.d, p0, [x11, 2, mul vl]	//  "a2"
/*     49 */	movprfx	z4.d, p0/z, z18.d
/*     49 */	fmad	z4.d, p0/m, z2.d, z19.d
/*     49 */	st1d	z24.d, p0, [x14, -2, mul vl]	//  "a1"
/*     51 */	add	x11, x11, 256
/*     48 */	st1d	z23.d, p0, [x12, -2, mul vl]	//  "a0"
/*     48 */	movprfx	z6.d, p0/z, z21.d
/*     48 */	fmad	z6.d, p0/m, z2.d, z22.d
/*     51 */	add	x13, x13, 256
/*     51 */	sub	w7, w7, 4
/*     51 */	cmp	w7, 8
/*     51 */	bge	.L210
/*     50 */	ld1d	z3.d, p0/z, [x6, 0, mul vl]	//  "c2"
/*     50 */	fmad	z8.d, p0/m, z2.d, z7.d
/*     51 */	add	x8, x17, 128
/*     49 */	fmad	z10.d, p0/m, z2.d, z9.d
/*     50 */	ld1d	z5.d, p0/z, [x17, 0, mul vl]	//  "b2"
/*     48 */	fmad	z12.d, p0/m, z2.d, z11.d
/*     51 */	add	x10, x0, 128
/*     50 */	fmad	z14.d, p0/m, z2.d, z13.d
/*     49 */	ld1d	z7.d, p0/z, [x0, 0, mul vl]	//  "c1"
/*     49 */	ld1d	z9.d, p0/z, [x19, 0, mul vl]	//  "b1"
/*     49 */	fmad	z16.d, p0/m, z2.d, z15.d
/*     48 */	fmad	z17.d, p0/m, z2.d, z0.d
/*     48 */	ld1d	z18.d, p0/z, [x18, 0, mul vl]	//  "c0"
/*     48 */	ld1d	z11.d, p0/z, [x16, 0, mul vl]	//  "b0"
/*     51 */	add	x9, x19, 128
/*     51 */	add	x15, x18, 128
/*     50 */	st1d	z1.d, p0, [x11, -1, mul vl]	//  "a2"
/*     51 */	add	x4, x16, 128
/*     51 */	add	x2, x2, 32
/*     49 */	st1d	z4.d, p0, [x14, -1, mul vl]	//  "a1"
/*     51 */	sub	w7, w7, 4
/*     48 */	st1d	z6.d, p0, [x12, -1, mul vl]	//  "a0"
/*     50 */	st1d	z8.d, p0, [x11, 0, mul vl]	//  "a2"
/*     49 */	st1d	z10.d, p0, [x14, 0, mul vl]	//  "a1"
/*     48 */	st1d	z12.d, p0, [x12, 0, mul vl]	//  "a0"
/*     51 */	add	x12, x12, 256
/*     50 */	fmad	z3.d, p0/m, z2.d, z5.d
/*     49 */	fmad	z7.d, p0/m, z2.d, z9.d
/*     48 */	fmad	z18.d, p0/m, z2.d, z11.d
/*     50 */	st1d	z14.d, p0, [x11, 1, mul vl]	//  "a2"
/*     49 */	st1d	z16.d, p0, [x14, 1, mul vl]	//  "a1"
/*     51 */	add	x14, x14, 256
/*     48 */	st1d	z17.d, p0, [x12, -3, mul vl]	//  "a0"
/*     50 */	st1d	z3.d, p0, [x11, 2, mul vl]	//  "a2"
/*     51 */	add	x11, x11, 256
/*     49 */	st1d	z7.d, p0, [x14, -2, mul vl]	//  "a1"
/*     48 */	st1d	z18.d, p0, [x12, -2, mul vl]	//  "a0"
.L263:
.L266:					// :entr:term:mod:swpl
/*     50 */	ld1d	z1.d, p0/z, [x13, -1, mul vl]	//  "c2"
/*     50 */	ld1d	z0.d, p0/z, [x8, -1, mul vl]	//  "b2"
/*     51 */	add	x2, x2, 16
/*     51 */	subs	w7, w7, 2
/*     49 */	ld1d	z4.d, p0/z, [x10, -1, mul vl]	//  "c1"
/*     49 */	ld1d	z3.d, p0/z, [x9, -1, mul vl]	//  "b1"
/*     48 */	ld1d	z6.d, p0/z, [x15, -1, mul vl]	//  "c0"
/*     48 */	ld1d	z5.d, p0/z, [x4, -1, mul vl]	//  "b0"
/*     50 */	ld1d	z8.d, p0/z, [x13, 0, mul vl]	//  "c2"
/*     50 */	ld1d	z7.d, p0/z, [x8, 0, mul vl]	//  "b2"
/*     51 */	add	x8, x8, 128
/*     51 */	add	x13, x13, 128
/*     49 */	ld1d	z10.d, p0/z, [x10, 0, mul vl]	//  "c1"
/*     49 */	ld1d	z9.d, p0/z, [x9, 0, mul vl]	//  "b1"
/*     51 */	add	x9, x9, 128
/*     51 */	add	x10, x10, 128
/*     48 */	ld1d	z12.d, p0/z, [x15, 0, mul vl]	//  "c0"
/*     48 */	ld1d	z11.d, p0/z, [x4, 0, mul vl]	//  "b0"
/*     51 */	add	x4, x4, 128
/*     51 */	add	x15, x15, 128
/*     50 */	fmad	z1.d, p0/m, z2.d, z0.d
/*     49 */	fmad	z4.d, p0/m, z2.d, z3.d
/*     48 */	fmad	z6.d, p0/m, z2.d, z5.d
/*     50 */	fmad	z8.d, p0/m, z2.d, z7.d
/*     49 */	fmad	z10.d, p0/m, z2.d, z9.d
/*     48 */	fmad	z12.d, p0/m, z2.d, z11.d
/*     50 */	st1d	z1.d, p0, [x11, -1, mul vl]	//  "a2"
/*     49 */	st1d	z4.d, p0, [x14, -1, mul vl]	//  "a1"
/*     48 */	st1d	z6.d, p0, [x12, -1, mul vl]	//  "a0"
/*     50 */	st1d	z8.d, p0, [x11, 0, mul vl]	//  "a2"
/*     51 */	add	x11, x11, 128
/*     49 */	st1d	z10.d, p0, [x14, 0, mul vl]	//  "a1"
/*     51 */	add	x14, x14, 128
/*     48 */	st1d	z12.d, p0, [x12, 0, mul vl]	//  "a0"
/*     51 */	add	x12, x12, 128
/*     51 */	bpl	.L266
.L220:
/*     47 */	adds	w9, w7, 1
/*     47 */	bmi	.L212
/*     47 */	adrp	x4, b2
/*     47 */	adrp	x6, a2
/*     47 */	adrp	x0, c2
/*     47 */	add	x8, x4, :lo12:b2
/*     47 */	add	x12, x6, :lo12:a2
/*     47 */	adrp	x7, b1
/*     47 */	add	x0, x0, :lo12:c2
/*     47 */	adrp	x4, c1
/*     47 */	add	x10, x7, :lo12:b1
/*     47 */	add	x4, x4, :lo12:c1
/*     47 */	adrp	x6, a1
/*     47 */	adrp	x11, c0
/*     47 */	add	x6, x6, :lo12:a1
/*     47 */	adrp	x7, b0
/*     47 */	add	x11, x11, :lo12:c0
/*     47 */	adrp	x13, a0
/*     47 */	add	x7, x7, :lo12:b0
/*     47 */	add	x13, x13, :lo12:a0
.L226:					// :entr:term:mod
/*     50 */	ld1d	z1.d, p0/z, [x0, x2, lsl #3]	//  "c2"
/*     50 */	fdup	z2.d, 3.000000e+00
/*     50 */	ld1d	z0.d, p0/z, [x8, x2, lsl #3]	//  "b2"
/*     51 */	subs	w9, w9, 1
/*     49 */	ld1d	z4.d, p0/z, [x4, x2, lsl #3]	//  "c1"
/*     49 */	ld1d	z3.d, p0/z, [x10, x2, lsl #3]	//  "b1"
/*     48 */	ld1d	z6.d, p0/z, [x11, x2, lsl #3]	//  "c0"
/*     48 */	ld1d	z5.d, p0/z, [x7, x2, lsl #3]	//  "b0"
/*     50 */	fmad	z1.d, p0/m, z2.d, z0.d
/*     49 */	fmad	z4.d, p0/m, z2.d, z3.d
/*     48 */	fmad	z6.d, p0/m, z2.d, z5.d
/*     50 */	st1d	z1.d, p0, [x12, x2, lsl #3]	//  "a2"
/*     49 */	st1d	z4.d, p0, [x6, x2, lsl #3]	//  "a1"
/*     48 */	st1d	z6.d, p0, [x13, x2, lsl #3]	//  "a0"
/*     51 */	add	x2, x2, 8
/*     51 */	bpl	.L226
.L212:
/*     47 */	sbfiz	x0, x5, 3, 32
/*     47 */	add	x6, x0, x1
/*     47 */	cbz	w3, .L217
/*     50 */	fmov	d5, 3.000000e+00
/*     47 */	adrp	x1, a2
/*     47 */	adrp	x2, c1
/*     47 */	adrp	x0, c2
/*     47 */	add	x4, x1, :lo12:a2
/*     47 */	add	x5, x2, :lo12:c1
/*     47 */	add	x9, x0, :lo12:c2
/*     47 */	adrp	x1, b1
/*     47 */	adrp	x2, c0
/*     47 */	adrp	x0, b2
/*     47 */	add	x7, x1, :lo12:b1
/*     47 */	add	x10, x2, :lo12:c0
/*     47 */	add	x0, x0, :lo12:b2
/*     47 */	adrp	x1, a1
/*     47 */	adrp	x2, b0
/*     47 */	add	x1, x1, :lo12:a1
/*     47 */	adrp	x8, a0
/*     47 */	add	x2, x2, :lo12:b0
/*     47 */	add	x8, x8, :lo12:a0
.L214:					// :entr:term
/*     50 */	ldr	d4, [x9, x6, lsl #3]	//  "c2"
/*     50 */	ldr	d6, [x0, x6, lsl #3]	//  "b2"
/*     51 */	subs	w3, w3, 1
/*     49 */	ldr	d3, [x5, x6, lsl #3]	//  "c1"
/*     49 */	ldr	d2, [x7, x6, lsl #3]	//  "b1"
/*     48 */	ldr	d1, [x10, x6, lsl #3]	//  "c0"
/*     48 */	ldr	d0, [x2, x6, lsl #3]	//  "b0"
/*     50 */	fmadd	d4, d4, d5, d6
/*     49 */	fmadd	d2, d3, d5, d2
/*     48 */	fmadd	d0, d1, d5, d0
/*     50 */	str	d4, [x4, x6, lsl #3]	//  "a2"
/*     49 */	str	d2, [x1, x6, lsl #3]	//  "a1"
/*     48 */	str	d0, [x8, x6, lsl #3]	//  "a0"
/*     51 */	add	x6, x6, 1
/*     51 */	bne	.L214
.L217:
/*    ??? */	ldp	d8, d9, [sp, 16]	//  (*)
/*    ??? */	ldp	d10, d11, [sp, 32]	//  (*)
/*    ??? */	ldp	d12, d13, [sp, 48]	//  (*)
/*    ??? */	ldp	d14, d15, [sp, 64]	//  (*)
/*    ??? */	ldp	x19, x30, [sp], 128	//  (*)
/*     51 */	ret	
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
	.ascii "dummy:\040%lf,\040%lf,\040%lf\012\000"
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
	.comm	c2,838656,256
	.comm	b2,838656,256
	.comm	a2,838656,256
	.comm	c1,838656,256
	.comm	b1,838656,256
	.comm	a1,838656,256
	.comm	c0,838656,256
	.comm	b0,838656,256
	.comm	a0,838656,256
	.section	.note.GNU-stack,"",%progbits
