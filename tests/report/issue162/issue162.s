	.ident	"$Compiler: FUJITSU CONFIDENTIAL $"
	.ident	"$Options: Fujitsu Fortran Compiler Version 1.2.0 P-id: Alpha-20181031 (Oct 25 2018 10:56:35) -X9 -Free -zcfc=target_sve -O3 -Komitfp,mfunc,eval,fp_relaxed,fz,fp_contract,ilfunc,simd_packed_promotion,nounroll,nowp -Nlst=t -Koptmsg=2 issue162.f90 issue162.s /tmp/asm6Jfh1E.fl $"
	.pushsection	.text
..text.b:
	.popsection
	.file	"issue162.f90"
	.ident	"$Compiler: Fujitsu Fortran Compiler Version 1.2.0 P-id: Alpha-20181031 (Oct 25 2018 10:56:35) issue162.f90 MAIN__ $"
	.text
	.align	2
	.global	MAIN__
	.type	MAIN__, %function
MAIN__:
.LFB0:
	.cfi_startproc
	.file 1 "issue162.f90"
	.loc 1 1 0
..LDL1:
/*    ??? */	str	x30, [sp, -32]!	//  (*)
	.cfi_def_cfa_offset 32
	.cfi_offset 30, -32
/*      1 */	mov	x0, 7340032
/*      1 */	mov	x3, 0
/*      1 */	movk	x0, 19, lsl #0
/*      1 */	mov	x1, x3
/*      1 */	mov	x2, x3
/*      1 */	bl	__jwe_xcop
	.loc 1 9 0
..LDL2:
/*      9 */	ptrue	p0.d, VL3
	.loc 1 10 0
..LDL3:
/*     10 */	index	z2.d, 1, 1
	.loc 1 11 0
..LDL4:
/*     11 */	mov	w2, 0
	.loc 1 16 0
..LDL5:
/*     16 */	adrp	x0, .LS.3
	.loc 1 14 0
..LDL6:
/*     14 */	fdup	z0.d, 1.000000e+00
	.loc 1 11 0
..LDL7:
/*     11 */	eor	v5.8b, v5.8b, v5.8b
	.loc 1 16 0
..LDL8:
/*     16 */	add	x1, sp, 28
/*     16 */	add	x0, x0, :lo12:.LS.3
	.loc 1 14 0
..LDL9:
/*     14 */	fmov	z1.d, 0.000000e+00
	.loc 1 16 0
..LDL10:
/*     16 */	sub	x3, x1, 12
	.loc 1 14 0
..LDL11:
/*     14 */	fdup	z3.d, 1.000000e+01
	.loc 1 11 0
..LDL12:
/*     11 */	dup	z4.s, 0
	.loc 1 16 0
..LDL13:
/*     16 */	str	x1, [x0, 80]	//  ___1
	.loc 1 14 0
..LDL14:
/*     14 */	sel	z0.d, p0, z0.d, z1.d
	.loc 1 16 0
..LDL15:
/*     16 */	str	x3, [x0, 104]	//  ___1
	.loc 1 14 0
..LDL16:
/*     14 */	fcmlt	p0.d, p0/z, z0.d, z3.d
	.loc 1 11 0
..LDL17:
/*     11 */	sel	z2.s, p0, z2.s, z4.s
/*     11 */	sel	z0.d, p0, z0.d, z1.d
/*     11 */	clastb	w2, p0, w2, z2.s
/*     11 */	clastb	d5, p0, d5, z0.d
	.loc 1 16 0
..LDL18:
/*     16 */	str	d5, [x1, -12]	//  ___6
/*     16 */	str	w2, [x1]	//  ___5
/*     16 */	bl	__jwe_ilst
	.loc 1 17 0
..LDL19:
/*     17 */	adrp	x0, .LS.2
/*     17 */	add	x0, x0, :lo12:.LS.2
/*     17 */	bl	__jwe_xstp
..D1.pchi:
	.cfi_endproc
.LFE0:
	.size	MAIN__, .-MAIN__
	.global	__jwe_xnrtrap
	.data
	.align	3
	.type	__jwe_xnrtrap, %object
__jwe_xnrtrap:
	.xword	0
	.size	__jwe_xnrtrap,.-__jwe_xnrtrap
	.section	.rodata
	.align	3
.LR.1:
	.xword	6
	.type	.LR.1, %object
	.size	.LR.1, 8
	.data
	.align	4
.LS.2:
	.word	1
	.zero	4
	.xword	17
	.type	.LS.2, %object
	.size	.LS.2, 16
	.data
	.align	4
.LS.3:
	.word	33289
	.zero	4
	.xword	16
	.xword	.LR.1
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.word	769
	.zero	4
	.xword	4
	.zero	8
	.word	2657
	.zero	4
	.xword	8
	.zero	8
	.type	.LS.3, %object
	.size	.LS.3, 112
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
	.ascii	"issue162.f90\0"	// DW_AT_name
	.4byte	.Ldebug_line	// DW_AT_stmt_list
	.8byte	..text.b	// DW_AT_low_pc
	.8byte	..text.e-..text.b	// DW_AT_high_pc
	.byte	0xe	// DW_AT_language
	.ascii	"/home/odajima/bug_report/RIST/issue162\0"	// DW_AT_comp_dir
	.ascii	"FUJITSU LIMITED: Version 2.0.0 : 64-bit\0"	// DW_AT_producer
	.byte	0x3	// DW_AT_identifier_case
	.uleb128	0x2	// DW_TAG_subprogram (0x7e)
	.ascii	"main\0"	// DW_AT_name
	.8byte	MAIN__	// DW_AT_low_pc
	.8byte	..D1.pchi-MAIN__	// DW_AT_high_pc
	.byte	0x2	// DW_AT_calling_convention
	.byte	0x1	// DW_AT_decl_file
	.byte	0x1	// DW_AT_decl_line
			// DW_AT_external
	.uleb128	0x1	// DW_AT_frame_base
	.byte	0x9c	// DW_OP_call_frame_cfa
			// DW_AT_main_subprogram
	.uleb128	0x3	// DW_TAG_FJ_loop (0x99)
	.byte	0x1	// DW_AT_decl_file
	.byte	0x9	// DW_AT_FJ_loop_start_line
	.byte	0x9	// DW_AT_FJ_loop_end_line
	.2byte	0x7fff	// DW_AT_FJ_loop_nest_level
	.byte	0x3	// DW_AT_FJ_loop_type
	.uleb128	0x4	// DW_TAG_FJ_loop (0xa0)
	.byte	0x1	// DW_AT_decl_file
	.byte	0xa	// DW_AT_FJ_loop_start_line
	.byte	0xf	// DW_AT_FJ_loop_end_line
	.byte	0x1	// DW_AT_FJ_loop_nest_level
	.byte	0x0	// DW_AT_FJ_loop_type
	.byte	0x0	// End of children (0x7e)
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
	.uleb128	0x42	// DW_AT_identifier_case
	.uleb128	0xb	// DW_FORM_data1
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
	.uleb128	0x36	// DW_AT_calling_convention
	.uleb128	0xb	// DW_FORM_data1
	.uleb128	0x3a	// DW_AT_decl_file
	.uleb128	0xb	// DW_FORM_data1
	.uleb128	0x3b	// DW_AT_decl_line
	.uleb128	0xb	// DW_FORM_data1
	.uleb128	0x3f	// DW_AT_external
	.uleb128	0x19	// DW_FORM_flag_present
	.uleb128	0x40	// DW_AT_frame_base
	.uleb128	0x18	// DW_FORM_exprloc
	.uleb128	0x6a	// DW_AT_main_subprogram
	.uleb128	0x19	// DW_FORM_flag_present
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
	.uleb128	0x5	// DW_FORM_data2
	.uleb128	0x3303	// DW_AT_FJ_loop_type
	.uleb128	0xb	// DW_FORM_data1
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
	.section	.note.GNU-stack,"",%progbits
