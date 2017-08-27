	.ident	"$Options: Fujitsu C/C++ Compiler Version 1.2.0 P-id: Alpha-20170804 (Aug  3 2017 14:46:27) --preinclude /opt/FJTComp6/bin/../lib/c99.pre --gcc --c99 -D__FUJITSU -Dunix -D__aarch64__ -D__unix -D__fcc_version__=0x700 -D__fcc_version=700 -D__USER_LABEL_PREFIX__= -D__OPTIMIZE__ -D__ARM_ARCH=8 -D__FP_FAST_FMA -D__ELF__ -D__unix__ -D__linux__ -D__linux -Asystem(unix) -Dlinux -D__LIBC_6B -D__LP64__ -D_LP64 --K=noocl --zmode=64 --sys_include=/opt/FJTComp6/bin/../include --sys_include=/opt/ARM/aarch64-linux-gnu/sysroot-linaro-eglibc-gcc4.9-2014.11-aarch64-linux-gnu/usr/include --K=opt test-p.c -- -ncmdname=fccpx -nspopt=\"-Kfast,loop_nofusion -Nlst=t -Koptmsg=2 -S -o test-p.s\" -Nnoline -zobe=no-static-clump -O3 -x- -Komitfp,mfunc,rdconv,eval,fp_relaxed,ns,fast_matmul,fp_contract,ilfunc,prefetch_conditional,loop_nofusion -Nlst=t -Koptmsg=2 -zsta=m -zsrc=test-p.c test-p.s $"
	.file	"test-p.c"
	.ident	"$Compiler: Fujitsu C/C++ Compiler Version 1.2.0 P-id: Alpha-20170804 (Aug  3 2017 14:46:27) test-p.c get_dtime $"
	.text
	.align	2
	.global	get_dtime
	.type	get_dtime, %function
get_dtime:
.LFB0:
	.cfi_startproc
/*    ??? */	stp	x19, x30, [sp, -32]!	//  (*)
	.cfi_def_cfa_offset 32
	.cfi_offset 19, -32
	.cfi_offset 30, -24
/*      7 */	add	x19, sp, 16
/*      7 */	mov	w0, 1
/*      7 */	mov	x1, x19
/*      7 */	bl	clock_gettime
/*      8 */	ldr	x0, [x19]	//  "tp"
/*      8 */	ldr	x1, [x19, 8]	//  "tp"
/*      8 */	ldr	d2, .LC1
/*      8 */	scvtf	d0, x0
/*      8 */	scvtf	d1, x1
/*      8 */	fmadd	d0, d1, d2, d0
/*    ??? */	ldp	x19, x30, [sp], 32	//  (*)
	.cfi_restore 19
	.cfi_restore 30
	.cfi_def_cfa_offset 0
/*      9 */	ret	
	.cfi_endproc
.LFE0:
	.size	get_dtime, .-get_dtime
	.align	3
.LC1:
	.word	0xe826d695,0x3e112e0b
	.ident	"$Compiler: Fujitsu C/C++ Compiler Version 1.2.0 P-id: Alpha-20170804 (Aug  3 2017 14:46:27) test-p.c test $"
	.text
	.align	2
	.global	test
	.type	test, %function
test:
.LFB1:
	.cfi_startproc
/*    ??? */	sub	sp, sp, 64
/*    ??? */	stp	d8, d9, [sp]	//  (*)
	.cfi_offset 72, -64
	.cfi_offset 73, -56
/*    ??? */	stp	d10, d11, [sp, 16]	//  (*)
	.cfi_offset 74, -48
	.cfi_offset 75, -40
/*    ??? */	stp	d12, d13, [sp, 32]	//  (*)
	.cfi_offset 76, -32
	.cfi_offset 77, -24
/*    ??? */	stp	d14, d15, [sp, 48]	//  (*)
	.cfi_offset 78, -16
	.cfi_offset 79, -8
/*     24 */	cmp	w0, 0
/*     24 */	ble	.L180
/*     25 */	ptrue	p0.d, VL6
/*     26 */	adrp	x1, v_i0
/*     26 */	mov	x2, 0
/*     24 */	sub	w3, w0, 2
/*     26 */	ldr	d0, [x1, :lo12:v_i0]	//  "v_i0"
/*     29 */	adrp	x1, v_i3
/*     24 */	cmp	w3, 0
/*     24 */	mov	x4, 0
/*     29 */	ldr	d3, [x1, :lo12:v_i3]	//  "v_i3"
/*     28 */	adrp	x1, v_i2
/*     28 */	ldr	d5, [x1, :lo12:v_i2]	//  "v_i2"
/*     27 */	adrp	x1, v_i1
/*     27 */	ldr	d4, [x1, :lo12:v_i1]	//  "v_i1"
/*     31 */	adrp	x1, v_i5
/*     31 */	ldr	d1, [x1, :lo12:v_i5]	//  "v_i5"
/*     30 */	adrp	x1, v_i4
/*     30 */	ldr	d2, [x1, :lo12:v_i4]	//  "v_i4"
/*     26 */	dup	z0.d, z0.d[0]
/*     29 */	dup	z3.d, z3.d[0]
/*     28 */	dup	z5.d, z5.d[0]
/*     27 */	dup	z7.d, z4.d[0]
/*     31 */	dup	z9.d, z1.d[0]
/*     30 */	dup	z11.d, z2.d[0]
/*     24 */	blt	.L182
/*     24 */	adrp	x1, A
/*     24 */	adrp	x0, tmp
/*     24 */	mov	x4, 0
/*     24 */	cmp	w3, 6
/*     24 */	add	x1, x1, :lo12:A
/*     24 */	add	x0, x0, :lo12:tmp
/*     24 */	blt	.L266
/*     26 */	ld1d	z1.d, p0/z, [x1, x2, lsl #3]	//  "A"
/*     29 */	add	x5, x2, 18
/*     27 */	add	x6, x2, 6
/*     29 */	ld1d	z2.d, p0/z, [x1, x5, lsl #3]	//  "A"
/*     28 */	add	x5, x2, 12
/*     27 */	ld1d	z6.d, p0/z, [x1, x6, lsl #3]	//  "A"
/*     29 */	add	x6, x2, 54
/*     28 */	ld1d	z4.d, p0/z, [x1, x5, lsl #3]	//  "A"
/*     35 */	add	x5, x2, 36
/*     31 */	add	x7, x2, 30
/*     31 */	ld1d	z8.d, p0/z, [x1, x7, lsl #3]	//  "A"
/*     26 */	fmul	z1.d, z1.d, z0.d
/*     29 */	fmad	z2.d, p0/m, z3.d, z1.d
/*     26 */	ld1d	z1.d, p0/z, [x1, x5, lsl #3]	//  "A"
/*     28 */	fmad	z4.d, p0/m, z5.d, z2.d
/*     29 */	ld1d	z2.d, p0/z, [x1, x6, lsl #3]	//  "A"
/*     28 */	add	x6, x2, 48
/*     30 */	add	x2, x2, 24
/*     30 */	ld1d	z10.d, p0/z, [x1, x2, lsl #3]	//  "A"
/*     26 */	fmul	z1.d, z1.d, z0.d
/*     27 */	fmad	z6.d, p0/m, z7.d, z4.d
/*     28 */	ld1d	z4.d, p0/z, [x1, x6, lsl #3]	//  "A"
/*     29 */	fmad	z2.d, p0/m, z3.d, z1.d
/*     31 */	fmad	z8.d, p0/m, z9.d, z6.d
.L174:					// :entr:term:body:swpl
/*     35 */	add	x2, x5, 36
/*     26 */	ld1d	z1.d, p0/z, [x1, x2, lsl #3]	//  "A"
/*     27 */	add	x2, x5, 6
/*     27 */	ld1d	z6.d, p0/z, [x1, x2, lsl #3]	//  "A"
/*     32 */	ld1d	z12.d, p0/z, [x0, x4, lsl #3]	//  "tmp"
/*     28 */	fmad	z4.d, p0/m, z5.d, z2.d
/*     30 */	fmad	z10.d, p0/m, z11.d, z8.d
/*     29 */	add	x2, x5, 54
/*     29 */	ld1d	z2.d, p0/z, [x1, x2, lsl #3]	//  "A"
/*     31 */	add	x2, x5, 30
/*     31 */	ld1d	z8.d, p0/z, [x1, x2, lsl #3]	//  "A"
/*     26 */	fmul	z1.d, z1.d, z0.d
/*     27 */	fmad	z6.d, p0/m, z7.d, z4.d
/*     32 */	fadd	z12.d, z12.d, z10.d
/*     28 */	add	x2, x5, 48
/*     28 */	ld1d	z4.d, p0/z, [x1, x2, lsl #3]	//  "A"
/*     30 */	add	x2, x5, 24
/*     30 */	ld1d	z10.d, p0/z, [x1, x2, lsl #3]	//  "A"
/*     29 */	fmad	z2.d, p0/m, z3.d, z1.d
/*     31 */	fmad	z8.d, p0/m, z9.d, z6.d
/*     32 */	st1d	z12.d, p0, [x0, x4, lsl #3]	//  "tmp"
/*     35 */	add	x6, x5, 72
/*     27 */	add	x2, x5, 42
/*     26 */	ld1d	z1.d, p0/z, [x1, x6, lsl #3]	//  "A"
/*     27 */	ld1d	z6.d, p0/z, [x1, x2, lsl #3]	//  "A"
/*     35 */	add	x6, x4, 8
/*     32 */	ld1d	z12.d, p0/z, [x0, x6, lsl #3]	//  "tmp"
/*     28 */	fmad	z4.d, p0/m, z5.d, z2.d
/*     30 */	fmad	z10.d, p0/m, z11.d, z8.d
/*     29 */	add	x7, x5, 90
/*     31 */	add	x2, x5, 66
/*     29 */	ld1d	z2.d, p0/z, [x1, x7, lsl #3]	//  "A"
/*     31 */	ld1d	z8.d, p0/z, [x1, x2, lsl #3]	//  "A"
/*     26 */	fmul	z1.d, z1.d, z0.d
/*     27 */	fmad	z6.d, p0/m, z7.d, z4.d
/*     32 */	fadd	z12.d, z12.d, z10.d
/*     28 */	add	x7, x5, 84
/*     30 */	add	x2, x5, 60
/*     28 */	ld1d	z4.d, p0/z, [x1, x7, lsl #3]	//  "A"
/*     30 */	ld1d	z10.d, p0/z, [x1, x2, lsl #3]	//  "A"
/*     29 */	fmad	z2.d, p0/m, z3.d, z1.d
/*     31 */	fmad	z8.d, p0/m, z9.d, z6.d
/*     35 */	add	x2, x4, 16
/*     32 */	st1d	z12.d, p0, [x0, x6, lsl #3]	//  "tmp"
/*     35 */	add	x6, x5, 108
/*     26 */	ld1d	z1.d, p0/z, [x1, x6, lsl #3]	//  "A"
/*     27 */	add	x7, x5, 78
/*     27 */	ld1d	z6.d, p0/z, [x1, x7, lsl #3]	//  "A"
/*     32 */	ld1d	z12.d, p0/z, [x0, x2, lsl #3]	//  "tmp"
/*     28 */	fmad	z4.d, p0/m, z5.d, z2.d
/*     30 */	fmad	z10.d, p0/m, z11.d, z8.d
/*     29 */	add	x7, x5, 126
/*     29 */	ld1d	z2.d, p0/z, [x1, x7, lsl #3]	//  "A"
/*     31 */	add	x7, x5, 102
/*     31 */	ld1d	z8.d, p0/z, [x1, x7, lsl #3]	//  "A"
/*     26 */	fmul	z1.d, z1.d, z0.d
/*     27 */	fmad	z6.d, p0/m, z7.d, z4.d
/*     32 */	fadd	z12.d, z12.d, z10.d
/*     28 */	add	x7, x5, 120
/*     28 */	ld1d	z4.d, p0/z, [x1, x7, lsl #3]	//  "A"
/*     30 */	add	x7, x5, 96
/*     30 */	ld1d	z10.d, p0/z, [x1, x7, lsl #3]	//  "A"
/*     29 */	fmad	z2.d, p0/m, z3.d, z1.d
/*     31 */	fmad	z8.d, p0/m, z9.d, z6.d
/*     32 */	st1d	z12.d, p0, [x0, x2, lsl #3]	//  "tmp"
/*     35 */	add	x5, x5, 144
/*     27 */	add	x2, x6, 6
/*     26 */	ld1d	z1.d, p0/z, [x1, x5, lsl #3]	//  "A"
/*     27 */	ld1d	z6.d, p0/z, [x1, x2, lsl #3]	//  "A"
/*     35 */	add	x7, x4, 24
/*     32 */	ld1d	z12.d, p0/z, [x0, x7, lsl #3]	//  "tmp"
/*     28 */	fmad	z4.d, p0/m, z5.d, z2.d
/*     30 */	fmad	z10.d, p0/m, z11.d, z8.d
/*     29 */	add	x2, x5, 18
/*     31 */	add	x8, x6, 30
/*     29 */	ld1d	z2.d, p0/z, [x1, x2, lsl #3]	//  "A"
/*     31 */	ld1d	z8.d, p0/z, [x1, x8, lsl #3]	//  "A"
/*     26 */	fmul	z1.d, z1.d, z0.d
/*     27 */	fmad	z6.d, p0/m, z7.d, z4.d
/*     32 */	fadd	z12.d, z12.d, z10.d
/*     28 */	add	x2, x5, 12
/*     30 */	add	x6, x6, 24
/*     28 */	ld1d	z4.d, p0/z, [x1, x2, lsl #3]	//  "A"
/*     30 */	ld1d	z10.d, p0/z, [x1, x6, lsl #3]	//  "A"
/*     29 */	fmad	z2.d, p0/m, z3.d, z1.d
/*     31 */	fmad	z8.d, p0/m, z9.d, z6.d
/*     35 */	add	x4, x4, 32
/*     32 */	st1d	z12.d, p0, [x0, x7, lsl #3]	//  "tmp"
/*     35 */	sub	w3, w3, 4
/*     25 */	cmp	w3, 6
/*     25 */	bge	.L174
/*     27 */	add	x6, x5, 6
/*     32 */	ld1d	z6.d, p0/z, [x0, x4, lsl #3]	//  "tmp"
/*     28 */	fmad	z4.d, p0/m, z5.d, z2.d
/*     30 */	fmad	z10.d, p0/m, z11.d, z8.d
/*     35 */	add	x2, x5, 36
/*     27 */	ld1d	z1.d, p0/z, [x1, x6, lsl #3]	//  "A"
/*     31 */	add	x6, x5, 30
/*     31 */	ld1d	z2.d, p0/z, [x1, x6, lsl #3]	//  "A"
/*     30 */	add	x5, x5, 24
/*     35 */	sub	w3, w3, 2
/*     32 */	fadd	z6.d, z6.d, z10.d
/*     27 */	fmad	z1.d, p0/m, z7.d, z4.d
/*     30 */	ld1d	z4.d, p0/z, [x1, x5, lsl #3]	//  "A"
/*     35 */	add	x5, x4, 8
/*     32 */	st1d	z6.d, p0, [x0, x4, lsl #3]	//  "tmp"
/*     35 */	add	x4, x4, 16
/*     31 */	fmad	z2.d, p0/m, z9.d, z1.d
/*     32 */	ld1d	z1.d, p0/z, [x0, x5, lsl #3]	//  "tmp"
/*     30 */	fmad	z4.d, p0/m, z11.d, z2.d
/*     32 */	fadd	z1.d, z1.d, z4.d
/*     32 */	st1d	z1.d, p0, [x0, x5, lsl #3]	//  "tmp"
.L266:
.L269:					// :entr:term:mod:swpl
/*     26 */	ld1d	z1.d, p0/z, [x1, x2, lsl #3]	//  "A"
/*     29 */	add	x6, x2, 18
/*     28 */	add	x5, x2, 12
/*     32 */	ld1d	z18.d, p0/z, [x0, x4, lsl #3]	//  "tmp"
/*     29 */	ld1d	z4.d, p0/z, [x1, x6, lsl #3]	//  "A"
/*     28 */	ld1d	z8.d, p0/z, [x1, x5, lsl #3]	//  "A"
/*     27 */	add	x5, x2, 6
/*     35 */	add	x6, x2, 36
/*     27 */	ld1d	z12.d, p0/z, [x1, x5, lsl #3]	//  "A"
/*     31 */	add	x7, x2, 30
/*     26 */	ld1d	z2.d, p0/z, [x1, x6, lsl #3]	//  "A"
/*     29 */	add	x5, x6, 18
/*     31 */	ld1d	z14.d, p0/z, [x1, x7, lsl #3]	//  "A"
/*     30 */	add	x2, x2, 24
/*     29 */	ld1d	z6.d, p0/z, [x1, x5, lsl #3]	//  "A"
/*     28 */	add	x5, x6, 12
/*     30 */	ld1d	z16.d, p0/z, [x1, x2, lsl #3]	//  "A"
/*     28 */	ld1d	z10.d, p0/z, [x1, x5, lsl #3]	//  "A"
/*     27 */	add	x7, x6, 6
/*     31 */	add	x2, x6, 30
/*     35 */	add	x5, x4, 8
/*     27 */	ld1d	z13.d, p0/z, [x1, x7, lsl #3]	//  "A"
/*     31 */	ld1d	z15.d, p0/z, [x1, x2, lsl #3]	//  "A"
/*     30 */	add	x2, x6, 24
/*     30 */	ld1d	z17.d, p0/z, [x1, x2, lsl #3]	//  "A"
/*     35 */	add	x2, x6, 36
/*     35 */	subs	w3, w3, 2
/*     26 */	fmul	z1.d, z1.d, z0.d
/*     26 */	fmul	z2.d, z2.d, z0.d
/*     29 */	fmad	z4.d, p0/m, z3.d, z1.d
/*     29 */	fmad	z6.d, p0/m, z3.d, z2.d
/*     28 */	fmad	z8.d, p0/m, z5.d, z4.d
/*     28 */	fmad	z10.d, p0/m, z5.d, z6.d
/*     27 */	fmad	z12.d, p0/m, z7.d, z8.d
/*     27 */	fmad	z13.d, p0/m, z7.d, z10.d
/*     31 */	fmad	z14.d, p0/m, z9.d, z12.d
/*     31 */	fmad	z15.d, p0/m, z9.d, z13.d
/*     30 */	fmad	z16.d, p0/m, z11.d, z14.d
/*     30 */	fmad	z17.d, p0/m, z11.d, z15.d
/*     32 */	fadd	z18.d, z18.d, z16.d
/*     32 */	st1d	z18.d, p0, [x0, x4, lsl #3]	//  "tmp"
/*     35 */	add	x4, x5, 8
/*     32 */	ld1d	z1.d, p0/z, [x0, x5, lsl #3]	//  "tmp"
/*     32 */	fadd	z1.d, z1.d, z17.d
/*     32 */	st1d	z1.d, p0, [x0, x5, lsl #3]	//  "tmp"
/*     35 */	bpl	.L269
.L182:
/*     24 */	adds	w5, w3, 1
/*     24 */	bmi	.L180
/*     24 */	adrp	x3, A
/*     26 */	lsl	x1, x2, 3
/*     24 */	adrp	x6, tmp
/*     26 */	add	x0, x1, 192
/*     27 */	add	x1, x1, 240
/*     24 */	add	x3, x3, :lo12:A
/*     27 */	add	x7, x1, x3
/*     26 */	add	x0, x0, x3
/*     29 */	add	x1, x3, 144
/*     24 */	add	x6, x6, :lo12:tmp
/*     28 */	add	x3, x3, 96
.L191:					// :entr:term:mod
/*     26 */	ld1d	z1.d, p0/z, [x0, -3, mul vl]	//  "A"
/*     29 */	ld1d	z2.d, p0/z, [x1, x2, lsl #3]	//  "A"
/*     35 */	subs	w5, w5, 1
/*     28 */	ld1d	z4.d, p0/z, [x3, x2, lsl #3]	//  "A"
/*     27 */	ld1d	z6.d, p0/z, [x7, -3, mul vl]	//  "A"
/*     35 */	add	x2, x2, 36
/*     31 */	ld1d	z8.d, p0/z, [x7, 0, mul vl]	//  "A"
/*     30 */	ld1d	z10.d, p0/z, [x0, 0, mul vl]	//  "A"
/*     35 */	add	x7, x7, 288
/*     35 */	add	x0, x0, 288
/*     32 */	ld1d	z12.d, p0/z, [x6, x4, lsl #3]	//  "tmp"
/*     26 */	fmul	z1.d, z1.d, z0.d
/*     29 */	fmad	z2.d, p0/m, z3.d, z1.d
/*     28 */	fmad	z4.d, p0/m, z5.d, z2.d
/*     27 */	fmad	z6.d, p0/m, z7.d, z4.d
/*     31 */	fmad	z8.d, p0/m, z9.d, z6.d
/*     30 */	fmad	z10.d, p0/m, z11.d, z8.d
/*     32 */	fadd	z12.d, z12.d, z10.d
/*     32 */	st1d	z12.d, p0, [x6, x4, lsl #3]	//  "tmp"
/*     35 */	add	x4, x4, 8
/*     36 */	bpl	.L191
.L180:					// :epi:term
/*    ??? */	ldp	d8, d9, [sp]	//  (*)
	.cfi_restore 72
	.cfi_restore 73
/*    ??? */	ldp	d10, d11, [sp, 16]	//  (*)
	.cfi_restore 74
	.cfi_restore 75
/*    ??? */	ldp	d12, d13, [sp, 32]	//  (*)
	.cfi_restore 76
	.cfi_restore 77
/*    ??? */	ldp	d14, d15, [sp, 48]	//  (*)
	.cfi_restore 78
	.cfi_restore 79
/*    ??? */	add	sp, sp, 64
/*     37 */	ret	
	.cfi_endproc
.LFE1:
	.size	test, .-test
	.ident	"$Compiler: Fujitsu C/C++ Compiler Version 1.2.0 P-id: Alpha-20170804 (Aug  3 2017 14:46:27) test-p.c main $"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB2:
	.cfi_startproc
/*    ??? */	stp	x19, x20, [sp, -64]!	//  (*)
	.cfi_def_cfa_offset 64
	.cfi_offset 19, -64
	.cfi_offset 20, -56
/*    ??? */	stp	x21, x22, [sp, 16]	//  (*)
	.cfi_offset 21, -48
	.cfi_offset 22, -40
/*     37 */	mov	x21, x1
/*     37 */	mov	w22, w0
/*    ??? */	str	x30, [sp, 32]	//  (*)
	.cfi_offset 30, -32
/*    ??? */	str	d8, [sp, 40]	//  (*)
	.cfi_offset 72, -24
/*     47 */	cmp	w22, 1
/*     47 */	ble	.L201
/*     48 */	ldr	x0, [x21, 8]	//  (*)
/*    280 */	mov	w2, 10
/*    280 */	mov	x1, 0
/*    280 */	bl	strtol
/*    280 */	mov	w19, w0
/*     48 */	b	.L202
.L201:
/*     44 */	mov	w19, 128
.L202:
/*     49 */	cmp	w22, 2
/*     49 */	ble	.L204
/*     50 */	ldr	x0, [x21, 16]	//  (*)
/*    280 */	mov	w2, 10
/*    280 */	mov	x1, 0
/*    280 */	bl	strtol
/*    280 */	mov	w20, w0
/*     50 */	b	.L205
.L204:
/*     45 */	mov	w20, 1000
.L205:
/*     51 */	cmp	w22, 3
/*     51 */	ble	.L207
/*     52 */	ldr	x0, [x21, 24]	//  (*)
/*    280 */	mov	w2, 10
/*    280 */	mov	x1, 0
/*    280 */	bl	strtol
/*    280 */	mov	w21, w0
/*     52 */	b	.L208
.L207:
/*     46 */	mov	w21, 0
.L208:
/*     53 */	cmp	w19, 1024
/*     53 */	ble	.L210
/*     54 */	adrp	x0, .LR.3
/*     54 */	mov	w2, 1024
/*     54 */	mov	w1, w19
/*     54 */	add	x0, x0, :lo12:.LR.3
/*     54 */	bl	printf
/*     55 */	mov	w0, 1
/*     55 */	bl	exit
.L210:
/*     57 */	adrp	x0, .LR.2
/*     57 */	mov	w1, w19
/*     57 */	mov	w2, w20
/*     57 */	add	x0, x0, :lo12:.LR.2
/*     57 */	mov	w3, w21
/*     57 */	bl	printf
/*     58 */	cmp	w19, 0
/*     58 */	ble	.L223
/*     61 */	mov	x8, 0
/*     58 */	adrp	x0, A
/*     58 */	mov	w1, w19
/*     61 */	fmov	d0, 1.000000e+00
/*     58 */	add	x5, x0, :lo12:A
/*     60 */	mov	w4, 6
.L213:					// :entr
/*     59 */	mov	w3, 0
.L215:					// :entr
/*     60 */	sub	w0, w4, w3
/*     60 */	cmp	w3, 6
/*     60 */	bge	.L220
/*     61 */	sxtw	x2, w3
/*     61 */	add	x6, x2, x2
/*     61 */	add	x2, x6, x2
/*     61 */	add	x2, x2, x2
/*     61 */	add	x6, x2, x8
/*     60 */	subs	w2, w0, 4
/*     60 */	bmi	.L233
/*     61 */	lsl	x0, x6, 3
/*     61 */	ldr	x7, .LC2
/*     61 */	add	x0, x0, 144
/*     61 */	add	x0, x0, x5
.L218:					// :entr:term:body
/*     61 */	str	x7, [x0, -144]	//  "A"
/*      0 */	add	w3, w3, 4
/*      0 */	add	x6, x6, 24
/*     61 */	str	x7, [x0, -96]	//  "A"
/*      0 */	subs	w2, w2, 4
/*     61 */	str	x7, [x0, -48]	//  "A"
/*     61 */	str	x7, [x0]	//  "A"
/*      0 */	add	x0, x0, 192
/*      0 */	bpl	.L218
.L233:
/*     60 */	adds	w0, w2, 3
/*     60 */	bmi	.L220
.L241:					// :entr:term:mod
/*     61 */	str	d0, [x5, x6, lsl #3]	//  "A"
/*      0 */	add	w3, w3, 1
/*      0 */	add	x6, x6, 6
/*      0 */	subs	w0, w0, 1
/*      0 */	bpl	.L241
.L220:					// :term
/*      0 */	add	w3, w3, 1
/*      0 */	cmp	w3, 6
/*      0 */	blt	.L215
/*      0 */	add	x8, x8, 36
/*      0 */	subs	w1, w1, 1
/*      0 */	bne	.L213
.L223:
/*     62 */	cbz	w21, .L225
/*     63 */	mov	w0, w19
/*     63 */	bl	test
.L225:
/*      7 */	add	x21, sp, 48
/*      7 */	mov	w0, 1
/*      7 */	mov	x1, x21
/*      7 */	bl	clock_gettime
/*      8 */	ldr	x1, [x21]	//  "tp"
/*      8 */	ldr	x0, [x21, 8]	//  "tp"
/*      8 */	ldr	d2, .LC3
/*      8 */	scvtf	d1, x1
/*      8 */	scvtf	d0, x0
/*      8 */	fmadd	d8, d0, d2, d1
/*     65 */	cmp	w20, 0
/*     65 */	ble	.L230
/*     65 */	mov	w22, w20
.L228:					// :entr:term
/*     66 */	mov	w0, w19
/*     66 */	bl	test
/*      0 */	subs	w22, w22, 1
/*      0 */	bne	.L228
.L230:
/*      7 */	mov	w0, 1
/*      7 */	mov	x1, x21
/*      7 */	bl	clock_gettime
/*      8 */	ldr	x1, [x21]	//  "tp"
/*      8 */	ldr	x2, [x21, 8]	//  "tp"
/*     68 */	add	w0, w20, w20
/*     69 */	fmov	d2, 1.000000e+00
/*     67 */	ldr	d1, .LC3
/*     68 */	add	w0, w0, w20
/*     69 */	ldr	d0, .LC4
/*     68 */	lsl	w3, w0, 2
/*     69 */	adrp	x0, .LR.1
/*     68 */	mul	w3, w3, w19
/*     69 */	add	x0, x0, :lo12:.LR.1
/*      8 */	scvtf	d5, x1
/*      8 */	scvtf	d3, x2
/*     68 */	scvtf	d4, w3
/*     67 */	fsub	d5, d5, d8
/*     69 */	fmul	d4, d4, d1
/*     67 */	fmadd	d3, d3, d1, d5
/*     69 */	fmul	d0, d3, d0
/*     69 */	frecpe	d1, d3
/*     69 */	fmsub	d2, d3, d1, d2
/*     69 */	fmul	d1, d4, d1
/*     69 */	fmadd	d4, d2, d2, d2
/*     69 */	fmul	d3, d2, d2
/*     69 */	fmadd	d4, d4, d1, d1
/*     69 */	fmadd	d2, d3, d3, d2
/*     69 */	fmadd	d1, d2, d4, d1
/*     69 */	bl	printf
/*     69 */	mov	w0, 0
/*    ??? */	ldp	x21, x22, [sp, 16]	//  (*)
	.cfi_restore 21
	.cfi_restore 22
/*    ??? */	ldr	d8, [sp, 40]	//  (*)
	.cfi_restore 72
/*    ??? */	ldr	x30, [sp, 32]	//  (*)
	.cfi_restore 30
/*    ??? */	ldp	x19, x20, [sp], 64	//  (*)
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
/*     71 */	ret	
	.cfi_endproc
.LFE2:
	.size	main, .-main
	.align	3
.LC2:
	.word	0,0x3ff00000
	.align	3
.LC3:
	.word	0xe826d695,0x3e112e0b
	.align	3
.LC4:
	.word	0,0x408f4000
	.data
	.global	v_i5
	.align	3
v_i5:
	.type	v_i5, %object
	.size	v_i5, 8
	.word	0,0x3ff00000
	.data
	.global	v_i4
	.align	3
v_i4:
	.type	v_i4, %object
	.size	v_i4, 8
	.word	0,0x3ff00000
	.data
	.global	v_i3
	.align	3
v_i3:
	.type	v_i3, %object
	.size	v_i3, 8
	.word	0,0x3ff00000
	.data
	.global	v_i2
	.align	3
v_i2:
	.type	v_i2, %object
	.size	v_i2, 8
	.word	0,0x3ff00000
	.data
	.global	v_i1
	.align	3
v_i1:
	.type	v_i1, %object
	.size	v_i1, 8
	.word	0,0x3ff00000
	.data
	.global	v_i0
	.align	3
v_i0:
	.type	v_i0, %object
	.size	v_i0, 8
	.word	0,0x3ff00000
	.section	.rodata
	.align	3
.LR.1:
	.ascii "elaps:\040%.6lf\040msec,\040%.6lf\040GFLOPS\012\000"
	.type	.LR.1, %object
	.size	.LR.1,.-.LR.1
	.section	.rodata
	.align	3
.LR.2:
	.ascii "size:%d,\040rep=%d,\040pre=%d\012\000"
	.type	.LR.2, %object
	.size	.LR.2,.-.LR.2
	.section	.rodata
	.align	3
.LR.3:
	.ascii "size:%d\040should\040be\040less\040than\040or\040e"
	.ascii	"qual\040%d\012\000"
	.type	.LR.3, %object
	.size	.LR.3,.-.LR.3
	.comm	tmp,65536,256
	.comm	A,294912,256
	.section	.note.GNU-stack,"",%progbits
