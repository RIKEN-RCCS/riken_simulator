..text.b:
	.ident	"$Options: Fujitsu C/C++ Compiler Version 1.2.0 P-id: Alpha-20180223 (Feb 16 2018 08:01:41) --preinclude /opt/FJTComp-latest/bin/../lib/c99.pre --gcc --c99 -D__FUJITSU -Dunix -D__aarch64__ -D__unix -D__fcc_version__=0x700 -D__fcc_version=700 -D__USER_LABEL_PREFIX__= -D__OPTIMIZE__ -D__ARM_ARCH=8 -D__FP_FAST_FMA -D__ELF__ -D__unix__ -D__linux__ -D__linux -Asystem(unix) -Dlinux -D__LIBC_6B -D__LP64__ -D_LP64 -DDISABLE_VALIDATION -I./opt/include --K=noocl --zmode=64 --sys_include=/opt/FJTComp-latest/bin/../include --sys_include=/opt/ARM/aarch64-linux-gnu/sysroot-linaro-eglibc-gcc4.9-2014.11-aarch64-linux-gnu/usr/include --K=opt papi-daxpy.c -- -ncmdname=fccpx -nspopt=\"-Kfast -lpapi -DDISABLE_VALIDATION -Nlst=t -I./opt/include -S -o papi-daxpy.s\" -zobe=no-static-clump -O3 -x- -Komitfp,mfunc,rdconv,eval,fp_relaxed,ns,fast_matmul,fp_contract,ilfunc,prefetch_conditional,simd_packed_promotion -Nlst=t -zsta=m -zsrc=papi-daxpy.c papi-daxpy.s $"
	.file	"papi-daxpy.c"
	.ident	"$Compiler: Fujitsu C/C++ Compiler Version 1.2.0 P-id: Alpha-20180223 (Feb 16 2018 08:01:41) papi-daxpy.c main $"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
	.file 1 "/opt/ARM/aarch64-linux-gnu/sysroot-linaro-eglibc-gcc4.9-2014.11-aarch64-linux-gnu/usr/include/bits/stdio.h"
	.file 2 "/opt/FJTComp-latest/bin/../include/stdarg.h"
	.file 3 "/opt/ARM/aarch64-linux-gnu/sysroot-linaro-eglibc-gcc4.9-2014.11-aarch64-linux-gnu/usr/include/stdio.h"
	.file 4 "/opt/ARM/aarch64-linux-gnu/sysroot-linaro-eglibc-gcc4.9-2014.11-aarch64-linux-gnu/usr/include/libio.h"
	.file 5 "/opt/ARM/aarch64-linux-gnu/sysroot-linaro-eglibc-gcc4.9-2014.11-aarch64-linux-gnu/usr/include/sys/sysmacros.h"
	.file 6 "/opt/ARM/aarch64-linux-gnu/sysroot-linaro-eglibc-gcc4.9-2014.11-aarch64-linux-gnu/usr/include/bits/sigset.h"
	.file 7 "papi-daxpy.c"
	.loc 7 7 0
.LFB0:
	.cfi_startproc
/*      7 */	mov	x2, 32400
/*      7 */	movk	x2, 2, lsl #16
/*      7 */	sub	sp, sp, x2
	.cfi_def_cfa_offset 163472
/*    ??? */	stp	x29, x30, [sp, -512]!	//  (*)
	.cfi_def_cfa_offset 163984
	.cfi_offset 29, -163984
	.cfi_offset 30, -163976
/*      7 */	add	x29, sp, 0
	.cfi_def_cfa_register 29
/*    ??? */	stp	x19, x20, [sp, 16]	//  (*)
	.cfi_offset 19, -163968
	.cfi_offset 20, -163960
/*    ??? */	stp	x21, x22, [sp, 32]	//  (*)
	.cfi_offset 21, -163952
	.cfi_offset 22, -163944
/*    ??? */	stp	x23, x24, [sp, 48]	//  (*)
	.cfi_offset 23, -163936
	.cfi_offset 24, -163928
/*    ??? */	stp	x25, x26, [sp, 64]	//  (*)
	.cfi_offset 25, -163920
	.cfi_offset 26, -163912
/*    ??? */	str	x27, [sp, 80]	//  (*)
	.cfi_offset 27, -163904
	.loc 7 15 0
/*     15 */	mov	w19, 84148224
/*     15 */	mov	w0, w19
/*     15 */	bl	PAPI_library_init
/*     15 */	cmp	w0, w19
/*     15 */	beq	.L116
	.loc 7 16 0
/*     16 */	adrp	x1, .LR.4
/*     16 */	adrp	x0, stderr
/*     16 */	add	x1, x1, :lo12:.LR.4
/*     16 */	ldr	x0, [x0, :lo12:stderr]	//  "stderr"
/*     16 */	bl	fprintf
	.loc 7 17 0
/*     17 */	mov	w0, 1
	.loc 7 18 0
/*     18 */	b	.L131
.L116:
	.loc 7 20 0
/*     20 */	mov	x0, 32872
	.loc 7 22 0
/*     22 */	mov	x1, 32888
	.loc 7 20 0
/*     20 */	movk	x0, 2, lsl #16
	.loc 7 22 0
/*     22 */	movk	x1, 2, lsl #16
	.loc 7 20 0
/*     20 */	add	x20, x29, x0
/*     20 */	mov	w0, -2147483648
/*     20 */	movk	w0, 59, lsl #0
	.loc 7 22 0
/*     22 */	add	x21, x29, x1
	.loc 7 20 0
/*     20 */	str	w0, [x20]	//  "events"
	.loc 7 22 0
/*     22 */	str	xzr, [x21]	//  "values"
	.loc 7 24 0
/*     24 */	adrp	x0, .LR.3
/*     24 */	add	x19, x0, :lo12:.LR.3
/*     24 */	bl	PAPI_num_counters
/*     24 */	mov	w1, w0
/*     24 */	mov	x0, x19
/*     24 */	bl	printf
	.loc 7 26 0
/*     26 */	mov	w22, 10
	.loc 7 28 0
/*     30 */	mov	x0, 16488
/*     30 */	movk	x0, 1, lsl #16
/*     30 */	add	x1, x29, x0
/*     29 */	add	x0, x29, 104
/*     29 */	add	x24, x0, 192
/*     36 */	add	x25, x0, 64
/*     41 */	adrp	x0, .LR.2
/*     30 */	add	x19, x1, 192
/*     41 */	add	x27, x0, :lo12:.LR.2
/*     42 */	adrp	x0, .LR.1
/*     36 */	add	x26, x1, 64
/*     42 */	add	x23, x0, :lo12:.LR.1
.L119:					// :entr
/*     28 */	mov	w4, 319
/*     28 */	mov	w3, 0
/*     29 */	mov	x0, x19
/*     29 */	mov	x2, x24
/*     31 */	mov	x1, x0
/*     31 */	mov	w0, w3
/*     28 */	index	z0.d, 0, 1
/*     28 */	ptrue	p0.d, ALL
/*     31 */	add	w5, w0, 8
/*     31 */	add	w6, w0, 16
/*     29 */	dup	z1.s, w0
/*     31 */	add	w7, w0, 24
/*     29 */	dup	z2.s, w6
/*     31 */	add	w6, w0, 48
/*     31 */	add	w3, w0, 32
/*     29 */	dup	z3.s, w7
/*     31 */	add	w7, w0, 40
/*     29 */	dup	z4.s, w5
/*     31 */	add	w5, w0, 56
/*     31 */	add	w0, w0, 64
/*     29 */	dup	z6.s, w6
/*     31 */	add	w6, w0, 16
/*     29 */	dup	z16.s, w5
/*     31 */	add	w5, w0, 8
/*     29 */	dup	z7.s, w3
/*     29 */	dup	z5.s, w7
/*     29 */	add	z1.s, z1.s, z0.s
/*     30 */	fmov	z0.d, 0.000000e+00
/*     30 */	st1d	{z0.d}, p0, [x1, 0, mul vl]	//  "y"
/*     28 */	index	z0.d, 0, 1
/*     29 */	add	z2.s, z2.s, z0.s
/*     29 */	add	z3.s, z3.s, z0.s
/*     29 */	add	z4.s, z4.s, z0.s
/*     29 */	scvtf	z19.d, p0/m, z2.s
/*     29 */	scvtf	z18.d, p0/m, z3.s
/*     29 */	scvtf	z20.d, p0/m, z4.s
	.p2align 5
.L121:					// :entr:term:body:swpl
/*     31 */	add	w3, w6, 8
/*     28 */	ptrue	p0.d, ALL
/*     29 */	scvtf	z21.d, p0/m, z1.s
/*     29 */	dup	z3.s, w6
/*     28 */	index	z0.d, 0, 1
/*     29 */	add	z5.s, z5.s, z0.s
/*     29 */	dup	z4.s, w3
/*     29 */	dup	z1.s, w0
/*     30 */	fmov	z0.d, 0.000000e+00
/*     30 */	st1d	{z0.d}, p0, [x1, -2, mul vl]	//  "y"
/*     28 */	index	z0.d, 0, 1
/*     29 */	add	z6.s, z6.s, z0.s
/*     29 */	dup	z2.s, w5
/*     29 */	st1d	{z20.d}, p0, [x2, -2, mul vl]	//  "x"
/*     29 */	scvtf	z17.d, p0/m, z5.s
/*     30 */	fmov	z0.d, 0.000000e+00
/*     30 */	st1d	{z0.d}, p0, [x1, -1, mul vl]	//  "y"
/*     28 */	index	z0.d, 0, 1
/*     29 */	add	z7.s, z7.s, z0.s
/*     29 */	st1d	{z19.d}, p0, [x2, -1, mul vl]	//  "x"
/*     29 */	add	z16.s, z16.s, z0.s
/*     29 */	st1d	{z18.d}, p0, [x2, 0, mul vl]	//  "x"
/*     29 */	scvtf	z19.d, p0/m, z6.s
/*     29 */	st1d	{z21.d}, p0, [x2, -3, mul vl]	//  "x"
/*     31 */	add	w0, w6, 16
/*     30 */	fmov	z0.d, 0.000000e+00
/*     30 */	st1d	{z0.d}, p0, [x1, 4, mul vl]	//  "y"
/*     31 */	add	w7, w6, 24
/*     30 */	st1d	{z0.d}, p0, [x1, -3, mul vl]	//  "y"
/*     29 */	scvtf	z18.d, p0/m, z16.s
/*     31 */	add	w5, w6, 32
/*     31 */	add	w3, w6, 40
/*     29 */	scvtf	z21.d, p0/m, z7.s
/*     29 */	dup	z6.s, w5
/*     28 */	index	z0.d, 0, 1
/*     29 */	add	z2.s, z2.s, z0.s
/*     29 */	dup	z16.s, w3
/*     29 */	dup	z7.s, w0
/*     30 */	fmov	z0.d, 0.000000e+00
/*     30 */	st1d	{z0.d}, p0, [x1, 2, mul vl]	//  "y"
/*     28 */	index	z0.d, 0, 1
/*     29 */	add	z3.s, z3.s, z0.s
/*     29 */	dup	z5.s, w7
/*     29 */	st1d	{z17.d}, p0, [x2, 2, mul vl]	//  "x"
/*     29 */	scvtf	z20.d, p0/m, z2.s
/*     30 */	fmov	z0.d, 0.000000e+00
/*     30 */	st1d	{z0.d}, p0, [x1, 3, mul vl]	//  "y"
/*     28 */	index	z0.d, 0, 1
/*     29 */	add	z1.s, z1.s, z0.s
/*     29 */	st1d	{z19.d}, p0, [x2, 3, mul vl]	//  "x"
/*     29 */	add	z4.s, z4.s, z0.s
/*     29 */	st1d	{z18.d}, p0, [x2, 4, mul vl]	//  "x"
/*     29 */	scvtf	z19.d, p0/m, z3.s
/*     29 */	st1d	{z21.d}, p0, [x2, 1, mul vl]	//  "x"
/*     31 */	add	x1, x1, 512
/*     31 */	add	w0, w6, 48
/*     30 */	fmov	z0.d, 0.000000e+00
/*     30 */	st1d	{z0.d}, p0, [x1, 0, mul vl]	//  "y"
/*     31 */	add	w5, w6, 56
/*     31 */	add	x2, x2, 512
/*     30 */	st1d	{z0.d}, p0, [x1, -7, mul vl]	//  "y"
/*     29 */	scvtf	z18.d, p0/m, z4.s
/*     31 */	add	w6, w6, 64
/*     31 */	sub	w4, w4, 2
/*     31 */	cmp	w4, 4
/*     31 */	bge	.L121
/*     28 */	index	z0.d, 0, 1
/*     28 */	ptrue	p0.d, ALL
/*     31 */	add	w3, w6, 16
/*     31 */	sub	w4, w4, 2
/*     29 */	dup	z2.s, w5
/*     31 */	sub	w4, w4, 1
/*     29 */	dup	z3.s, w6
/*     29 */	st1d	{z20.d}, p0, [x2, -2, mul vl]	//  "x"
/*     29 */	scvtf	z1.d, p0/m, z1.s
/*     29 */	st1d	{z19.d}, p0, [x2, -1, mul vl]	//  "x"
/*     29 */	dup	z17.s, w0
/*     31 */	add	w0, w6, 8
/*     29 */	st1d	{z18.d}, p0, [x2, 0, mul vl]	//  "x"
/*     29 */	dup	z4.s, w0
/*     31 */	add	x0, x1, 256
/*     29 */	st1d	{z1.d}, p0, [x2, -3, mul vl]	//  "x"
/*     28 */	index	z1.d, 0, 1
/*     29 */	add	z5.s, z5.s, z0.s
/*     30 */	fmov	z0.d, 0.000000e+00
/*     29 */	scvtf	z5.d, p0/m, z5.s
/*     30 */	st1d	{z0.d}, p0, [x1, -2, mul vl]	//  "y"
/*     28 */	index	z0.d, 0, 1
/*     29 */	add	z1.s, z17.s, z1.s
/*     29 */	st1d	{z5.d}, p0, [x2, 2, mul vl]	//  "x"
/*     29 */	add	z6.s, z6.s, z0.s
/*     30 */	fmov	z0.d, 0.000000e+00
/*     29 */	scvtf	z18.d, p0/m, z6.s
/*     30 */	st1d	{z0.d}, p0, [x1, -1, mul vl]	//  "y"
/*     28 */	index	z0.d, 0, 1
/*     29 */	st1d	{z18.d}, p0, [x2, 3, mul vl]	//  "x"
/*     29 */	add	z7.s, z7.s, z0.s
/*     29 */	add	z16.s, z16.s, z0.s
/*     29 */	add	z2.s, z2.s, z0.s
/*     30 */	fmov	z0.d, 0.000000e+00
/*     29 */	scvtf	z6.d, p0/m, z16.s
/*     29 */	scvtf	z7.d, p0/m, z7.s
/*     29 */	scvtf	z20.d, p0/m, z2.s
/*     30 */	st1d	{z0.d}, p0, [x1, 4, mul vl]	//  "y"
/*     30 */	st1d	{z0.d}, p0, [x1, -3, mul vl]	//  "y"
/*     28 */	index	z0.d, 0, 1
/*     29 */	st1d	{z6.d}, p0, [x2, 4, mul vl]	//  "x"
/*     29 */	st1d	{z7.d}, p0, [x2, 1, mul vl]	//  "x"
/*     31 */	add	x2, x2, 512
/*     29 */	st1d	{z20.d}, p0, [x2, -2, mul vl]	//  "x"
/*     29 */	add	z3.s, z3.s, z0.s
/*     30 */	fmov	z0.d, 0.000000e+00
/*     29 */	scvtf	z19.d, p0/m, z3.s
/*     30 */	st1d	{z0.d}, p0, [x1, 2, mul vl]	//  "y"
/*     28 */	index	z0.d, 0, 1
/*     29 */	st1d	{z19.d}, p0, [x2, -1, mul vl]	//  "x"
/*     29 */	add	z4.s, z4.s, z0.s
/*     30 */	fmov	z0.d, 0.000000e+00
/*     29 */	scvtf	z18.d, p0/m, z4.s
/*     30 */	st1d	{z0.d}, p0, [x1, 3, mul vl]	//  "y"
/*     31 */	add	x1, x1, 512
/*     29 */	scvtf	z0.d, p0/m, z1.s
/*     30 */	fmov	z1.d, 0.000000e+00
/*     30 */	st1d	{z1.d}, p0, [x1, 0, mul vl]	//  "y"
/*     30 */	st1d	{z1.d}, p0, [x0, -3, mul vl]	//  "y"
/*     31 */	add	x0, x1, 256
/*     30 */	st1d	{z1.d}, p0, [x1, -2, mul vl]	//  "y"
/*     29 */	st1d	{z18.d}, p0, [x2, 0, mul vl]	//  "x"
/*     29 */	st1d	{z0.d}, p0, [x2, -3, mul vl]	//  "x"
/*     31 */	add	x2, x2, 256
/*     30 */	st1d	{z1.d}, p0, [x1, -1, mul vl]	//  "y"
/*     30 */	fmov	z0.d, 0.000000e+00
/*     30 */	st1d	{z0.d}, p0, [x1, -3, mul vl]	//  "y"
	.loc 7 29 0
/*     29 */	dup	z1.s, w3
/*     31 */	add	w3, w3, 8
/*     31 */	sub	w1, w4, 1
	.loc 7 30 0
/*     28 */	ptrue	p0.d, ALL
	.loc 7 29 0
/*     29 */	dup	z2.s, w3
/*     31 */	add	w3, w3, 8
/*     31 */	cmp	w1, 0
/*     33 */	mov	w1, 1
	.loc 7 30 0
/*     30 */	fmov	z0.d, 0.000000e+00
	.loc 7 29 0
/*     29 */	dup	z3.s, w3
/*     31 */	add	w3, w3, 8
/*     29 */	dup	z4.s, w3
	.loc 7 30 0
/*     30 */	st1d	{z0.d}, p0, [x0, -3, mul vl]	//  "y"
/*     30 */	st1d	{z0.d}, p0, [x0, -2, mul vl]	//  "y"
/*     30 */	st1d	{z0.d}, p0, [x0, -1, mul vl]	//  "y"
/*     30 */	st1d	{z0.d}, p0, [x0, 0, mul vl]	//  "y"
	.loc 7 29 0
/*     28 */	index	z0.d, 0, 1
/*     33 */	mov	x0, x20
/*     29 */	add	z1.s, z1.s, z0.s
/*     29 */	add	z2.s, z2.s, z0.s
/*     29 */	add	z3.s, z3.s, z0.s
/*     29 */	add	z4.s, z4.s, z0.s
/*     29 */	scvtf	z0.d, p0/m, z1.s
/*     29 */	scvtf	z1.d, p0/m, z2.s
/*     29 */	scvtf	z2.d, p0/m, z3.s
/*     29 */	scvtf	z3.d, p0/m, z4.s
/*     29 */	st1d	{z0.d}, p0, [x2, -3, mul vl]	//  "x"
/*     29 */	st1d	{z1.d}, p0, [x2, -2, mul vl]	//  "x"
/*     29 */	st1d	{z2.d}, p0, [x2, -1, mul vl]	//  "x"
/*     29 */	st1d	{z3.d}, p0, [x2, 0, mul vl]	//  "x"
/*     33 */	bl	PAPI_start_counters
	.loc 7 35 0
/*     35 */	mov	w3, 639
/*     28 */	ptrue	p0.d, ALL
/*     36 */	mov	x0, x25
/*     36 */	mov	x1, x26
/*     36 */	mov	x2, x1
/*     36 */	ld1d	{z23.d}, p0/z, [x0, -1, mul vl]	//  "x"
/*     36 */	fdup	z7.d, 2.000000e+00
/*     36 */	add	x8, x0, 512
/*     36 */	ld1d	{z1.d}, p0/z, [x2, -1, mul vl]	//  "y"
/*     36 */	ld1d	{z27.d}, p0/z, [x0, 0, mul vl]	//  "x"
/*     36 */	add	x5, x2, 512
/*     36 */	ld1d	{z16.d}, p0/z, [x2, 0, mul vl]	//  "y"
/*     36 */	add	x6, x2, 128
/*     36 */	ld1d	{z29.d}, p0/z, [x0, 1, mul vl]	//  "x"
/*     36 */	add	x4, x2, 256
/*     36 */	ld1d	{z17.d}, p0/z, [x2, 1, mul vl]	//  "y"
/*     36 */	ld1d	{z30.d}, p0/z, [x0, 2, mul vl]	//  "x"
/*     36 */	add	x7, x2, 384
/*     36 */	add	x1, x5, 128
/*     36 */	ld1d	{z21.d}, p0/z, [x2, 2, mul vl]	//  "y"
/*     36 */	ld1d	{z0.d}, p0/z, [x0, 3, mul vl]	//  "x"
/*     36 */	ld1d	{z2.d}, p0/z, [x0, 4, mul vl]	//  "x"
/*     36 */	ld1d	{z3.d}, p0/z, [x0, 5, mul vl]	//  "x"
/*     36 */	ld1d	{z4.d}, p0/z, [x0, 6, mul vl]	//  "x"
/*     36 */	ld1d	{z5.d}, p0/z, [x0, 7, mul vl]	//  "x"
/*     36 */	add	x0, x8, 128
/*     36 */	ld1d	{z26.d}, p0/z, [x2, 3, mul vl]	//  "y"
/*     36 */	ld1d	{z20.d}, p0/z, [x2, 4, mul vl]	//  "y"
/*     36 */	ld1d	{z18.d}, p0/z, [x2, 5, mul vl]	//  "y"
/*     36 */	ld1d	{z19.d}, p0/z, [x2, 6, mul vl]	//  "y"
/*     36 */	ld1d	{z22.d}, p0/z, [x2, 7, mul vl]	//  "y"
/*     36 */	ld1d	{z6.d}, p0/z, [x8, 0, mul vl]	//  "x"
/*     36 */	ld1d	{z25.d}, p0/z, [x5, 0, mul vl]	//  "y"
/*     36 */	fmad	z23.d, p0/m, z7.d, z1.d
/*     36 */	fdup	z1.d, 2.000000e+00
/*     36 */	fmad	z27.d, p0/m, z1.d, z16.d
/*     36 */	fmad	z29.d, p0/m, z1.d, z17.d
/*     36 */	fmad	z30.d, p0/m, z1.d, z21.d
	.p2align 5
.L126:					// :entr:term:body:swpl
/*     36 */	ld1d	{z7.d}, p0/z, [x0, -1, mul vl]	//  "x"
/*     36 */	ld1d	{z28.d}, p0/z, [x1, -1, mul vl]	//  "y"
/*     36 */	fdup	z1.d, 2.000000e+00
/*     36 */	fmad	z1.d, p0/m, z0.d, z26.d
/*     36 */	st1d	{z23.d}, p0, [x2, -1, mul vl]	//  "y"
/*     36 */	ld1d	{z16.d}, p0/z, [x0, 0, mul vl]	//  "x"
/*     36 */	ld1d	{z21.d}, p0/z, [x1, 0, mul vl]	//  "y"
/*     36 */	fdup	z0.d, 2.000000e+00
/*     36 */	fmad	z0.d, p0/m, z2.d, z20.d
/*     36 */	st1d	{z27.d}, p0, [x2, 0, mul vl]	//  "y"
/*     36 */	ld1d	{z17.d}, p0/z, [x0, 1, mul vl]	//  "x"
/*     36 */	ld1d	{z24.d}, p0/z, [x1, 1, mul vl]	//  "y"
/*     36 */	fdup	z2.d, 2.000000e+00
/*     36 */	fmad	z2.d, p0/m, z3.d, z18.d
/*     36 */	st1d	{z29.d}, p0, [x6, -1, mul vl]	//  "y"
/*     36 */	ld1d	{z18.d}, p0/z, [x0, 2, mul vl]	//  "x"
/*     36 */	ld1d	{z26.d}, p0/z, [x1, 2, mul vl]	//  "y"
/*     36 */	fdup	z3.d, 2.000000e+00
/*     36 */	fmad	z3.d, p0/m, z4.d, z19.d
/*     36 */	st1d	{z30.d}, p0, [x6, 0, mul vl]	//  "y"
/*     36 */	ld1d	{z19.d}, p0/z, [x0, 3, mul vl]	//  "x"
/*     36 */	ld1d	{z20.d}, p0/z, [x1, 3, mul vl]	//  "y"
/*     36 */	fdup	z4.d, 2.000000e+00
/*     36 */	fmad	z4.d, p0/m, z5.d, z22.d
/*     36 */	st1d	{z1.d}, p0, [x4, -1, mul vl]	//  "y"
/*     36 */	ld1d	{z23.d}, p0/z, [x0, 4, mul vl]	//  "x"
/*     36 */	ld1d	{z22.d}, p0/z, [x1, 4, mul vl]	//  "y"
/*     36 */	fdup	z1.d, 2.000000e+00
/*     36 */	fmad	z1.d, p0/m, z6.d, z25.d
/*     36 */	st1d	{z0.d}, p0, [x4, 0, mul vl]	//  "y"
/*     36 */	add	x2, x1, 384
/*     36 */	ld1d	{z25.d}, p0/z, [x0, 5, mul vl]	//  "x"
/*     36 */	ld1d	{z27.d}, p0/z, [x1, 5, mul vl]	//  "y"
/*     36 */	fdup	z5.d, 2.000000e+00
/*     36 */	fmad	z5.d, p0/m, z7.d, z28.d
/*     36 */	st1d	{z2.d}, p0, [x7, -1, mul vl]	//  "y"
/*     36 */	ld1d	{z28.d}, p0/z, [x0, 6, mul vl]	//  "x"
/*     36 */	ld1d	{z29.d}, p0/z, [x1, 6, mul vl]	//  "y"
/*     36 */	fdup	z6.d, 2.000000e+00
/*     36 */	fmad	z6.d, p0/m, z16.d, z21.d
/*     36 */	add	x8, x0, 512
/*     36 */	st1d	{z3.d}, p0, [x7, 0, mul vl]	//  "y"
/*     36 */	add	x6, x1, 512
/*     36 */	ld1d	{z30.d}, p0/z, [x0, 7, mul vl]	//  "x"
/*     36 */	ld1d	{z21.d}, p0/z, [x1, 7, mul vl]	//  "y"
/*     36 */	fdup	z7.d, 2.000000e+00
/*     36 */	fmad	z7.d, p0/m, z17.d, z24.d
/*     36 */	st1d	{z4.d}, p0, [x5, -1, mul vl]	//  "y"
/*     36 */	ld1d	{z17.d}, p0/z, [x8, 0, mul vl]	//  "x"
/*     36 */	ld1d	{z24.d}, p0/z, [x6, 0, mul vl]	//  "y"
/*     36 */	fdup	z16.d, 2.000000e+00
/*     36 */	fmad	z16.d, p0/m, z18.d, z26.d
/*     36 */	st1d	{z1.d}, p0, [x5, 0, mul vl]	//  "y"
/*     36 */	add	x4, x6, 128
/*     36 */	ld1d	{z0.d}, p0/z, [x8, 1, mul vl]	//  "x"
/*     36 */	ld1d	{z26.d}, p0/z, [x6, 1, mul vl]	//  "y"
/*     36 */	fdup	z1.d, 2.000000e+00
/*     36 */	fmad	z1.d, p0/m, z19.d, z20.d
/*     36 */	st1d	{z5.d}, p0, [x1, -1, mul vl]	//  "y"
/*     36 */	ld1d	{z2.d}, p0/z, [x8, 2, mul vl]	//  "x"
/*     36 */	ld1d	{z20.d}, p0/z, [x6, 2, mul vl]	//  "y"
/*     36 */	fdup	z31.d, 2.000000e+00
/*     36 */	fmad	z31.d, p0/m, z23.d, z22.d
/*     36 */	st1d	{z6.d}, p0, [x1, 0, mul vl]	//  "y"
/*     36 */	add	x7, x6, 256
/*     36 */	ld1d	{z3.d}, p0/z, [x8, 3, mul vl]	//  "x"
/*     36 */	ld1d	{z18.d}, p0/z, [x6, 3, mul vl]	//  "y"
/*     36 */	fdup	z23.d, 2.000000e+00
/*     36 */	fmad	z23.d, p0/m, z25.d, z27.d
/*     36 */	st1d	{z7.d}, p0, [x1, 1, mul vl]	//  "y"
/*     36 */	ld1d	{z4.d}, p0/z, [x8, 4, mul vl]	//  "x"
/*     36 */	ld1d	{z19.d}, p0/z, [x6, 4, mul vl]	//  "y"
/*     36 */	fdup	z27.d, 2.000000e+00
/*     36 */	fmad	z27.d, p0/m, z28.d, z29.d
/*     36 */	st1d	{z16.d}, p0, [x1, 2, mul vl]	//  "y"
/*     36 */	add	x5, x6, 384
/*     36 */	ld1d	{z5.d}, p0/z, [x8, 5, mul vl]	//  "x"
/*     36 */	ld1d	{z22.d}, p0/z, [x6, 5, mul vl]	//  "y"
/*     36 */	fdup	z29.d, 2.000000e+00
/*     36 */	fmad	z29.d, p0/m, z30.d, z21.d
/*     36 */	st1d	{z1.d}, p0, [x1, 3, mul vl]	//  "y"
/*     36 */	ld1d	{z6.d}, p0/z, [x8, 6, mul vl]	//  "x"
/*     36 */	ld1d	{z25.d}, p0/z, [x6, 6, mul vl]	//  "y"
/*     36 */	fdup	z30.d, 2.000000e+00
/*     36 */	fmad	z30.d, p0/m, z17.d, z24.d
/*     36 */	add	x0, x8, 512
/*     36 */	st1d	{z31.d}, p0, [x1, 4, mul vl]	//  "y"
/*     36 */	add	x1, x6, 512
/*     36 */	sub	w3, w3, 8
/*     36 */	cmp	w3, 12
/*     36 */	bge	.L126
/*     36 */	st1d	{z23.d}, p0, [x2, -1, mul vl]	//  "y"
/*     36 */	sub	w3, w3, 5
/*     36 */	st1d	{z27.d}, p0, [x2, 0, mul vl]	//  "y"
/*     36 */	fdup	z1.d, 2.000000e+00
/*     36 */	st1d	{z29.d}, p0, [x6, -1, mul vl]	//  "y"
/*     36 */	st1d	{z30.d}, p0, [x6, 0, mul vl]	//  "y"
/*     36 */	fmad	z0.d, p0/m, z1.d, z26.d
/*     36 */	fmad	z2.d, p0/m, z1.d, z20.d
/*     36 */	fmad	z3.d, p0/m, z1.d, z18.d
/*     36 */	fmad	z4.d, p0/m, z1.d, z19.d
/*     36 */	fmad	z5.d, p0/m, z1.d, z22.d
/*     36 */	fmad	z6.d, p0/m, z1.d, z25.d
/*     36 */	st1d	{z0.d}, p0, [x4, -1, mul vl]	//  "y"
/*     36 */	st1d	{z2.d}, p0, [x4, 0, mul vl]	//  "y"
/*     36 */	st1d	{z3.d}, p0, [x7, -1, mul vl]	//  "y"
/*     36 */	st1d	{z4.d}, p0, [x7, 0, mul vl]	//  "y"
/*     36 */	st1d	{z5.d}, p0, [x5, -1, mul vl]	//  "y"
/*     36 */	st1d	{z6.d}, p0, [x5, 0, mul vl]	//  "y"
	.p2align 5
.L159:					// :entr:term:mod:swpl
	.loc 7 36 0
/*     36 */	ld1d	{z1.d}, p0/z, [x0, -1, mul vl]	//  "x"
/*     36 */	ld1d	{z0.d}, p0/z, [x1, -1, mul vl]	//  "y"
/*     36 */	subs	w3, w3, 1
/*     36 */	fdup	z2.d, 2.000000e+00
/*     36 */	ld1d	{z4.d}, p0/z, [x0, 0, mul vl]	//  "x"
/*     36 */	ld1d	{z3.d}, p0/z, [x1, 0, mul vl]	//  "y"
/*     36 */	add	x0, x0, 128
/*     36 */	fmad	z1.d, p0/m, z2.d, z0.d
/*     36 */	fdup	z0.d, 2.000000e+00
/*     36 */	fmad	z4.d, p0/m, z0.d, z3.d
/*     36 */	st1d	{z1.d}, p0, [x1, -1, mul vl]	//  "y"
/*     36 */	st1d	{z4.d}, p0, [x1, 0, mul vl]	//  "y"
/*     36 */	add	x1, x1, 128
/*     36 */	bpl	.L159
/*     38 */	mov	w1, 1
/*     38 */	mov	x0, x21
/*     38 */	bl	PAPI_stop_counters
	.loc 7 41 0
/*     41 */	ldr	x1, [x21]	//  "values"
/*     41 */	mov	x0, x27
/*     41 */	bl	printf
	.loc 7 42 0
/*     42 */	mov	x0, x23
/*     42 */	bl	printf
	.loc 7 44 0
/*     44 */	subs	w22, w22, 1
/*     44 */	bne	.L119
	.loc 7 46 0
/*     46 */	mov	w0, 0
.L131:					// :epi:term
	.loc 7 47 0
/*    ??? */	ldp	x19, x20, [sp, 16]	//  (*)
	.cfi_restore 19
	.cfi_restore 20
/*    ??? */	ldp	x21, x22, [sp, 32]	//  (*)
	.cfi_restore 21
	.cfi_restore 22
/*     47 */	mov	x1, 32408
/*     47 */	movk	x1, 2, lsl #16
/*    ??? */	ldp	x23, x24, [sp, 48]	//  (*)
	.cfi_restore 23
	.cfi_restore 24
/*    ??? */	ldp	x25, x26, [sp, 64]	//  (*)
	.cfi_restore 25
	.cfi_restore 26
/*    ??? */	ldr	x27, [sp, 80]	//  (*)
	.cfi_restore 27
/*    ??? */	ldp	x29, x30, [sp], 504	//  (*)
	.cfi_restore 29
	.cfi_restore 30
	.cfi_def_cfa 31, 163480
/*     47 */	add	sp, sp, x1
	.cfi_def_cfa_offset 0
/*     47 */	ret	
..D1.pchi:
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.file 8 "/opt/ARM/aarch64-linux-gnu/sysroot-linaro-eglibc-gcc4.9-2014.11-aarch64-linux-gnu/usr/include/bits/types.h"
	.file 9 "/opt/FJTComp-latest/bin/../include/stddef.h"
	.file 10 "/opt/ARM/aarch64-linux-gnu/sysroot-linaro-eglibc-gcc4.9-2014.11-aarch64-linux-gnu/usr/include/_G_config.h"
	.file 11 "/opt/ARM/aarch64-linux-gnu/sysroot-linaro-eglibc-gcc4.9-2014.11-aarch64-linux-gnu/usr/include/sys/select.h"
	.file 12 "/opt/ARM/aarch64-linux-gnu/sysroot-linaro-eglibc-gcc4.9-2014.11-aarch64-linux-gnu/usr/include/bits/time.h"
	.file 13 "/opt/ARM/aarch64-linux-gnu/sysroot-linaro-eglibc-gcc4.9-2014.11-aarch64-linux-gnu/usr/include/time.h"
	.file 14 "/opt/ARM/aarch64-linux-gnu/sysroot-linaro-eglibc-gcc4.9-2014.11-aarch64-linux-gnu/usr/include/signal.h"
	.file 15 "/opt/ARM/aarch64-linux-gnu/sysroot-linaro-eglibc-gcc4.9-2014.11-aarch64-linux-gnu/usr/include/bits/siginfo.h"
	.file 16 "/opt/ARM/aarch64-linux-gnu/sysroot-linaro-eglibc-gcc4.9-2014.11-aarch64-linux-gnu/usr/include/bits/sigaction.h"
	.file 17 "/opt/ARM/aarch64-linux-gnu/sysroot-linaro-eglibc-gcc4.9-2014.11-aarch64-linux-gnu/usr/include/asm/sigcontext.h"
	.file 18 "/opt/ARM/aarch64-linux-gnu/sysroot-linaro-eglibc-gcc4.9-2014.11-aarch64-linux-gnu/usr/include/sys/time.h"
	.file 19 "/opt/ARM/aarch64-linux-gnu/sysroot-linaro-eglibc-gcc4.9-2014.11-aarch64-linux-gnu/usr/include/bits/sigstack.h"
	.file 20 "/opt/ARM/aarch64-linux-gnu/sysroot-linaro-eglibc-gcc4.9-2014.11-aarch64-linux-gnu/usr/include/bits/sigthread.h"
	.file 21 "/opt/ARM/aarch64-linux-gnu/sysroot-linaro-eglibc-gcc4.9-2014.11-aarch64-linux-gnu/usr/include/bits/pthreadtypes.h"
	.file 22 "./opt/include/papi.h"
	.file 23 "/opt/ARM/aarch64-linux-gnu/sysroot-linaro-eglibc-gcc4.9-2014.11-aarch64-linux-gnu/usr/include/wchar.h"
	.file 24 "/opt/ARM/aarch64-linux-gnu/sysroot-linaro-eglibc-gcc4.9-2014.11-aarch64-linux-gnu/usr/include/sys/types.h"
	.file 25 "./opt/include/papiStdEventDefs.h"
	.file 26 "/opt/ARM/aarch64-linux-gnu/sysroot-linaro-eglibc-gcc4.9-2014.11-aarch64-linux-gnu/usr/include/asm-generic/int-ll64.h"
	.file 27 "/opt/ARM/aarch64-linux-gnu/sysroot-linaro-eglibc-gcc4.9-2014.11-aarch64-linux-gnu/usr/include/linux/posix_types.h"
	.file 28 "/opt/ARM/aarch64-linux-gnu/sysroot-linaro-eglibc-gcc4.9-2014.11-aarch64-linux-gnu/usr/include/asm/posix_types.h"
	.file 29 "/opt/ARM/aarch64-linux-gnu/sysroot-linaro-eglibc-gcc4.9-2014.11-aarch64-linux-gnu/usr/include/asm-generic/posix_types.h"
	.file 30 "/opt/ARM/aarch64-linux-gnu/sysroot-linaro-eglibc-gcc4.9-2014.11-aarch64-linux-gnu/usr/include/linux/types.h"
	.file 31 "/opt/ARM/aarch64-linux-gnu/sysroot-linaro-eglibc-gcc4.9-2014.11-aarch64-linux-gnu/usr/include/sys/user.h"
	.file 32 "/opt/ARM/aarch64-linux-gnu/sysroot-linaro-eglibc-gcc4.9-2014.11-aarch64-linux-gnu/usr/include/sys/procfs.h"
	.file 33 "/opt/ARM/aarch64-linux-gnu/sysroot-linaro-eglibc-gcc4.9-2014.11-aarch64-linux-gnu/usr/include/sys/ucontext.h"
	.pushsection	.text
..text.e:
	.popsection
	.section	.debug_info
	.4byte	.LSEdebug_info-.LSBdebug_info	// Length of .debug_info section
.LSBdebug_info:
	.2byte	0x4	// Version of DWARF information
	.4byte	.Ldebug_abbrev	// Offset into .debug_abbrev section
	.byte	0x8	// Address size
	.uleb128	0x1	// DW_TAG_compile_unit (0xb)
	.ascii	"papi-daxpy.c\0"	// DW_AT_name
	.4byte	.Ldebug_line	// DW_AT_stmt_list
	.8byte	..text.b	// DW_AT_low_pc
	.8byte	..text.e-..text.b	// DW_AT_high_pc
	.byte	0x1	// DW_AT_language
	.ascii	"/home/odajima/workspace/gem5-papi\0"	// DW_AT_comp_dir
	.ascii	"FUJITSU LIMITED: Version 2.0.0 : 64-bit\0"	// DW_AT_producer
	.uleb128	0x2	// DW_TAG_subprogram (0x78)
	.ascii	"main\0"	// DW_AT_name
	.8byte	main	// DW_AT_low_pc
	.8byte	..D1.pchi-main	// DW_AT_high_pc
			// DW_AT_prototyped
	.byte	0x7	// DW_AT_decl_file
	.byte	0x7	// DW_AT_decl_line
			// DW_AT_external
	.uleb128	0x1	// DW_AT_frame_base
	.byte	0x9c	// DW_OP_call_frame_cfa
	.uleb128	0x3	// DW_TAG_FJ_loop (0x92)
	.byte	0x7	// DW_AT_decl_file
	.byte	0x28	// DW_AT_FJ_loop_start_line
	.byte	0x29	// DW_AT_FJ_loop_end_line
	.byte	0x2	// DW_AT_FJ_loop_nest_level
	.byte	0x5	// DW_AT_FJ_loop_type
	.uleb128	0x3	// DW_TAG_FJ_loop (0x98)
	.byte	0x7	// DW_AT_decl_file
	.byte	0x23	// DW_AT_FJ_loop_start_line
	.byte	0x24	// DW_AT_FJ_loop_end_line
	.byte	0x2	// DW_AT_FJ_loop_nest_level
	.byte	0x5	// DW_AT_FJ_loop_type
	.uleb128	0x3	// DW_TAG_FJ_loop (0x9e)
	.byte	0x7	// DW_AT_decl_file
	.byte	0x1c	// DW_AT_FJ_loop_start_line
	.byte	0x1e	// DW_AT_FJ_loop_end_line
	.byte	0x2	// DW_AT_FJ_loop_nest_level
	.byte	0x5	// DW_AT_FJ_loop_type
	.uleb128	0x3	// DW_TAG_FJ_loop (0xa4)
	.byte	0x7	// DW_AT_decl_file
	.byte	0x1a	// DW_AT_FJ_loop_start_line
	.byte	0x2c	// DW_AT_FJ_loop_end_line
	.byte	0x1	// DW_AT_FJ_loop_nest_level
	.byte	0x5	// DW_AT_FJ_loop_type
	.uleb128	0x3	// DW_TAG_FJ_loop (0xaa)
	.byte	0x7	// DW_AT_decl_file
	.byte	0x15	// DW_AT_FJ_loop_start_line
	.byte	0x16	// DW_AT_FJ_loop_end_line
	.byte	0x1	// DW_AT_FJ_loop_nest_level
	.byte	0x5	// DW_AT_FJ_loop_type
	.byte	0x0	// End of children (0x78)
	.byte	0x0	// End of children (0xb)
.LSEdebug_info:
	.section	.debug_abbrev
.Ldebug_abbrev:
	.uleb128	0x1	// Abbreviation code
	.uleb128	0x11	// DW_TAG_compile_unit
	.byte	0x1	// DW_CHILDREN_yes
	.uleb128	0x3	// DW_AT_name
	.uleb128	0x8	// DW_FORM_string
	.uleb128	0x10	// DW_AT_stmt_list
	.uleb128	0x17	// DW_FORM_sec_offset
	.uleb128	0x11	// DW_AT_low_pc
	.uleb128	0x1	// DW_FORM_addr
	.uleb128	0x12	// DW_AT_high_pc
	.uleb128	0x7	// DW_FORM_data8
	.uleb128	0x13	// DW_AT_language
	.uleb128	0xb	// DW_FORM_data1
	.uleb128	0x1b	// DW_AT_comp_dir
	.uleb128	0x8	// DW_FORM_string
	.uleb128	0x25	// DW_AT_producer
	.uleb128	0x8	// DW_FORM_string
	.byte	0x0
	.byte	0x0
	.uleb128	0x2	// Abbreviation code
	.uleb128	0x2e	// DW_TAG_subprogram
	.byte	0x1	// DW_CHILDREN_yes
	.uleb128	0x3	// DW_AT_name
	.uleb128	0x8	// DW_FORM_string
	.uleb128	0x11	// DW_AT_low_pc
	.uleb128	0x1	// DW_FORM_addr
	.uleb128	0x12	// DW_AT_high_pc
	.uleb128	0x7	// DW_FORM_data8
	.uleb128	0x27	// DW_AT_prototyped
	.uleb128	0x19	// DW_FORM_flag_present
	.uleb128	0x3a	// DW_AT_decl_file
	.uleb128	0xb	// DW_FORM_data1
	.uleb128	0x3b	// DW_AT_decl_line
	.uleb128	0xb	// DW_FORM_data1
	.uleb128	0x3f	// DW_AT_external
	.uleb128	0x19	// DW_FORM_flag_present
	.uleb128	0x40	// DW_AT_frame_base
	.uleb128	0x18	// DW_FORM_exprloc
	.byte	0x0
	.byte	0x0
	.uleb128	0x3	// Abbreviation code
	.uleb128	0xf000	// DW_TAG_FJ_loop
	.byte	0x0	// DW_CHILDREN_no
	.uleb128	0x3a	// DW_AT_decl_file
	.uleb128	0xb	// DW_FORM_data1
	.uleb128	0x3300	// DW_AT_FJ_loop_start_line
	.uleb128	0xb	// DW_FORM_data1
	.uleb128	0x3301	// DW_AT_FJ_loop_end_line
	.uleb128	0xb	// DW_FORM_data1
	.uleb128	0x3302	// DW_AT_FJ_loop_nest_level
	.uleb128	0xb	// DW_FORM_data1
	.uleb128	0x3303	// DW_AT_FJ_loop_type
	.uleb128	0xb	// DW_FORM_data1
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.section	.debug_line
.Ldebug_line:
	.section	.rodata
	.align	3
.LR.1:
	.ascii "\012\000"
	.type	.LR.1, %object
	.size	.LR.1,.-.LR.1
	.section	.rodata
	.align	3
.LR.2:
	.ascii "%ld\000"
	.type	.LR.2, %object
	.size	.LR.2,.-.LR.2
	.section	.rodata
	.align	3
.LR.3:
	.ascii "%d\040num_hwcntrs\040available\012\000"
	.type	.LR.3, %object
	.size	.LR.3,.-.LR.3
	.section	.rodata
	.align	3
.LR.4:
	.ascii "PAPI_library_init\040failed.\012\000"
	.type	.LR.4, %object
	.size	.LR.4,.-.LR.4
	.section	.note.GNU-stack,"",%progbits
