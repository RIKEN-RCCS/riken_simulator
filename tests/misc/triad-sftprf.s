..text.b:
	.ident	"$Options: Fujitsu C/C++ Compiler Version 1.2.0 P-id: Alpha-20171013 (Oct 10 2017 11:06:13) --preinclude /opt/FJTComp7/bin/../lib/c99.pre --gcc --c99 -D__FUJITSU -Dunix -D__aarch64__ -D__unix -D__fcc_version__=0x700 -D__fcc_version=700 -D__USER_LABEL_PREFIX__= -D__OPTIMIZE__ -D__ARM_ARCH=8 -D__FP_FAST_FMA -D__ELF__ -D__unix__ -D__linux__ -D__linux -Asystem(unix) -Dlinux -D__LIBC_6B -D__LP64__ -D_LP64 -Iinclude --K=ocl --zmode=64 --sys_include=/opt/FJTComp7/bin/../include --sys_include=/opt/ARM/aarch64-linux-gnu/sysroot-linaro-eglibc-gcc4.9-2014.11-aarch64-linux-gnu/usr/include --K=opt triad-sftprf.c -- -ncmdname=fccpx -nspopt=\"-Kfast,ocl,noswp,nounroll,nosimd,prefetch_sequential=soft,prefetch_cache_level=2,prefetch_line_L2=1 -Nlst=t -Koptmsg=2 -Iinclude -S -o triad-sftprf.s\" -zobe=no-static-clump -O3 -x- -Komitfp,mfunc,rdconv,eval,fp_relaxed,ns,fast_matmul,fp_contract,ilfunc,prefetch_conditional,ocl,noswp,nounroll,nosimd,prefetch_sequential=soft,prefetch_cache_level=2,prefetch_line_L2=1 -Nlst=t -Koptmsg=2 -zsta=m -zsrc=triad-sftprf.c triad-sftprf.s $"
	.file	"triad-sftprf.c"
	.ident	"$Compiler: Fujitsu C/C++ Compiler Version 1.2.0 P-id: Alpha-20171013 (Oct 10 2017 11:06:13) triad-sftprf.c get_dtime $"
	.text
	.align	2
	.global	get_dtime
	.type	get_dtime, %function
get_dtime:
	.file 1 "/opt/ARM/aarch64-linux-gnu/sysroot-linaro-eglibc-gcc4.9-2014.11-aarch64-linux-gnu/usr/include/bits/stdio.h"
	.file 2 "/opt/FJTComp7/bin/../include/stdarg.h"
	.file 3 "/opt/ARM/aarch64-linux-gnu/sysroot-linaro-eglibc-gcc4.9-2014.11-aarch64-linux-gnu/usr/include/stdio.h"
	.file 4 "/opt/ARM/aarch64-linux-gnu/sysroot-linaro-eglibc-gcc4.9-2014.11-aarch64-linux-gnu/usr/include/libio.h"
	.file 5 "/opt/ARM/aarch64-linux-gnu/sysroot-linaro-eglibc-gcc4.9-2014.11-aarch64-linux-gnu/usr/include/stdlib.h"
	.file 6 "/opt/ARM/aarch64-linux-gnu/sysroot-linaro-eglibc-gcc4.9-2014.11-aarch64-linux-gnu/usr/include/sys/sysmacros.h"
	.file 7 "/opt/ARM/aarch64-linux-gnu/sysroot-linaro-eglibc-gcc4.9-2014.11-aarch64-linux-gnu/usr/include/bits/stdlib-bsearch.h"
	.file 8 "/opt/FJTComp7/bin/../include/stddef.h"
	.file 9 "/opt/ARM/aarch64-linux-gnu/sysroot-linaro-eglibc-gcc4.9-2014.11-aarch64-linux-gnu/usr/include/bits/stdlib-float.h"
	.file 10 "/opt/ARM/aarch64-linux-gnu/sysroot-linaro-eglibc-gcc4.9-2014.11-aarch64-linux-gnu/usr/include/pthread.h"
	.file 11 "/opt/ARM/aarch64-linux-gnu/sysroot-linaro-eglibc-gcc4.9-2014.11-aarch64-linux-gnu/usr/include/bits/pthreadtypes.h"
	.file 12 "include/mytime.h"
	.loc 12 14 0
.LFB0:
	.cfi_startproc
/*    ??? */	stp	x19, x30, [sp, -32]!	//  (*)
	.cfi_def_cfa_offset 32
	.cfi_offset 19, -32
	.cfi_offset 30, -24
	.loc 12 16 0
/*     16 */	add	x19, sp, 16
/*     16 */	mov	w0, 1
/*     16 */	mov	x1, x19
/*     16 */	bl	clock_gettime
	.loc 12 17 0
/*     17 */	ldr	x0, [x19]	//  "ts"
/*     17 */	ldr	x1, [x19, 8]	//  "ts"
/*     17 */	ldr	d2, .LC1
/*     17 */	scvtf	d0, x0
/*     17 */	scvtf	d1, x1
/*     17 */	fmadd	d0, d1, d2, d0
	.loc 12 18 0
/*    ??? */	ldp	x19, x30, [sp], 32	//  (*)
	.cfi_restore 19
	.cfi_restore 30
	.cfi_def_cfa_offset 0
/*     18 */	ret	
..D1.pchi:
	.cfi_endproc
.LFE0:
	.size	get_dtime, .-get_dtime
	.align	3
.LC1:
	.word	0xe826d695,0x3e112e0b
	.ident	"$Compiler: Fujitsu C/C++ Compiler Version 1.2.0 P-id: Alpha-20171013 (Oct 10 2017 11:06:13) triad-sftprf.c main $"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
	.file 13 "/opt/ARM/aarch64-linux-gnu/sysroot-linaro-eglibc-gcc4.9-2014.11-aarch64-linux-gnu/usr/include/time.h"
	.file 14 "triad-sftprf.c"
	.loc 14 16 0
.LFB1:
	.cfi_startproc
/*    ??? */	stp	x19, x20, [sp, -112]!	//  (*)
	.cfi_def_cfa_offset 112
	.cfi_offset 19, -112
	.cfi_offset 20, -104
/*     18 */	mov	x20, x1
/*    ??? */	stp	x21, x22, [sp, 16]	//  (*)
	.cfi_offset 21, -96
	.cfi_offset 22, -88
/*     18 */	mov	w21, w0
/*    ??? */	stp	x23, x24, [sp, 32]	//  (*)
	.cfi_offset 23, -80
	.cfi_offset 24, -72
/*    ??? */	stp	x25, x30, [sp, 48]	//  (*)
	.cfi_offset 25, -64
	.cfi_offset 30, -56
/*    ??? */	stp	d8, d9, [sp, 64]	//  (*)
	.cfi_offset 72, -48
	.cfi_offset 73, -40
/*    ??? */	str	d10, [sp, 80]	//  (*)
	.cfi_offset 74, -32
	.loc 14 22 0
/*     22 */	cmp	w21, 1
/*     22 */	ble	.L97
	.loc 14 23 0
/*     23 */	ldr	x0, [x20, 8]	//  (*)
	.loc 5 280 0
/*    280 */	mov	w2, 10
/*    280 */	mov	x1, 0
/*    280 */	bl	strtol
/*    280 */	mov	w19, w0
	.loc 14 23 0
/*     23 */	b	.L98
.L97:
	.loc 14 20 0
/*     20 */	mov	w19, 262144
/*     20 */	movk	w19, 52192, lsl #0
.L98:
	.loc 14 24 0
/*     24 */	cmp	w21, 2
/*     24 */	ble	.L100
	.loc 14 25 0
/*     25 */	ldr	x0, [x20, 16]	//  (*)
	.loc 5 280 0
/*    280 */	mov	w2, 10
/*    280 */	mov	x1, 0
/*    280 */	bl	strtol
/*    280 */	mov	w20, w0
	.loc 14 25 0
/*     25 */	b	.L101
.L100:
	.loc 14 21 0
/*     21 */	mov	w20, 1
.L101:
	.loc 14 26 0
/*     26 */	adrp	x0, .LR.8
/*     26 */	mov	w1, w19
/*     26 */	mov	w2, w20
/*     26 */	add	x0, x0, :lo12:.LR.8
/*     26 */	bl	printf
	.loc 14 27 0
/*     27 */	adrp	x1, a
/*     27 */	adrp	x2, b
/*     27 */	add	x21, x1, :lo12:a
/*     27 */	adrp	x1, c
/*     27 */	add	x22, x2, :lo12:b
/*     27 */	adrp	x0, .LR.7
/*     27 */	add	x23, x1, :lo12:c
/*     27 */	mov	x1, x21
/*     27 */	add	x0, x0, :lo12:.LR.7
/*     27 */	mov	x2, x22
/*     27 */	mov	x3, x23
/*     27 */	bl	printf
	.loc 14 31 0
/*     31 */	adrp	x0, .LR.6
/*     31 */	add	x25, x0, :lo12:.LR.6
/*     31 */	bl	omp_get_num_threads
/*     31 */	mov	w24, w0
/*     31 */	bl	omp_get_thread_num
/*     31 */	mov	w2, w0
/*     31 */	mov	x0, x25
/*     31 */	mov	w1, w24
/*     31 */	bl	printf
	.loc 14 34 0
/*     34 */	cmp	w19, 0
/*     34 */	ble	.L106
/*     36 */	ldr	d0, .LC2
/*     37 */	fmov	d3, 3.000000e+00
/*     35 */	add	x1, x21, 256
/*     35 */	ldr	d1, .LC2
/*     36 */	add	x3, x22, 256
/*     37 */	add	x2, x23, 256
/*     38 */	fmov	d2, 1.000000e+00
/*     37 */	mov	w0, w19
.L104:					// :entr:term
	.loc 14 36 0
/*     36 */	prfm	18, [x3]	//  "b"
	.loc 14 37 0
/*     37 */	prfm	18, [x2]	//  "c"
/*     38 */	subs	w0, w0, 1
	.loc 14 36 0
/*     36 */	str	d0, [x3, -256]	//  "b"
/*     38 */	fadd	d0, d2, d0
/*     38 */	add	x3, x3, 8
	.loc 14 37 0
/*     37 */	str	d3, [x2, -256]	//  "c"
/*     38 */	fadd	d3, d2, d3
/*     38 */	add	x2, x2, 8
	.loc 14 35 0
/*     35 */	prfm	18, [x1]	//  "a"
/*     35 */	str	d1, [x1, -256]	//  "a"
/*     38 */	add	x1, x1, 8
/*     38 */	bne	.L104
.L106:
	.loc 12 16 0
/*     16 */	add	x24, sp, 96
/*     16 */	mov	w0, 1
/*     16 */	mov	x1, x24
/*     16 */	bl	clock_gettime
	.loc 12 17 0
/*     17 */	ldr	x1, [x24]	//  "ts"
/*     17 */	ldr	x0, [x24, 8]	//  "ts"
/*     17 */	ldr	d2, .LC3
/*     17 */	adrp	x25, time.9
/*     17 */	scvtf	d0, x1
/*     17 */	scvtf	d1, x0
/*     17 */	fmadd	d0, d1, d2, d0
/*     17 */	str	d0, [x25, :lo12:time.9]	//  "time"
	.loc 14 44 0
/*     44 */	cmp	w19, 0
/*     44 */	ble	.L111
/*     45 */	add	x1, x23, 256
/*     45 */	add	x3, x22, 256
/*     45 */	fmov	d2, 3.000000e+00
/*     45 */	add	x2, x21, 256
/*     45 */	mov	w0, w19
.L109:					// :entr:term
	.loc 14 45 0
/*     45 */	ldr	d1, [x1, -256]	//  "c"
/*     45 */	ldr	d0, [x3, -256]	//  "b"
/*      0 */	subs	w0, w0, 1
/*     45 */	prfm	2, [x1]	//  "c"
/*     45 */	prfm	18, [x2]	//  "a"
/*     45 */	add	x1, x1, 8
/*     45 */	prfm	2, [x3]	//  "b"
/*     45 */	add	x3, x3, 8
/*     45 */	fmadd	d0, d1, d2, d0
/*     45 */	str	d0, [x2, -256]	//  "a"
/*     45 */	add	x2, x2, 8
/*      0 */	bne	.L109
.L111:
	.loc 12 16 0
/*     16 */	mov	w0, 1
/*     16 */	mov	x1, x24
/*     16 */	bl	clock_gettime
	.loc 12 17 0
/*     17 */	ldr	x1, [x24]	//  "ts"
/*     17 */	ldr	x2, [x24, 8]	//  "ts"
	.loc 14 47 0
/*     47 */	ldr	d4, .LC3
/*     47 */	ldr	d3, [x25, :lo12:time.9]	//  "time"
	.loc 14 49 0
/*     49 */	adrp	x0, .LR.5
/*     49 */	ldr	d1, .LC4
/*     49 */	add	x0, x0, :lo12:.LR.5
	.loc 12 17 0
/*     17 */	scvtf	d2, x1
/*     17 */	scvtf	d0, x2
	.loc 14 47 0
/*     47 */	fmadd	d0, d0, d4, d2
/*     47 */	fsub	d2, d0, d3
	.loc 14 49 0
/*     49 */	fmul	d0, d2, d1
	.loc 14 47 0
/*     47 */	str	d2, [x25, :lo12:time.9]	//  "time"
/*     49 */	bl	printf
	.loc 14 50 0
/*     50 */	scvtf	d10, w19
/*     50 */	scvtf	d1, w20
/*     50 */	ldr	d9, [x25, :lo12:time.9]	//  "time"
/*     50 */	adrp	x0, .LR.4
/*     50 */	ldr	d0, .LC5
/*     50 */	fmov	d8, 1.000000e+00
/*     50 */	add	x0, x0, :lo12:.LR.4
/*     50 */	fmul	d0, d10, d0
/*     50 */	fmul	d1, d1, d9
/*     50 */	frecpe	d2, d1
/*     50 */	fmsub	d1, d1, d2, d8
/*     50 */	fmul	d0, d0, d2
/*     50 */	fmadd	d2, d1, d1, d1
/*     50 */	fmul	d3, d1, d1
/*     50 */	fmadd	d2, d2, d0, d0
/*     50 */	fmadd	d1, d3, d3, d1
/*     50 */	fmadd	d0, d1, d2, d0
/*     50 */	bl	printf
	.loc 14 51 0
/*     55 */	ldr	d0, .LC6
/*     51 */	cmp	w20, 64
/*     55 */	fmul	d10, d10, d0
/*     51 */	bge	.L113
	.loc 14 57 0
/*     57 */	adrp	x0, .LR.2
/*     57 */	frecpe	d1, d9
/*     57 */	add	x0, x0, :lo12:.LR.2
/*     57 */	fmsub	d0, d9, d1, d8
/*     57 */	fmul	d1, d10, d1
/*     57 */	fmadd	d2, d0, d0, d0
/*     57 */	fmul	d3, d0, d0
/*     57 */	fmadd	d2, d2, d1, d1
/*     57 */	fmadd	d0, d3, d3, d0
/*     57 */	fmadd	d0, d0, d2, d1
/*     58 */	b	.L114
.L113:
	.loc 14 53 0
/*     53 */	asr	w0, w20, 4
/*     53 */	add	w0, w20, w0, lsr #27
/*     53 */	asr	w20, w0, 5
	.loc 14 54 0
/*     54 */	adrp	x0, .LR.3
/*     54 */	add	x0, x0, :lo12:.LR.3
/*     54 */	sub	w1, w20, 1
/*     54 */	bl	printf
	.loc 14 55 0
/*     55 */	scvtf	d2, w20
/*     55 */	ldr	d1, [x25, :lo12:time.9]	//  "time"
/*     55 */	fmov	d0, 1.000000e+00
/*     55 */	adrp	x0, .LR.2
/*     55 */	add	x0, x0, :lo12:.LR.2
/*     55 */	fmul	d2, d2, d1
/*     55 */	frecpe	d1, d2
/*     55 */	fmsub	d0, d2, d1, d0
/*     55 */	fmul	d1, d10, d1
/*     55 */	fmadd	d2, d0, d0, d0
/*     55 */	fmul	d3, d0, d0
/*     55 */	fmadd	d2, d2, d1, d1
/*     55 */	fmadd	d0, d3, d3, d0
/*     55 */	fmadd	d0, d0, d2, d1
.L114:
	.loc 14 59 0
/*     55 */	bl	printf
/*     59 */	adrp	x0, .LR.1
/*     59 */	sxtw	x1, w19
/*     59 */	add	x0, x0, :lo12:.LR.1
/*     59 */	sub	x1, x1, 1
/*     59 */	ldr	d0, [x21, x1, lsl #3]	//  "a"
/*     59 */	bl	printf
	.loc 14 61 0
/*     61 */	mov	w0, 0
	.loc 14 62 0
/*    ??? */	ldp	x21, x22, [sp, 16]	//  (*)
	.cfi_restore 21
	.cfi_restore 22
/*    ??? */	ldr	d10, [sp, 80]	//  (*)
	.cfi_restore 74
/*    ??? */	ldp	x23, x24, [sp, 32]	//  (*)
	.cfi_restore 23
	.cfi_restore 24
/*    ??? */	ldp	x25, x30, [sp, 48]	//  (*)
	.cfi_restore 25
	.cfi_restore 30
/*    ??? */	ldp	d8, d9, [sp, 64]	//  (*)
	.cfi_restore 72
	.cfi_restore 73
/*    ??? */	ldp	x19, x20, [sp], 112	//  (*)
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
/*     62 */	ret	
..D2.pchi:
	.cfi_endproc
.LFE1:
	.size	main, .-main
	.align	3
.LC2:
	.word	0,0
	.align	3
.LC3:
	.word	0xe826d695,0x3e112e0b
	.align	3
.LC4:
	.word	0,0x408f4000
	.align	3
.LC5:
	.word	0xdc3a41e0,0x3e59c511
	.align	3
.LC6:
	.word	0xe826d695,0x3e612e0b
	.file 15 "/opt/ARM/aarch64-linux-gnu/sysroot-linaro-eglibc-gcc4.9-2014.11-aarch64-linux-gnu/usr/include/alloca.h"
	.file 16 "/opt/ARM/aarch64-linux-gnu/sysroot-linaro-eglibc-gcc4.9-2014.11-aarch64-linux-gnu/usr/include/bits/types.h"
	.file 17 "/opt/ARM/aarch64-linux-gnu/sysroot-linaro-eglibc-gcc4.9-2014.11-aarch64-linux-gnu/usr/include/_G_config.h"
	.file 18 "/opt/ARM/aarch64-linux-gnu/sysroot-linaro-eglibc-gcc4.9-2014.11-aarch64-linux-gnu/usr/include/sys/select.h"
	.file 19 "/opt/ARM/aarch64-linux-gnu/sysroot-linaro-eglibc-gcc4.9-2014.11-aarch64-linux-gnu/usr/include/bits/time.h"
	.file 20 "/opt/ARM/aarch64-linux-gnu/sysroot-linaro-eglibc-gcc4.9-2014.11-aarch64-linux-gnu/usr/include/bits/sigset.h"
	.file 21 "/opt/ARM/aarch64-linux-gnu/sysroot-linaro-eglibc-gcc4.9-2014.11-aarch64-linux-gnu/usr/include/sys/types.h"
	.file 22 "/opt/ARM/aarch64-linux-gnu/sysroot-linaro-eglibc-gcc4.9-2014.11-aarch64-linux-gnu/usr/include/bits/sched.h"
	.file 23 "/opt/ARM/aarch64-linux-gnu/sysroot-linaro-eglibc-gcc4.9-2014.11-aarch64-linux-gnu/usr/include/sched.h"
	.file 24 "/opt/ARM/aarch64-linux-gnu/sysroot-linaro-eglibc-gcc4.9-2014.11-aarch64-linux-gnu/usr/include/xlocale.h"
	.file 25 "/opt/FJTComp7/bin/../include/omp.h"
	.file 26 "/opt/ARM/aarch64-linux-gnu/sysroot-linaro-eglibc-gcc4.9-2014.11-aarch64-linux-gnu/usr/include/wchar.h"
	.file 27 "/opt/ARM/aarch64-linux-gnu/sysroot-linaro-eglibc-gcc4.9-2014.11-aarch64-linux-gnu/usr/include/bits/waitstatus.h"
	.file 28 "/opt/ARM/aarch64-linux-gnu/sysroot-linaro-eglibc-gcc4.9-2014.11-aarch64-linux-gnu/usr/include/bits/setjmp.h"
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
	.ascii	"triad-sftprf.c\0"	// DW_AT_name
	.4byte	.Ldebug_line	// DW_AT_stmt_list
	.8byte	..text.b	// DW_AT_low_pc
	.8byte	..text.e-..text.b	// DW_AT_high_pc
	.byte	0x1	// DW_AT_language
	.ascii	"/home/kodama/fjtcomp/prefetch\0"	// DW_AT_comp_dir
	.ascii	"FUJITSU LIMITED: Version 2.0.0 : 64-bit\0"	// DW_AT_producer
	.uleb128	0x2	// DW_TAG_subprogram (0x76)
	.ascii	"get_dtime\0"	// DW_AT_name
	.8byte	get_dtime	// DW_AT_low_pc
	.8byte	..D1.pchi-get_dtime	// DW_AT_high_pc
			// DW_AT_prototyped
	.byte	0xc	// DW_AT_decl_file
	.byte	0xe	// DW_AT_decl_line
			// DW_AT_external
	.uleb128	0x1	// DW_AT_frame_base
	.byte	0x9c	// DW_OP_call_frame_cfa
	.uleb128	0x3	// DW_TAG_subprogram (0x95)
	.ascii	"main\0"	// DW_AT_name
	.8byte	main	// DW_AT_low_pc
	.8byte	..D2.pchi-main	// DW_AT_high_pc
			// DW_AT_prototyped
	.byte	0xe	// DW_AT_decl_file
	.byte	0x10	// DW_AT_decl_line
			// DW_AT_external
	.uleb128	0x1	// DW_AT_frame_base
	.byte	0x9c	// DW_OP_call_frame_cfa
	.uleb128	0x4	// DW_TAG_FJ_loop (0xaf)
	.byte	0xe	// DW_AT_decl_file
	.byte	0x2c	// DW_AT_FJ_loop_start_line
	.byte	0x2d	// DW_AT_FJ_loop_end_line
	.byte	0x1	// DW_AT_FJ_loop_nest_level
	.byte	0x5	// DW_AT_FJ_loop_type
	.uleb128	0x4	// DW_TAG_FJ_loop (0xb5)
	.byte	0xe	// DW_AT_decl_file
	.byte	0x22	// DW_AT_FJ_loop_start_line
	.byte	0x26	// DW_AT_FJ_loop_end_line
	.byte	0x1	// DW_AT_FJ_loop_nest_level
	.byte	0x5	// DW_AT_FJ_loop_type
	.byte	0x0	// End of children (0x95)
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
	.byte	0x0	// DW_CHILDREN_no
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
	.byte	0x0
	.section	.debug_line
.Ldebug_line:
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
	.ascii "phymem\040BW\040=\040%lf\040[GB/s]\012\000"
	.type	.LR.2, %object
	.size	.LR.2,.-.LR.2
	.section	.rodata
	.align	3
.LR.3:
	.ascii "%d\040line\040skiped\012\000"
	.type	.LR.3, %object
	.size	.LR.3,.-.LR.3
	.section	.rodata
	.align	3
.LR.4:
	.ascii "BW\040=\040%lf\040[GB/s]\012\000"
	.type	.LR.4, %object
	.size	.LR.4,.-.LR.4
	.section	.rodata
	.align	3
.LR.5:
	.ascii "time\040=\040%lf\040[msec]\012\000"
	.type	.LR.5, %object
	.size	.LR.5,.-.LR.5
	.section	.rodata
	.align	3
.LR.6:
	.ascii "%d\040of\040%d\012\000"
	.type	.LR.6, %object
	.size	.LR.6,.-.LR.6
	.section	.rodata
	.align	3
.LR.7:
	.ascii "a:%08x,\040b:%08x,\040c:%08x\012\000"
	.type	.LR.7, %object
	.size	.LR.7,.-.LR.7
	.section	.rodata
	.align	3
.LR.8:
	.ascii "n:%d,\040stride:%d\012\000"
	.type	.LR.8, %object
	.size	.LR.8,.-.LR.8
	.local	time.9
	.comm	time.9,8,8
	.comm	c,2514688,256
	.comm	b,2514688,256
	.comm	a,2514688,256
	.section	.note.GNU-stack,"",%progbits
