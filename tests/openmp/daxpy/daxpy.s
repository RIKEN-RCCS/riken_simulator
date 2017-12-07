..text.b:
	.ident	"$Options: Fujitsu C/C++ Compiler Version 1.2.0 P-id: Alpha-20171013 (Oct 10 2017 11:06:13) --preinclude /opt/FJTComp7/bin/../lib/c99.pre --gcc --c99 -D__FUJITSU -Dunix -D__aarch64__ -D__unix -D_OPENMP=201107 -D__fcc_version__=0x700 -D__fcc_version=700 -D__USER_LABEL_PREFIX__= -D__OPTIMIZE__ -D__ARM_ARCH=8 -D__FP_FAST_FMA -D__ELF__ -D__unix__ -D__linux__ -D__linux -Asystem(unix) -Dlinux -D__LIBC_6B -D__LP64__ -D_LP64 --K=omp --K=ocl -D_REENTRANT -D__MT__ --zmode=64 --sys_include=/opt/FJTComp7/bin/../include --sys_include=/opt/ARM/aarch64-linux-gnu/sysroot-linaro-eglibc-gcc4.9-2014.11-aarch64-linux-gnu/usr/include --K=opt daxpy.c -- -ncmdname=fccpx -nspopt=\"-Kfast,openmp,ocl -Nlst=t -Koptmsg=2 -S -o daxpy.s\" -zobe=no-static-clump -O3 -x- -Komitfp,mfunc,rdconv,eval,fp_relaxed,ns,fast_matmul,fp_contract,ilfunc,prefetch_conditional,openmp,threadsafe,ocl -Nlst=t -Koptmsg=2 -zsta=am -zsrc=daxpy.c daxpy.s $"
	.file	"daxpy.c"
	.ident	"$Compiler: Fujitsu C/C++ Compiler Version 1.2.0 P-id: Alpha-20171013 (Oct 10 2017 11:06:13) daxpy.c do_daxpy $"
	.text
	.align	2
	.type	do_daxpy, %function
do_daxpy:
	.file 1 "/opt/ARM/aarch64-linux-gnu/sysroot-linaro-eglibc-gcc4.9-2014.11-aarch64-linux-gnu/usr/include/bits/stdio.h"
	.file 2 "/opt/FJTComp7/bin/../include/stdarg.h"
	.file 3 "/opt/ARM/aarch64-linux-gnu/sysroot-linaro-eglibc-gcc4.9-2014.11-aarch64-linux-gnu/usr/include/stdio.h"
	.file 4 "/opt/ARM/aarch64-linux-gnu/sysroot-linaro-eglibc-gcc4.9-2014.11-aarch64-linux-gnu/usr/include/libio.h"
	.file 5 "/opt/ARM/aarch64-linux-gnu/sysroot-linaro-eglibc-gcc4.9-2014.11-aarch64-linux-gnu/usr/include/pthread.h"
	.file 6 "/opt/ARM/aarch64-linux-gnu/sysroot-linaro-eglibc-gcc4.9-2014.11-aarch64-linux-gnu/usr/include/bits/pthreadtypes.h"
	.file 7 "daxpy.c"
	.loc 7 8 0
.LFB0:
	.cfi_startproc
/*    ??? */	str	x30, [sp, -48]!	//  (*)
	.cfi_def_cfa_offset 48
	.cfi_offset 30, -48
/*     14 */	str	x0, [sp, 40]	//  "y"
/*     14 */	str	x1, [sp, 32]	//  "x"
/*     14 */	str	d0, [sp, 24]	//  "alpha"
/*     11 */	add	x1, sp, 24
/*     11 */	mov	x2, 0
/*     11 */	adrp	x0, do_daxpy._OMP_1
/*     11 */	add	x0, x0, :lo12:do_daxpy._OMP_1
/*     11 */	bl	__mpc_opar
	.loc 7 15 0
/*    ??? */	ldr	x30, [sp], 48	//  (*)
	.cfi_restore 30
	.cfi_def_cfa_offset 0
/*     15 */	ret	
	.cfi_endproc
.LFE0:
	.size	do_daxpy, .-do_daxpy
	.ident	"$Compiler: Fujitsu C/C++ Compiler Version 1.2.0 P-id: Alpha-20171013 (Oct 10 2017 11:06:13) daxpy.c do_daxpy._OMP_1 $"
	.text
	.align	2
	.type	do_daxpy._OMP_1, %function
do_daxpy._OMP_1:
	.loc 7 11 0
.LFB1:
	.cfi_startproc
/*    ??? */	str	x30, [sp, -64]!	//  (*)
	.cfi_def_cfa_offset 64
	.cfi_offset 30, -64
/*     11 */	str	x0, [sp, 24]	//  ___6
/*     11 */	str	x1, [sp, 32]	//  ___7
/*     11 */	str	x2, [sp, 40]	//  ___8
/*     11 */	str	x3, [sp, 48]	//  ___9
/*     11 */	str	x4, [sp, 56]	//  ___10
/*     11 */	str	x0, [sp, 16]	//  ___27
	.loc 7 12 0
/*     12 */	mov	x1, 1024
/*     12 */	ldr	x0, [sp, 32]	//  ___7
/*     12 */	sdiv	x2, x1, x0
/*     12 */	msub	x0, x0, x2, x1
/*     12 */	cbnz	x0, .L145
/*     12 */	ldr	x0, [sp, 40]	//  ___8
/*     12 */	mul	x0, x0, x2
/*     12 */	b	.L148
.L145:
/*     12 */	ldr	x1, [sp, 40]	//  ___8
/*     12 */	cmp	x1, x0
/*     12 */	blt	.L147
/*     12 */	madd	x0, x1, x2, x0
/*     12 */	b	.L148
.L147:
/*     12 */	add	x2, x2, 1
/*     12 */	mul	x0, x1, x2
.L148:
/*     12 */	sub	x1, x2, 1
/*     12 */	add	x1, x1, x0
/*     12 */	cbz	x2, .L153
/*     12 */	sub	w1, w1, w0
/*     12 */	add	w1, w1, 1
/*     12 */	cmp	w1, 1
/*     12 */	csinc	w2, w1, wzr, ge
/*     13 */	sxtw	x1, w0
/*     12 */	subs	w3, w2, 4
/*     12 */	bmi	.L156
/*     13 */	lsl	x0, x1, 3
/*     13 */	ldr	x2, [sp, 16]	//  ___27
/*     13 */	add	x0, x0, 24
/*     13 */	ldr	x4, [x2, 8]	//  "x"
/*     13 */	ldr	d0, [x2]	//  "alpha"
/*     13 */	ldr	x2, [x2, 16]	//  "y"
/*     13 */	add	x4, x4, x0
/*     13 */	add	x0, x2, x0
.L151:					// :entr:term:body
	.loc 7 13 0
/*     13 */	ldr	d2, [x4, -24]	//  (*)
/*     13 */	ldr	d1, [x0, -24]	//  (*)
/*     14 */	add	x1, x1, 4
/*     14 */	subs	w3, w3, 4
/*     13 */	fmadd	d1, d2, d0, d1
/*     13 */	str	d1, [x0, -24]	//  (*)
/*     13 */	ldr	d1, [x4, -16]	//  (*)
/*     13 */	ldr	d2, [x0, -16]	//  (*)
/*     13 */	fmadd	d1, d1, d0, d2
/*     13 */	str	d1, [x0, -16]	//  (*)
/*     13 */	ldr	d2, [x4, -8]	//  (*)
/*     13 */	ldr	d1, [x0, -8]	//  (*)
/*     13 */	fmadd	d1, d2, d0, d1
/*     13 */	str	d1, [x0, -8]	//  (*)
/*     13 */	ldr	d2, [x4]	//  (*)
/*     13 */	ldr	d1, [x0]	//  (*)
/*     14 */	add	x4, x4, 32
/*     13 */	fmadd	d1, d2, d0, d1
/*     13 */	str	d1, [x0]	//  (*)
/*     14 */	add	x0, x0, 32
/*     14 */	bpl	.L151
.L156:
	.loc 7 12 0
/*     12 */	adds	w0, w3, 3
/*     12 */	bmi	.L153
/*     13 */	ldr	x3, [sp, 16]	//  ___27
/*     13 */	ldr	x2, [x3, 8]	//  "x"
/*     13 */	ldr	d0, [x3]	//  "alpha"
/*     13 */	ldr	x3, [x3, 16]	//  "y"
.L164:					// :entr:term:mod
	.loc 7 13 0
/*     13 */	ldr	d2, [x2, x1, lsl #3]	//  (*)
/*     13 */	ldr	d1, [x3, x1, lsl #3]	//  (*)
/*     14 */	subs	w0, w0, 1
/*     13 */	fmadd	d1, d2, d0, d1
/*     13 */	str	d1, [x3, x1, lsl #3]	//  (*)
/*     14 */	add	x1, x1, 1
/*     14 */	bpl	.L164
.L153:
/*     14 */	ldr	x0, [sp, 48]	//  ___9
/*     14 */	bl	__mpc_obar
	.loc 7 14 0
/*    ??? */	ldr	x30, [sp], 64	//  (*)
	.cfi_restore 30
	.cfi_def_cfa_offset 0
/*     14 */	ret	
	.cfi_endproc
.LFE1:
	.size	do_daxpy._OMP_1, .-do_daxpy._OMP_1
	.ident	"$Compiler: Fujitsu C/C++ Compiler Version 1.2.0 P-id: Alpha-20171013 (Oct 10 2017 11:06:13) daxpy.c main $"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
	.loc 7 18 0
.LFB2:
	.cfi_startproc
/*     15 */	mov	x2, 15904
/*     15 */	sub	sp, sp, x2
	.cfi_def_cfa_offset 15904
/*    ??? */	stp	x29, x30, [sp, -512]!	//  (*)
	.cfi_def_cfa_offset 16416
	.cfi_offset 29, -16416
	.cfi_offset 30, -16408
/*     15 */	add	x29, sp, 0
	.cfi_def_cfa_register 29
/*    ??? */	str	x19, [sp, 16]	//  (*)
	.cfi_offset 19, -16400
	.loc 7 36 0
/*     36 */	ptrue	p0.d, ALL
/*     36 */	index	z0.d, 0, 1
/*     38 */	add	x1, x29, 32
/*     37 */	mov	x0, 8224
/*     36 */	mov	w5, 31
/*     37 */	add	x19, x29, x0
/*     37 */	fmov	z17.d, 0.000000e+00
/*     36 */	mov	w3, 0
/*     38 */	add	x4, x1, 192
/*     37 */	add	x0, x19, 192
/*     39 */	mov	x2, x0
/*     39 */	mov	w0, w3
/*     39 */	add	w8, w0, 8
/*     39 */	add	w7, w0, 16
/*     38 */	dup	z1.s, w0
/*     38 */	dup	z3.s, w8
/*     39 */	add	w8, w0, 24
/*     39 */	add	w6, w0, 40
/*     39 */	add	w3, w0, 32
/*     38 */	dup	z4.s, w7
/*     39 */	add	w7, w0, 48
/*     38 */	dup	z5.s, w6
/*     39 */	add	w6, w0, 56
/*     39 */	add	w0, w0, 64
/*     38 */	dup	z6.s, w8
/*     39 */	add	w8, w0, 8
/*     38 */	dup	z7.s, w3
/*     38 */	dup	z16.s, w7
/*     38 */	add	z1.s, z1.s, z0.s
/*     38 */	add	z2.s, z3.s, z0.s
/*     38 */	add	z4.s, z4.s, z0.s
/*     38 */	dup	z3.s, w8
/*     38 */	add	z5.s, z5.s, z0.s
/*     38 */	scvtf	z18.d, p0/m, z1.s
/*     38 */	add	z6.s, z6.s, z0.s
/*     38 */	scvtf	z19.d, p0/m, z2.s
/*     38 */	add	z7.s, z7.s, z0.s
/*     38 */	scvtf	z20.d, p0/m, z4.s
.L167:					// :entr:term:body:swpl
/*     38 */	scvtf	z6.d, p0/m, z6.s
/*     38 */	dup	z1.s, w6
/*     38 */	st1d	{z18.d}, p0, [x4, -3, mul vl]	//  "x"
/*     38 */	st1d	{z19.d}, p0, [x4, -2, mul vl]	//  "x"
/*     39 */	add	w6, w8, 8
/*     39 */	add	w3, w8, 16
/*     38 */	scvtf	z18.d, p0/m, z5.s
/*     38 */	dup	z2.s, w0
/*     37 */	st1d	{z17.d}, p0, [x2, -2, mul vl]	//  "y"
/*     39 */	add	w0, w8, 24
/*     38 */	scvtf	z7.d, p0/m, z7.s
/*     39 */	add	w7, w8, 32
/*     38 */	add	z16.s, z16.s, z0.s
/*     38 */	dup	z4.s, w6
/*     38 */	dup	z5.s, w7
/*     38 */	st1d	{z20.d}, p0, [x4, -1, mul vl]	//  "x"
/*     37 */	st1d	{z17.d}, p0, [x2, -1, mul vl]	//  "y"
/*     38 */	add	z1.s, z1.s, z0.s
/*     38 */	st1d	{z6.d}, p0, [x4, 0, mul vl]	//  "x"
/*     38 */	add	z3.s, z3.s, z0.s
/*     37 */	st1d	{z17.d}, p0, [x2, 0, mul vl]	//  "y"
/*     38 */	scvtf	z20.d, p0/m, z16.s
/*     37 */	st1d	{z17.d}, p0, [x2, -3, mul vl]	//  "y"
/*     38 */	add	z2.s, z2.s, z0.s
/*     38 */	scvtf	z1.d, p0/m, z1.s
/*     38 */	dup	z6.s, w3
/*     38 */	st1d	{z7.d}, p0, [x4, 1, mul vl]	//  "x"
/*     38 */	st1d	{z18.d}, p0, [x4, 2, mul vl]	//  "x"
/*     39 */	add	w3, w8, 40
/*     39 */	add	w6, w8, 48
/*     38 */	scvtf	z19.d, p0/m, z3.s
/*     38 */	dup	z7.s, w0
/*     37 */	st1d	{z17.d}, p0, [x2, 2, mul vl]	//  "y"
/*     39 */	add	w0, w8, 56
/*     38 */	scvtf	z18.d, p0/m, z2.s
/*     39 */	add	w8, w8, 64
/*     38 */	add	z4.s, z4.s, z0.s
/*     38 */	dup	z16.s, w3
/*     38 */	dup	z3.s, w8
/*     38 */	st1d	{z20.d}, p0, [x4, 3, mul vl]	//  "x"
/*     37 */	st1d	{z17.d}, p0, [x2, 3, mul vl]	//  "y"
/*     38 */	add	z6.s, z6.s, z0.s
/*     38 */	st1d	{z1.d}, p0, [x4, 4, mul vl]	//  "x"
/*     38 */	add	z5.s, z5.s, z0.s
/*     37 */	st1d	{z17.d}, p0, [x2, 4, mul vl]	//  "y"
/*     38 */	scvtf	z20.d, p0/m, z4.s
/*     39 */	add	x2, x2, 512
/*     37 */	st1d	{z17.d}, p0, [x2, -7, mul vl]	//  "y"
/*     38 */	add	z7.s, z7.s, z0.s
/*     39 */	add	x4, x4, 512
/*     39 */	sub	w5, w5, 2
/*     39 */	cmp	w5, 4
/*     39 */	bge	.L167
/*     39 */	add	w9, w8, 8
/*     39 */	add	w7, w8, 16
/*     38 */	st1d	{z18.d}, p0, [x4, -3, mul vl]	//  "x"
/*     38 */	scvtf	z18.d, p0/m, z6.s
/*     39 */	add	w3, w8, 24
/*     37 */	st1d	{z17.d}, p0, [x2, -2, mul vl]	//  "y"
/*     38 */	scvtf	z7.d, p0/m, z7.s
/*     39 */	sub	w5, w5, 2
/*     38 */	scvtf	z5.d, p0/m, z5.s
/*     38 */	st1d	{z19.d}, p0, [x4, -2, mul vl]	//  "x"
/*     39 */	sub	w5, w5, 1
/*     38 */	add	z16.s, z16.s, z0.s
/*     37 */	st1d	{z17.d}, p0, [x2, -1, mul vl]	//  "y"
/*     38 */	st1d	{z20.d}, p0, [x4, -1, mul vl]	//  "x"
/*     38 */	add	z3.s, z3.s, z0.s
/*     37 */	st1d	{z17.d}, p0, [x2, 0, mul vl]	//  "y"
/*     37 */	st1d	{z17.d}, p0, [x2, -3, mul vl]	//  "y"
/*     38 */	dup	z2.s, w6
/*     38 */	scvtf	z16.d, p0/m, z16.s
/*     38 */	scvtf	z19.d, p0/m, z3.s
/*     37 */	st1d	{z17.d}, p0, [x2, 2, mul vl]	//  "y"
/*     38 */	st1d	{z18.d}, p0, [x4, 0, mul vl]	//  "x"
/*     38 */	st1d	{z7.d}, p0, [x4, 1, mul vl]	//  "x"
/*     38 */	dup	z1.s, w0
/*     39 */	add	x0, x2, 256
/*     38 */	st1d	{z5.d}, p0, [x4, 2, mul vl]	//  "x"
/*     37 */	st1d	{z17.d}, p0, [x2, 3, mul vl]	//  "y"
/*     37 */	st1d	{z17.d}, p0, [x2, 4, mul vl]	//  "y"
/*     39 */	add	x2, x2, 512
/*     38 */	add	z2.s, z2.s, z0.s
/*     38 */	st1d	{z16.d}, p0, [x4, 3, mul vl]	//  "x"
/*     38 */	dup	z4.s, w9
/*     37 */	st1d	{z17.d}, p0, [x0, -3, mul vl]	//  "y"
/*     39 */	add	x0, x2, 256
/*     38 */	add	z1.s, z1.s, z0.s
/*     38 */	scvtf	z2.d, p0/m, z2.s
/*     38 */	dup	z6.s, w7
/*     37 */	st1d	{z17.d}, p0, [x2, -2, mul vl]	//  "y"
/*     37 */	st1d	{z17.d}, p0, [x2, -1, mul vl]	//  "y"
/*     38 */	scvtf	z18.d, p0/m, z1.s
/*     37 */	st1d	{z17.d}, p0, [x2, 0, mul vl]	//  "y"
/*     38 */	add	z4.s, z4.s, z0.s
/*     37 */	st1d	{z17.d}, p0, [x2, -3, mul vl]	//  "y"
/*     38 */	add	z6.s, z6.s, z0.s
/*     38 */	st1d	{z2.d}, p0, [x4, 4, mul vl]	//  "x"
/*     39 */	add	x4, x4, 512
/*     38 */	scvtf	z20.d, p0/m, z4.s
/*     38 */	scvtf	z1.d, p0/m, z6.s
/*     38 */	st1d	{z18.d}, p0, [x4, -3, mul vl]	//  "x"
/*     38 */	st1d	{z19.d}, p0, [x4, -2, mul vl]	//  "x"
/*     38 */	st1d	{z20.d}, p0, [x4, -1, mul vl]	//  "x"
/*     38 */	st1d	{z1.d}, p0, [x4, 0, mul vl]	//  "x"
/*     39 */	add	x4, x4, 256
	.loc 7 38 0
/*     38 */	dup	z1.s, w3
/*     39 */	add	w3, w3, 8
/*     39 */	sub	w2, w5, 1
/*     38 */	dup	z2.s, w3
/*     39 */	add	w3, w3, 8
/*     39 */	cmp	w2, 0
/*     38 */	dup	z3.s, w3
/*     39 */	add	w2, w3, 8
/*     38 */	dup	z4.s, w2
	.loc 7 37 0
/*     37 */	st1d	{z17.d}, p0, [x0, -3, mul vl]	//  "y"
/*     37 */	st1d	{z17.d}, p0, [x0, -2, mul vl]	//  "y"
/*     37 */	st1d	{z17.d}, p0, [x0, -1, mul vl]	//  "y"
/*     37 */	st1d	{z17.d}, p0, [x0, 0, mul vl]	//  "y"
	.loc 7 38 0
/*     41 */	mov	x0, x19
/*     38 */	add	z1.s, z1.s, z0.s
/*     38 */	add	z2.s, z2.s, z0.s
/*     38 */	add	z3.s, z3.s, z0.s
/*     38 */	add	z4.s, z4.s, z0.s
/*     38 */	scvtf	z1.d, p0/m, z1.s
/*     38 */	scvtf	z2.d, p0/m, z2.s
/*     38 */	scvtf	z3.d, p0/m, z3.s
/*     38 */	scvtf	z4.d, p0/m, z4.s
/*     41 */	fmov	d0, 3.000000e+00
/*     38 */	st1d	{z1.d}, p0, [x4, -3, mul vl]	//  "x"
/*     38 */	st1d	{z2.d}, p0, [x4, -2, mul vl]	//  "x"
/*     38 */	st1d	{z3.d}, p0, [x4, -1, mul vl]	//  "x"
/*     38 */	st1d	{z4.d}, p0, [x4, 0, mul vl]	//  "x"
/*     41 */	bl	do_daxpy
	.loc 7 21 0
/*     21 */	mov	w0, 1024
/*     22 */	ldr	d2, .LC1
/*     22 */	ldr	d0, .LC2
/*     25 */	fmov	d1, 3.000000e+00
/*     22 */	mov	x1, 0
.L170:					// :entr
	.loc 7 22 0
/*     22 */	ldr	d3, [x19, x1, lsl #3]	//  "y"
/*     22 */	fabd	d3, d3, d2
/*     22 */	fcmpe	d3, d0
/*     22 */	bgt	.L173
	.loc 7 25 0
/*     25 */	fadd	d2, d1, d2
/*     25 */	add	x1, x1, 1
/*     25 */	subs	w0, w0, 1
/*     25 */	bne	.L170
	.loc 7 27 0
/*     27 */	mov	w1, 1
/*     27 */	b	.L174
.L173:					// :ft
	.loc 7 23 0
/*     23 */	mov	w1, 0
.L174:
	.loc 7 46 0
/*     46 */	cmp	w1, 0
/*     46 */	adrp	x0, stdout
/*     46 */	adrp	x2, stderr
/*     46 */	ldr	x0, [x0, :lo12:stdout]	//  "stdout"
/*     46 */	ldr	x3, [x2, :lo12:stderr]	//  "stderr"
	.loc 7 43 0
/*     44 */	adrp	x2, .LR.2
/*     46 */	adrp	x4, .LR.1
/*     44 */	add	x2, x2, :lo12:.LR.2
/*     46 */	add	x4, x4, :lo12:.LR.1
	.loc 7 46 0
/*     46 */	csel	x0, x0, x3, ne
/*     46 */	cmp	w1, 0
/*     46 */	csel	x1, x4, x2, ne
/*     46 */	bl	fprintf
/*     49 */	mov	w0, 0
	.loc 7 50 0
/*    ??? */	ldr	x19, [sp, 16]	//  (*)
	.cfi_restore 19
/*    ??? */	ldp	x29, x30, [sp], 504	//  (*)
	.cfi_restore 29
	.cfi_restore 30
	.cfi_def_cfa 31, 15912
/*     50 */	mov	x1, 15912
/*     50 */	add	sp, sp, x1
	.cfi_def_cfa_offset 0
/*     50 */	ret	
	.cfi_endproc
.LFE2:
	.size	main, .-main
	.align	3
.LC1:
	.word	0,0
	.align	3
.LC2:
	.word	0x9ee75616,0x3cd203af
	.file 8 "/opt/ARM/aarch64-linux-gnu/sysroot-linaro-eglibc-gcc4.9-2014.11-aarch64-linux-gnu/usr/include/bits/types.h"
	.file 9 "/opt/FJTComp7/bin/../include/stddef.h"
	.file 10 "/opt/ARM/aarch64-linux-gnu/sysroot-linaro-eglibc-gcc4.9-2014.11-aarch64-linux-gnu/usr/include/_G_config.h"
	.file 11 "/opt/ARM/aarch64-linux-gnu/sysroot-linaro-eglibc-gcc4.9-2014.11-aarch64-linux-gnu/usr/include/bits/mathcalls.h"
	.file 12 "/opt/ARM/aarch64-linux-gnu/sysroot-linaro-eglibc-gcc4.9-2014.11-aarch64-linux-gnu/usr/include/math.h"
	.file 13 "/opt/ARM/aarch64-linux-gnu/sysroot-linaro-eglibc-gcc4.9-2014.11-aarch64-linux-gnu/usr/include/bits/sched.h"
	.file 14 "/opt/ARM/aarch64-linux-gnu/sysroot-linaro-eglibc-gcc4.9-2014.11-aarch64-linux-gnu/usr/include/sched.h"
	.file 15 "/opt/ARM/aarch64-linux-gnu/sysroot-linaro-eglibc-gcc4.9-2014.11-aarch64-linux-gnu/usr/include/time.h"
	.file 16 "/opt/ARM/aarch64-linux-gnu/sysroot-linaro-eglibc-gcc4.9-2014.11-aarch64-linux-gnu/usr/include/xlocale.h"
	.file 17 "/opt/FJTComp7/bin/../include/omp.h"
	.file 18 "/opt/ARM/aarch64-linux-gnu/sysroot-linaro-eglibc-gcc4.9-2014.11-aarch64-linux-gnu/usr/include/wchar.h"
	.file 19 "/opt/ARM/aarch64-linux-gnu/sysroot-linaro-eglibc-gcc4.9-2014.11-aarch64-linux-gnu/usr/include/bits/mathdef.h"
	.file 20 "/opt/ARM/aarch64-linux-gnu/sysroot-linaro-eglibc-gcc4.9-2014.11-aarch64-linux-gnu/usr/include/bits/setjmp.h"
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
	.ascii	"daxpy.c\0"	// DW_AT_name
	.4byte	.Ldebug_line	// DW_AT_stmt_list
	.8byte	..text.b	// DW_AT_low_pc
	.8byte	..text.e-..text.b	// DW_AT_high_pc
	.byte	0x1	// DW_AT_language
	.ascii	"/home/odajima/workspace/arm_clang_omp\0"	// DW_AT_comp_dir
	.ascii	"FUJITSU LIMITED: Version 2.0.0 : 64-bit\0"	// DW_AT_producer
	.uleb128	0x2	// DW_TAG_subprogram (0x77)
	.4byte	0xb8	// DW_AT_sibling
	.ascii	"do_daxpy\0"	// DW_AT_name
	.8byte	do_daxpy	// DW_AT_low_pc
			// DW_AT_prototyped
	.byte	0x7	// DW_AT_decl_file
	.byte	0x7	// DW_AT_decl_line
	.uleb128	0x1	// DW_AT_frame_base
	.byte	0x9c	// DW_OP_call_frame_cfa
	.uleb128	0x3	// DW_TAG_subprogram (0x91)
	.ascii	"do_daxpy._OMP_1\0"	// DW_AT_name
	.8byte	do_daxpy._OMP_1	// DW_AT_low_pc
			// DW_AT_artificial
	.uleb128	0x1	// DW_AT_frame_base
	.byte	0x9c	// DW_OP_call_frame_cfa
	.byte	0x3	// DW_AT_static_link
	.byte	0x91	// DW_OP_fbreg
	.sleb128	0
	.byte	0x6	// DW_OP_deref
	.uleb128	0x4	// DW_TAG_FJ_loop (0xb0)
	.byte	0x7	// DW_AT_decl_file
	.byte	0xc	// DW_AT_FJ_loop_start_line
	.byte	0xe	// DW_AT_FJ_loop_end_line
	.byte	0x1	// DW_AT_FJ_loop_nest_level
	.byte	0x5	// DW_AT_FJ_loop_type
	.byte	0x0	// End of children (0x91)
	.byte	0x0	// End of children (0x77)
	.uleb128	0x5	// DW_TAG_subprogram (0xb8)
	.ascii	"main\0"	// DW_AT_name
	.8byte	main	// DW_AT_low_pc
			// DW_AT_prototyped
	.byte	0x7	// DW_AT_decl_file
	.byte	0x1e	// DW_AT_decl_line
			// DW_AT_external
	.uleb128	0x1	// DW_AT_frame_base
	.byte	0x9c	// DW_OP_call_frame_cfa
	.uleb128	0x4	// DW_TAG_FJ_loop (0xca)
	.byte	0x7	// DW_AT_decl_file
	.byte	0x15	// DW_AT_FJ_loop_start_line
	.byte	0x19	// DW_AT_FJ_loop_end_line
	.byte	0x1	// DW_AT_FJ_loop_nest_level
	.byte	0x5	// DW_AT_FJ_loop_type
	.uleb128	0x4	// DW_TAG_FJ_loop (0xd0)
	.byte	0x7	// DW_AT_decl_file
	.byte	0x24	// DW_AT_FJ_loop_start_line
	.byte	0x27	// DW_AT_FJ_loop_end_line
	.byte	0x1	// DW_AT_FJ_loop_nest_level
	.byte	0x5	// DW_AT_FJ_loop_type
	.byte	0x0	// End of children (0xb8)
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
	.uleb128	0x1	// DW_AT_sibling
	.uleb128	0x13	// DW_FORM_ref4
	.uleb128	0x3	// DW_AT_name
	.uleb128	0x8	// DW_FORM_string
	.uleb128	0x11	// DW_AT_low_pc
	.uleb128	0x1	// DW_FORM_addr
	.uleb128	0x27	// DW_AT_prototyped
	.uleb128	0x19	// DW_FORM_flag_present
	.uleb128	0x3a	// DW_AT_decl_file
	.uleb128	0xb	// DW_FORM_data1
	.uleb128	0x3b	// DW_AT_decl_line
	.uleb128	0xb	// DW_FORM_data1
	.uleb128	0x40	// DW_AT_frame_base
	.uleb128	0x18	// DW_FORM_exprloc
	.byte	0x0
	.byte	0x0
	.uleb128	0x3	// Abbreviation code
	.uleb128	0x2e	// DW_TAG_subprogram
	.byte	0x1	// DW_CHILDREN_yes
	.uleb128	0x3	// DW_AT_name
	.uleb128	0x8	// DW_FORM_string
	.uleb128	0x11	// DW_AT_low_pc
	.uleb128	0x1	// DW_FORM_addr
	.uleb128	0x34	// DW_AT_artificial
	.uleb128	0x19	// DW_FORM_flag_present
	.uleb128	0x40	// DW_AT_frame_base
	.uleb128	0x18	// DW_FORM_exprloc
	.uleb128	0x48	// DW_AT_static_link
	.uleb128	0xa	// DW_FORM_block1
	.byte	0x0
	.byte	0x0
	.uleb128	0x4	// Abbreviation code
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
	.uleb128	0x5	// Abbreviation code
	.uleb128	0x2e	// DW_TAG_subprogram
	.byte	0x1	// DW_CHILDREN_yes
	.uleb128	0x3	// DW_AT_name
	.uleb128	0x8	// DW_FORM_string
	.uleb128	0x11	// DW_AT_low_pc
	.uleb128	0x1	// DW_FORM_addr
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
	.byte	0x0
	.section	.debug_line
.Ldebug_line:
	.section	.rodata
	.align	3
.LR.1:
	.ascii "PASS\012\000"
	.type	.LR.1, %object
	.size	.LR.1,.-.LR.1
	.section	.rodata
	.align	3
.LR.2:
	.ascii "ERROR\012\000"
	.type	.LR.2, %object
	.size	.LR.2,.-.LR.2
	.section	.note.GNU-stack,"",%progbits
