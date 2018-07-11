	.ident	"$Compiler: FUJITSU CONFIDENTIAL $"
..text.b:
	.ident	"$Options: Fujitsu C/C++ Compiler Version 1.2.0 P-id: Alpha-20180629 (Jun  8 2018 16:52:37) --preinclude /opt/FJTComp-latest/bin/../lib/c99.pre --gcc --c99 -D__FUJITSU -Dunix -D__aarch64__ -D__unix -D__fcc_version__=0x700 -D__fcc_version=700 -D__USER_LABEL_PREFIX__= -D__OPTIMIZE__ -D__ARM_ARCH=8 -D__ARM_FEATURE_SVE -D__FP_FAST_FMA -D__ELF__ -D__unix__ -D__linux__ -D__linux -Asystem(unix) -Dlinux -D__LIBC_6B -D__LP64__ -D_LP64 --K=noocl --zmode=64 --sys_include=/opt/FJTComp-latest/bin/../include --sys_include=/opt/ARM/aarch64-linux-gnu/sysroot-linaro-eglibc-gcc4.9-2014.11-aarch64-linux-gnu/usr/include --K=opt latency_l1_pointer.c -- -ncmdname=fccpx -nspopt=\"-Kfast -Nlst=t -S\" -zobe=no-static-clump -zcfc=target_sve -O3 -x- -Komitfp,mfunc,rdconv,eval,fp_relaxed,fz,fast_matmul,fp_contract,ilfunc,prefetch_conditional,simd_packed_promotion -Nlst=t -zsta=m -zsrc=latency_l1_pointer.c latency_l1_pointer.s $"
	.file	"latency_l1_pointer.c"
	.ident	"$Compiler: Fujitsu C/C++ Compiler Version 1.2.0 P-id: Alpha-20180629 (Jun  8 2018 16:52:37) latency_l1_pointer.c get_dtime $"
	.text
	.align	2
	.global	get_dtime
	.type	get_dtime, %function
get_dtime:
	.file 1 "/opt/ARM/aarch64-linux-gnu/sysroot-linaro-eglibc-gcc4.9-2014.11-aarch64-linux-gnu/usr/include/bits/stdio.h"
	.file 2 "/opt/FJTComp-latest/bin/../include/stdarg.h"
	.file 3 "/opt/ARM/aarch64-linux-gnu/sysroot-linaro-eglibc-gcc4.9-2014.11-aarch64-linux-gnu/usr/include/stdio.h"
	.file 4 "/opt/ARM/aarch64-linux-gnu/sysroot-linaro-eglibc-gcc4.9-2014.11-aarch64-linux-gnu/usr/include/libio.h"
	.file 5 "/opt/ARM/aarch64-linux-gnu/sysroot-linaro-eglibc-gcc4.9-2014.11-aarch64-linux-gnu/usr/include/stdlib.h"
	.file 6 "/opt/ARM/aarch64-linux-gnu/sysroot-linaro-eglibc-gcc4.9-2014.11-aarch64-linux-gnu/usr/include/sys/sysmacros.h"
	.file 7 "/opt/ARM/aarch64-linux-gnu/sysroot-linaro-eglibc-gcc4.9-2014.11-aarch64-linux-gnu/usr/include/bits/stdlib-bsearch.h"
	.file 8 "/opt/FJTComp-latest/bin/../include/stddef.h"
	.file 9 "/opt/ARM/aarch64-linux-gnu/sysroot-linaro-eglibc-gcc4.9-2014.11-aarch64-linux-gnu/usr/include/bits/stdlib-float.h"
	.file 10 "latency_l1_pointer.c"
	.loc 10 11 0
.LFB0:
	.cfi_startproc
/*    ??? */	stp	x19, x30, [sp, -32]!	//  (*)
	.cfi_def_cfa_offset 32
	.cfi_offset 19, -32
	.cfi_offset 30, -24
	.loc 10 13 0
/*     13 */	add	x19, sp, 16
/*     13 */	mov	w0, 1
/*     13 */	mov	x1, x19
/*     13 */	bl	clock_gettime
	.loc 10 14 0
/*     14 */	ldr	x0, [x19]	//  "ts"
/*     14 */	ldr	x1, [x19, 8]	//  "ts"
/*     14 */	adrp	x2, .LCP1
/*     14 */	ldr	d2, [x2, :lo12:.LCP1]	//  1.000000e-09
/*     14 */	scvtf	d1, x0
/*     14 */	scvtf	d0, x1
/*     14 */	fmadd	d0, d0, d2, d1
	.loc 10 15 0
/*    ??? */	ldp	x19, x30, [sp], 32	//  (*)
	.cfi_restore 19
	.cfi_restore 30
	.cfi_def_cfa_offset 0
/*     15 */	ret	
..D1.pchi:
	.cfi_endproc
.LFE0:
	.size	get_dtime, .-get_dtime
	.ident	"$Compiler: Fujitsu C/C++ Compiler Version 1.2.0 P-id: Alpha-20180629 (Jun  8 2018 16:52:37) latency_l1_pointer.c main $"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
	.loc 10 20 0
.LFB1:
	.cfi_startproc
/*    ??? */	stp	x19, x20, [sp, -64]!	//  (*)
	.cfi_def_cfa_offset 64
	.cfi_offset 19, -64
	.cfi_offset 20, -56
/*    ??? */	stp	x21, x22, [sp, 16]	//  (*)
	.cfi_offset 21, -48
	.cfi_offset 22, -40
/*    ??? */	str	x30, [sp, 32]	//  (*)
	.cfi_offset 30, -32
/*    ??? */	str	d8, [sp, 40]	//  (*)
	.cfi_offset 72, -24
	.loc 10 27 0
/*     27 */	cmp	w0, 2
/*     27 */	bne	.L96
	.loc 10 28 0
/*     28 */	ldr	x0, [x1, 8]	//  (*)
	.loc 5 280 0
/*    280 */	mov	w2, 10
/*    280 */	mov	x1, 0
/*    280 */	bl	strtol
/*    280 */	mov	w19, w0
	.loc 10 29 0
/*     28 */	b	.L97
.L96:
	.loc 10 23 0
/*     23 */	mov	w19, 1000
.L97:					// :init
	.loc 10 30 0
/*     30 */	adrp	x0, .LR.3
/*     30 */	mov	w20, 4096
/*     30 */	mov	w1, w19
/*     30 */	add	x0, x0, :lo12:.LR.3
/*     30 */	mov	w2, w20
/*     30 */	bl	printf
	.loc 10 32 0
/*     33 */	mov	x2, 0
/*     33 */	mov	x0, 1
/*     32 */	adrp	x1, array
/*     32 */	add	x21, x1, :lo12:array
/*     33 */	add	x1, x21, x0, lsl #3
/*     34 */	add	x0, x0, 1
	.p2align 5
.L98:					// :entr:term:swpl
/*     33 */	str	x1, [x21, x2, lsl #3]	//  "array"
/*     33 */	mov	x1, x0
/*     33 */	add	x4, x21, x1, lsl #3
/*     34 */	add	x1, x0, 1
/*     34 */	add	x3, x2, 1
/*     33 */	str	x4, [x21, x3, lsl #3]	//  "array"
/*     33 */	add	x4, x21, x1, lsl #3
/*     34 */	add	x1, x0, 2
/*     34 */	add	x3, x2, 2
/*     33 */	str	x4, [x21, x3, lsl #3]	//  "array"
/*     33 */	add	x1, x21, x1, lsl #3
/*     34 */	add	x0, x0, 3
/*     34 */	add	x2, x2, 3
/*     34 */	sub	w20, w20, 3
/*     34 */	cmp	w20, 4
/*     34 */	bge	.L98
/*     33 */	str	x1, [x21, x2, lsl #3]	//  "array"
/*     35 */	mov	x0, 32768
/*     35 */	str	x21, [x21, x0]	//  "array"
	.loc 10 13 0
/*     13 */	add	x20, sp, 48
/*     13 */	mov	w0, 1
/*     13 */	mov	x1, x20
/*     13 */	bl	clock_gettime
	.loc 10 14 0
/*     14 */	ldr	x0, [x20]	//  "ts"
/*     14 */	ldr	x1, [x20, 8]	//  "ts"
/*     14 */	adrp	x2, .LCP1
/*     14 */	adrp	x3, time.4
/*     14 */	ldr	d2, [x2, :lo12:.LCP1]	//  1.000000e-09
/*     14 */	add	x22, x3, :lo12:time.4
/*     14 */	scvtf	d1, x0
/*     14 */	scvtf	d0, x1
/*     14 */	fmadd	d0, d0, d2, d1
/*     14 */	str	d0, [x22]	//  "time"
	.loc 10 39 0
/*     39 */	cmp	w19, 0
/*     39 */	ble	.L107
/*     43 */	adrp	x0, ans
/*     43 */	add	x3, x0, :lo12:ans
/*     39 */	mov	w0, w19
.L102:					// :entr
	.loc 10 40 0
/*     40 */	ldr	x1, [x21]	//  "array"
	.loc 10 41 0
/*     41 */	mov	w2, 4096
	.p2align 5
.L104:					// :entr:term
	.loc 10 42 0
/*     42 */	ldr	x1, [x1]	//  (*)
/*     43 */	subs	w2, w2, 1
/*     43 */	bne	.L104
/*     44 */	str	x1, [x3]	//  "ans"
/*     45 */	subs	w0, w0, 1
/*     45 */	bne	.L102
.L107:
	.loc 10 13 0
/*     13 */	mov	w0, 1
/*     13 */	mov	x1, x20
/*     13 */	bl	clock_gettime
	.loc 10 14 0
/*     14 */	ldr	x2, [x20]	//  "ts"
/*     14 */	ldr	x3, [x20, 8]	//  "ts"
	.loc 10 47 0
/*     47 */	adrp	x0, .LCP1
/*     47 */	ldr	d3, [x22]	//  "time"
/*     47 */	ldr	d2, [x0, :lo12:.LCP1]	//  1.000000e-09
	.loc 10 49 0
/*     49 */	adrp	x1, ans
/*     49 */	adrp	x0, .LR.2
/*     49 */	ldr	x1, [x1, :lo12:ans]	//  "ans"
/*     49 */	add	x0, x0, :lo12:.LR.2
	.loc 10 14 0
/*     14 */	scvtf	d0, x2
/*     14 */	scvtf	d1, x3
	.loc 10 47 0
/*     47 */	fmadd	d0, d1, d2, d0
/*     47 */	fsub	d8, d0, d3
/*     47 */	str	d8, [x22]	//  "time"
/*     49 */	bl	printf
	.loc 10 50 0
/*     50 */	lsl	w0, w19, 12
/*     50 */	adrp	x1, .LCP2
/*     50 */	scvtf	d4, w19
/*     50 */	scvtf	d6, w0
/*     50 */	adrp	x0, .LCP3
/*     50 */	fmov	d5, 1.000000e+00
/*     50 */	ldr	d2, [x0, :lo12:.LCP3]	//  2.441406e+05
/*     50 */	ldr	d0, [x1, :lo12:.LCP2]	//  1.800000e+09
/*     50 */	adrp	x1, .LR.1
/*     50 */	add	x0, x1, :lo12:.LR.1
/*     50 */	frecpe	d3, d4
/*     50 */	fmul	d0, d8, d0
/*     50 */	frecpe	d1, d6
/*     50 */	fmsub	d4, d4, d3, d5
/*     50 */	fmul	d3, d2, d3
/*     50 */	fmsub	d2, d6, d1, d5
/*     50 */	fmul	d5, d0, d1
/*     50 */	fmadd	d6, d4, d4, d4
/*     50 */	fmul	d7, d4, d4
/*     50 */	fmadd	d1, d2, d2, d2
/*     50 */	fmul	d0, d2, d2
/*     50 */	fmadd	d6, d6, d3, d3
/*     50 */	fmadd	d4, d7, d7, d4
/*     50 */	fmadd	d1, d1, d5, d5
/*     50 */	fmadd	d0, d0, d0, d2
/*     50 */	fmadd	d2, d4, d6, d3
/*     50 */	fmadd	d0, d0, d1, d5
/*     50 */	fmul	d1, d8, d2
/*     50 */	bl	printf
	.loc 10 52 0
/*     52 */	mov	w0, 0
	.loc 10 53 0
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
/*     53 */	ret	
..D2.pchi:
	.cfi_endproc
.LFE1:
	.size	main, .-main
	.section	.rodata.cst8,"aM",@progbits,8
	.align	3
.LCP1:
	.word	0xe826d695,0x3e112e0b
	.align	3
.LCP2:
	.word	0x80000000,0x41dad274
	.align	3
.LCP3:
	.word	0,0x410dcd65
	.file 11 "/opt/ARM/aarch64-linux-gnu/sysroot-linaro-eglibc-gcc4.9-2014.11-aarch64-linux-gnu/usr/include/time.h"
	.file 12 "/opt/ARM/aarch64-linux-gnu/sysroot-linaro-eglibc-gcc4.9-2014.11-aarch64-linux-gnu/usr/include/stdint.h"
	.file 13 "/opt/ARM/aarch64-linux-gnu/sysroot-linaro-eglibc-gcc4.9-2014.11-aarch64-linux-gnu/usr/include/alloca.h"
	.file 14 "/opt/ARM/aarch64-linux-gnu/sysroot-linaro-eglibc-gcc4.9-2014.11-aarch64-linux-gnu/usr/include/bits/types.h"
	.file 15 "/opt/ARM/aarch64-linux-gnu/sysroot-linaro-eglibc-gcc4.9-2014.11-aarch64-linux-gnu/usr/include/_G_config.h"
	.file 16 "/opt/ARM/aarch64-linux-gnu/sysroot-linaro-eglibc-gcc4.9-2014.11-aarch64-linux-gnu/usr/include/sys/select.h"
	.file 17 "/opt/ARM/aarch64-linux-gnu/sysroot-linaro-eglibc-gcc4.9-2014.11-aarch64-linux-gnu/usr/include/bits/time.h"
	.file 18 "/opt/ARM/aarch64-linux-gnu/sysroot-linaro-eglibc-gcc4.9-2014.11-aarch64-linux-gnu/usr/include/bits/sigset.h"
	.file 19 "/opt/ARM/aarch64-linux-gnu/sysroot-linaro-eglibc-gcc4.9-2014.11-aarch64-linux-gnu/usr/include/xlocale.h"
	.file 20 "/opt/ARM/aarch64-linux-gnu/sysroot-linaro-eglibc-gcc4.9-2014.11-aarch64-linux-gnu/usr/include/sys/types.h"
	.file 21 "/opt/ARM/aarch64-linux-gnu/sysroot-linaro-eglibc-gcc4.9-2014.11-aarch64-linux-gnu/usr/include/wchar.h"
	.file 22 "/opt/ARM/aarch64-linux-gnu/sysroot-linaro-eglibc-gcc4.9-2014.11-aarch64-linux-gnu/usr/include/bits/waitstatus.h"
	.file 23 "/opt/ARM/aarch64-linux-gnu/sysroot-linaro-eglibc-gcc4.9-2014.11-aarch64-linux-gnu/usr/include/bits/pthreadtypes.h"
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
	.ascii	"latency_l1_pointer.c\0"	// DW_AT_name
	.4byte	.Ldebug_line	// DW_AT_stmt_list
	.8byte	..text.b	// DW_AT_low_pc
	.8byte	..text.e-..text.b	// DW_AT_high_pc
	.byte	0x1	// DW_AT_language
	.ascii	"/home/odajima/workspace/gem5-latency\0"	// DW_AT_comp_dir
	.ascii	"FUJITSU LIMITED: Version 2.0.0 : 64-bit\0"	// DW_AT_producer
	.uleb128	0x2	// DW_TAG_subprogram (0x83)
	.ascii	"get_dtime\0"	// DW_AT_name
	.8byte	get_dtime	// DW_AT_low_pc
	.8byte	..D1.pchi-get_dtime	// DW_AT_high_pc
			// DW_AT_prototyped
	.byte	0xa	// DW_AT_decl_file
	.byte	0xb	// DW_AT_decl_line
			// DW_AT_external
	.uleb128	0x1	// DW_AT_frame_base
	.byte	0x9c	// DW_OP_call_frame_cfa
	.uleb128	0x3	// DW_TAG_subprogram (0xa2)
	.ascii	"main\0"	// DW_AT_name
	.8byte	main	// DW_AT_low_pc
	.8byte	..D2.pchi-main	// DW_AT_high_pc
			// DW_AT_prototyped
	.byte	0xa	// DW_AT_decl_file
	.byte	0x14	// DW_AT_decl_line
			// DW_AT_external
	.uleb128	0x1	// DW_AT_frame_base
	.byte	0x9c	// DW_OP_call_frame_cfa
	.uleb128	0x4	// DW_TAG_FJ_loop (0xbc)
	.byte	0xa	// DW_AT_decl_file
	.byte	0x29	// DW_AT_FJ_loop_start_line
	.byte	0x2b	// DW_AT_FJ_loop_end_line
	.byte	0x2	// DW_AT_FJ_loop_nest_level
	.byte	0x5	// DW_AT_FJ_loop_type
	.uleb128	0x4	// DW_TAG_FJ_loop (0xc2)
	.byte	0xa	// DW_AT_decl_file
	.byte	0x27	// DW_AT_FJ_loop_start_line
	.byte	0x2d	// DW_AT_FJ_loop_end_line
	.byte	0x1	// DW_AT_FJ_loop_nest_level
	.byte	0x5	// DW_AT_FJ_loop_type
	.uleb128	0x4	// DW_TAG_FJ_loop (0xc8)
	.byte	0xa	// DW_AT_decl_file
	.byte	0x20	// DW_AT_FJ_loop_start_line
	.byte	0x22	// DW_AT_FJ_loop_end_line
	.byte	0x1	// DW_AT_FJ_loop_nest_level
	.byte	0x5	// DW_AT_FJ_loop_type
	.byte	0x0	// End of children (0xa2)
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
	.bss
	.global	ans
	.align	3
ans:
	.type	ans, %object
	.size	ans, 8
	.zero	8
	.section	.rodata
	.align	3
.LR.1:
	.ascii "latency\040=\040%lf\040[cycle],\040%lf\040[nsec]\012"
	.ascii	"\000"
	.type	.LR.1, %object
	.size	.LR.1,.-.LR.1
	.section	.rodata
	.align	3
.LR.2:
	.ascii "res\040:\040%p\012\000"
	.type	.LR.2, %object
	.size	.LR.2,.-.LR.2
	.section	.rodata
	.align	3
.LR.3:
	.ascii "rep\040:\040%d\040SIZE\040:\040%d\012\000"
	.type	.LR.3, %object
	.size	.LR.3,.-.LR.3
	.local	time.4
	.comm	time.4,8,8
	.comm	array,32776,16384
	.section	.note.GNU-stack,"",%progbits
