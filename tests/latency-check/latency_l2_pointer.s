	.ident	"$Compiler: FUJITSU CONFIDENTIAL $"
..text.b:
	.ident	"$Options: Fujitsu C/C++ Compiler Version 1.2.0 P-id: Alpha-20180629 (Jun  8 2018 16:52:37) --preinclude /opt/FJTComp-latest/bin/../lib/c99.pre --gcc --c99 -D__FUJITSU -Dunix -D__aarch64__ -D__unix -D__fcc_version__=0x700 -D__fcc_version=700 -D__USER_LABEL_PREFIX__= -D__OPTIMIZE__ -D__ARM_ARCH=8 -D__ARM_FEATURE_SVE -D__FP_FAST_FMA -D__ELF__ -D__unix__ -D__linux__ -D__linux -Asystem(unix) -Dlinux -D__LIBC_6B -D__LP64__ -D_LP64 --K=noocl --zmode=64 --sys_include=/opt/FJTComp-latest/bin/../include --sys_include=/opt/ARM/aarch64-linux-gnu/sysroot-linaro-eglibc-gcc4.9-2014.11-aarch64-linux-gnu/usr/include --K=opt latency_l2_pointer.c -- -ncmdname=fccpx -nspopt=\"-Kfast -Nlst=t -S\" -zobe=no-static-clump -zcfc=target_sve -O3 -x- -Komitfp,mfunc,rdconv,eval,fp_relaxed,fz,fast_matmul,fp_contract,ilfunc,prefetch_conditional,simd_packed_promotion -Nlst=t -zsta=m -zsrc=latency_l2_pointer.c latency_l2_pointer.s $"
	.file	"latency_l2_pointer.c"
	.ident	"$Compiler: Fujitsu C/C++ Compiler Version 1.2.0 P-id: Alpha-20180629 (Jun  8 2018 16:52:37) latency_l2_pointer.c get_dtime $"
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
	.file 10 "latency_l2_pointer.c"
	.loc 10 16 0
.LFB0:
	.cfi_startproc
/*    ??? */	stp	x19, x30, [sp, -32]!	//  (*)
	.cfi_def_cfa_offset 32
	.cfi_offset 19, -32
	.cfi_offset 30, -24
	.loc 10 18 0
/*     18 */	add	x19, sp, 16
/*     18 */	mov	w0, 1
/*     18 */	mov	x1, x19
/*     18 */	bl	clock_gettime
	.loc 10 19 0
/*     19 */	ldr	x0, [x19]	//  "ts"
/*     19 */	ldr	x1, [x19, 8]	//  "ts"
/*     19 */	adrp	x2, .LCP1
/*     19 */	ldr	d2, [x2, :lo12:.LCP1]	//  1.000000e-09
/*     19 */	scvtf	d1, x0
/*     19 */	scvtf	d0, x1
/*     19 */	fmadd	d0, d0, d2, d1
	.loc 10 20 0
/*    ??? */	ldp	x19, x30, [sp], 32	//  (*)
	.cfi_restore 19
	.cfi_restore 30
	.cfi_def_cfa_offset 0
/*     20 */	ret	
..D1.pchi:
	.cfi_endproc
.LFE0:
	.size	get_dtime, .-get_dtime
	.ident	"$Compiler: Fujitsu C/C++ Compiler Version 1.2.0 P-id: Alpha-20180629 (Jun  8 2018 16:52:37) latency_l2_pointer.c main $"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
	.loc 10 22 0
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
	.loc 10 29 0
/*     29 */	cmp	w0, 2
/*     29 */	bne	.L96
	.loc 10 30 0
/*     30 */	ldr	x0, [x1, 8]	//  (*)
	.loc 5 280 0
/*    280 */	mov	w2, 10
/*    280 */	mov	x1, 0
/*    280 */	bl	strtol
/*    280 */	mov	w19, w0
	.loc 10 31 0
/*     30 */	b	.L97
.L96:
	.loc 10 25 0
/*     25 */	mov	w19, 5000
.L97:					// :init:bt
	.loc 10 32 0
/*     32 */	adrp	x0, .LR.4
/*     32 */	mov	w3, 1024
/*     32 */	mov	x2, 229376
/*     32 */	add	x0, x0, :lo12:.LR.4
/*     32 */	mov	w1, w19
/*     32 */	bl	printf
	.loc 10 33 0
/*     33 */	adrp	x0, .LR.3
/*     33 */	mov	x2, 224
/*     33 */	mov	x1, 32
/*     33 */	add	x0, x0, :lo12:.LR.3
/*     33 */	bl	printf
	.loc 10 35 0
/*     36 */	mov	x1, 0
/*     36 */	mov	x0, 0
/*     35 */	adrp	x2, array
/*     35 */	add	x22, x2, :lo12:array
/*     36 */	add	x2, x22, 1792
	.p2align 5
.L98:					// :entr:term
	.loc 10 36 0
/*     36 */	str	x2, [x22, x1, lsl #3]	//  "array"
	.loc 10 37 0
/*     37 */	add	x0, x0, 224
/*     37 */	add	x2, x2, 1792
/*     37 */	add	x1, x1, 224
/*     37 */	cmp	x0, 229376
/*     37 */	bcc	.L98
	.loc 10 40 0
/*     40 */	mov	x0, 1769472
	.loc 10 18 0
/*     18 */	add	x20, sp, 48
	.loc 10 40 0
/*     40 */	movk	x0, 63744, lsl #0
	.loc 10 18 0
/*     18 */	mov	x1, x20
	.loc 10 40 0
/*     40 */	str	x22, [x22, x0]	//  "array"
	.loc 10 18 0
/*     18 */	mov	w0, 1
/*     18 */	bl	clock_gettime
	.loc 10 19 0
/*     19 */	ldr	x0, [x20]	//  "ts"
/*     19 */	ldr	x1, [x20, 8]	//  "ts"
/*     19 */	adrp	x2, .LCP1
/*     19 */	adrp	x3, time.5
/*     19 */	ldr	d2, [x2, :lo12:.LCP1]	//  1.000000e-09
/*     19 */	add	x21, x3, :lo12:time.5
/*     19 */	scvtf	d1, x0
/*     19 */	scvtf	d0, x1
/*     19 */	fmadd	d0, d0, d2, d1
/*     19 */	str	d0, [x21]	//  "time"
	.loc 10 44 0
/*     44 */	cmp	w19, 0
/*     44 */	ble	.L107
/*     48 */	adrp	x0, ans
/*     48 */	add	x1, x0, :lo12:ans
/*     44 */	mov	w0, w19
.L102:					// :entr
	.loc 10 45 0
/*     45 */	ldr	x3, [x22]	//  "array"
	.loc 10 46 0
/*     46 */	mov	w2, 1024
	.p2align 5
.L104:					// :entr:term
	.loc 10 47 0
/*     47 */	ldr	x3, [x3]	//  (*)
/*     48 */	subs	w2, w2, 1
/*     48 */	bne	.L104
/*     49 */	str	x3, [x1]	//  "ans"
/*     50 */	subs	w0, w0, 1
/*     50 */	bne	.L102
.L107:
	.loc 10 18 0
/*     18 */	mov	w0, 1
/*     18 */	mov	x1, x20
/*     18 */	bl	clock_gettime
	.loc 10 19 0
/*     19 */	ldr	x2, [x20]	//  "ts"
/*     19 */	ldr	x3, [x20, 8]	//  "ts"
	.loc 10 52 0
/*     52 */	adrp	x0, .LCP1
/*     52 */	ldr	d2, [x21]	//  "time"
/*     52 */	ldr	d3, [x0, :lo12:.LCP1]	//  1.000000e-09
	.loc 10 54 0
/*     54 */	adrp	x1, ans
/*     54 */	adrp	x0, .LR.2
/*     54 */	ldr	x1, [x1, :lo12:ans]	//  "ans"
/*     54 */	add	x0, x0, :lo12:.LR.2
	.loc 10 19 0
/*     19 */	scvtf	d1, x2
/*     19 */	scvtf	d0, x3
	.loc 10 52 0
/*     52 */	fmadd	d0, d0, d3, d1
/*     52 */	fsub	d8, d0, d2
/*     52 */	str	d8, [x21]	//  "time"
/*     54 */	bl	printf
	.loc 10 55 0
/*     55 */	lsl	w1, w19, 10
/*     55 */	adrp	x0, .LCP2
/*     55 */	scvtf	d1, w19
/*     55 */	fmov	d5, 1.000000e+00
/*     55 */	scvtf	d3, w1
/*     55 */	adrp	x1, .LCP3
/*     55 */	ldr	d0, [x0, :lo12:.LCP2]	//  1.800000e+09
/*     55 */	adrp	x0, .LR.1
/*     55 */	ldr	d6, [x1, :lo12:.LCP3]	//  9.765625e+05
/*     55 */	add	x0, x0, :lo12:.LR.1
/*     55 */	fmul	d4, d8, d0
/*     55 */	frecpe	d2, d1
/*     55 */	frecpe	d0, d3
/*     55 */	fmsub	d1, d1, d2, d5
/*     55 */	fmul	d2, d6, d2
/*     55 */	fmsub	d3, d3, d0, d5
/*     55 */	fmul	d0, d4, d0
/*     55 */	fmadd	d5, d1, d1, d1
/*     55 */	fmul	d7, d1, d1
/*     55 */	fmadd	d6, d3, d3, d3
/*     55 */	fmul	d4, d3, d3
/*     55 */	fmadd	d5, d5, d2, d2
/*     55 */	fmadd	d7, d7, d7, d1
/*     55 */	fmadd	d1, d6, d0, d0
/*     55 */	fmadd	d3, d4, d4, d3
/*     55 */	fmadd	d2, d7, d5, d2
/*     55 */	fmadd	d0, d3, d1, d0
/*     55 */	fmul	d1, d8, d2
/*     55 */	bl	printf
	.loc 10 57 0
/*     57 */	mov	w0, 0
	.loc 10 58 0
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
/*     58 */	ret	
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
	.word	0,0x412dcd65
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
	.ascii	"latency_l2_pointer.c\0"	// DW_AT_name
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
	.byte	0x10	// DW_AT_decl_line
			// DW_AT_external
	.uleb128	0x1	// DW_AT_frame_base
	.byte	0x9c	// DW_OP_call_frame_cfa
	.uleb128	0x3	// DW_TAG_subprogram (0xa2)
	.ascii	"main\0"	// DW_AT_name
	.8byte	main	// DW_AT_low_pc
	.8byte	..D2.pchi-main	// DW_AT_high_pc
			// DW_AT_prototyped
	.byte	0xa	// DW_AT_decl_file
	.byte	0x16	// DW_AT_decl_line
			// DW_AT_external
	.uleb128	0x1	// DW_AT_frame_base
	.byte	0x9c	// DW_OP_call_frame_cfa
	.uleb128	0x4	// DW_TAG_FJ_loop (0xbc)
	.byte	0xa	// DW_AT_decl_file
	.byte	0x2e	// DW_AT_FJ_loop_start_line
	.byte	0x30	// DW_AT_FJ_loop_end_line
	.byte	0x2	// DW_AT_FJ_loop_nest_level
	.byte	0x5	// DW_AT_FJ_loop_type
	.uleb128	0x4	// DW_TAG_FJ_loop (0xc2)
	.byte	0xa	// DW_AT_decl_file
	.byte	0x2c	// DW_AT_FJ_loop_start_line
	.byte	0x32	// DW_AT_FJ_loop_end_line
	.byte	0x1	// DW_AT_FJ_loop_nest_level
	.byte	0x5	// DW_AT_FJ_loop_type
	.uleb128	0x4	// DW_TAG_FJ_loop (0xc8)
	.byte	0xa	// DW_AT_decl_file
	.byte	0x23	// DW_AT_FJ_loop_start_line
	.byte	0x25	// DW_AT_FJ_loop_end_line
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
	.ascii "GAP\040:\040%ld\040GAP7\040:\040%ld\012\000"
	.type	.LR.3, %object
	.size	.LR.3,.-.LR.3
	.section	.rodata
	.align	3
.LR.4:
	.ascii "rep\040:\040%d\040SIZE\040:\040%lu\040NL\040:\040%"
	.ascii	"d\012\000"
	.type	.LR.4, %object
	.size	.LR.4,.-.LR.4
	.local	time.5
	.comm	time.5,8,8
	.comm	array,1835008,16384
	.section	.note.GNU-stack,"",%progbits
