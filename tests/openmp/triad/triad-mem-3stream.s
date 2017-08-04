	.ident	"$Options: Fujitsu C/C++ Compiler Version 1.2.0 P-id: Alpha-20170330 (Mar 24 2017 17:23:55) --preinclude /opt/FJTComp4/bin/../lib/c99.pre --gcc --c99 -D__FUJITSU -Dunix -D__aarch64__ -D__unix -D_OPENMP=201107 -D__fcc_version__=0x700 -D__fcc_version=700 -D__USER_LABEL_PREFIX__= -D__OPTIMIZE__ -D__ARM_ARCH=8 -D__FP_FAST_FMA -D__ELF__ -D__unix__ -D__linux__ -D__linux -Asystem(unix) -Dlinux -D__LIBC_6B -D__LP64__ -D_LP64 --K=omp -I../../include --K=noocl -D_REENTRANT -D__MT__ --zmode=64 --sys_include=/opt/FJTComp4/bin/../include --sys_include=/opt/ARM/aarch64-linux-gnu/sysroot-linaro-eglibc-gcc4.9-2014.11-aarch64-linux-gnu/usr/include --K=opt triad-mem-3stream.c -- -ncmdname=fccpx -nspopt=\"-Kfast,openmp -Nlst=t -Koptmsg=2 -I../../include -S -o triad-mem-3stream.s\" -Nnoline -zobe=no-static-clump -O3 -x- -Komitfp,mfunc,rdconv,eval,fp_relaxed,ns,fast_matmul,fp_contract,ilfunc,prefetch_conditional,openmp,threadsafe -Nlst=t -Koptmsg=2 -zsta=am -zsrc=triad-mem-3stream.c triad-mem-3stream.s $"
	.file	"triad-mem-3stream.c"
	.ident	"$Compiler: Fujitsu C/C++ Compiler Version 1.2.0 P-id: Alpha-20170330 (Mar 24 2017 17:23:55) triad-mem-3stream.c get_dtime $"
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
	.ident	"$Compiler: Fujitsu C/C++ Compiler Version 1.2.0 P-id: Alpha-20170330 (Mar 24 2017 17:23:55) triad-mem-3stream.c main $"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
/*    ??? */	stp	x19, x20, [sp, -96]!	//  (*)
/*    ??? */	stp	x21, x22, [sp, 16]	//  (*)
/*    ??? */	str	x30, [sp, 32]	//  (*)
/*    ??? */	str	d8, [sp, 40]	//  (*)
/*     24 */	add	x19, sp, 56
/*     24 */	mov	x20, 0
/*     24 */	adrp	x0, main._OMP_1
/*     24 */	add	x0, x0, :lo12:main._OMP_1
/*     24 */	mov	x1, x19
/*     24 */	mov	x2, x20
/*     24 */	bl	__mpc_opar
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
/*     44 */	adrp	x0, main._OMP_2
/*     44 */	mov	x1, x19
/*     44 */	mov	x2, x20
/*     44 */	add	x0, x0, :lo12:main._OMP_2
/*     44 */	bl	__mpc_opar
/*     16 */	add	x19, sp, 80
/*     16 */	mov	w0, w21
/*     16 */	mov	x1, x19
/*     16 */	bl	clock_gettime
/*     17 */	ldr	x1, [x19]	//  "ts"
/*     17 */	ldr	x2, [x19, 8]	//  "ts"
/*     51 */	ldr	d3, [x22, :lo12:time.5]	//  "time"
/*     53 */	ldr	d2, .LC3
/*     53 */	adrp	x0, .LR.3
/*     53 */	add	x0, x0, :lo12:.LR.3
/*     17 */	scvtf	d1, x1
/*     17 */	scvtf	d0, x2
/*     17 */	fmadd	d0, d0, d8, d1
/*     51 */	fsub	d1, d0, d3
/*     53 */	fmul	d0, d1, d2
/*     51 */	str	d1, [x22, :lo12:time.5]	//  "time"
/*     53 */	bl	printf
/*     54 */	ldr	d1, [x22, :lo12:time.5]	//  "time"
/*     54 */	ldr	d0, .LC4
/*     54 */	adrp	x0, .LR.2
/*     54 */	add	x0, x0, :lo12:.LR.2
/*     54 */	frecpe	d3, d1
/*     54 */	frecps	d2, d1, d3
/*     54 */	fmul	d3, d2, d3
/*     54 */	frecps	d2, d1, d3
/*     54 */	fmul	d2, d2, d3
/*     54 */	frecps	d1, d1, d2
/*     54 */	fmul	d1, d1, d2
/*     54 */	fmul	d0, d0, d1
/*     54 */	bl	printf
/*     55 */	adrp	x2, a0
/*     55 */	adrp	x3, a1
/*     55 */	mov	x1, 29112
/*     55 */	adrp	x0, .LR.1
/*     55 */	add	x2, x2, :lo12:a0
/*     55 */	add	x3, x3, :lo12:a1
/*     55 */	adrp	x4, a2
/*     55 */	add	x4, x4, :lo12:a2
/*     55 */	movk	x1, 28, lsl #16
/*     55 */	add	x0, x0, :lo12:.LR.1
/*     55 */	ldr	d0, [x2, x1]	//  "a0"
/*     55 */	ldr	d1, [x3, x1]	//  "a1"
/*     55 */	ldr	d2, [x4, x1]	//  "a2"
/*     55 */	bl	printf
/*     57 */	mov	w0, 0
/*    ??? */	ldp	x21, x22, [sp, 16]	//  (*)
/*    ??? */	ldr	d8, [sp, 40]	//  (*)
/*    ??? */	ldr	x30, [sp, 32]	//  (*)
/*    ??? */	ldp	x19, x20, [sp], 96	//  (*)
/*     58 */	ret	
	.size	main, .-main
	.align	3
.LC2:
	.word	0xe826d695,0x3e112e0b
	.align	3
.LC3:
	.word	0,0x408f4000
	.align	3
.LC4:
	.word	0x9ca3dc8b,0x3f912e07
	.ident	"$Compiler: Fujitsu C/C++ Compiler Version 1.2.0 P-id: Alpha-20170330 (Mar 24 2017 17:23:55) triad-mem-3stream.c main._OMP_1 $"
	.text
	.align	2
	.type	main._OMP_1, %function
main._OMP_1:
/*    ??? */	stp	x19, x20, [sp, -96]!	//  (*)
/*    ??? */	str	x30, [sp, 16]	//  (*)
/*    ??? */	stp	d8, d9, [sp, 24]	//  (*)
/*     18 */	str	x0, [sp, 56]	//  ___9
/*     18 */	str	x1, [sp, 64]	//  ___10
/*     18 */	str	x2, [sp, 72]	//  ___11
/*     18 */	str	x3, [sp, 80]	//  ___12
/*     18 */	str	x4, [sp, 88]	//  ___13
/*     18 */	str	x0, [sp, 48]	//  ___46
/*     24 */	ldr	x0, [sp, 48]	//  ___46
/*     24 */	ldr	w0, [x0, 4]	//  ___1
/*     26 */	adrp	x0, .LR.4
/*     26 */	add	x20, x0, :lo12:.LR.4
/*     26 */	bl	omp_get_num_threads
/*     26 */	mov	w19, w0
/*     26 */	bl	omp_get_thread_num
/*     26 */	mov	w2, w0
/*     26 */	mov	x0, x20
/*     26 */	mov	w1, w19
/*     26 */	bl	printf
/*     29 */	mov	x0, 36408
/*     29 */	ldr	x1, [sp, 64]	//  ___10
/*     29 */	movk	x0, 3, lsl #16
/*     29 */	sdiv	x2, x0, x1
/*     29 */	msub	x0, x1, x2, x0
/*     29 */	cbnz	x0, .L177
/*     29 */	ldr	x0, [sp, 72]	//  ___11
/*     29 */	mul	x0, x0, x2
/*     29 */	b	.L180
.L177:
/*     29 */	ldr	x1, [sp, 72]	//  ___11
/*     29 */	cmp	x1, x0
/*     29 */	blt	.L179
/*     29 */	madd	x0, x1, x2, x0
/*     29 */	b	.L180
.L179:
/*     29 */	add	x2, x2, 1
/*     29 */	mul	x0, x1, x2
.L180:
/*     29 */	sub	x1, x2, 1
/*     29 */	add	x1, x1, x0
/*     29 */	cbz	x2, .L191
/*     29 */	ptrue	p0.d, VL8
/*     29 */	sub	w2, w1, w0
/*     30 */	sxtw	x1, w0
/*     29 */	add	w2, w2, 1
/*     32 */	add	w11, w0, 3
/*     29 */	cmp	w2, 1
/*     29 */	mov	x3, 0
/*     29 */	csinc	w0, w2, wzr, ge
/*     29 */	asr	w2, w0, 2
/*     29 */	add	w2, w0, w2, lsr #29
/*     29 */	asr	w12, w2, 3
/*     29 */	sub	w10, w0, w12, lsl #3
/*     29 */	cbz	w12, .L186
/*     29 */	sxtw	x0, w11
/*     29 */	index	z2.d, x1, 1
/*     39 */	sub	w13, w12, 2
/*     29 */	index	z0.d, x0, 1
/*     39 */	cmp	w13, 0
/*     29 */	mov	x2, x1
/*     29 */	mov	x4, 0
/*     39 */	blt	.L194
/*     39 */	adrp	x4, a2
/*     36 */	lsl	x0, x1, 3
/*     36 */	fmov	z7.d, 0.000000e+00
/*     39 */	adrp	x5, a1
/*     39 */	add	x16, x4, :lo12:a2
/*     39 */	adrp	x4, c2
/*     39 */	add	x8, x5, :lo12:a1
/*     36 */	add	x0, x0, 64
/*     39 */	add	x14, x4, :lo12:c2
/*     39 */	adrp	x5, c1
/*     39 */	adrp	x4, c0
/*     39 */	add	x7, x5, :lo12:c1
/*     39 */	adrp	x5, b2
/*     39 */	add	x15, x4, :lo12:c0
/*     39 */	adrp	x4, b1
/*     39 */	add	x6, x5, :lo12:b2
/*     39 */	add	x19, x4, :lo12:b1
/*     39 */	adrp	x5, b0
/*     38 */	add	x17, x14, x0
/*     39 */	adrp	x4, a0
/*     39 */	add	x9, x5, :lo12:b0
/*     37 */	add	x18, x6, x0
/*     39 */	add	x5, x4, :lo12:a0
/*     30 */	mov	x4, x3
/*     36 */	add	x16, x16, x0
/*     33 */	add	x8, x8, x0
/*     35 */	add	x14, x7, x0
/*     35 */	add	x15, x15, x0
/*     34 */	add	x19, x19, x0
/*     34 */	add	x6, x9, x0
/*     30 */	add	x5, x5, x0
/*     29 */	cmp	w13, 6
/*     29 */	blt	.L252
/*     32 */	dup	z1.d, x3
/*     39 */	add	x20, x4, 8
/*     39 */	add	x3, x3, 8
/*     31 */	dup	z3.d, x4
/*     31 */	dup	z5.d, x20
/*     32 */	dup	z4.d, x3
/*     32 */	add	z1.d, z1.d, z0.d
/*     31 */	add	z3.d, z3.d, z2.d
/*     32 */	scvtf	z8.d, p0/m, z1.d
/*     31 */	scvtf	z9.d, p0/m, z3.d
.L184:					// :entr:term:body:swpl
/*     38 */	st1d	z8.d, p0, [x17, -1, mul vl]	//  "c2"
/*     39 */	add	x0, x3, 8
/*     32 */	add	z4.d, z4.d, z0.d
/*     32 */	dup	z1.d, x0
/*     35 */	st1d	z8.d, p0, [x14, -1, mul vl]	//  "c1"
/*     35 */	st1d	z8.d, p0, [x15, -1, mul vl]	//  "c0"
/*     39 */	add	x0, x20, 8
/*     31 */	add	z5.d, z5.d, z2.d
/*     31 */	dup	z3.d, x0
/*     36 */	st1d	z7.d, p0, [x16, -1, mul vl]	//  "a2"
/*     32 */	scvtf	z6.d, p0/m, z4.d
/*     37 */	st1d	z9.d, p0, [x18, -1, mul vl]	//  "b2"
/*     34 */	st1d	z9.d, p0, [x19, -1, mul vl]	//  "b1"
/*     34 */	st1d	z9.d, p0, [x6, -1, mul vl]	//  "b0"
/*     31 */	scvtf	z5.d, p0/m, z5.d
/*     39 */	add	x0, x20, 16
/*     32 */	add	z1.d, z1.d, z0.d
/*     31 */	dup	z4.d, x0
/*     30 */	st1d	z7.d, p0, [x5, -1, mul vl]	//  "a0"
/*     36 */	st1d	z7.d, p0, [x16, 0, mul vl]	//  "a2"
/*     33 */	st1d	z7.d, p0, [x8, 0, mul vl]	//  "a1"
/*     39 */	add	x0, x3, 16
/*     32 */	scvtf	z8.d, p0/m, z1.d
/*     32 */	dup	z1.d, x0
/*     38 */	st1d	z6.d, p0, [x17, 0, mul vl]	//  "c2"
/*     35 */	st1d	z6.d, p0, [x14, 0, mul vl]	//  "c1"
/*     31 */	add	z3.d, z3.d, z2.d
/*     35 */	st1d	z6.d, p0, [x15, 0, mul vl]	//  "c0"
/*     37 */	st1d	z5.d, p0, [x18, 0, mul vl]	//  "b2"
/*     34 */	st1d	z5.d, p0, [x19, 0, mul vl]	//  "b1"
/*     34 */	st1d	z5.d, p0, [x6, 0, mul vl]	//  "b0"
/*     31 */	scvtf	z5.d, p0/m, z3.d
/*     30 */	st1d	z7.d, p0, [x5, 0, mul vl]	//  "a0"
/*     33 */	st1d	z7.d, p0, [x8, -1, mul vl]	//  "a1"
/*     38 */	st1d	z8.d, p0, [x17, 1, mul vl]	//  "c2"
/*     39 */	add	x0, x3, 24
/*     32 */	add	z1.d, z1.d, z0.d
/*     32 */	dup	z3.d, x0
/*     35 */	st1d	z8.d, p0, [x14, 1, mul vl]	//  "c1"
/*     35 */	st1d	z8.d, p0, [x15, 1, mul vl]	//  "c0"
/*     39 */	add	x0, x20, 24
/*     31 */	add	z4.d, z4.d, z2.d
/*     31 */	dup	z6.d, x0
/*     36 */	st1d	z7.d, p0, [x16, 1, mul vl]	//  "a2"
/*     32 */	scvtf	z1.d, p0/m, z1.d
/*     37 */	st1d	z5.d, p0, [x18, 1, mul vl]	//  "b2"
/*     34 */	st1d	z5.d, p0, [x19, 1, mul vl]	//  "b1"
/*     34 */	st1d	z5.d, p0, [x6, 1, mul vl]	//  "b0"
/*     31 */	scvtf	z9.d, p0/m, z4.d
/*     39 */	add	x20, x20, 32
/*     32 */	add	z3.d, z3.d, z0.d
/*     31 */	dup	z5.d, x20
/*     30 */	st1d	z7.d, p0, [x5, 1, mul vl]	//  "a0"
/*     36 */	st1d	z7.d, p0, [x16, 2, mul vl]	//  "a2"
/*     33 */	st1d	z7.d, p0, [x8, 2, mul vl]	//  "a1"
/*     39 */	add	x3, x3, 32
/*     32 */	scvtf	z8.d, p0/m, z3.d
/*     32 */	dup	z4.d, x3
/*     38 */	st1d	z1.d, p0, [x17, 2, mul vl]	//  "c2"
/*     35 */	st1d	z1.d, p0, [x14, 2, mul vl]	//  "c1"
/*     31 */	add	z6.d, z6.d, z2.d
/*     35 */	st1d	z1.d, p0, [x15, 2, mul vl]	//  "c0"
/*     39 */	add	x2, x2, 32
/*     37 */	st1d	z9.d, p0, [x18, 2, mul vl]	//  "b2"
/*     39 */	add	x5, x5, 256
/*     39 */	add	x6, x6, 256
/*     34 */	st1d	z9.d, p0, [x19, 2, mul vl]	//  "b1"
/*     39 */	add	x19, x19, 256
/*     39 */	add	x18, x18, 256
/*     34 */	st1d	z9.d, p0, [x6, -2, mul vl]	//  "b0"
/*     31 */	scvtf	z9.d, p0/m, z6.d
/*     39 */	add	x15, x15, 256
/*     39 */	add	x14, x14, 256
/*     30 */	st1d	z7.d, p0, [x5, -2, mul vl]	//  "a0"
/*     39 */	add	x17, x17, 256
/*     39 */	add	x8, x8, 256
/*     33 */	st1d	z7.d, p0, [x8, -3, mul vl]	//  "a1"
/*     39 */	add	x16, x16, 256
/*     39 */	sub	w13, w13, 4
/*     39 */	cmp	w13, 6
/*     39 */	bge	.L184
/*     32 */	add	z4.d, z4.d, z0.d
/*     31 */	add	z5.d, z5.d, z2.d
/*     39 */	add	x0, x5, 128
/*     39 */	add	x7, x6, 128
/*     38 */	st1d	z8.d, p0, [x17, -1, mul vl]	//  "c2"
/*     39 */	add	x3, x3, 8
/*     39 */	add	x9, x8, 128
/*     35 */	st1d	z8.d, p0, [x14, -1, mul vl]	//  "c1"
/*     39 */	add	x4, x20, 8
/*     39 */	add	x2, x2, 16
/*     35 */	st1d	z8.d, p0, [x15, -1, mul vl]	//  "c0"
/*     39 */	sub	w13, w13, 2
/*     32 */	scvtf	z1.d, p0/m, z4.d
/*     31 */	scvtf	z3.d, p0/m, z5.d
/*     36 */	st1d	z7.d, p0, [x16, -1, mul vl]	//  "a2"
/*     37 */	st1d	z9.d, p0, [x18, -1, mul vl]	//  "b2"
/*     34 */	st1d	z9.d, p0, [x19, -1, mul vl]	//  "b1"
/*     34 */	st1d	z9.d, p0, [x6, -1, mul vl]	//  "b0"
/*     30 */	st1d	z7.d, p0, [x5, -1, mul vl]	//  "a0"
/*     33 */	st1d	z7.d, p0, [x8, 0, mul vl]	//  "a1"
/*     36 */	st1d	z7.d, p0, [x16, 0, mul vl]	//  "a2"
/*     39 */	add	x16, x16, 128
/*     30 */	st1d	z7.d, p0, [x5, 0, mul vl]	//  "a0"
/*     39 */	mov	x5, x0
/*     38 */	st1d	z1.d, p0, [x17, 0, mul vl]	//  "c2"
/*     39 */	add	x17, x17, 128
/*     35 */	st1d	z1.d, p0, [x14, 0, mul vl]	//  "c1"
/*     39 */	add	x14, x14, 128
/*     35 */	st1d	z1.d, p0, [x15, 0, mul vl]	//  "c0"
/*     39 */	add	x15, x15, 128
/*     37 */	st1d	z3.d, p0, [x18, 0, mul vl]	//  "b2"
/*     39 */	add	x18, x18, 128
/*     34 */	st1d	z3.d, p0, [x19, 0, mul vl]	//  "b1"
/*     39 */	add	x19, x19, 128
/*     34 */	st1d	z3.d, p0, [x6, 0, mul vl]	//  "b0"
/*     39 */	mov	x6, x7
/*     33 */	st1d	z7.d, p0, [x8, -1, mul vl]	//  "a1"
/*     39 */	mov	x8, x9
.L252:
.L255:					// :entr:term:mod:swpl
/*     32 */	dup	z1.d, x3
/*     39 */	add	x7, x3, 8
/*     39 */	add	x0, x4, 8
/*     31 */	dup	z3.d, x4
/*     39 */	add	x3, x7, 8
/*     39 */	add	x4, x0, 8
/*     32 */	dup	z4.d, x7
/*     39 */	add	x2, x2, 16
/*     39 */	subs	w13, w13, 2
/*     31 */	dup	z5.d, x0
/*     36 */	st1d	z7.d, p0, [x16, -1, mul vl]	//  "a2"
/*     33 */	st1d	z7.d, p0, [x8, -1, mul vl]	//  "a1"
/*     30 */	st1d	z7.d, p0, [x5, -1, mul vl]	//  "a0"
/*     36 */	st1d	z7.d, p0, [x16, 0, mul vl]	//  "a2"
/*     39 */	add	x16, x16, 128
/*     32 */	add	z1.d, z1.d, z0.d
/*     31 */	add	z3.d, z3.d, z2.d
/*     32 */	add	z4.d, z4.d, z0.d
/*     31 */	add	z5.d, z5.d, z2.d
/*     32 */	scvtf	z1.d, p0/m, z1.d
/*     31 */	scvtf	z3.d, p0/m, z3.d
/*     32 */	scvtf	z4.d, p0/m, z4.d
/*     31 */	scvtf	z5.d, p0/m, z5.d
/*     33 */	st1d	z7.d, p0, [x8, 0, mul vl]	//  "a1"
/*     39 */	add	x8, x8, 128
/*     30 */	st1d	z7.d, p0, [x5, 0, mul vl]	//  "a0"
/*     39 */	add	x5, x5, 128
/*     38 */	st1d	z1.d, p0, [x17, -1, mul vl]	//  "c2"
/*     35 */	st1d	z1.d, p0, [x14, -1, mul vl]	//  "c1"
/*     35 */	st1d	z1.d, p0, [x15, -1, mul vl]	//  "c0"
/*     37 */	st1d	z3.d, p0, [x18, -1, mul vl]	//  "b2"
/*     34 */	st1d	z3.d, p0, [x19, -1, mul vl]	//  "b1"
/*     34 */	st1d	z3.d, p0, [x6, -1, mul vl]	//  "b0"
/*     38 */	st1d	z4.d, p0, [x17, 0, mul vl]	//  "c2"
/*     39 */	add	x17, x17, 128
/*     35 */	st1d	z4.d, p0, [x14, 0, mul vl]	//  "c1"
/*     39 */	add	x14, x14, 128
/*     35 */	st1d	z4.d, p0, [x15, 0, mul vl]	//  "c0"
/*     39 */	add	x15, x15, 128
/*     37 */	st1d	z5.d, p0, [x18, 0, mul vl]	//  "b2"
/*     39 */	add	x18, x18, 128
/*     34 */	st1d	z5.d, p0, [x19, 0, mul vl]	//  "b1"
/*     39 */	add	x19, x19, 128
/*     34 */	st1d	z5.d, p0, [x6, 0, mul vl]	//  "b0"
/*     39 */	add	x6, x6, 128
/*     39 */	bpl	.L255
.L194:
/*     39 */	adds	w8, w13, 1
/*     39 */	bmi	.L186
/*     39 */	adrp	x5, a2
/*     39 */	adrp	x0, a1
/*     39 */	add	x7, x5, :lo12:a2
/*     39 */	add	x6, x0, :lo12:a1
/*     39 */	adrp	x0, c2
/*     39 */	adrp	x9, b2
/*     39 */	adrp	x5, c1
/*     39 */	add	x0, x0, :lo12:c2
/*     39 */	add	x14, x9, :lo12:b2
/*     39 */	add	x5, x5, :lo12:c1
/*     39 */	adrp	x13, c0
/*     39 */	adrp	x9, b1
/*     39 */	add	x13, x13, :lo12:c0
/*     39 */	adrp	x15, b0
/*     39 */	add	x9, x9, :lo12:b1
/*     39 */	adrp	x16, a0
/*     39 */	add	x15, x15, :lo12:b0
/*     39 */	add	x16, x16, :lo12:a0
.L200:					// :entr:term:mod
/*     32 */	dup	z1.d, x3
/*     39 */	add	x3, x3, 8
/*     39 */	subs	w8, w8, 1
/*     31 */	dup	z3.d, x4
/*     39 */	add	x4, x4, 8
/*     36 */	fmov	z4.d, 0.000000e+00
/*     36 */	st1d	z4.d, p0, [x7, x2, lsl #3]	//  "a2"
/*     33 */	st1d	z4.d, p0, [x6, x2, lsl #3]	//  "a1"
/*     32 */	add	z1.d, z1.d, z0.d
/*     31 */	add	z3.d, z3.d, z2.d
/*     30 */	st1d	z4.d, p0, [x16, x2, lsl #3]	//  "a0"
/*     32 */	scvtf	z1.d, p0/m, z1.d
/*     31 */	scvtf	z3.d, p0/m, z3.d
/*     38 */	st1d	z1.d, p0, [x0, x2, lsl #3]	//  "c2"
/*     35 */	st1d	z1.d, p0, [x5, x2, lsl #3]	//  "c1"
/*     35 */	st1d	z1.d, p0, [x13, x2, lsl #3]	//  "c0"
/*     37 */	st1d	z3.d, p0, [x14, x2, lsl #3]	//  "b2"
/*     34 */	st1d	z3.d, p0, [x9, x2, lsl #3]	//  "b1"
/*     34 */	st1d	z3.d, p0, [x15, x2, lsl #3]	//  "b0"
/*     39 */	add	x2, x2, 8
/*     39 */	bpl	.L200
.L186:
/*     29 */	sbfiz	x2, x12, 3, 32
/*     29 */	add	x0, x2, x1
/*     29 */	cbz	w10, .L191
/*     32 */	add	x7, x2, w11, sxtw #0
/*     29 */	mov	x1, x0
/*     29 */	adrp	x3, c2
/*     36 */	ldr	x8, .LC5
/*     29 */	add	x9, x3, :lo12:c2
/*     29 */	adrp	x5, c1
/*     29 */	adrp	x2, a2
/*     29 */	adrp	x3, c0
/*     29 */	add	x12, x5, :lo12:c1
/*     29 */	add	x4, x2, :lo12:a2
/*     29 */	adrp	x2, a1
/*     29 */	add	x5, x3, :lo12:c0
/*     29 */	adrp	x6, b2
/*     29 */	add	x2, x2, :lo12:a1
/*     29 */	adrp	x3, b1
/*     29 */	add	x13, x6, :lo12:b2
/*     29 */	add	x3, x3, :lo12:b1
/*     29 */	adrp	x6, b0
/*     29 */	adrp	x11, a0
/*     29 */	add	x6, x6, :lo12:b0
/*     29 */	add	x11, x11, :lo12:a0
.L188:					// :entr:term
/*     32 */	scvtf	d1, x7
/*     31 */	scvtf	d0, x1
/*     39 */	add	x7, x7, 1
/*     39 */	add	x1, x1, 1
/*     36 */	str	x8, [x4, x0, lsl #3]	//  "a2"
/*     39 */	subs	w10, w10, 1
/*     33 */	str	x8, [x2, x0, lsl #3]	//  "a1"
/*     30 */	str	x8, [x11, x0, lsl #3]	//  "a0"
/*     38 */	fmov	x14, d1
/*     37 */	fmov	x15, d0
/*     38 */	str	x14, [x9, x0, lsl #3]	//  "c2"
/*     35 */	str	x14, [x12, x0, lsl #3]	//  "c1"
/*     35 */	str	x14, [x5, x0, lsl #3]	//  "c0"
/*     37 */	str	x15, [x13, x0, lsl #3]	//  "b2"
/*     34 */	str	x15, [x3, x0, lsl #3]	//  "b1"
/*     34 */	str	x15, [x6, x0, lsl #3]	//  "b0"
/*     39 */	add	x0, x0, 1
/*     39 */	bne	.L188
.L191:
/*     39 */	ldr	x0, [sp, 80]	//  ___12
/*     39 */	bl	__mpc_obar
/*    ??? */	ldr	x30, [sp, 16]	//  (*)
/*    ??? */	ldp	d8, d9, [sp, 24]	//  (*)
/*    ??? */	ldp	x19, x20, [sp], 96	//  (*)
/*     40 */	ret	
	.size	main._OMP_1, .-main._OMP_1
	.align	3
.LC5:
	.word	0,0
	.ident	"$Compiler: Fujitsu C/C++ Compiler Version 1.2.0 P-id: Alpha-20170330 (Mar 24 2017 17:23:55) triad-mem-3stream.c main._OMP_2 $"
	.text
	.align	2
	.type	main._OMP_2, %function
main._OMP_2:
/*    ??? */	stp	x19, x30, [sp, -128]!	//  (*)
/*    ??? */	stp	d8, d9, [sp, 16]	//  (*)
/*    ??? */	stp	d10, d11, [sp, 32]	//  (*)
/*    ??? */	stp	d12, d13, [sp, 48]	//  (*)
/*    ??? */	stp	d14, d15, [sp, 64]	//  (*)
/*     40 */	str	x0, [sp, 88]	//  ___14
/*     40 */	str	x1, [sp, 96]	//  ___15
/*     40 */	str	x2, [sp, 104]	//  ___16
/*     40 */	str	x3, [sp, 112]	//  ___17
/*     40 */	str	x4, [sp, 120]	//  ___18
/*     40 */	str	x0, [sp, 80]	//  ___47
/*     44 */	ldr	x0, [sp, 80]	//  ___47
/*     44 */	ldr	w0, [x0]	//  ___2
/*     45 */	mov	x0, 36408
/*     45 */	ldr	x1, [sp, 96]	//  ___15
/*     45 */	movk	x0, 3, lsl #16
/*     45 */	sdiv	x2, x0, x1
/*     45 */	msub	x1, x1, x2, x0
/*     45 */	cbnz	x1, .L204
/*     45 */	ldr	x0, [sp, 104]	//  ___16
/*     45 */	mul	x0, x0, x2
/*     45 */	b	.L207
.L204:
/*     45 */	ldr	x0, [sp, 104]	//  ___16
/*     45 */	cmp	x0, x1
/*     45 */	blt	.L206
/*     45 */	madd	x0, x0, x2, x1
/*     45 */	b	.L207
.L206:
/*     45 */	add	x2, x2, 1
/*     45 */	mul	x0, x0, x2
.L207:
/*     45 */	sub	x1, x2, 1
/*     45 */	add	x1, x1, x0
/*     45 */	cbz	x2, .L217
/*     45 */	ptrue	p0.d, VL8
/*     45 */	sub	w2, w1, w0
/*     46 */	sxtw	x1, w0
/*     45 */	add	w0, w2, 1
/*     45 */	cmp	w0, 1
/*     45 */	csinc	w0, w0, wzr, ge
/*     45 */	asr	w2, w0, 2
/*     45 */	add	w2, w0, w2, lsr #29
/*     45 */	asr	w5, w2, 3
/*     45 */	sub	w3, w0, w5, lsl #3
/*     45 */	cbz	w5, .L212
/*     45 */	sub	w7, w5, 2
/*     45 */	mov	x2, x1
/*     45 */	cmp	w7, 0
/*     45 */	blt	.L220
/*     45 */	adrp	x4, c2
/*     48 */	lsl	x0, x1, 3
/*     48 */	fdup	z2.d, 3.000000e+00
/*     45 */	adrp	x6, b2
/*     45 */	add	x11, x4, :lo12:c2
/*     45 */	adrp	x4, a2
/*     48 */	add	x0, x0, 64
/*     45 */	add	x8, x6, :lo12:b2
/*     45 */	add	x10, x4, :lo12:a2
/*     45 */	adrp	x6, c1
/*     45 */	adrp	x4, b1
/*     45 */	add	x15, x6, :lo12:c1
/*     45 */	adrp	x6, a1
/*     45 */	add	x9, x4, :lo12:b1
/*     45 */	adrp	x4, c0
/*     48 */	add	x13, x11, x0
/*     45 */	add	x14, x6, :lo12:a1
/*     45 */	adrp	x12, b0
/*     48 */	add	x11, x10, x0
/*     45 */	add	x4, x4, :lo12:c0
/*     45 */	adrp	x6, a0
/*     47 */	add	x10, x15, x0
/*     45 */	add	x12, x12, :lo12:b0
/*     46 */	add	x15, x4, x0
/*     45 */	add	x6, x6, :lo12:a0
/*     46 */	add	x4, x12, x0
/*     45 */	cmp	w7, 8
/*     48 */	add	x8, x8, x0
/*     47 */	add	x9, x9, x0
/*     47 */	add	x14, x14, x0
/*     46 */	add	x12, x6, x0
/*     45 */	blt	.L263
/*     48 */	ld1d	z1.d, p0/z, [x13, -1, mul vl]	//  "c2"
/*     48 */	ld1d	z0.d, p0/z, [x8, -1, mul vl]	//  "b2"
/*     49 */	add	x6, x13, 128
/*     49 */	add	x17, x8, 128
/*     47 */	ld1d	z4.d, p0/z, [x10, -1, mul vl]	//  "c1"
/*     47 */	ld1d	z3.d, p0/z, [x9, -1, mul vl]	//  "b1"
/*     49 */	add	x0, x10, 128
/*     49 */	add	x19, x9, 128
/*     46 */	ld1d	z6.d, p0/z, [x15, -1, mul vl]	//  "c0"
/*     46 */	ld1d	z5.d, p0/z, [x4, -1, mul vl]	//  "b0"
/*     49 */	add	x18, x15, 128
/*     49 */	add	x16, x4, 128
/*     48 */	ld1d	z8.d, p0/z, [x13, 0, mul vl]	//  "c2"
/*     48 */	ld1d	z14.d, p0/z, [x13, 1, mul vl]	//  "c2"
/*     49 */	add	x13, x13, 256
/*     48 */	ld1d	z7.d, p0/z, [x8, 0, mul vl]	//  "b2"
/*     47 */	ld1d	z10.d, p0/z, [x10, 0, mul vl]	//  "c1"
/*     48 */	ld1d	z13.d, p0/z, [x8, 1, mul vl]	//  "b2"
/*     47 */	ld1d	z9.d, p0/z, [x9, 0, mul vl]	//  "b1"
/*     46 */	ld1d	z12.d, p0/z, [x15, 0, mul vl]	//  "c0"
/*     46 */	ld1d	z11.d, p0/z, [x4, 0, mul vl]	//  "b0"
/*     47 */	ld1d	z16.d, p0/z, [x10, 1, mul vl]	//  "c1"
/*     47 */	ld1d	z15.d, p0/z, [x9, 1, mul vl]	//  "b1"
/*     46 */	ld1d	z17.d, p0/z, [x15, 1, mul vl]	//  "c0"
/*     48 */	fmad	z1.d, p0/m, z2.d, z0.d
/*     46 */	ld1d	z0.d, p0/z, [x4, 1, mul vl]	//  "b0"
/*     47 */	fmad	z4.d, p0/m, z2.d, z3.d
/*     46 */	fmad	z6.d, p0/m, z2.d, z5.d
.L210:					// :entr:term:body:swpl
/*     48 */	ld1d	z5.d, p0/z, [x6, 0, mul vl]	//  "c2"
/*     48 */	fmad	z8.d, p0/m, z2.d, z7.d
/*     48 */	ld1d	z25.d, p0/z, [x13, -1, mul vl]	//  "c2"
/*     48 */	ld1d	z7.d, p0/z, [x17, 0, mul vl]	//  "b2"
/*     47 */	ld1d	z24.d, p0/z, [x0, 0, mul vl]	//  "c1"
/*     47 */	fmad	z10.d, p0/m, z2.d, z9.d
/*     48 */	ld1d	z20.d, p0/z, [x17, 1, mul vl]	//  "b2"
/*     47 */	ld1d	z9.d, p0/z, [x19, 0, mul vl]	//  "b1"
/*     46 */	fmad	z12.d, p0/m, z2.d, z11.d
/*     46 */	ld1d	z23.d, p0/z, [x18, 0, mul vl]	//  "c0"
/*     46 */	ld1d	z11.d, p0/z, [x16, 0, mul vl]	//  "b0"
/*     48 */	st1d	z1.d, p0, [x11, -1, mul vl]	//  "a2"
/*     47 */	ld1d	z18.d, p0/z, [x0, 1, mul vl]	//  "c1"
/*     47 */	ld1d	z19.d, p0/z, [x19, 1, mul vl]	//  "b1"
/*     47 */	st1d	z4.d, p0, [x14, -1, mul vl]	//  "a1"
/*     46 */	ld1d	z21.d, p0/z, [x18, 1, mul vl]	//  "c0"
/*     48 */	movprfx	z1.d, p0/z, z14.d
/*     48 */	fmad	z1.d, p0/m, z2.d, z13.d
/*     46 */	ld1d	z22.d, p0/z, [x16, 1, mul vl]	//  "b0"
/*     46 */	st1d	z6.d, p0, [x12, -1, mul vl]	//  "a0"
/*     48 */	st1d	z8.d, p0, [x11, 0, mul vl]	//  "a2"
/*     47 */	movprfx	z3.d, p0/z, z16.d
/*     47 */	fmad	z3.d, p0/m, z2.d, z15.d
/*     47 */	st1d	z10.d, p0, [x14, 0, mul vl]	//  "a1"
/*     46 */	st1d	z12.d, p0, [x12, 0, mul vl]	//  "a0"
/*     46 */	movprfx	z4.d, p0/z, z17.d
/*     46 */	fmad	z4.d, p0/m, z2.d, z0.d
/*     49 */	add	x6, x13, 128
/*     48 */	ld1d	z8.d, p0/z, [x13, 0, mul vl]	//  "c2"
/*     48 */	fmad	z5.d, p0/m, z2.d, z7.d
/*     48 */	ld1d	z14.d, p0/z, [x13, 1, mul vl]	//  "c2"
/*     48 */	ld1d	z7.d, p0/z, [x17, 2, mul vl]	//  "b2"
/*     47 */	ld1d	z10.d, p0/z, [x0, 2, mul vl]	//  "c1"
/*     49 */	add	x17, x17, 256
/*     47 */	fmad	z24.d, p0/m, z2.d, z9.d
/*     48 */	ld1d	z13.d, p0/z, [x17, -1, mul vl]	//  "b2"
/*     47 */	ld1d	z9.d, p0/z, [x19, 2, mul vl]	//  "b1"
/*     46 */	fmad	z23.d, p0/m, z2.d, z11.d
/*     46 */	ld1d	z12.d, p0/z, [x18, 2, mul vl]	//  "c0"
/*     46 */	ld1d	z11.d, p0/z, [x16, 2, mul vl]	//  "b0"
/*     48 */	st1d	z1.d, p0, [x11, 1, mul vl]	//  "a2"
/*     49 */	add	x0, x0, 256
/*     49 */	add	x19, x19, 256
/*     47 */	ld1d	z16.d, p0/z, [x0, -1, mul vl]	//  "c1"
/*     47 */	ld1d	z15.d, p0/z, [x19, -1, mul vl]	//  "b1"
/*     49 */	add	x18, x18, 256
/*     47 */	st1d	z3.d, p0, [x14, 1, mul vl]	//  "a1"
/*     49 */	add	x16, x16, 256
/*     49 */	add	x2, x2, 32
/*     46 */	ld1d	z17.d, p0/z, [x18, -1, mul vl]	//  "c0"
/*     48 */	movprfx	z1.d, p0/z, z25.d
/*     48 */	fmad	z1.d, p0/m, z2.d, z20.d
/*     49 */	add	x12, x12, 256
/*     46 */	ld1d	z0.d, p0/z, [x16, -1, mul vl]	//  "b0"
/*     46 */	st1d	z4.d, p0, [x12, -3, mul vl]	//  "a0"
/*     49 */	add	x14, x14, 256
/*     48 */	st1d	z5.d, p0, [x11, 2, mul vl]	//  "a2"
/*     47 */	movprfx	z4.d, p0/z, z18.d
/*     47 */	fmad	z4.d, p0/m, z2.d, z19.d
/*     47 */	st1d	z24.d, p0, [x14, -2, mul vl]	//  "a1"
/*     49 */	add	x11, x11, 256
/*     46 */	st1d	z23.d, p0, [x12, -2, mul vl]	//  "a0"
/*     46 */	movprfx	z6.d, p0/z, z21.d
/*     46 */	fmad	z6.d, p0/m, z2.d, z22.d
/*     49 */	add	x13, x13, 256
/*     49 */	sub	w7, w7, 4
/*     49 */	cmp	w7, 8
/*     49 */	bge	.L210
/*     48 */	ld1d	z3.d, p0/z, [x6, 0, mul vl]	//  "c2"
/*     48 */	fmad	z8.d, p0/m, z2.d, z7.d
/*     49 */	add	x8, x17, 128
/*     47 */	fmad	z10.d, p0/m, z2.d, z9.d
/*     48 */	ld1d	z5.d, p0/z, [x17, 0, mul vl]	//  "b2"
/*     46 */	fmad	z12.d, p0/m, z2.d, z11.d
/*     49 */	add	x10, x0, 128
/*     48 */	fmad	z14.d, p0/m, z2.d, z13.d
/*     47 */	ld1d	z7.d, p0/z, [x0, 0, mul vl]	//  "c1"
/*     47 */	ld1d	z9.d, p0/z, [x19, 0, mul vl]	//  "b1"
/*     47 */	fmad	z16.d, p0/m, z2.d, z15.d
/*     46 */	fmad	z17.d, p0/m, z2.d, z0.d
/*     46 */	ld1d	z18.d, p0/z, [x18, 0, mul vl]	//  "c0"
/*     46 */	ld1d	z11.d, p0/z, [x16, 0, mul vl]	//  "b0"
/*     49 */	add	x9, x19, 128
/*     49 */	add	x15, x18, 128
/*     48 */	st1d	z1.d, p0, [x11, -1, mul vl]	//  "a2"
/*     49 */	add	x4, x16, 128
/*     49 */	add	x2, x2, 32
/*     47 */	st1d	z4.d, p0, [x14, -1, mul vl]	//  "a1"
/*     49 */	sub	w7, w7, 4
/*     46 */	st1d	z6.d, p0, [x12, -1, mul vl]	//  "a0"
/*     48 */	st1d	z8.d, p0, [x11, 0, mul vl]	//  "a2"
/*     47 */	st1d	z10.d, p0, [x14, 0, mul vl]	//  "a1"
/*     46 */	st1d	z12.d, p0, [x12, 0, mul vl]	//  "a0"
/*     49 */	add	x12, x12, 256
/*     48 */	fmad	z3.d, p0/m, z2.d, z5.d
/*     47 */	fmad	z7.d, p0/m, z2.d, z9.d
/*     46 */	fmad	z18.d, p0/m, z2.d, z11.d
/*     48 */	st1d	z14.d, p0, [x11, 1, mul vl]	//  "a2"
/*     47 */	st1d	z16.d, p0, [x14, 1, mul vl]	//  "a1"
/*     49 */	add	x14, x14, 256
/*     46 */	st1d	z17.d, p0, [x12, -3, mul vl]	//  "a0"
/*     48 */	st1d	z3.d, p0, [x11, 2, mul vl]	//  "a2"
/*     49 */	add	x11, x11, 256
/*     47 */	st1d	z7.d, p0, [x14, -2, mul vl]	//  "a1"
/*     46 */	st1d	z18.d, p0, [x12, -2, mul vl]	//  "a0"
.L263:
.L266:					// :entr:term:mod:swpl
/*     48 */	ld1d	z1.d, p0/z, [x13, -1, mul vl]	//  "c2"
/*     48 */	ld1d	z0.d, p0/z, [x8, -1, mul vl]	//  "b2"
/*     49 */	add	x2, x2, 16
/*     49 */	subs	w7, w7, 2
/*     47 */	ld1d	z4.d, p0/z, [x10, -1, mul vl]	//  "c1"
/*     47 */	ld1d	z3.d, p0/z, [x9, -1, mul vl]	//  "b1"
/*     46 */	ld1d	z6.d, p0/z, [x15, -1, mul vl]	//  "c0"
/*     46 */	ld1d	z5.d, p0/z, [x4, -1, mul vl]	//  "b0"
/*     48 */	ld1d	z8.d, p0/z, [x13, 0, mul vl]	//  "c2"
/*     48 */	ld1d	z7.d, p0/z, [x8, 0, mul vl]	//  "b2"
/*     49 */	add	x8, x8, 128
/*     49 */	add	x13, x13, 128
/*     47 */	ld1d	z10.d, p0/z, [x10, 0, mul vl]	//  "c1"
/*     47 */	ld1d	z9.d, p0/z, [x9, 0, mul vl]	//  "b1"
/*     49 */	add	x9, x9, 128
/*     49 */	add	x10, x10, 128
/*     46 */	ld1d	z12.d, p0/z, [x15, 0, mul vl]	//  "c0"
/*     46 */	ld1d	z11.d, p0/z, [x4, 0, mul vl]	//  "b0"
/*     49 */	add	x4, x4, 128
/*     49 */	add	x15, x15, 128
/*     48 */	fmad	z1.d, p0/m, z2.d, z0.d
/*     47 */	fmad	z4.d, p0/m, z2.d, z3.d
/*     46 */	fmad	z6.d, p0/m, z2.d, z5.d
/*     48 */	fmad	z8.d, p0/m, z2.d, z7.d
/*     47 */	fmad	z10.d, p0/m, z2.d, z9.d
/*     46 */	fmad	z12.d, p0/m, z2.d, z11.d
/*     48 */	st1d	z1.d, p0, [x11, -1, mul vl]	//  "a2"
/*     47 */	st1d	z4.d, p0, [x14, -1, mul vl]	//  "a1"
/*     46 */	st1d	z6.d, p0, [x12, -1, mul vl]	//  "a0"
/*     48 */	st1d	z8.d, p0, [x11, 0, mul vl]	//  "a2"
/*     49 */	add	x11, x11, 128
/*     47 */	st1d	z10.d, p0, [x14, 0, mul vl]	//  "a1"
/*     49 */	add	x14, x14, 128
/*     46 */	st1d	z12.d, p0, [x12, 0, mul vl]	//  "a0"
/*     49 */	add	x12, x12, 128
/*     49 */	bpl	.L266
.L220:
/*     45 */	adds	w9, w7, 1
/*     45 */	bmi	.L212
/*     45 */	adrp	x4, b2
/*     45 */	adrp	x6, a2
/*     45 */	adrp	x0, c2
/*     45 */	add	x8, x4, :lo12:b2
/*     45 */	add	x12, x6, :lo12:a2
/*     45 */	adrp	x7, b1
/*     45 */	add	x0, x0, :lo12:c2
/*     45 */	adrp	x4, c1
/*     45 */	add	x10, x7, :lo12:b1
/*     45 */	add	x4, x4, :lo12:c1
/*     45 */	adrp	x6, a1
/*     45 */	adrp	x11, c0
/*     45 */	add	x6, x6, :lo12:a1
/*     45 */	adrp	x7, b0
/*     45 */	add	x11, x11, :lo12:c0
/*     45 */	adrp	x13, a0
/*     45 */	add	x7, x7, :lo12:b0
/*     45 */	add	x13, x13, :lo12:a0
.L226:					// :entr:term:mod
/*     48 */	ld1d	z1.d, p0/z, [x0, x2, lsl #3]	//  "c2"
/*     48 */	fdup	z2.d, 3.000000e+00
/*     48 */	ld1d	z0.d, p0/z, [x8, x2, lsl #3]	//  "b2"
/*     49 */	subs	w9, w9, 1
/*     47 */	ld1d	z4.d, p0/z, [x4, x2, lsl #3]	//  "c1"
/*     47 */	ld1d	z3.d, p0/z, [x10, x2, lsl #3]	//  "b1"
/*     46 */	ld1d	z6.d, p0/z, [x11, x2, lsl #3]	//  "c0"
/*     46 */	ld1d	z5.d, p0/z, [x7, x2, lsl #3]	//  "b0"
/*     48 */	fmad	z1.d, p0/m, z2.d, z0.d
/*     47 */	fmad	z4.d, p0/m, z2.d, z3.d
/*     46 */	fmad	z6.d, p0/m, z2.d, z5.d
/*     48 */	st1d	z1.d, p0, [x12, x2, lsl #3]	//  "a2"
/*     47 */	st1d	z4.d, p0, [x6, x2, lsl #3]	//  "a1"
/*     46 */	st1d	z6.d, p0, [x13, x2, lsl #3]	//  "a0"
/*     49 */	add	x2, x2, 8
/*     49 */	bpl	.L226
.L212:
/*     45 */	sbfiz	x0, x5, 3, 32
/*     45 */	add	x6, x0, x1
/*     45 */	cbz	w3, .L217
/*     48 */	fmov	d5, 3.000000e+00
/*     45 */	adrp	x1, a2
/*     45 */	adrp	x2, c1
/*     45 */	adrp	x0, c2
/*     45 */	add	x4, x1, :lo12:a2
/*     45 */	add	x5, x2, :lo12:c1
/*     45 */	add	x9, x0, :lo12:c2
/*     45 */	adrp	x1, b1
/*     45 */	adrp	x2, c0
/*     45 */	adrp	x0, b2
/*     45 */	add	x7, x1, :lo12:b1
/*     45 */	add	x10, x2, :lo12:c0
/*     45 */	add	x0, x0, :lo12:b2
/*     45 */	adrp	x1, a1
/*     45 */	adrp	x2, b0
/*     45 */	add	x1, x1, :lo12:a1
/*     45 */	adrp	x8, a0
/*     45 */	add	x2, x2, :lo12:b0
/*     45 */	add	x8, x8, :lo12:a0
.L214:					// :entr:term
/*     48 */	ldr	d4, [x9, x6, lsl #3]	//  "c2"
/*     48 */	ldr	d6, [x0, x6, lsl #3]	//  "b2"
/*     49 */	subs	w3, w3, 1
/*     47 */	ldr	d3, [x5, x6, lsl #3]	//  "c1"
/*     47 */	ldr	d2, [x7, x6, lsl #3]	//  "b1"
/*     46 */	ldr	d1, [x10, x6, lsl #3]	//  "c0"
/*     46 */	ldr	d0, [x2, x6, lsl #3]	//  "b0"
/*     48 */	fmadd	d4, d4, d5, d6
/*     47 */	fmadd	d2, d3, d5, d2
/*     46 */	fmadd	d0, d1, d5, d0
/*     48 */	str	d4, [x4, x6, lsl #3]	//  "a2"
/*     47 */	str	d2, [x1, x6, lsl #3]	//  "a1"
/*     46 */	str	d0, [x8, x6, lsl #3]	//  "a0"
/*     49 */	add	x6, x6, 1
/*     49 */	bne	.L214
.L217:
/*    ??? */	ldp	d8, d9, [sp, 16]	//  (*)
/*    ??? */	ldp	d10, d11, [sp, 32]	//  (*)
/*    ??? */	ldp	d12, d13, [sp, 48]	//  (*)
/*    ??? */	ldp	d14, d15, [sp, 64]	//  (*)
/*    ??? */	ldp	x19, x30, [sp], 128	//  (*)
/*     49 */	ret	
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
	.comm	c2,1864128,256
	.comm	b2,1864128,256
	.comm	a2,1864128,256
	.comm	c1,1864128,256
	.comm	b1,1864128,256
	.comm	a1,1864128,256
	.comm	c0,1864128,256
	.comm	b0,1864128,256
	.comm	a0,1864128,256
	.section	.note.GNU-stack,"",%progbits
