	.ident	"$Compiler: FUJITSU CONFIDENTIAL $"
..text.b:
	.ident	"$Options: Fujitsu C/C++ Compiler Version 1.2.0 P-id: Alpha-20190131 (Jan 18 2019 15:36:49) --preinclude /opt/FJT/FJTComp-latest/bin/../lib/FCC.pre --g++ -Dunix -Dlinux -D__FUJITSU -D__aarch64__ -D__unix -D_OPENMP=201107 -D__PRAGMA_REDEFINE_EXTNAME -D__FCC_VERSION=700 -D__USER_LABEL_PREFIX__= -D__OPTIMIZE__ -D__ARM_ARCH=8 -D__ARM_FEATURE_SVE -D__FP_FAST_FMA -D__ELF__ -D__linux -Asystem(unix) -D__LIBC_6B -D_LP64 -D__LP64__ --K=omp --K=noocl -D_REENTRANT -D__MT__ --zmode=64 --sys_include=/opt/FJT/FJTComp-latest/bin/../include/libc++/v371 --sys_include=/opt/FJT/FJTComp-latest/bin/../include --sys_include=/opt/ARM/sysroot-linaro-eglibc-gcc4.9-2014.11-aarch64-linux-gnu/usr/include --K=opt --exceptions issue310.cpp -- -ncmdname=FCCpx -nspopt=\"-Kfast,openmp -Nlst=t -Koptmsg=2 -S\" -Nstl=libc++ -zobe=cplus -zcfc=target_sve -O3 -x- -Komitfp,mfunc,rdconv,eval,fp_relaxed,fz,fast_matmul,fp_contract,ilfunc,simd_packed_promotion,openmp,threadsafe -Nlst=t -Koptmsg=2 -zsta=am -zsrc=issue310.cpp issue310.s $"
	.file	"issue310.cpp"
	.ident	"$Compiler: Fujitsu C/C++ Compiler Version 1.2.0 P-id: Alpha-20190131 (Jan 18 2019 15:36:49) issue310.cpp _Z4sub0ILi0ELi0EEviifPA3_KfPS0_S2_PA3_fS5_S2_ $"
	.text
	.align	2
	.type	_Z4sub0ILi0ELi0EEviifPA3_KfPS0_S2_PA3_fS5_S2_, %function
_Z4sub0ILi0ELi0EEviifPA3_KfPS0_S2_PA3_fS5_S2_:
	.file 1 "/opt/ARM/sysroot-linaro-eglibc-gcc4.9-2014.11-aarch64-linux-gnu/usr/include/bits/stdio.h"
	.file 2 "/opt/FJT/FJTComp-latest/bin/../include/stdarg.h"
	.file 3 "/opt/ARM/sysroot-linaro-eglibc-gcc4.9-2014.11-aarch64-linux-gnu/usr/include/stdio.h"
	.file 4 "/opt/ARM/sysroot-linaro-eglibc-gcc4.9-2014.11-aarch64-linux-gnu/usr/include/libio.h"
	.file 5 "/opt/ARM/sysroot-linaro-eglibc-gcc4.9-2014.11-aarch64-linux-gnu/usr/include/bits/types.h"
	.file 6 "/opt/FJT/FJTComp-latest/bin/../include/stddef.h"
	.file 7 "/opt/ARM/sysroot-linaro-eglibc-gcc4.9-2014.11-aarch64-linux-gnu/usr/include/bits/byteswap.h"
	.file 8 "/opt/ARM/sysroot-linaro-eglibc-gcc4.9-2014.11-aarch64-linux-gnu/usr/include/stdlib.h"
	.file 9 "/opt/ARM/sysroot-linaro-eglibc-gcc4.9-2014.11-aarch64-linux-gnu/usr/include/sys/sysmacros.h"
	.file 10 "/opt/ARM/sysroot-linaro-eglibc-gcc4.9-2014.11-aarch64-linux-gnu/usr/include/bits/stdlib-bsearch.h"
	.file 11 "/opt/ARM/sysroot-linaro-eglibc-gcc4.9-2014.11-aarch64-linux-gnu/usr/include/bits/stdlib-float.h"
	.file 12 "issue310.cpp"
	.loc 12 19 0
..LDL1:
.LFB0:
	.cfi_startproc
/*     10 */	sub	sp, sp, 16
/*    ??? */	stp	x29, x30, [sp]	//  (*)
/*     10 */	add	x29, sp, 0
	.cfi_def_cfa 29, 16
	.cfi_offset 29, -16
	.cfi_offset 30, -8
/*     10 */	sub	sp, sp, 192
/*    ??? */	stp	x19, x20, [x29, -16]	//  (*)
	.cfi_offset 19, -32
	.cfi_offset 20, -24
/*     10 */	add	x19, sp, 0
/*    ??? */	stp	x21, x22, [x29, -32]	//  (*)
	.cfi_offset 21, -48
	.cfi_offset 22, -40
/*    ??? */	stp	x23, x24, [x29, -48]	//  (*)
	.cfi_offset 23, -64
	.cfi_offset 24, -56
/*    ??? */	stp	x25, x26, [x29, -64]	//  (*)
	.cfi_offset 25, -80
	.cfi_offset 26, -72
/*    ??? */	stp	x27, x28, [x29, -80]	//  (*)
	.cfi_offset 27, -96
	.cfi_offset 28, -88
/*    ??? */	str	x5, [x19, 16]	//  (*)
	.loc 12 22 0
..LDL2:
	.loc 12 32 0 is_stmt 0
..LDL3:
/*     32 */	ptrue	p0.s, ALL
	.loc 12 25 0 is_stmt 1
..LDL4:
/*     25 */	mov	w5, 1
/*     25 */	sub	w8, w1, 1
/*     25 */	sub	w5, w5, w0
/*     25 */	add	w5, w5, w8
	.loc 12 22 0
..LDL5:
	.loc 12 32 0 is_stmt 0
..LDL6:
/*     32 */	ld1rw	{z1.s}, p0/z, [x3]	//  (*)
	.loc 12 25 0 is_stmt 1
..LDL7:
/*     25 */	cmp	w5, 0
/*     25 */	csel	w3, w5, wzr, ge
/*     25 */	cmp	w0, w1
	.loc 12 22 0
..LDL8:
	.loc 12 32 0 is_stmt 0
..LDL9:
/*     32 */	mov	z6.d, z1.d
	.loc 12 25 0
..LDL10:
/*     25 */	bge	.L415
	.loc 12 25 0 is_stmt 1
..LDL11:
	.loc 12 32 0 is_stmt 0
..LDL12:
/*     32 */	sxtw	x1, w0
	.loc 12 25 0
..LDL13:
/*     25 */	asr	w5, w3, 3
	.loc 12 32 0
..LDL14:
/*     32 */	add	x0, x1, x1
	.loc 12 25 0
..LDL15:
/*     25 */	add	w5, w3, w5, lsr #28
	.loc 12 32 0
..LDL16:
/*     32 */	add	x1, x0, x1
	.loc 12 25 0
..LDL17:
/*     25 */	add	x0, x1, 1
/*     25 */	asr	w28, w5, 4
/*     25 */	sub	w3, w3, w28, lsl #4
/*    ??? */	str	w3, [x19, 28]	//  (*)
/*    ??? */	str	w0, [x19, 12]	//  (*)
/*    ??? */	str	w1, [x19, 8]	//  (*)
/*     25 */	cbz	w28, .L410
	.loc 12 32 0
..LDL18:
/*     32 */	dup	z5.s, z0.s[0]
/*     32 */	index	z7.s, 0, 3
/*     36 */	mov	w25, w28
/*    ??? */	ldr	w26, [x19, 12]	//  (*)
/*    ??? */	ldr	w8, [x19, 8]	//  (*)
/*    ??? */	ldr	x0, [x19, 16]	//  (*)
/*    ??? */	ldr	x1, [x19, 16]	//  (*)
/*     36 */	mov	w27, w26
/*     37 */	mov	w22, w8
/*     37 */	orr	x24, x0, 6917529027641081856
/*     37 */	mov	w0, w8
/*    ??? */	str	x1, [x19]	//  (*)
/*     37 */	mov	w17, w8
/*     37 */	mov	w3, w8
/*     37 */	mov	w5, w8
/*     37 */	mov	w9, w26
/*     37 */	mov	w10, w26
/*     37 */	mov	w11, w26
/*     37 */	mov	w12, w26
/*     37 */	mov	w13, w26
/*     37 */	mov	w14, w26
/*     37 */	mov	w15, w26
/*     37 */	mov	w16, w26
/*     37 */	mov	w1, w26
/*     37 */	mov	w18, w26
	.p2align 5
.L408:					// :entr:term
	.loc 12 32 0 is_stmt 1
..LDL19:
/*     32 */	add	w20, w27, 1
	.loc 12 37 0
..LDL20:
/*     37 */	add	w21, w16, 1
	.loc 12 32 0
..LDL21:
/*     32 */	add	x20, x6, w20, sxtw #2
/*     39 */	add	w27, w27, 48
/*     39 */	add	w16, w16, 48
/*     39 */	subs	w25, w25, 1
/*     32 */	ld1w	{z2.s}, p0/z, [x20, z7.s, sxtw #2]
/*     32 */	add	w20, w26, 1
/*     39 */	add	w26, w26, 48
/*     32 */	add	x20, x7, w20, sxtw #2
/*     32 */	ld1w	{z4.s}, p0/z, [x20, z7.s, sxtw #2]
/*     32 */	add	w20, w18, 1
/*     39 */	add	w18, w18, 48
/*     32 */	add	x20, x2, w20, sxtw #2
/*     32 */	ld1w	{z3.s}, p0/z, [x20, z7.s, sxtw #2]
	.loc 12 37 0
..LDL22:
/*     37 */	add	w20, w1, 1
/*     39 */	add	w1, w1, 48
/*     37 */	add	x20, x4, w20, sxtw #2
	.loc 12 32 0
..LDL23:
/*     32 */	fmul	z2.s, z2.s, z1.s
/*     32 */	fmul	z4.s, z4.s, z3.s
/*     32 */	fmad	z4.s, p0/m, z5.s, z2.s
	.loc 12 37 0
..LDL24:
/*     37 */	ld1w	{z2.s}, p0/z, [x20, z7.s, sxtw #2]
/* #00001 */	ldr	x20, [x19]	//  (*)
/*     37 */	add	x20, x20, w21, sxtw #2
/*     37 */	fmla	z2.s, p0/m, z5.s, z4.s
/*     37 */	st1w	{z2.s}, p0, [x20, z7.s, sxtw #2]
	.loc 12 36 0
..LDL25:
/*     36 */	add	w20, w15, 1
/*     39 */	add	w15, w15, 48
/*     36 */	add	x20, x6, w20, sxtw #2
/*     36 */	st1w	{z4.s}, p0, [x20, z7.s, sxtw #2]
	.loc 12 32 0
..LDL26:
/*     32 */	add	x20, x6, w14, sxtw #2
/*     39 */	add	w14, w14, 48
/*     32 */	ld1w	{z2.s}, p0/z, [x20, z7.s, sxtw #2]
/*     32 */	add	x20, x7, w13, sxtw #2
/*     39 */	add	w13, w13, 48
/*     32 */	ld1w	{z4.s}, p0/z, [x20, z7.s, sxtw #2]
/*     32 */	add	x20, x2, w12, sxtw #2
/*     39 */	add	w12, w12, 48
/*     32 */	ld1w	{z3.s}, p0/z, [x20, z7.s, sxtw #2]
	.loc 12 37 0
..LDL27:
/*     37 */	add	x20, x4, w11, sxtw #2
/*     39 */	add	w11, w11, 48
	.loc 12 32 0
..LDL28:
/*     32 */	fmul	z2.s, z2.s, z1.s
/*     32 */	fmul	z4.s, z4.s, z3.s
/*     32 */	fmad	z4.s, p0/m, z5.s, z2.s
	.loc 12 37 0
..LDL29:
/*     37 */	ld1w	{z2.s}, p0/z, [x20, z7.s, sxtw #2]
/* #00001 */	ldr	x20, [x19]	//  (*)
/*     37 */	add	x20, x20, w10, sxtw #2
/*     39 */	add	w10, w10, 48
/*     37 */	fmla	z2.s, p0/m, z5.s, z4.s
/*     37 */	st1w	{z2.s}, p0, [x20, z7.s, sxtw #2]
	.loc 12 36 0
..LDL30:
/*     36 */	add	x20, x6, w9, sxtw #2
/*     39 */	add	w9, w9, 48
/*     36 */	st1w	{z4.s}, p0, [x20, z7.s, sxtw #2]
	.loc 12 32 0
..LDL31:
/*     32 */	add	x20, x6, w8, sxtw #2
/*     39 */	add	w8, w8, 48
/*     32 */	ld1w	{z2.s}, p0/z, [x20, z7.s, sxtw #2]
/*     32 */	add	x20, x7, w5, sxtw #2
/*     39 */	add	w5, w5, 48
/*     32 */	ld1w	{z4.s}, p0/z, [x20, z7.s, sxtw #2]
/*     32 */	add	x20, x2, w3, sxtw #2
/*     39 */	add	w3, w3, 48
/*     32 */	ld1w	{z3.s}, p0/z, [x20, z7.s, sxtw #2]
	.loc 12 37 0
..LDL32:
/*     37 */	add	x20, x4, w17, sxtw #2
/*     39 */	add	w17, w17, 48
	.loc 12 32 0
..LDL33:
/*     32 */	fmul	z2.s, z2.s, z1.s
/*     32 */	fmul	z4.s, z4.s, z3.s
/*     32 */	fmad	z4.s, p0/m, z5.s, z2.s
	.loc 12 37 0
..LDL34:
/*     37 */	ld1w	{z2.s}, p0/z, [x20, z7.s, sxtw #2]
/*     37 */	lsl	w20, w0, 2
/*     37 */	add	w21, w20, 1080
/*     37 */	add	w20, w20, 568
/*     37 */	prfm	18, [x24, w21, sxtw]
/*     37 */	prfm	16, [x24, w20, sxtw]
/*     37 */	add	x20, x24, w0, sxtw #2
	.loc 12 36 0
..LDL35:
/*     36 */	lsl	w21, w22, 2
/*     39 */	add	w0, w0, 48
/*     36 */	add	w23, w21, 1080
/*     36 */	add	w21, w21, 568
	.loc 12 37 0
..LDL36:
/*     37 */	fmla	z2.s, p0/m, z5.s, z4.s
/*     37 */	st1w	{z2.s}, p0, [x20, z7.s, sxtw #2]
	.loc 12 36 0
..LDL37:
/*     36 */	orr	x20, x6, 6917529027641081856
/*     36 */	prfm	18, [x20, w23, sxtw]
/*     36 */	prfm	16, [x20, w21, sxtw]
/*     36 */	add	x20, x20, w22, sxtw #2
/*     39 */	add	w22, w22, 48
/*     36 */	st1w	{z4.s}, p0, [x20, z7.s, sxtw #2]
/*     39 */	bne	.L408
.L410:
	.loc 12 25 0
..LDL38:
/*     25 */	add	w0, w28, w28
/*     25 */	add	w0, w0, w28
/*     25 */	lsl	w1, w0, 4
/*    ??? */	ldr	w0, [x19, 12]	//  (*)
/*     25 */	add	w3, w1, w0
/*    ??? */	ldr	w0, [x19, 8]	//  (*)
/*     25 */	add	w1, w1, w0
/*    ??? */	ldr	w0, [x19, 28]	//  (*)
/*     25 */	cbz	w0, .L415
/*    ??? */	ldr	w0, [x19, 28]	//  (*)
	.loc 12 32 0
..LDL39:
/*     32 */	index	z20.s, 0, 3
/*     32 */	add	w5, w3, 1
/*     32 */	dup	z1.s, z6.s[0]
/*     32 */	add	x9, x6, w5, sxtw #2
/*     32 */	dup	z6.s, z0.s[0]
/*     32 */	add	x11, x7, w5, sxtw #2
	.loc 12 25 0
..LDL40:
/*     25 */	whilelt	p0.s, wzr, w0
	.loc 12 32 0
..LDL41:
/*     32 */	add	x10, x2, w5, sxtw #2
/*     32 */	add	x0, x6, w3, sxtw #2
/*     32 */	ld1w	{z0.s}, p0/z, [x9, z20.s, sxtw #2]
/*     32 */	add	x8, x7, w3, sxtw #2
/*     32 */	ld1w	{z3.s}, p0/z, [x11, z20.s, sxtw #2]
/*     32 */	ld1w	{z2.s}, p0/z, [x10, z20.s, sxtw #2]
/*     32 */	add	x10, x2, w3, sxtw #2
/*     32 */	ld1w	{z5.s}, p0/z, [x8, z20.s, sxtw #2]
/*     32 */	ld1w	{z4.s}, p0/z, [x10, z20.s, sxtw #2]
/*     32 */	add	x7, x7, w1, sxtw #2
	.loc 12 37 0
..LDL42:
/*     37 */	add	x8, x4, w5, sxtw #2
	.loc 12 32 0
..LDL43:
/*     32 */	ld1w	{z16.s}, p0/z, [x7, z20.s, sxtw #2]
	.loc 12 37 0
..LDL44:
/*     37 */	ld1w	{z17.s}, p0/z, [x8, z20.s, sxtw #2]
	.loc 12 32 0
..LDL45:
/*     32 */	add	x7, x2, w1, sxtw #2
	.loc 12 37 0
..LDL46:
/*     37 */	add	x2, x4, w3, sxtw #2
	.loc 12 32 0
..LDL47:
/*     32 */	ld1w	{z7.s}, p0/z, [x7, z20.s, sxtw #2]
/*     32 */	add	x6, x6, w1, sxtw #2
	.loc 12 37 0
..LDL48:
/*     37 */	ld1w	{z18.s}, p0/z, [x2, z20.s, sxtw #2]
/*    ??? */	ldr	x2, [x19, 16]	//  (*)
/*     37 */	add	x4, x4, w1, sxtw #2
/*     37 */	ld1w	{z19.s}, p0/z, [x4, z20.s, sxtw #2]
/*    ??? */	ldr	x4, [x19, 16]	//  (*)
/*     37 */	add	x2, x2, w5, sxtw #2
	.loc 12 32 0
..LDL49:
/*     32 */	fmul	z0.s, z0.s, z1.s
	.loc 12 37 0
..LDL50:
/*     37 */	add	x3, x4, w3, sxtw #2
	.loc 12 32 0
..LDL51:
/*     32 */	fmul	z3.s, z3.s, z2.s
	.loc 12 37 0
..LDL52:
/*     37 */	add	x1, x4, w1, sxtw #2
	.loc 12 32 0
..LDL53:
/*     32 */	fmul	z5.s, z5.s, z4.s
/*     32 */	fmul	z16.s, z16.s, z7.s
/*     32 */	fmad	z3.s, p0/m, z6.s, z0.s
	.loc 12 37 0
..LDL54:
/*     37 */	fmla	z17.s, p0/m, z3.s, z6.s
	.loc 12 36 0
..LDL55:
/*     36 */	st1w	{z3.s}, p0, [x9, z20.s, sxtw #2]
	.loc 12 32 0
..LDL56:
/*     32 */	ld1w	{z0.s}, p0/z, [x0, z20.s, sxtw #2]
	.loc 12 37 0
..LDL57:
/*     37 */	st1w	{z17.s}, p0, [x2, z20.s, sxtw #2]
	.loc 12 32 0
..LDL58:
/*     32 */	fmul	z0.s, z0.s, z1.s
/*     32 */	fmad	z5.s, p0/m, z6.s, z0.s
	.loc 12 37 0
..LDL59:
/*     37 */	fmla	z18.s, p0/m, z5.s, z6.s
	.loc 12 36 0
..LDL60:
/*     36 */	st1w	{z5.s}, p0, [x0, z20.s, sxtw #2]
	.loc 12 32 0
..LDL61:
/*     32 */	ld1w	{z0.s}, p0/z, [x6, z20.s, sxtw #2]
	.loc 12 37 0
..LDL62:
/*     37 */	st1w	{z18.s}, p0, [x3, z20.s, sxtw #2]
	.loc 12 32 0
..LDL63:
/*     32 */	fmul	z0.s, z0.s, z1.s
/*     32 */	fmad	z16.s, p0/m, z6.s, z0.s
	.loc 12 37 0
..LDL64:
/*     37 */	fmad	z6.s, p0/m, z16.s, z19.s
	.loc 12 36 0
..LDL65:
/*     36 */	st1w	{z16.s}, p0, [x6, z20.s, sxtw #2]
	.loc 12 37 0
..LDL66:
/*     37 */	st1w	{z6.s}, p0, [x1, z20.s, sxtw #2]
.L415:					// :epi:term
	.loc 12 40 0
..LDL67:
/*    ??? */	add	sp, x29, 0
/*    ??? */	ldp	x19, x20, [x29, -16]	//  (*)
	.cfi_restore 19
	.cfi_restore 20
/*    ??? */	ldp	x21, x22, [x29, -32]	//  (*)
	.cfi_restore 21
	.cfi_restore 22
/*    ??? */	ldp	x23, x24, [x29, -48]	//  (*)
	.cfi_restore 23
	.cfi_restore 24
/*    ??? */	ldp	x25, x26, [x29, -64]	//  (*)
	.cfi_restore 25
	.cfi_restore 26
/*    ??? */	ldp	x27, x28, [x29, -80]	//  (*)
	.cfi_restore 27
	.cfi_restore 28
/*    ??? */	ldp	x29, x30, [sp]	//  (*)
	.cfi_restore 29
	.cfi_restore 30
/*     40 */	add	sp, sp, 16
	.cfi_def_cfa_offset 0
/*     40 */	ret	
	.cfi_endproc
.LFE0:
	.size	_Z4sub0ILi0ELi0EEviifPA3_KfPS0_S2_PA3_fS5_S2_, .-_Z4sub0ILi0ELi0EEviifPA3_KfPS0_S2_PA3_fS5_S2_
	.ident	"$Compiler: Fujitsu C/C++ Compiler Version 1.2.0 P-id: Alpha-20190131 (Jan 18 2019 15:36:49) issue310.cpp _Z4sub1iiiPiS_ $"
	.text
	.align	2
	.global	_Z4sub1iiiPiS_
	.type	_Z4sub1iiiPiS_, %function
_Z4sub1iiiPiS_:
	.loc 12 44 0
..LDL68:
.LFB1:
	.cfi_startproc
/*     40 */	sub	sp, sp, 16
/*    ??? */	stp	x29, x30, [sp]	//  (*)
/*     40 */	add	x29, sp, 0
	.cfi_def_cfa 29, 16
	.cfi_offset 29, -16
	.cfi_offset 30, -8
/*     40 */	sub	sp, sp, 160
/*    ??? */	str	x19, [x29, -8]	//  (*)
	.cfi_offset 19, -24
/*     40 */	add	x19, sp, 0
	.loc 12 45 0
..LDL69:
/*     45 */	sdiv	w5, w2, w0
	.loc 12 46 0
..LDL70:
/*     46 */	sub	w0, w0, 1
/*     46 */	cmp	w1, w0
	.loc 12 45 0
..LDL71:
/*     45 */	mul	w6, w5, w1
/*     45 */	str	w6, [x3]	//  (*)
	.loc 12 46 0
..LDL72:
/*     46 */	beq	.L47
	.loc 12 47 0
..LDL73:
/*     47 */	add	w0, w1, 1
/*     47 */	mul	w2, w0, w5
.L47:
/*     47 */	str	w2, [x4]	//  (*)
	.loc 12 48 0
..LDL74:
/*    ??? */	add	sp, x29, 0
/*    ??? */	ldr	x19, [x29, -8]	//  (*)
	.cfi_restore 19
/*    ??? */	ldp	x29, x30, [sp]	//  (*)
	.cfi_restore 29
	.cfi_restore 30
/*     48 */	add	sp, sp, 16
	.cfi_def_cfa_offset 0
/*     48 */	ret	
	.cfi_endproc
.LFE1:
	.size	_Z4sub1iiiPiS_, .-_Z4sub1iiiPiS_
	.ident	"$Compiler: Fujitsu C/C++ Compiler Version 1.2.0 P-id: Alpha-20190131 (Jan 18 2019 15:36:49) issue310.cpp _Z4sub2ifPA3_KfPS_S1_PA3_fS4_S1_ $"
	.text
	.align	2
	.global	_Z4sub2ifPA3_KfPS_S1_PA3_fS4_S1_
	.type	_Z4sub2ifPA3_KfPS_S1_PA3_fS4_S1_, %function
_Z4sub2ifPA3_KfPS_S1_PA3_fS4_S1_:
	.loc 12 59 0
..LDL75:
.LFB2:
	.cfi_startproc
/*     70 */	sub	sp, sp, 16
/*    ??? */	stp	x29, x30, [sp]	//  (*)
/*     70 */	add	x29, sp, 0
	.cfi_def_cfa 29, 16
	.cfi_offset 29, -16
	.cfi_offset 30, -8
/*     70 */	sub	sp, sp, 288
/*    ??? */	stp	x19, x20, [x29, -16]	//  (*)
	.cfi_offset 19, -32
	.cfi_offset 20, -24
/*     70 */	add	x19, sp, 0
/*     51 */	add	x20, x19, 64
/*     51 */	str	x6, [x20, 16]
/*     51 */	str	x5, [x20, 24]
/*     51 */	str	x4, [x20, 32]
/*     51 */	str	x3, [x20, 40]
/*     51 */	str	x2, [x20, 48]
/*     51 */	str	x1, [x20, 56]
/*     51 */	str	s0, [x20, 4]
/*     51 */	str	w0, [x20, 8]
	.loc 12 61 0
..LDL76:
/*     61 */	bl	omp_get_max_threads
/*     61 */	str	w0, [x20]
/*     63 */	sxtw	x3, w0
/*     63 */	mov	x2, 2
/*     63 */	adrp	x0, _Z4sub2ifPA3_KfPS_S1_PA3_fS4_S1_._OMP_1
/*     63 */	add	x0, x0, :lo12:_Z4sub2ifPA3_KfPS_S1_PA3_fS4_S1_._OMP_1
/*     63 */	mov	x1, x20
/*     63 */	bl	__mpc_opar
	.loc 12 71 0
..LDL77:
/*    ??? */	add	sp, x29, 0
/*    ??? */	ldp	x19, x20, [x29, -16]	//  (*)
	.cfi_restore 19
	.cfi_restore 20
/*    ??? */	ldp	x29, x30, [sp]	//  (*)
	.cfi_restore 29
	.cfi_restore 30
/*     71 */	add	sp, sp, 16
	.cfi_def_cfa_offset 0
/*     71 */	ret	
	.cfi_endproc
.LFE2:
	.size	_Z4sub2ifPA3_KfPS_S1_PA3_fS4_S1_, .-_Z4sub2ifPA3_KfPS_S1_PA3_fS4_S1_
	.ident	"$Compiler: Fujitsu C/C++ Compiler Version 1.2.0 P-id: Alpha-20190131 (Jan 18 2019 15:36:49) issue310.cpp _Z4sub2ifPA3_KfPS_S1_PA3_fS4_S1_._OMP_1 $"
	.text
	.align	2
	.type	_Z4sub2ifPA3_KfPS_S1_PA3_fS4_S1_._OMP_1, %function
_Z4sub2ifPA3_KfPS_S1_PA3_fS4_S1_._OMP_1:
	.loc 12 44 0
..LDL78:
.LFB3:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA3
/*     48 */	sub	sp, sp, 16
/*    ??? */	stp	x29, x30, [sp]	//  (*)
/*     48 */	add	x29, sp, 0
	.cfi_def_cfa 29, 16
	.cfi_offset 29, -16
	.cfi_offset 30, -8
/*     48 */	sub	sp, sp, 208
/*    ??? */	stp	x19, x20, [x29, -16]	//  (*)
	.cfi_offset 19, -32
	.cfi_offset 20, -24
/*     48 */	add	x19, sp, 0
/*    ??? */	stp	x25, x26, [x29, -64]	//  (*)
	.cfi_offset 25, -80
	.cfi_offset 26, -72
/*    ??? */	stp	x21, x22, [x29, -32]	//  (*)
	.cfi_offset 21, -48
	.cfi_offset 22, -40
/*    ??? */	stp	x23, x24, [x29, -48]	//  (*)
	.cfi_offset 23, -64
	.cfi_offset 24, -56
/*    ??? */	str	x27, [x29, -72]	//  (*)
	.cfi_offset 27, -88
/*     48 */	str	x1, [x19, 32]
/*     48 */	str	x2, [x19, 24]
/*     48 */	str	x3, [x19, 16]
/*     48 */	str	x4, [x19, 8]
	.loc 12 64 0
..LDL79:
/*     64 */	ldr	w1, [x0]	//  "nth"
/*     64 */	cmp	w1, 0
/*     64 */	ble	.L432
/*     64 */	sxtw	x5, w1
/*     64 */	add	x3, x19, 32
/*     64 */	ldr	x4, [x3]
/*     64 */	sdiv	x2, x5, x4
/*     64 */	msub	x4, x4, x2, x5
/*     64 */	cbnz	x4, .L420
/*     64 */	ldr	x3, [x3, -8]
/*     64 */	mul	x20, x3, x2
/*     64 */	b	.L423
.L420:
/*     64 */	ldr	x3, [x3, -8]
/*     64 */	cmp	x3, x4
/*     64 */	blt	.L422
/*     64 */	madd	x20, x3, x2, x4
/*     64 */	b	.L423
.L422:
/*     64 */	add	x2, x2, 1
/*     64 */	mul	x20, x3, x2
.L423:
/*     64 */	sub	x3, x2, 1
/*     64 */	add	x21, x3, x20
/*     64 */	cbz	x2, .L432
	.loc 12 67 0 is_stmt 0
..LDL80:
/*     67 */	ldr	w22, [x0, 8]	//  "homenr"
	.loc 12 46 0
..LDL81:
/*     46 */	sub	w25, w1, 1
	.loc 12 47 0
..LDL82:
/*     47 */	add	w24, w20, 1
	.loc 12 68 0
..LDL83:
/*     68 */	add	x27, x0, 56
	.loc 12 45 0
..LDL84:
/*     45 */	sdiv	w26, w22, w1
/*     45 */	mul	w23, w26, w20
	.p2align 5
.L425:					// :entr
	.loc 12 46 0 is_stmt 1
..LDL85:
/*     46 */	cmp	w20, w25
/*     46 */	bne	.L427
/*     46 */	mov	w1, w22
/*     46 */	b	.L428
.L427:
	.loc 12 47 0
..LDL86:
/*     47 */	mul	w1, w26, w24
.L428:
	.loc 12 68 0
..LDL87:
/*     68 */	ldr	s0, [x27, -52]	//  "dt"
/*     68 */	ldr	x2, [x27]	//  "p3"
/*     68 */	mov	w0, w23
/*     68 */	ldr	x3, [x27, -8]	//  "lambda"
/*     68 */	ldr	x4, [x27, -16]	//  "x"
/*     68 */	ldr	x5, [x27, -24]	//  "xprime"
/*     68 */	ldr	x6, [x27, -32]	//  "v"
/*     68 */	ldr	x7, [x27, -40]	//  "f"
.LEHB0:
/*     68 */	bl	_Z4sub0ILi0ELi0EEviifPA3_KfPS0_S2_PA3_fS5_S2_
.LEHE0:
	.loc 12 70 0
..LDL88:
/*     70 */	add	w20, w20, 1
/*     70 */	add	w24, w24, 1
/*     70 */	add	w23, w23, w26
/*     70 */	cmp	w20, w21
/*     70 */	ble	.L425
.L432:
/*     70 */	add	x20, x19, 32
/*     70 */	ldr	x0, [x20, -16]
/*     70 */	bl	__mpc_obar
/*     70 */	ldr	x0, [x20, -16]
/*     70 */	bl	__mpc_obar
/*      0 */	b	.L435
.L433:					// :ft
/*      0 */	bl	_ZSt9terminatev
.L435:					// :epi
/*    ??? */	add	sp, x29, 0
/*    ??? */	ldp	x19, x20, [x29, -16]	//  (*)
	.cfi_restore 19
	.cfi_restore 20
/*    ??? */	ldp	x21, x22, [x29, -32]	//  (*)
	.cfi_restore 21
	.cfi_restore 22
/*    ??? */	ldp	x23, x24, [x29, -48]	//  (*)
	.cfi_restore 23
	.cfi_restore 24
/*    ??? */	ldp	x25, x26, [x29, -64]	//  (*)
	.cfi_restore 25
	.cfi_restore 26
/*    ??? */	ldr	x27, [x29, -72]	//  (*)
	.cfi_restore 27
/*    ??? */	ldp	x29, x30, [sp]	//  (*)
	.cfi_restore 29
	.cfi_restore 30
/*     70 */	add	sp, sp, 16
	.cfi_def_cfa_offset 0
/*     70 */	ret	
	.cfi_endproc
.LFE3:
	.size	_Z4sub2ifPA3_KfPS_S1_PA3_fS4_S1_._OMP_1, .-_Z4sub2ifPA3_KfPS_S1_PA3_fS4_S1_._OMP_1
	.section	.gcc_except_table,"a",%progbits
	.align	2
.LLSDA3:
	.byte	255
	.byte	255
	.byte	1
	.uleb128	.LLSDACSE3-.LLSDACSB3
.LLSDACSB3:
	.uleb128	.LEHB0-.LFB3
	.uleb128	.LEHE0-.LEHB0
	.uleb128	.L433-.LFB3
	.uleb128	0x0
.LLSDACSE3:
	.sleb128	0
	.sleb128	0
	.ident	"$Compiler: Fujitsu C/C++ Compiler Version 1.2.0 P-id: Alpha-20190131 (Jan 18 2019 15:36:49) issue310.cpp main $"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
	.loc 12 83 0
..LDL89:
.LFB4:
	.cfi_startproc
/*     71 */	sub	sp, sp, 16
/*    ??? */	stp	x29, x30, [sp]	//  (*)
/*     71 */	add	x29, sp, 0
	.cfi_def_cfa 29, 16
	.cfi_offset 29, -16
	.cfi_offset 30, -8
/*     71 */	sub	sp, sp, 208
/*    ??? */	stp	x19, x20, [x29, -16]	//  (*)
	.cfi_offset 19, -32
	.cfi_offset 20, -24
/*     71 */	add	x19, sp, 0
/*    ??? */	stp	x21, x22, [x29, -32]	//  (*)
	.cfi_offset 21, -48
	.cfi_offset 22, -40
/*    ??? */	stp	x23, x24, [x29, -48]	//  (*)
	.cfi_offset 23, -64
	.cfi_offset 24, -56
/*    ??? */	stp	x25, x26, [x29, -64]	//  (*)
	.cfi_offset 25, -80
	.cfi_offset 26, -72
/*    ??? */	stp	x27, x28, [x29, -80]	//  (*)
	.cfi_offset 27, -96
	.cfi_offset 28, -88
	.loc 12 87 0
..LDL90:
/*     87 */	add	x24, x19, 40
/*     87 */	mov	w0, 981663744
	.loc 12 89 0
..LDL91:
	.loc 12 95 0 is_stmt 0
..LDL92:
/*     95 */	index	z0.s, 6, 3
	.loc 12 94 0
..LDL93:
/*     94 */	index	z2.s, 5, 3
	.loc 12 87 0 is_stmt 1
..LDL94:
/*     87 */	movk	w0, 4719, lsl #0
	.loc 12 89 0
..LDL95:
/*     89 */	ptrue	p0.s, ALL
	.loc 12 94 0 is_stmt 0
..LDL96:
/*     94 */	index	z3.s, 4, 3
/*     94 */	index	z4.s, 3, 3
	.loc 12 92 0
..LDL97:
/*     92 */	index	z5.s, 2, 3
/*     92 */	index	z6.s, 1, 3
	.loc 12 91 0
..LDL98:
/*     91 */	index	z7.s, 0, 3
	.loc 12 87 0 is_stmt 1
..LDL99:
/*     87 */	str	w0, [x24]	//  "lambda"
/*     89 */	mov	w18, 750
/*     89 */	mov	w22, 0
/*     96 */	adrp	x1, v
/*     96 */	adrp	x3, xprime
/*     96 */	adrp	x4, f
/*     96 */	adrp	x2, x
/*     96 */	add	x21, x1, :lo12:v
/*     96 */	add	x20, x3, :lo12:xprime
/*     96 */	add	x6, x4, :lo12:f
/*     96 */	adrp	x1, p3
/*     96 */	add	x3, x2, :lo12:x
/*     89 */	mov	w0, 2
/*     89 */	mov	w5, 1
/*     96 */	add	x1, x1, :lo12:p3
/*     96 */	mov	w2, 0
/*     96 */	mov	w4, 0
/*     96 */	mov	w7, 0
/*     96 */	mov	w8, 0
/*     96 */	mov	w9, 0
/*     96 */	mov	w10, 0
/*     96 */	mov	w11, 0
/*     96 */	mov	w12, 0
/*     96 */	mov	w13, 0
/*     96 */	mov	w14, 0
/*     96 */	mov	w15, 0
/*     96 */	mov	w16, 0
/*     96 */	mov	w17, 0
	.p2align 5
.L506:					// :entr:term
	.loc 12 95 0
..LDL100:
/*     95 */	dup	z1.s, w22
/*     95 */	add	x23, x6, w0, sxtw #2
/*     95 */	add	w22, w22, 48
/*     96 */	subs	w18, w18, 1
/*     95 */	add	z1.s, z1.s, z0.s
/*     95 */	scvtf	z1.s, p0/m, z1.s
/*     95 */	st1w	{z1.s}, p0, [x23, z7.s, sxtw #2]	//  "f"
	.loc 12 94 0
..LDL101:
/*     94 */	add	x23, x21, w0, sxtw #2
/*     94 */	dup	z1.s, w2
/*     94 */	add	w2, w2, 48
/*     94 */	add	z1.s, z1.s, z2.s
/*     94 */	scvtf	z1.s, p0/m, z1.s
/*     94 */	st1w	{z1.s}, p0, [x23, z7.s, sxtw #2]	//  "v"
	.loc 12 95 0
..LDL102:
/*     95 */	add	x23, x6, w5, sxtw #2
/*     95 */	dup	z1.s, w4
/*     95 */	add	w4, w4, 48
/*     95 */	add	z1.s, z1.s, z2.s
/*     95 */	scvtf	z1.s, p0/m, z1.s
/*     95 */	st1w	{z1.s}, p0, [x23, z7.s, sxtw #2]	//  "f"
	.loc 12 94 0
..LDL103:
/*     94 */	add	x23, x21, w5, sxtw #2
/*     94 */	dup	z1.s, w7
/*     94 */	add	w7, w7, 48
/*     94 */	add	z1.s, z1.s, z3.s
/*     94 */	scvtf	z1.s, p0/m, z1.s
/*     94 */	st1w	{z1.s}, p0, [x23, z7.s, sxtw #2]	//  "v"
	.loc 12 95 0
..LDL104:
/*     95 */	add	x23, x6, w9, sxtw #2
/*     95 */	dup	z1.s, w8
/*     95 */	add	w8, w8, 48
/*     95 */	add	z1.s, z1.s, z3.s
/*     95 */	scvtf	z1.s, p0/m, z1.s
/*     95 */	st1w	{z1.s}, p0, [x23, z7.s, sxtw #2]	//  "f"
	.loc 12 94 0
..LDL105:
/*     94 */	add	x23, x21, w9, sxtw #2
/*     94 */	dup	z1.s, w10
/*     94 */	add	w10, w10, 48
/*     94 */	add	z1.s, z1.s, z4.s
/*     94 */	scvtf	z1.s, p0/m, z1.s
/*     94 */	st1w	{z1.s}, p0, [x23, z7.s, sxtw #2]	//  "v"
	.loc 12 93 0
..LDL106:
/*     93 */	add	x23, x20, w0, sxtw #2
/*     93 */	dup	z1.s, w11
/*     93 */	add	w11, w11, 48
/*     93 */	add	z1.s, z1.s, z3.s
/*     93 */	scvtf	z1.s, p0/m, z1.s
/*     93 */	st1w	{z1.s}, p0, [x23, z7.s, sxtw #2]	//  "xprime"
	.loc 12 92 0
..LDL107:
/*     92 */	add	x23, x3, w0, sxtw #2
/*     92 */	dup	z1.s, w12
/*     92 */	add	w12, w12, 48
/*     92 */	add	z1.s, z1.s, z4.s
/*     92 */	scvtf	z1.s, p0/m, z1.s
/*     92 */	st1w	{z1.s}, p0, [x23, z7.s, sxtw #2]	//  "x"
	.loc 12 93 0
..LDL108:
/*     93 */	add	x23, x20, w5, sxtw #2
/*     93 */	dup	z1.s, w13
/*     93 */	add	w13, w13, 48
/*     93 */	add	z1.s, z1.s, z4.s
/*     93 */	scvtf	z1.s, p0/m, z1.s
/*     93 */	st1w	{z1.s}, p0, [x23, z7.s, sxtw #2]	//  "xprime"
	.loc 12 91 0
..LDL109:
/*     91 */	add	x23, x1, w0, sxtw #2
/*     96 */	add	w0, w0, 48
	.loc 12 92 0
..LDL110:
/*     92 */	dup	z1.s, w14
/*     92 */	add	w14, w14, 48
/*     92 */	add	z1.s, z1.s, z5.s
/*     92 */	scvtf	z1.s, p0/m, z1.s
	.loc 12 91 0
..LDL111:
/*     91 */	st1w	{z1.s}, p0, [x23, z7.s, sxtw #2]	//  "p3"
	.loc 12 92 0 is_stmt 0
..LDL112:
/*     92 */	add	x23, x3, w5, sxtw #2
/*     92 */	st1w	{z1.s}, p0, [x23, z7.s, sxtw #2]	//  "x"
	.loc 12 93 0 is_stmt 1
..LDL113:
/*     93 */	add	x23, x20, w9, sxtw #2
/*     93 */	dup	z1.s, w15
/*     93 */	add	w15, w15, 48
/*     93 */	add	z1.s, z1.s, z5.s
/*     93 */	scvtf	z1.s, p0/m, z1.s
/*     93 */	st1w	{z1.s}, p0, [x23, z7.s, sxtw #2]	//  "xprime"
	.loc 12 91 0
..LDL114:
/*     91 */	add	x23, x1, w5, sxtw #2
/*     96 */	add	w5, w5, 48
	.loc 12 92 0
..LDL115:
/*     92 */	dup	z1.s, w16
/*     92 */	add	w16, w16, 48
/*     92 */	add	z1.s, z1.s, z6.s
/*     92 */	scvtf	z1.s, p0/m, z1.s
	.loc 12 91 0
..LDL116:
/*     91 */	st1w	{z1.s}, p0, [x23, z7.s, sxtw #2]	//  "p3"
	.loc 12 92 0 is_stmt 0
..LDL117:
/*     92 */	add	x23, x3, w9, sxtw #2
/*     92 */	st1w	{z1.s}, p0, [x23, z7.s, sxtw #2]	//  "x"
	.loc 12 91 0
..LDL118:
/*     91 */	add	x23, x1, w9, sxtw #2
/*     96 */	add	w9, w9, 48
/*     91 */	dup	z1.s, w17
/*     91 */	add	w17, w17, 48
/*     91 */	add	z1.s, z1.s, z7.s
/*     91 */	scvtf	z1.s, p0/m, z1.s
/*     91 */	st1w	{z1.s}, p0, [x23, z7.s, sxtw #2]	//  "p3"
/*     96 */	bne	.L506
/*     99 */	adrp	x0, .LCP1
/*     99 */	mov	x2, x24
/*     99 */	mov	x4, x20
/*     99 */	ldr	s0, [x0, :lo12:.LCP1]	//  5.000000e-03
/*     99 */	mov	w0, 12000
/*     99 */	mov	x5, x21
/*     99 */	bl	_Z4sub2ifPA3_KfPS_S1_PA3_fS4_S1_
	.loc 12 101 0 is_stmt 1
..LDL119:
/*    101 */	mov	w1, 0
	.loc 12 102 0
..LDL120:
/*    102 */	mov	w0, 12000
	.loc 12 115 0 is_stmt 0
..LDL121:
/*    115 */	adrp	x3, .LR.3
	.loc 12 104 0
..LDL122:
/*    104 */	mov	x28, 0
/*    104 */	mov	w26, 2
	.loc 12 118 0
..LDL123:
/*    ??? */	str	w0, [x19, 36]	//  (*)
/*    118 */	adrp	x2, .LR.4
	.loc 12 113 0
..LDL124:
/*    113 */	mov	w24, 3
	.loc 12 102 0
..LDL125:
/*    102 */	mov	w23, 0
	.loc 12 115 0
..LDL126:
/*    115 */	add	x25, x3, :lo12:.LR.3
	.loc 12 118 0
..LDL127:
/*    118 */	add	x22, x2, :lo12:.LR.4
/*    118 */	mov	w27, w1
	.p2align 5
.L509:					// :entr
	.loc 12 104 0 is_stmt 1
..LDL128:
/*    104 */	ldr	s0, [x20, x28, lsl #2]	//  "xprime"
/*    104 */	scvtf	s1, w26
/*    104 */	fcmp	s0, s1
/*    104 */	bne	.L519
	.loc 12 105 0
..LDL129:
/*    105 */	cmp	w27, 100
/*    105 */	bge	.L515
	.loc 12 106 0
..LDL130:
/*    106 */	fcvt	d0, s0
/*    106 */	mov	w3, 0
/*    106 */	adrp	x0, .LR.5
/*    106 */	mov	w1, w27
/*    106 */	add	x0, x0, :lo12:.LR.5
/*    106 */	mov	w2, w23
/*    106 */	bl	printf
	.loc 12 108 0
..LDL131:
/*    108 */	b	.L518
.L515:
/*    108 */	cmp	w27, 100
/*    108 */	bne	.L518
	.loc 12 109 0
..LDL132:
/*    109 */	mov	x0, x22
/*    109 */	bl	printf
.L518:
	.loc 12 111 0
..LDL133:
/*    111 */	add	w27, w27, 1
.L519:
	.loc 12 113 0
..LDL134:
/*    113 */	ldr	s1, [x21, x28, lsl #2]	//  "v"
/*    113 */	scvtf	s0, w24
/*    113 */	fcmp	s1, s0
/*    113 */	bne	.L527
	.loc 12 114 0
..LDL135:
/*    114 */	cmp	w27, 100
/*    114 */	bge	.L523
	.loc 12 115 0
..LDL136:
/*    115 */	fcvt	d0, s1
/*    115 */	mov	w3, 0
/*    115 */	mov	x0, x25
/*    115 */	mov	w1, w27
/*    115 */	mov	w2, w23
/*    115 */	bl	printf
	.loc 12 117 0
..LDL137:
/*    117 */	b	.L526
.L523:
/*    117 */	cmp	w27, 100
/*    117 */	bne	.L526
	.loc 12 118 0
..LDL138:
/*    118 */	mov	x0, x22
/*    118 */	bl	printf
.L526:
	.loc 12 120 0
..LDL139:
/*    120 */	add	w27, w27, 1
.L527:
	.loc 12 122 0
..LDL140:
/*    122 */	add	w0, w26, 1
	.loc 12 104 0
..LDL141:
/*    104 */	add	x1, x28, 1
	.loc 12 122 0
..LDL142:
/*    122 */	add	w2, w24, 1
	.loc 12 104 0
..LDL143:
/*    104 */	ldr	s1, [x20, x1, lsl #2]	//  "xprime"
/*    104 */	scvtf	s0, w0
	.loc 12 122 0
..LDL144:
/* #00002 */	str	w0, [x19, 16]	//  (*)
	.loc 12 104 0
..LDL145:
/* #00002 */	str	x1, [x19]	//  (*)
	.loc 12 122 0
..LDL146:
/* #00002 */	str	w2, [x19, 12]	//  (*)
	.loc 12 104 0
..LDL147:
/*    104 */	fcmp	s1, s0
/*    104 */	bne	.L536
	.loc 12 105 0
..LDL148:
/*    105 */	cmp	w27, 100
/*    105 */	bge	.L532
	.loc 12 106 0
..LDL149:
/*    106 */	fcvt	d0, s1
/*    106 */	mov	w3, 1
/*    106 */	adrp	x0, .LR.5
/*    106 */	mov	w1, w27
/*    106 */	add	x0, x0, :lo12:.LR.5
/*    106 */	mov	w2, w23
/*    106 */	bl	printf
	.loc 12 108 0
..LDL150:
/*    108 */	b	.L535
.L532:
/*    108 */	cmp	w27, 100
/*    108 */	bne	.L535
	.loc 12 109 0
..LDL151:
/*    109 */	mov	x0, x22
/*    109 */	bl	printf
.L535:
	.loc 12 111 0
..LDL152:
/*    111 */	add	w27, w27, 1
.L536:
	.loc 12 113 0
..LDL153:
/* #00002 */	ldr	x0, [x19]	//  (*)
/*    113 */	ldr	s0, [x21, x0, lsl #2]	//  "v"
/* #00002 */	ldr	w0, [x19, 12]	//  (*)
/*    113 */	scvtf	s1, w0
/*    113 */	fcmp	s0, s1
/*    113 */	bne	.L544
	.loc 12 114 0
..LDL154:
/*    114 */	cmp	w27, 100
/*    114 */	bge	.L540
	.loc 12 115 0
..LDL155:
/*    115 */	fcvt	d0, s0
/*    115 */	mov	w3, 1
/*    115 */	mov	x0, x25
/*    115 */	mov	w1, w27
/*    115 */	mov	w2, w23
/*    115 */	bl	printf
	.loc 12 117 0
..LDL156:
/*    117 */	b	.L543
.L540:
/*    117 */	cmp	w27, 100
/*    117 */	bne	.L543
	.loc 12 118 0
..LDL157:
/*    118 */	mov	x0, x22
/*    118 */	bl	printf
.L543:
	.loc 12 120 0
..LDL158:
/*    120 */	add	w27, w27, 1
.L544:
	.loc 12 122 0
..LDL159:
/* #00002 */	ldr	w0, [x19, 16]	//  (*)
	.loc 12 104 0
..LDL160:
/*    104 */	add	x1, x28, 2
/* #00002 */	str	x1, [x19, 24]	//  (*)
	.loc 12 122 0
..LDL161:
/* #00002 */	ldr	w1, [x19, 12]	//  (*)
/*    122 */	add	w0, w0, 1
	.loc 12 104 0
..LDL162:
/*    104 */	scvtf	s0, w0
	.loc 12 122 0
..LDL163:
/*    122 */	add	w1, w1, 1
/* #00002 */	str	w1, [x19, 20]	//  (*)
	.loc 12 104 0
..LDL164:
/* #00002 */	ldr	x1, [x19, 24]	//  (*)
/*    104 */	ldr	s1, [x20, x1, lsl #2]	//  "xprime"
/*    104 */	fcmp	s1, s0
/*    104 */	bne	.L553
	.loc 12 105 0
..LDL165:
/*    105 */	cmp	w27, 100
/*    105 */	bge	.L549
	.loc 12 106 0
..LDL166:
/*    106 */	fcvt	d0, s1
/*    106 */	mov	w3, 2
/*    106 */	adrp	x0, .LR.5
/*    106 */	mov	w1, w27
/*    106 */	add	x0, x0, :lo12:.LR.5
/*    106 */	mov	w2, w23
/*    106 */	bl	printf
	.loc 12 108 0
..LDL167:
/*    108 */	b	.L552
.L549:
/*    108 */	cmp	w27, 100
/*    108 */	bne	.L552
	.loc 12 109 0
..LDL168:
/*    109 */	mov	x0, x22
/*    109 */	bl	printf
.L552:
	.loc 12 111 0
..LDL169:
/*    111 */	add	w27, w27, 1
.L553:
	.loc 12 113 0
..LDL170:
/* #00002 */	ldr	x0, [x19, 24]	//  (*)
/*    113 */	ldr	s1, [x21, x0, lsl #2]	//  "v"
/* #00002 */	ldr	w0, [x19, 20]	//  (*)
/*    113 */	scvtf	s0, w0
/*    113 */	fcmp	s1, s0
/*    113 */	bne	.L561
	.loc 12 114 0
..LDL171:
/*    114 */	cmp	w27, 100
/*    114 */	bge	.L557
	.loc 12 115 0
..LDL172:
/*    115 */	fcvt	d0, s1
/*    115 */	mov	w3, 2
/*    115 */	mov	x0, x25
/*    115 */	mov	w1, w27
/*    115 */	mov	w2, w23
/*    115 */	bl	printf
	.loc 12 117 0
..LDL173:
/*    117 */	b	.L560
.L557:
/*    117 */	cmp	w27, 100
/*    117 */	bne	.L560
	.loc 12 118 0
..LDL174:
/*    118 */	mov	x0, x22
/*    118 */	bl	printf
.L560:
	.loc 12 120 0
..LDL175:
/*    120 */	add	w27, w27, 1
.L561:					// :term
	.loc 12 123 0
..LDL176:
/*    123 */	add	w23, w23, 1
/*    123 */	add	w24, w24, 3
/* #00002 */	ldr	w0, [x19, 36]	//  (*)
/*    123 */	add	w26, w26, 3
/*    123 */	add	x28, x28, 3
/*    123 */	subs	w0, w0, 1
/* #00002 */	str	w0, [x19, 36]	//  (*)
/*    123 */	bne	.L509
/*    123 */	mov	w1, w27
	.loc 12 124 0
..LDL177:
/*    124 */	cbz	w1, .L566
	.loc 12 125 0
..LDL178:
/*    125 */	adrp	x0, .LR.2
/*    125 */	add	x0, x0, :lo12:.LR.2
/*    125 */	bl	printf
	.loc 12 126 0
..LDL179:
/*    126 */	b	.L568
.L566:
	.loc 12 127 0
..LDL180:
/*    127 */	adrp	x0, .LR.1
/*    127 */	add	x0, x0, :lo12:.LR.1
/*    127 */	bl	printf
.L568:
	.loc 12 129 0
..LDL181:
/*    129 */	mov	w0, 0
	.loc 12 130 0
..LDL182:
/*    ??? */	add	sp, x29, 0
/*    ??? */	ldp	x19, x20, [x29, -16]	//  (*)
	.cfi_restore 19
	.cfi_restore 20
/*    ??? */	ldp	x21, x22, [x29, -32]	//  (*)
	.cfi_restore 21
	.cfi_restore 22
/*    ??? */	ldp	x23, x24, [x29, -48]	//  (*)
	.cfi_restore 23
	.cfi_restore 24
/*    ??? */	ldp	x25, x26, [x29, -64]	//  (*)
	.cfi_restore 25
	.cfi_restore 26
/*    ??? */	ldp	x27, x28, [x29, -80]	//  (*)
	.cfi_restore 27
	.cfi_restore 28
/*    ??? */	ldp	x29, x30, [sp]	//  (*)
	.cfi_restore 29
	.cfi_restore 30
/*    130 */	add	sp, sp, 16
	.cfi_def_cfa_offset 0
/*    130 */	ret	
	.cfi_endproc
.LFE4:
	.size	main, .-main
	.ident	"$Compiler: Fujitsu C/C++ Compiler Version 1.2.0 P-id: Alpha-20190131 (Jan 18 2019 15:36:49) issue310.cpp __fjc_check_hpctag $"
	.text
	.align	2
	.type	__fjc_check_hpctag, %function
__fjc_check_hpctag:
.LFB5:
	.cfi_startproc
/*        */	sub	sp, sp, 16
/*    ??? */	stp	x29, x30, [sp]	//  (*)
/*        */	add	x29, sp, 0
	.cfi_def_cfa 29, 16
	.cfi_offset 29, -16
	.cfi_offset 30, -8
/*        */	sub	sp, sp, 160
/*    ??? */	str	x19, [x29, -8]	//  (*)
	.cfi_offset 19, -24
/*        */	add	x19, sp, 0
/*        */	mov	x0, 0
/*    ??? */	add	sp, x29, 0
/*    ??? */	ldr	x19, [x29, -8]	//  (*)
	.cfi_restore 19
/*    ??? */	ldp	x29, x30, [sp]	//  (*)
	.cfi_restore 29
	.cfi_restore 30
/*        */	add	sp, sp, 16
	.cfi_def_cfa_offset 0
/*        */	b	__jwe_check_hpctag
	.cfi_endproc
.LFE5:
	.size	__fjc_check_hpctag, .-__fjc_check_hpctag
	.section	.init_array,"aw"
	.align	3
	.xword		__fjc_check_hpctag
	.section	.rodata.cst4,"aM",@progbits,4
	.align	2
.LCP1:
	.word	1000593162
	.global	__jwe_xnrtrap
	.data
	.align	3
	.type	__jwe_xnrtrap, %object
__jwe_xnrtrap:
	.xword	0
	.size	__jwe_xnrtrap,.-__jwe_xnrtrap
	.file 13 "/opt/ARM/sysroot-linaro-eglibc-gcc4.9-2014.11-aarch64-linux-gnu/usr/include/alloca.h"
	.file 14 "/opt/ARM/sysroot-linaro-eglibc-gcc4.9-2014.11-aarch64-linux-gnu/usr/include/_G_config.h"
	.file 15 "/opt/FJT/FJTComp-latest/bin/../include/omp.h"
	.file 16 "/opt/ARM/sysroot-linaro-eglibc-gcc4.9-2014.11-aarch64-linux-gnu/usr/include/xlocale.h"
	.file 17 "/opt/ARM/sysroot-linaro-eglibc-gcc4.9-2014.11-aarch64-linux-gnu/usr/include/sys/select.h"
	.file 18 "/opt/ARM/sysroot-linaro-eglibc-gcc4.9-2014.11-aarch64-linux-gnu/usr/include/bits/time.h"
	.file 19 "/opt/ARM/sysroot-linaro-eglibc-gcc4.9-2014.11-aarch64-linux-gnu/usr/include/time.h"
	.file 20 "/opt/ARM/sysroot-linaro-eglibc-gcc4.9-2014.11-aarch64-linux-gnu/usr/include/bits/sigset.h"
	.file 21 "/opt/ARM/sysroot-linaro-eglibc-gcc4.9-2014.11-aarch64-linux-gnu/usr/include/sys/types.h"
	.file 22 "/opt/ARM/sysroot-linaro-eglibc-gcc4.9-2014.11-aarch64-linux-gnu/usr/include/wchar.h"
	.file 23 "/opt/ARM/sysroot-linaro-eglibc-gcc4.9-2014.11-aarch64-linux-gnu/usr/include/bits/waitstatus.h"
	.file 24 "/opt/ARM/sysroot-linaro-eglibc-gcc4.9-2014.11-aarch64-linux-gnu/usr/include/bits/pthreadtypes.h"
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
	.ascii	"issue310.cpp\0"	// DW_AT_name
	.4byte	.Ldebug_line	// DW_AT_stmt_list
	.byte	0x4	// DW_AT_language
	.ascii	"/home/odajima/bug_report/RIST/issue310\0"	// DW_AT_comp_dir
	.ascii	"FUJITSU LIMITED: Version 2.0.0 : 64-bit\0"	// DW_AT_producer
	.uleb128	0x2	// DW_TAG_subprogram (0x6d)
	.ascii	"sub1\0"	// DW_AT_name
	.byte	0x1	// DW_AT_inline
	.byte	0xc	// DW_AT_decl_file
	.byte	0x2b	// DW_AT_decl_line
			// DW_AT_declaration
			// DW_AT_external
	.ascii	"_Z4sub1iiiPiS_\0"	// DW_AT_linkage_name
	.uleb128	0x3	// DW_TAG_subprogram (0x85)
	.8byte	_Z4sub1iiiPiS_	// DW_AT_low_pc
	.4byte	0x6d	// DW_AT_abstract_origin
	.uleb128	0x1	// DW_AT_frame_base
	.byte	0x9c	// DW_OP_call_frame_cfa
	.ascii	"_Z4sub1iiiPiS_\0"	// DW_AT_linkage_name
	.uleb128	0x4	// DW_TAG_subprogram (0xa3)
	.4byte	0x120	// DW_AT_sibling
	.ascii	"sub2\0"	// DW_AT_name
	.8byte	_Z4sub2ifPA3_KfPS_S1_PA3_fS4_S1_	// DW_AT_low_pc
	.byte	0xc	// DW_AT_decl_file
	.byte	0x33	// DW_AT_decl_line
			// DW_AT_external
	.uleb128	0x1	// DW_AT_frame_base
	.byte	0x9c	// DW_OP_call_frame_cfa
	.ascii	"_Z4sub2ifPA3_KfPS_S1_PA3_fS4_S1_\0"	// DW_AT_linkage_name
	.uleb128	0x5	// DW_TAG_subprogram (0xda)
	.ascii	"_Z4sub2ifPA3_KfPS_S1_PA3_fS4_S1_._OMP_1\0"	// DW_AT_name
	.8byte	_Z4sub2ifPA3_KfPS_S1_PA3_fS4_S1_._OMP_1	// DW_AT_low_pc
			// DW_AT_artificial
	.uleb128	0x1	// DW_AT_frame_base
	.byte	0x9c	// DW_OP_call_frame_cfa
	.uleb128	0x6	// DW_TAG_FJ_loop (0x10d)
	.byte	0xc	// DW_AT_decl_file
	.byte	0x40	// DW_AT_FJ_loop_start_line
	.byte	0x46	// DW_AT_FJ_loop_end_line
	.byte	0x1	// DW_AT_FJ_loop_nest_level
	.byte	0x5	// DW_AT_FJ_loop_type
	.uleb128	0x7	// DW_TAG_inlined_subroutine (0x113)
	.4byte	0x6d	// DW_AT_abstract_origin
	.4byte	.Ldebug_ranges1	// DW_AT_ranges
	.byte	0xc	// DW_AT_call_file
	.byte	0x43	// DW_AT_call_line
	.byte	0x0	// End of children (0xda)
	.byte	0x0	// End of children (0xa3)
	.uleb128	0x8	// DW_TAG_subprogram (0x120)
	.4byte	0x14f	// DW_AT_sibling
	.ascii	"main\0"	// DW_AT_name
	.8byte	main	// DW_AT_low_pc
	.byte	0xc	// DW_AT_decl_file
	.byte	0x52	// DW_AT_decl_line
			// DW_AT_external
	.uleb128	0x1	// DW_AT_frame_base
	.byte	0x9c	// DW_OP_call_frame_cfa
	.uleb128	0x6	// DW_TAG_FJ_loop (0x136)
	.byte	0xc	// DW_AT_decl_file
	.byte	0x67	// DW_AT_FJ_loop_start_line
	.byte	0x7a	// DW_AT_FJ_loop_end_line
	.byte	0x2	// DW_AT_FJ_loop_nest_level
	.byte	0x5	// DW_AT_FJ_loop_type
	.uleb128	0x6	// DW_TAG_FJ_loop (0x13c)
	.byte	0xc	// DW_AT_decl_file
	.byte	0x66	// DW_AT_FJ_loop_start_line
	.byte	0x7b	// DW_AT_FJ_loop_end_line
	.byte	0x1	// DW_AT_FJ_loop_nest_level
	.byte	0x5	// DW_AT_FJ_loop_type
	.uleb128	0x6	// DW_TAG_FJ_loop (0x142)
	.byte	0xc	// DW_AT_decl_file
	.byte	0x5a	// DW_AT_FJ_loop_start_line
	.byte	0x60	// DW_AT_FJ_loop_end_line
	.byte	0x2	// DW_AT_FJ_loop_nest_level
	.byte	0x5	// DW_AT_FJ_loop_type
	.uleb128	0x6	// DW_TAG_FJ_loop (0x148)
	.byte	0xc	// DW_AT_decl_file
	.byte	0x59	// DW_AT_FJ_loop_start_line
	.byte	0x61	// DW_AT_FJ_loop_end_line
	.byte	0x1	// DW_AT_FJ_loop_nest_level
	.byte	0x5	// DW_AT_FJ_loop_type
	.byte	0x0	// End of children (0x120)
	.uleb128	0x9	// DW_TAG_subprogram (0x14f)
	.ascii	"sub0\0"	// DW_AT_name
	.8byte	_Z4sub0ILi0ELi0EEviifPA3_KfPS0_S2_PA3_fS5_S2_	// DW_AT_low_pc
	.byte	0xc	// DW_AT_decl_file
	.byte	0xa	// DW_AT_decl_line
	.uleb128	0x1	// DW_AT_frame_base
	.byte	0x9c	// DW_OP_call_frame_cfa
	.uleb128	0x6	// DW_TAG_FJ_loop (0x161)
	.byte	0xc	// DW_AT_decl_file
	.byte	0x1e	// DW_AT_FJ_loop_start_line
	.byte	0x26	// DW_AT_FJ_loop_end_line
	.byte	0x2	// DW_AT_FJ_loop_nest_level
	.byte	0x5	// DW_AT_FJ_loop_type
	.uleb128	0x6	// DW_TAG_FJ_loop (0x167)
	.byte	0xc	// DW_AT_decl_file
	.byte	0x19	// DW_AT_FJ_loop_start_line
	.byte	0x27	// DW_AT_FJ_loop_end_line
	.byte	0x1	// DW_AT_FJ_loop_nest_level
	.byte	0x5	// DW_AT_FJ_loop_type
	.byte	0x0	// End of children (0x14f)
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
	.byte	0x0	// DW_CHILDREN_no
	.uleb128	0x3	// DW_AT_name
	.uleb128	0x8	// DW_FORM_string
	.uleb128	0x20	// DW_AT_inline
	.uleb128	0xb	// DW_FORM_data1
	.uleb128	0x3a	// DW_AT_decl_file
	.uleb128	0xb	// DW_FORM_data1
	.uleb128	0x3b	// DW_AT_decl_line
	.uleb128	0xb	// DW_FORM_data1
	.uleb128	0x3c	// DW_AT_declaration
	.uleb128	0x19	// DW_FORM_flag_present
	.uleb128	0x3f	// DW_AT_external
	.uleb128	0x19	// DW_FORM_flag_present
	.uleb128	0x6e	// DW_AT_linkage_name
	.uleb128	0x8	// DW_FORM_string
	.byte	0x0
	.byte	0x0
	.uleb128	0x3	// Abbreviation code
	.uleb128	0x2e	// DW_TAG_subprogram
	.byte	0x0	// DW_CHILDREN_no
	.uleb128	0x11	// DW_AT_low_pc
	.uleb128	0x1	// DW_FORM_addr
	.uleb128	0x31	// DW_AT_abstract_origin
	.uleb128	0x13	// DW_FORM_ref4
	.uleb128	0x40	// DW_AT_frame_base
	.uleb128	0x18	// DW_FORM_exprloc
	.uleb128	0x6e	// DW_AT_linkage_name
	.uleb128	0x8	// DW_FORM_string
	.byte	0x0
	.byte	0x0
	.uleb128	0x4	// Abbreviation code
	.uleb128	0x2e	// DW_TAG_subprogram
	.byte	0x1	// DW_CHILDREN_yes
	.uleb128	0x1	// DW_AT_sibling
	.uleb128	0x13	// DW_FORM_ref4
	.uleb128	0x3	// DW_AT_name
	.uleb128	0x8	// DW_FORM_string
	.uleb128	0x11	// DW_AT_low_pc
	.uleb128	0x1	// DW_FORM_addr
	.uleb128	0x3a	// DW_AT_decl_file
	.uleb128	0xb	// DW_FORM_data1
	.uleb128	0x3b	// DW_AT_decl_line
	.uleb128	0xb	// DW_FORM_data1
	.uleb128	0x3f	// DW_AT_external
	.uleb128	0x19	// DW_FORM_flag_present
	.uleb128	0x40	// DW_AT_frame_base
	.uleb128	0x18	// DW_FORM_exprloc
	.uleb128	0x6e	// DW_AT_linkage_name
	.uleb128	0x8	// DW_FORM_string
	.byte	0x0
	.byte	0x0
	.uleb128	0x5	// Abbreviation code
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
	.byte	0x0
	.byte	0x0
	.uleb128	0x6	// Abbreviation code
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
	.uleb128	0x7	// Abbreviation code
	.uleb128	0x1d	// DW_TAG_inlined_subroutine
	.byte	0x0	// DW_CHILDREN_no
	.uleb128	0x31	// DW_AT_abstract_origin
	.uleb128	0x13	// DW_FORM_ref4
	.uleb128	0x55	// DW_AT_ranges
	.uleb128	0x17	// DW_FORM_sec_offset
	.uleb128	0x58	// DW_AT_call_file
	.uleb128	0xb	// DW_FORM_data1
	.uleb128	0x59	// DW_AT_call_line
	.uleb128	0xb	// DW_FORM_data1
	.byte	0x0
	.byte	0x0
	.uleb128	0x8	// Abbreviation code
	.uleb128	0x2e	// DW_TAG_subprogram
	.byte	0x1	// DW_CHILDREN_yes
	.uleb128	0x1	// DW_AT_sibling
	.uleb128	0x13	// DW_FORM_ref4
	.uleb128	0x3	// DW_AT_name
	.uleb128	0x8	// DW_FORM_string
	.uleb128	0x11	// DW_AT_low_pc
	.uleb128	0x1	// DW_FORM_addr
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
	.uleb128	0x9	// Abbreviation code
	.uleb128	0x2e	// DW_TAG_subprogram
	.byte	0x1	// DW_CHILDREN_yes
	.uleb128	0x3	// DW_AT_name
	.uleb128	0x8	// DW_FORM_string
	.uleb128	0x11	// DW_AT_low_pc
	.uleb128	0x1	// DW_FORM_addr
	.uleb128	0x3a	// DW_AT_decl_file
	.uleb128	0xb	// DW_FORM_data1
	.uleb128	0x3b	// DW_AT_decl_line
	.uleb128	0xb	// DW_FORM_data1
	.uleb128	0x40	// DW_AT_frame_base
	.uleb128	0x18	// DW_FORM_exprloc
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.section	.debug_line
.Ldebug_line:
	.section	.debug_ranges
.Ldebug_ranges1:
	.8byte	0xffffffffffffffff	// Base addr selection entry ID
	.8byte	0x0
	.8byte	..LDL78
	.8byte	..LDL79
	.8byte	..LDL85
	.8byte	..LDL87
	.8byte	0x0
	.8byte	0x0
	.global	__gxx_personality_v0
	.hidden	DW.ref.__gxx_personality_v0
	.weak	DW.ref.__gxx_personality_v0
	.section	.data.DW.ref.__gxx_personality_v0,"awG",%progbits,DW.ref.__gxx_personality_v0,comdat
	.align	3
	.type	DW.ref.__gxx_personality_v0, %object
	.size	DW.ref.__gxx_personality_v0, 8
DW.ref.__gxx_personality_v0:
	.xword	__gxx_personality_v0
	.section	.rodata
	.align	3
.LR.1:
	.ascii "PASSED.\040All\040data\040changed.\012\000"
	.type	.LR.1, %object
	.size	.LR.1,.-.LR.1
	.section	.rodata
	.align	3
.LR.2:
	.ascii "FAILED.\040Total\040%d\040data\040unchanged\012\000"
	.type	.LR.2, %object
	.size	.LR.2,.-.LR.2
	.section	.rodata
	.align	3
.LR.3:
	.ascii "%3d\040v[%d][%d]:%g\040remain\040unchanged.\012\000"
	.type	.LR.3, %object
	.size	.LR.3,.-.LR.3
	.section	.rodata
	.align	3
.LR.4:
	.ascii "entering\040silent\040mode...\012\000"
	.type	.LR.4, %object
	.size	.LR.4,.-.LR.4
	.section	.rodata
	.align	3
.LR.5:
	.ascii "%3d\040xprime[%d][%d]:%g\040remain\040unchanged.\012"
	.ascii	"\000"
	.type	.LR.5, %object
	.size	.LR.5,.-.LR.5
	.comm	f,144000,8
	.comm	v,144000,8
	.comm	xprime,144000,8
	.comm	x,144000,8
	.comm	p3,144000,8
	.section	.note.GNU-stack,"",%progbits
	.section	.fj.compile_info, "e"
	.ascii	"C++::trad-libc++"
