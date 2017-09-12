	.text
	.file	"/tmp/himenoBMTxp-allocate-8e1366.ll"
	.globl	pres_                   // -- Begin function pres_
	.p2align	2
	.type	pres_,@function
pres_:                                  // @pres_
// BB#0:                                // %.L.entry
	ret
.Lfunc_end0:
	.size	pres_, .Lfunc_end0-pres_
                                        // -- End function
	.globl	mtrx_                   // -- Begin function mtrx_
	.p2align	2
	.type	mtrx_,@function
mtrx_:                                  // @mtrx_
// BB#0:                                // %.L.entry
	ret
.Lfunc_end1:
	.size	mtrx_, .Lfunc_end1-mtrx_
                                        // -- End function
	.globl	bound_                  // -- Begin function bound_
	.p2align	2
	.type	bound_,@function
bound_:                                 // @bound_
// BB#0:                                // %.L.entry
	ret
.Lfunc_end2:
	.size	bound_, .Lfunc_end2-bound_
                                        // -- End function
	.globl	work_                   // -- Begin function work_
	.p2align	2
	.type	work_,@function
work_:                                  // @work_
// BB#0:                                // %.L.entry
	ret
.Lfunc_end3:
	.size	work_, .Lfunc_end3-work_
                                        // -- End function
	.globl	others_                 // -- Begin function others_
	.p2align	2
	.type	others_,@function
others_:                                // @others_
// BB#0:                                // %.L.entry
	ret
.Lfunc_end4:
	.size	others_, .Lfunc_end4-others_
                                        // -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2               // -- Begin function MAIN_
.LCPI5_0:
	.word	1107820544              // float 34
.LCPI5_1:
	.word	910775196               // float 3.00000011E-6
.LCPI5_2:
	.word	940481337               // float 3.40000006E-5
.LCPI5_3:
	.word	1011205987              // float 0.0120714633
	.text
	.globl	MAIN_
	.p2align	2
	.type	MAIN_,@function
MAIN_:                                  // @MAIN_
	.cfi_startproc
// BB#0:                                // %L.entry
	sub	sp, sp, #128            // =128
	stp	d11, d10, [sp, #32]     // 8-byte Folded Spill
	stp	d9, d8, [sp, #48]       // 8-byte Folded Spill
	str	x24, [sp, #64]          // 8-byte Folded Spill
	stp	x23, x22, [sp, #80]     // 8-byte Folded Spill
	stp	x21, x20, [sp, #96]     // 8-byte Folded Spill
	stp	x19, x30, [sp, #112]    // 8-byte Folded Spill
.Lcfi0:
	.cfi_def_cfa_offset 128
.Lcfi1:
	.cfi_offset w30, -8
.Lcfi2:
	.cfi_offset w19, -16
.Lcfi3:
	.cfi_offset w20, -24
.Lcfi4:
	.cfi_offset w21, -32
.Lcfi5:
	.cfi_offset w22, -40
.Lcfi6:
	.cfi_offset w23, -48
.Lcfi7:
	.cfi_offset w24, -64
.Lcfi8:
	.cfi_offset b8, -72
.Lcfi9:
	.cfi_offset b9, -80
.Lcfi10:
	.cfi_offset b10, -88
.Lcfi11:
	.cfi_offset b11, -96
	adrp	x19, .C283_MAIN_
	add	x19, x19, :lo12:.C283_MAIN_
	mov	x0, x19
	bl	fort_init
	bl	readparam_
	bl	initmem_
	bl	initmt_
	adrp	x20, .C325_MAIN_
	adrp	x0, .C327_MAIN_
	add	x20, x20, :lo12:.C325_MAIN_
	add	x0, x0, :lo12:.C327_MAIN_
	orr	w2, wzr, #0x18
	mov	x1, x20
	bl	f90io_src_info03
	adrp	x21, .C328_MAIN_
	add	x21, x21, :lo12:.C328_MAIN_
	mov	x0, x21
	mov	x1, xzr
	mov	x2, x19
	mov	x3, x19
	bl	f90io_print_init
	adrp	x0, .C331_MAIN_
	add	x0, x0, :lo12:.C331_MAIN_
	orr	w1, wzr, #0xe
	orr	w2, wzr, #0x7
	bl	f90io_sc_ch_ldw
	adrp	x24, _others_0_
	add	x24, x24, :lo12:_others_0_
	ldr	w0, [x24]
	mov	w1, #25
	bl	f90io_sc_i_ldw
	adrp	x0, .C332_MAIN_
	add	x0, x0, :lo12:.C332_MAIN_
	orr	w1, wzr, #0xe
	orr	w2, wzr, #0x7
	bl	f90io_sc_ch_ldw
	ldr	w0, [x24, #4]
	mov	w1, #25
	bl	f90io_sc_i_ldw
	adrp	x0, .C333_MAIN_
	add	x0, x0, :lo12:.C333_MAIN_
	orr	w1, wzr, #0xe
	orr	w2, wzr, #0x7
	bl	f90io_sc_ch_ldw
	ldr	w0, [x24, #8]
	mov	w1, #25
	bl	f90io_sc_i_ldw
	bl	f90io_ldw_end
	adrp	x0, .C340_MAIN_
	add	x0, x0, :lo12:.C340_MAIN_
	orr	w2, wzr, #0x18
	mov	x1, x20
	bl	f90io_src_info03
	mov	x0, x21
	mov	x1, xzr
	mov	x2, x19
	mov	x3, x19
	bl	f90io_print_init
	adrp	x0, .C341_MAIN_
	add	x0, x0, :lo12:.C341_MAIN_
	orr	w1, wzr, #0xe
	orr	w2, wzr, #0x6
	bl	f90io_sc_ch_ldw
	ldr	w0, [x24, #12]
	mov	w1, #25
	bl	f90io_sc_i_ldw
	adrp	x0, .C342_MAIN_
	add	x0, x0, :lo12:.C342_MAIN_
	orr	w1, wzr, #0xe
	orr	w2, wzr, #0x6
	bl	f90io_sc_ch_ldw
	ldr	w0, [x24, #16]
	mov	w1, #25
	bl	f90io_sc_i_ldw
	adrp	x0, .C343_MAIN_
	add	x0, x0, :lo12:.C343_MAIN_
	orr	w1, wzr, #0xe
	orr	w2, wzr, #0x6
	bl	f90io_sc_ch_ldw
	ldr	w0, [x24, #20]
	mov	w1, #25
	bl	f90io_sc_i_ldw
	bl	f90io_ldw_end
	adrp	x3, .C338_MAIN_
	add	x3, x3, :lo12:.C338_MAIN_
	add	x0, sp, #24             // =24
	add	x1, sp, #20             // =20
	add	x2, sp, #16             // =16
	mov	x4, x3
	mov	x5, x3
	bl	fort_sysclk
	ldr	w8, [sp, #20]
	adrp	x0, .C344_MAIN_
	fmov	d1, #1.00000000
	add	x0, x0, :lo12:.C344_MAIN_
	scvtf	d0, w8
	orr	w2, wzr, #0x18
	mov	x1, x20
	fdiv	d8, d1, d0
	bl	f90io_src_info03
	adrp	x22, .C336_MAIN_
	adrp	x23, .C285_MAIN_
	add	x22, x22, :lo12:.C336_MAIN_
	add	x23, x23, :lo12:.C285_MAIN_
	adrp	x2, .C345_MAIN_
	add	x2, x2, :lo12:.C345_MAIN_
	orr	w3, wzr, #0xc
	mov	x0, x22
	mov	x1, x23
	bl	f90io_encode_fmt
	mov	x0, x21
	mov	x1, xzr
	mov	x2, x19
	mov	x3, x19
	mov	x4, xzr
	mov	x5, xzr
	mov	x6, xzr
	bl	f90io_fmtw_init
	adrp	x3, .C349_MAIN_
	add	x3, x3, :lo12:.C349_MAIN_
	orr	w4, wzr, #0x1c
	mov	x0, x22
	mov	x1, x23
	mov	x2, x19
	bl	f90io_fmt_write
	orr	w0, wzr, #0x1c
	mov	v0.16b, v8.16b
	bl	f90io_sc_d_fmt_write
	bl	f90io_fmtw_end
	adrp	x0, .C354_MAIN_
	orr	w8, wzr, #0x3
	add	x0, x0, :lo12:.C354_MAIN_
	orr	w2, wzr, #0x18
	mov	x1, x20
	str	w8, [sp, #12]
	bl	f90io_src_info03
	mov	x0, x21
	mov	x1, xzr
	mov	x2, x19
	mov	x3, x19
	bl	f90io_print_init
	adrp	x0, .C355_MAIN_
	add	x0, x0, :lo12:.C355_MAIN_
	orr	w1, wzr, #0xe
	mov	w2, #37
	bl	f90io_sc_ch_ldw
	bl	f90io_ldw_end
	adrp	x0, .C356_MAIN_
	add	x0, x0, :lo12:.C356_MAIN_
	orr	w2, wzr, #0x18
	mov	x1, x20
	bl	f90io_src_info03
	mov	x0, x21
	mov	x1, xzr
	mov	x2, x19
	mov	x3, x19
	bl	f90io_print_init
	adrp	x0, .C357_MAIN_
	add	x0, x0, :lo12:.C357_MAIN_
	orr	w1, wzr, #0xe
	mov	w2, #36
	bl	f90io_sc_ch_ldw
	bl	f90io_ldw_end
	adrp	x19, .C305_second_
	add	x19, x19, :lo12:.C305_second_
	add	x0, sp, #76             // =76
	add	x1, sp, #72             // =72
	add	x2, sp, #28             // =28
	mov	x3, x19
	mov	x4, x19
	mov	x5, x19
	bl	fort_sysclk
	ldr	w8, [sp, #76]
	add	x0, sp, #12             // =12
	add	x1, sp, #8              // =8
	scvtf	d9, w8
	bl	jacobi_
	add	x0, sp, #76             // =76
	add	x1, sp, #72             // =72
	add	x2, sp, #28             // =28
	mov	x3, x19
	mov	x4, x19
	mov	x5, x19
	bl	fort_sysclk
	ldr	w8, [sp, #76]
	ldr	w10, [x24, #20]
	scvtf	d0, w8
	ldp	w9, w8, [x24, #12]
	fsub	d0, d0, d9
	fmul	d10, d0, d8
	fcmp	d10, #0.0
	sub	w9, w9, #2              // =2
	scvtf	s1, w9
	sub	w9, w10, #2             // =2
	sub	w8, w8, #2              // =2
	scvtf	s3, w9
	scvtf	s2, w8
	fmul	s0, s1, s3
	fmul	s11, s2, s0
                                        // implicit-def: %S9
	b.eq	.LBB5_2
// BB#1:                                // %L.LB6_485
	adrp	x8, .LCPI5_0
	ldr	s0, [x8, :lo12:.LCPI5_0]
	adrp	x8, .LCPI5_1
	ldr	s1, [x8, :lo12:.LCPI5_1]
	fcvt	s2, d10
	fmul	s0, s11, s0
	fdiv	s0, s0, s2
	fmul	s9, s0, s1
.LBB5_2:                                // %L.LB6_392
	adrp	x19, .C325_MAIN_
	adrp	x0, .C362_MAIN_
	add	x19, x19, :lo12:.C325_MAIN_
	add	x0, x0, :lo12:.C362_MAIN_
	orr	w2, wzr, #0x18
	mov	x1, x19
	bl	f90io_src_info03
	adrp	x21, .C328_MAIN_
	adrp	x20, .C283_MAIN_
	add	x21, x21, :lo12:.C328_MAIN_
	add	x20, x20, :lo12:.C283_MAIN_
	mov	x0, x21
	mov	x1, xzr
	mov	x2, x20
	mov	x3, x20
	bl	f90io_print_init
	adrp	x0, .C363_MAIN_
	add	x0, x0, :lo12:.C363_MAIN_
	orr	w1, wzr, #0xe
	mov	w2, #9
	bl	f90io_sc_ch_ldw
	mov	w0, #27
	mov	v0.16b, v9.16b
	bl	f90io_sc_f_ldw
	adrp	x0, .C365_MAIN_
	add	x0, x0, :lo12:.C365_MAIN_
	orr	w1, wzr, #0xe
	mov	w2, #10
	mov	w22, #10
	bl	f90io_sc_ch_ldw
	orr	w0, wzr, #0x1c
	mov	v0.16b, v10.16b
	bl	f90io_sc_d_ldw
	ldr	s0, [sp, #8]
	mov	w0, #27
	bl	f90io_sc_f_ldw
	bl	f90io_ldw_end
	adrp	x0, .C369_MAIN_
	add	x0, x0, :lo12:.C369_MAIN_
	orr	w2, wzr, #0x18
	mov	x1, x19
	str	w22, [sp, #12]
	bl	f90io_src_info03
	mov	x0, x21
	mov	x1, xzr
	mov	x2, x20
	mov	x3, x20
	bl	f90io_print_init
	adrp	x0, .C370_MAIN_
	add	x0, x0, :lo12:.C370_MAIN_
	orr	w1, wzr, #0xe
	mov	w2, #42
	bl	f90io_sc_ch_ldw
	bl	f90io_ldw_end
	adrp	x0, .C371_MAIN_
	add	x0, x0, :lo12:.C371_MAIN_
	orr	w2, wzr, #0x18
	mov	x1, x19
	bl	f90io_src_info03
	mov	x0, x21
	mov	x1, xzr
	mov	x2, x20
	mov	x3, x20
	bl	f90io_print_init
	adrp	x0, .C372_MAIN_
	add	x0, x0, :lo12:.C372_MAIN_
	orr	w1, wzr, #0xe
	mov	w2, #27
	bl	f90io_sc_ch_ldw
	mov	w0, #10
	mov	w1, #25
	bl	f90io_sc_i_ldw
	adrp	x0, .C373_MAIN_
	add	x0, x0, :lo12:.C373_MAIN_
	orr	w1, wzr, #0xe
	orr	w2, wzr, #0x7
	bl	f90io_sc_ch_ldw
	bl	f90io_ldw_end
	adrp	x0, .C374_MAIN_
	add	x0, x0, :lo12:.C374_MAIN_
	orr	w2, wzr, #0x18
	mov	x1, x19
	bl	f90io_src_info03
	mov	x0, x21
	mov	x1, xzr
	mov	x2, x20
	mov	x3, x20
	bl	f90io_print_init
	adrp	x0, .C375_MAIN_
	add	x0, x0, :lo12:.C375_MAIN_
	orr	w1, wzr, #0xe
	orr	w2, wzr, #0x20
	bl	f90io_sc_ch_ldw
	bl	f90io_ldw_end
	adrp	x0, .C376_MAIN_
	add	x0, x0, :lo12:.C376_MAIN_
	orr	w2, wzr, #0x18
	mov	x1, x19
	bl	f90io_src_info03
	mov	x0, x21
	mov	x1, xzr
	mov	x2, x20
	mov	x3, x20
	bl	f90io_print_init
	adrp	x0, .C377_MAIN_
	add	x0, x0, :lo12:.C377_MAIN_
	orr	w1, wzr, #0xe
	mov	w2, #17
	bl	f90io_sc_ch_ldw
	bl	f90io_ldw_end
	adrp	x19, .C305_second_
	add	x19, x19, :lo12:.C305_second_
	add	x0, sp, #76             // =76
	add	x1, sp, #72             // =72
	add	x2, sp, #28             // =28
	mov	x3, x19
	mov	x4, x19
	mov	x5, x19
	bl	fort_sysclk
	ldr	w8, [sp, #76]
	add	x0, sp, #12             // =12
	add	x1, sp, #8              // =8
	scvtf	d10, w8
	bl	jacobi_
	add	x0, sp, #76             // =76
	add	x1, sp, #72             // =72
	add	x2, sp, #28             // =28
	mov	x3, x19
	mov	x4, x19
	mov	x5, x19
	bl	fort_sysclk
	ldr	w8, [sp, #76]
	scvtf	d0, w8
	fsub	d0, d0, d10
	fmul	d8, d0, d8
	fcmp	d8, #0.0
	b.eq	.LBB5_4
// BB#3:                                // %L.LB6_486
	adrp	x8, .LCPI5_2
	ldr	s0, [x8, :lo12:.LCPI5_2]
	fcvt	s1, d8
	fmul	s0, s11, s0
	fdiv	s0, s0, s1
	fmov	s1, #10.00000000
	fmul	s9, s0, s1
.LBB5_4:                                // %L.LB6_393
	adrp	x19, .C325_MAIN_
	adrp	x0, .C378_MAIN_
	add	x19, x19, :lo12:.C325_MAIN_
	add	x0, x0, :lo12:.C378_MAIN_
	orr	w2, wzr, #0x18
	mov	x1, x19
	bl	f90io_src_info03
	adrp	x21, .C328_MAIN_
	adrp	x20, .C283_MAIN_
	add	x21, x21, :lo12:.C328_MAIN_
	add	x20, x20, :lo12:.C283_MAIN_
	mov	x0, x21
	mov	x1, xzr
	mov	x2, x20
	mov	x3, x20
	bl	f90io_print_init
	adrp	x0, .C379_MAIN_
	add	x0, x0, :lo12:.C379_MAIN_
	orr	w1, wzr, #0xe
	mov	w2, #19
	bl	f90io_sc_ch_ldw
	mov	w0, #10
	mov	w1, #25
	bl	f90io_sc_i_ldw
	adrp	x0, .C380_MAIN_
	add	x0, x0, :lo12:.C380_MAIN_
	orr	w1, wzr, #0xe
	orr	w2, wzr, #0x6
	bl	f90io_sc_ch_ldw
	bl	f90io_ldw_end
	adrp	x0, .C381_MAIN_
	add	x0, x0, :lo12:.C381_MAIN_
	orr	w2, wzr, #0x18
	mov	x1, x19
	bl	f90io_src_info03
	mov	x0, x21
	mov	x1, xzr
	mov	x2, x20
	mov	x3, x20
	bl	f90io_print_init
	adrp	x0, .C382_MAIN_
	add	x0, x0, :lo12:.C382_MAIN_
	orr	w1, wzr, #0xe
	orr	w2, wzr, #0x7
	bl	f90io_sc_ch_ldw
	ldr	s0, [sp, #8]
	mov	w0, #27
	bl	f90io_sc_f_ldw
	bl	f90io_ldw_end
	adrp	x0, .C383_MAIN_
	add	x0, x0, :lo12:.C383_MAIN_
	orr	w2, wzr, #0x18
	mov	x1, x19
	bl	f90io_src_info03
	mov	x0, x21
	mov	x1, xzr
	mov	x2, x20
	mov	x3, x20
	bl	f90io_print_init
	adrp	x0, .C384_MAIN_
	add	x0, x0, :lo12:.C384_MAIN_
	orr	w1, wzr, #0xe
	orr	w2, wzr, #0x8
	bl	f90io_sc_ch_ldw
	mov	w0, #27
	mov	v0.16b, v9.16b
	bl	f90io_sc_f_ldw
	adrp	x0, .C365_MAIN_
	add	x0, x0, :lo12:.C365_MAIN_
	orr	w1, wzr, #0xe
	mov	w2, #10
	bl	f90io_sc_ch_ldw
	orr	w0, wzr, #0x1c
	mov	v0.16b, v8.16b
	bl	f90io_sc_d_ldw
	bl	f90io_ldw_end
	adrp	x8, .LCPI5_3
	ldr	s0, [x8, :lo12:.LCPI5_3]
	adrp	x0, .C386_MAIN_
	add	x0, x0, :lo12:.C386_MAIN_
	orr	w2, wzr, #0x18
	mov	x1, x19
	fmul	s8, s9, s0
	bl	f90io_src_info03
	mov	x0, x21
	mov	x1, xzr
	mov	x2, x20
	mov	x3, x20
	bl	f90io_print_init
	adrp	x0, .C387_MAIN_
	add	x0, x0, :lo12:.C387_MAIN_
	orr	w1, wzr, #0xe
	mov	w2, #36
	bl	f90io_sc_ch_ldw
	mov	w0, #27
	mov	v0.16b, v8.16b
	bl	f90io_sc_f_ldw
	bl	f90io_ldw_end
	ldp	x19, x30, [sp, #112]    // 8-byte Folded Reload
	ldp	x21, x20, [sp, #96]     // 8-byte Folded Reload
	ldp	x23, x22, [sp, #80]     // 8-byte Folded Reload
	ldr	x24, [sp, #64]          // 8-byte Folded Reload
	ldp	d9, d8, [sp, #48]       // 8-byte Folded Reload
	ldp	d11, d10, [sp, #32]     // 8-byte Folded Reload
	add	sp, sp, #128            // =128
	ret
.Lfunc_end5:
	.size	MAIN_, .Lfunc_end5-MAIN_
	.cfi_endproc
                                        // -- End function
	.globl	readparam_              // -- Begin function readparam_
	.p2align	2
	.type	readparam_,@function
readparam_:                             // @readparam_
	.cfi_startproc
// BB#0:                                // %L.entry
	sub	sp, sp, #48             // =48
	stp	x21, x20, [sp, #16]     // 8-byte Folded Spill
	stp	x19, x30, [sp, #32]     // 8-byte Folded Spill
.Lcfi12:
	.cfi_def_cfa_offset 48
.Lcfi13:
	.cfi_offset w30, -8
.Lcfi14:
	.cfi_offset w19, -16
.Lcfi15:
	.cfi_offset w20, -24
.Lcfi16:
	.cfi_offset w21, -32
	adrp	x19, .C306_readparam_
	adrp	x0, .C308_readparam_
	add	x19, x19, :lo12:.C306_readparam_
	add	x0, x0, :lo12:.C308_readparam_
	orr	w2, wzr, #0x18
	mov	x1, x19
	bl	f90io_src_info03
	adrp	x21, .C309_readparam_
	adrp	x20, .C283_readparam_
	add	x21, x21, :lo12:.C309_readparam_
	add	x20, x20, :lo12:.C283_readparam_
	mov	x0, x21
	mov	x1, xzr
	mov	x2, x20
	mov	x3, x20
	bl	f90io_print_init
	adrp	x0, .C312_readparam_
	add	x0, x0, :lo12:.C312_readparam_
	orr	w1, wzr, #0xe
	mov	w2, #17
	bl	f90io_sc_ch_ldw
	bl	f90io_ldw_end
	adrp	x0, .C317_readparam_
	add	x0, x0, :lo12:.C317_readparam_
	orr	w2, wzr, #0x18
	mov	x1, x19
	bl	f90io_src_info03
	mov	x0, x21
	mov	x1, xzr
	mov	x2, x20
	mov	x3, x20
	bl	f90io_print_init
	adrp	x0, .C318_readparam_
	add	x0, x0, :lo12:.C318_readparam_
	orr	w1, wzr, #0xe
	mov	w2, #11
	bl	f90io_sc_ch_ldw
	bl	f90io_ldw_end
	adrp	x0, .C319_readparam_
	add	x0, x0, :lo12:.C319_readparam_
	orr	w2, wzr, #0x18
	mov	x1, x19
	bl	f90io_src_info03
	mov	x0, x21
	mov	x1, xzr
	mov	x2, x20
	mov	x3, x20
	bl	f90io_print_init
	adrp	x0, .C320_readparam_
	add	x0, x0, :lo12:.C320_readparam_
	orr	w1, wzr, #0xe
	orr	w2, wzr, #0x18
	bl	f90io_sc_ch_ldw
	bl	f90io_ldw_end
	adrp	x0, .C321_readparam_
	add	x0, x0, :lo12:.C321_readparam_
	orr	w2, wzr, #0x18
	mov	x1, x19
	bl	f90io_src_info03
	mov	x0, x21
	mov	x1, xzr
	mov	x2, x20
	mov	x3, x20
	bl	f90io_print_init
	adrp	x0, .C322_readparam_
	add	x0, x0, :lo12:.C322_readparam_
	orr	w1, wzr, #0xe
	mov	w2, #25
	bl	f90io_sc_ch_ldw
	bl	f90io_ldw_end
	adrp	x0, .C323_readparam_
	add	x0, x0, :lo12:.C323_readparam_
	orr	w2, wzr, #0x18
	mov	x1, x19
	bl	f90io_src_info03
	mov	x0, x21
	mov	x1, xzr
	mov	x2, x20
	mov	x3, x20
	bl	f90io_print_init
	adrp	x0, .C324_readparam_
	add	x0, x0, :lo12:.C324_readparam_
	orr	w1, wzr, #0xe
	mov	w2, #27
	bl	f90io_sc_ch_ldw
	bl	f90io_ldw_end
	adrp	x0, .C325_readparam_
	add	x0, x0, :lo12:.C325_readparam_
	orr	w2, wzr, #0x18
	mov	x1, x19
	bl	f90io_src_info03
	mov	x0, x21
	mov	x1, xzr
	mov	x2, x20
	mov	x3, x20
	bl	f90io_print_init
	adrp	x0, .C326_readparam_
	add	x0, x0, :lo12:.C326_readparam_
	orr	w1, wzr, #0xe
	mov	w2, #27
	bl	f90io_sc_ch_ldw
	bl	f90io_ldw_end
	adrp	x0, .C327_readparam_
	add	x0, x0, :lo12:.C327_readparam_
	orr	w2, wzr, #0x18
	mov	x1, x19
	bl	f90io_src_info03
	mov	x0, x21
	mov	x1, xzr
	mov	x2, x20
	mov	x3, x20
	bl	f90io_print_init
	adrp	x0, .C328_readparam_
	add	x0, x0, :lo12:.C328_readparam_
	orr	w1, wzr, #0xe
	orr	w2, wzr, #0x1c
	bl	f90io_sc_ch_ldw
	bl	f90io_ldw_end
	adrp	x8, .C369_readparam_
	ldr	x8, [x8, :lo12:.C369_readparam_]
	mov	w9, #8224
	mov	x0, sp
	str	x8, [sp]
	strh	w9, [sp, #8]
	bl	grid_set_
	adrp	x8, _others_0_
	add	x8, x8, :lo12:_others_0_
	ldr	d0, [x8]
	ldr	w9, [x8, #8]
	ldp	x19, x30, [sp, #32]     // 8-byte Folded Reload
	ldp	x21, x20, [sp, #16]     // 8-byte Folded Reload
	movi	d1, #0xffffffffffffffff
	add	v0.2s, v0.2s, v1.2s
	sub	w9, w9, #1              // =1
	stur	d0, [x8, #12]
	str	w9, [x8, #20]
	add	sp, sp, #48             // =48
	ret
.Lfunc_end6:
	.size	readparam_, .Lfunc_end6-readparam_
	.cfi_endproc
                                        // -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3               // -- Begin function grid_set_
.LCPI7_0:
	.word	1025                    // 0x401
	.word	513                     // 0x201
.LCPI7_1:
	.word	513                     // 0x201
	.word	257                     // 0x101
.LCPI7_2:
	.word	257                     // 0x101
	.word	129                     // 0x81
.LCPI7_3:
	.word	129                     // 0x81
	.word	65                      // 0x41
.LCPI7_4:
	.word	65                      // 0x41
	.word	33                      // 0x21
	.text
	.globl	grid_set_
	.p2align	2
	.type	grid_set_,@function
grid_set_:                              // @grid_set_
	.cfi_startproc
// BB#0:                                // %L.entry
	stp	x19, x30, [sp, #-16]!   // 8-byte Folded Spill
.Lcfi17:
	.cfi_def_cfa_offset 16
.Lcfi18:
	.cfi_offset w30, -8
.Lcfi19:
	.cfi_offset w19, -16
	adrp	x1, .C307_grid_set_
	add	x1, x1, :lo12:.C307_grid_set_
	mov	w2, #10
	orr	w3, wzr, #0x2
	mov	x19, x0
	bl	f90_strcmp
	cbz	w0, .LBB7_11
// BB#1:                                // %L.LB8_338
	adrp	x1, .C310_grid_set_
	add	x1, x1, :lo12:.C310_grid_set_
	mov	w2, #10
	orr	w3, wzr, #0x2
	mov	x0, x19
	bl	f90_strcmp
	cbz	w0, .LBB7_11
// BB#2:                                // %L.LB8_339
	adrp	x1, .C312_grid_set_
	add	x1, x1, :lo12:.C312_grid_set_
	mov	w2, #10
	orr	w3, wzr, #0x1
	mov	x0, x19
	bl	f90_strcmp
	cbz	w0, .LBB7_12
// BB#3:                                // %L.LB8_340
	adrp	x1, .C314_grid_set_
	add	x1, x1, :lo12:.C314_grid_set_
	mov	w2, #10
	orr	w3, wzr, #0x1
	mov	x0, x19
	bl	f90_strcmp
	cbz	w0, .LBB7_12
// BB#4:                                // %L.LB8_341
	adrp	x1, .C315_grid_set_
	add	x1, x1, :lo12:.C315_grid_set_
	mov	w2, #10
	orr	w3, wzr, #0x1
	mov	x0, x19
	bl	f90_strcmp
	cbz	w0, .LBB7_13
// BB#5:                                // %L.LB8_342
	adrp	x1, .C317_grid_set_
	add	x1, x1, :lo12:.C317_grid_set_
	mov	w2, #10
	orr	w3, wzr, #0x1
	mov	x0, x19
	bl	f90_strcmp
	cbz	w0, .LBB7_13
// BB#6:                                // %L.LB8_343
	adrp	x1, .C318_grid_set_
	add	x1, x1, :lo12:.C318_grid_set_
	mov	w2, #10
	orr	w3, wzr, #0x1
	mov	x0, x19
	bl	f90_strcmp
	cbz	w0, .LBB7_14
// BB#7:                                // %L.LB8_344
	adrp	x1, .C320_grid_set_
	add	x1, x1, :lo12:.C320_grid_set_
	mov	w2, #10
	orr	w3, wzr, #0x1
	mov	x0, x19
	bl	f90_strcmp
	cbz	w0, .LBB7_14
// BB#8:                                // %L.LB8_345
	adrp	x1, .C321_grid_set_
	add	x1, x1, :lo12:.C321_grid_set_
	mov	w2, #10
	orr	w3, wzr, #0x2
	mov	x0, x19
	bl	f90_strcmp
	cbz	w0, .LBB7_15
// BB#9:                                // %L.LB8_346
	adrp	x1, .C323_grid_set_
	add	x1, x1, :lo12:.C323_grid_set_
	mov	w2, #10
	orr	w3, wzr, #0x2
	mov	x0, x19
	bl	f90_strcmp
	cbz	w0, .LBB7_15
// BB#10:                               // %L.LB8_347
	adrp	x0, .C326_grid_set_
	adrp	x1, .C324_grid_set_
	add	x0, x0, :lo12:.C326_grid_set_
	add	x1, x1, :lo12:.C324_grid_set_
	orr	w2, wzr, #0x18
	bl	f90io_src_info03
	adrp	x19, .C283_grid_set_
	adrp	x0, .C327_grid_set_
	add	x19, x19, :lo12:.C283_grid_set_
	add	x0, x0, :lo12:.C327_grid_set_
	mov	x1, xzr
	mov	x2, x19
	mov	x3, x19
	bl	f90io_print_init
	adrp	x0, .C330_grid_set_
	add	x0, x0, :lo12:.C330_grid_set_
	orr	w1, wzr, #0xe
	mov	w2, #26
	bl	f90io_sc_ch_ldw
	bl	f90io_ldw_end
	mov	x0, x19
	mov	x1, xzr
	mov	x2, xzr
	ldp	x19, x30, [sp], #16     // 8-byte Folded Reload
	b	f90_stop08
.LBB7_11:                               // %L.LB8_384
	adrp	x8, .LCPI7_4
	ldr	d0, [x8, :lo12:.LCPI7_4]
	adrp	x8, _others_0_
	add	x8, x8, :lo12:_others_0_
	mov	w9, #33
	b	.LBB7_16
.LBB7_12:                               // %L.LB8_386
	adrp	x8, .LCPI7_3
	ldr	d0, [x8, :lo12:.LCPI7_3]
	adrp	x8, _others_0_
	add	x8, x8, :lo12:_others_0_
	mov	w9, #65
	b	.LBB7_16
.LBB7_13:                               // %L.LB8_388
	adrp	x8, .LCPI7_2
	ldr	d0, [x8, :lo12:.LCPI7_2]
	adrp	x8, _others_0_
	add	x8, x8, :lo12:_others_0_
	mov	w9, #129
	b	.LBB7_16
.LBB7_14:                               // %L.LB8_390
	adrp	x8, .LCPI7_1
	ldr	d0, [x8, :lo12:.LCPI7_1]
	adrp	x8, _others_0_
	add	x8, x8, :lo12:_others_0_
	mov	w9, #257
	b	.LBB7_16
.LBB7_15:                               // %L.LB8_392
	adrp	x8, .LCPI7_0
	ldr	d0, [x8, :lo12:.LCPI7_0]
	adrp	x8, _others_0_
	add	x8, x8, :lo12:_others_0_
	mov	w9, #513
.LBB7_16:                               // %L.LB8_311
	str	d0, [x8]
	str	w9, [x8, #8]
	ldp	x19, x30, [sp], #16     // 8-byte Folded Reload
	ret
.Lfunc_end7:
	.size	grid_set_, .Lfunc_end7-grid_set_
	.cfi_endproc
                                        // -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2               // -- Begin function initmt_
.LCPI8_0:
	.word	1042983595              // float 0.166666672
	.text
	.globl	initmt_
	.p2align	2
	.type	initmt_,@function
initmt_:                                // @initmt_
	.cfi_startproc
// BB#0:                                // %L.entry
	str	x22, [sp, #-48]!        // 8-byte Folded Spill
	stp	x21, x20, [sp, #16]     // 8-byte Folded Spill
	stp	x19, x30, [sp, #32]     // 8-byte Folded Spill
.Lcfi20:
	.cfi_def_cfa_offset 48
.Lcfi21:
	.cfi_offset w30, -8
.Lcfi22:
	.cfi_offset w19, -16
.Lcfi23:
	.cfi_offset w20, -24
.Lcfi24:
	.cfi_offset w21, -32
.Lcfi25:
	.cfi_offset w22, -48
	adrp	x19, _mtrx_0_
	add	x19, x19, :lo12:_mtrx_0_
	ldp	w9, w10, [x19, #64]
	ldp	w11, w12, [x19, #88]
	ldp	w13, w14, [x19, #112]
	ldp	w15, w16, [x19, #136]
                                        // kill: %W9<def> %W9<kill> %X9<def>
	orr	w8, wzr, #0x1
	sxtw	x9, w9
                                        // kill: %W11<def> %W11<kill> %X11<def>
                                        // kill: %W13<def> %W13<kill> %X13<def>
	add	w10, w9, w10
	sxtw	x11, w11
	sxtw	x13, w13
                                        // kill: %W15<def> %W15<kill> %X15<def>
	sub	x9, x8, x9
	add	w12, w11, w12
	sub	w10, w10, #1            // =1
	sxtw	x15, w15
	sub	x11, x8, x11
	add	w14, w13, w14
	add	x9, x9, w10, sxtw
	sub	w10, w12, #1            // =1
	sub	x13, x8, x13
	add	w16, w15, w16
	add	x10, x11, w10, sxtw
	sub	w11, w14, #1            // =1
	sub	x8, x8, x15
	add	x11, x13, w11, sxtw
	ldr	x0, [x19]
	sub	w12, w16, #1            // =1
	mul	x9, x10, x9
	add	x8, x8, w12, sxtw
	mul	x9, x9, x11
	rdvl	x22, #1
	mul	x8, x9, x8
	cmp	x22, #17                // =17
	lsl	x2, x8, #2
	b.hs	.LBB8_2
// BB#1:                                // %mem.intrinsic
	mov	w1, wzr
	bl	memset
	b	.LBB8_4
.LBB8_2:                                // %mem.ph
	mov	x8, xzr
	whilelo	p0.b, xzr, x2
	mov	z0.b, #0                // =0x0
.LBB8_3:                                // %mem.exploop
                                        // =>This Inner Loop Header: Depth=1
	st1b	{z0.b}, p0, [x0, x8]
	incp	x8, p0.b
	whilelo	p0.b, x8, x2
	b.mi	.LBB8_3
.LBB8_4:                                // %mem.resume
	ldp	w8, w9, [x19, #224]
	ldp	w11, w12, [x19, #248]
	ldrsw	x13, [x19, #272]
	ldr	w14, [x19, #276]
                                        // kill: %W8<def> %W8<kill> %X8<def>
	ldrsw	x15, [x19, #296]
	sxtw	x8, w8
                                        // kill: %W11<def> %W11<kill> %X11<def>
	ldr	w16, [x19, #300]
	orr	w10, wzr, #0x1
	sxtw	x11, w11
	add	w9, w8, w9
	sub	x8, x10, x8
	add	w12, w11, w12
	sub	w9, w9, #1              // =1
	sub	x11, x10, x11
	add	w14, w13, w14
	add	x8, x8, w9, sxtw
	sub	w9, w12, #1             // =1
	sub	x13, x10, x13
	add	w16, w15, w16
	add	x9, x11, w9, sxtw
	sub	w11, w14, #1            // =1
	sub	x10, x10, x15
	ldr	x0, [x19, #160]
	sub	w12, w16, #1            // =1
	add	x11, x13, w11, sxtw
	mul	x8, x9, x8
	add	x10, x10, w12, sxtw
	mul	x8, x8, x11
	mul	x8, x8, x10
	cmp	x22, #17                // =17
	lsl	x2, x8, #2
	b.hs	.LBB8_6
// BB#5:                                // %mem.intrinsic378
	mov	w1, wzr
	bl	memset
	b	.LBB8_8
.LBB8_6:                                // %mem.ph376
	mov	x8, xzr
	whilelo	p0.b, xzr, x2
	mov	z0.b, #0                // =0x0
.LBB8_7:                                // %mem.exploop377
                                        // =>This Inner Loop Header: Depth=1
	st1b	{z0.b}, p0, [x0, x8]
	incp	x8, p0.b
	whilelo	p0.b, x8, x2
	b.mi	.LBB8_7
.LBB8_8:                                // %mem.resume379
	ldrsw	x8, [x19, #384]
	ldr	w9, [x19, #388]
	ldrsw	x11, [x19, #408]
	ldr	w12, [x19, #412]
	ldrsw	x13, [x19, #432]
	ldr	w14, [x19, #436]
	ldrsw	x15, [x19, #456]
	ldr	w16, [x19, #460]
	orr	w10, wzr, #0x1
	add	w9, w8, w9
	sub	x8, x10, x8
	add	w12, w11, w12
	sub	w9, w9, #1              // =1
	sub	x11, x10, x11
	add	w14, w13, w14
	add	x8, x8, w9, sxtw
	sub	w9, w12, #1             // =1
	sub	x13, x10, x13
	add	w16, w15, w16
	add	x9, x11, w9, sxtw
	sub	w11, w14, #1            // =1
	sub	x10, x10, x15
	ldr	x0, [x19, #320]
	sub	w12, w16, #1            // =1
	add	x11, x13, w11, sxtw
	mul	x8, x9, x8
	add	x10, x10, w12, sxtw
	mul	x8, x8, x11
	mul	x8, x8, x10
	cmp	x22, #17                // =17
	lsl	x2, x8, #2
	b.hs	.LBB8_10
// BB#9:                                // %mem.intrinsic383
	mov	w1, wzr
	bl	memset
	b	.LBB8_12
.LBB8_10:                               // %mem.ph381
	mov	x8, xzr
	whilelo	p0.b, xzr, x2
	mov	z0.b, #0                // =0x0
.LBB8_11:                               // %mem.exploop382
                                        // =>This Inner Loop Header: Depth=1
	st1b	{z0.b}, p0, [x0, x8]
	incp	x8, p0.b
	whilelo	p0.b, x8, x2
	b.mi	.LBB8_11
.LBB8_12:                               // %mem.resume384
	adrp	x20, _pres_0_
	add	x20, x20, :lo12:_pres_0_
	ldp	w9, w10, [x20, #64]
	ldp	w11, w12, [x20, #88]
	ldp	w13, w14, [x20, #112]
	orr	w8, wzr, #0x1
                                        // kill: %W9<def> %W9<kill> %X9<def>
	ldr	x0, [x20]
	sxtw	x9, w9
                                        // kill: %W11<def> %W11<kill> %X11<def>
                                        // kill: %W13<def> %W13<kill> %X13<def>
	add	w10, w9, w10
	sxtw	x11, w11
	sxtw	x13, w13
	sub	x9, x8, x9
	add	w12, w11, w12
	sub	w10, w10, #1            // =1
	sub	x11, x8, x11
	add	w14, w13, w14
	add	x9, x9, w10, sxtw
	sub	w10, w12, #1            // =1
	sub	x8, x8, x13
	sub	w12, w14, #1            // =1
	add	x10, x11, w10, sxtw
	add	x8, x8, w12, sxtw
	mul	x9, x10, x9
	mul	x8, x9, x8
	cmp	x22, #17                // =17
	lsl	x2, x8, #2
	b.hs	.LBB8_14
// BB#13:                               // %mem.intrinsic388
	mov	w1, wzr
	bl	memset
	b	.LBB8_16
.LBB8_14:                               // %mem.ph386
	mov	x8, xzr
	whilelo	p0.b, xzr, x2
	mov	z0.b, #0                // =0x0
.LBB8_15:                               // %mem.exploop387
                                        // =>This Inner Loop Header: Depth=1
	st1b	{z0.b}, p0, [x0, x8]
	incp	x8, p0.b
	whilelo	p0.b, x8, x2
	b.mi	.LBB8_15
.LBB8_16:                               // %mem.resume389
	adrp	x21, _work_0_
	add	x21, x21, :lo12:_work_0_
	ldp	w9, w10, [x21, #64]
	ldp	w11, w12, [x21, #88]
	ldp	w13, w14, [x21, #112]
	orr	w8, wzr, #0x1
                                        // kill: %W9<def> %W9<kill> %X9<def>
	ldr	x0, [x21]
	sxtw	x9, w9
                                        // kill: %W11<def> %W11<kill> %X11<def>
                                        // kill: %W13<def> %W13<kill> %X13<def>
	add	w10, w9, w10
	sxtw	x11, w11
	sxtw	x13, w13
	sub	x9, x8, x9
	add	w12, w11, w12
	sub	w10, w10, #1            // =1
	sub	x11, x8, x11
	add	w14, w13, w14
	add	x9, x9, w10, sxtw
	sub	w10, w12, #1            // =1
	sub	x8, x8, x13
	sub	w12, w14, #1            // =1
	add	x10, x11, w10, sxtw
	add	x8, x8, w12, sxtw
	mul	x9, x10, x9
	mul	x8, x9, x8
	cmp	x22, #17                // =17
	lsl	x2, x8, #2
	b.hs	.LBB8_18
// BB#17:                               // %mem.intrinsic393
	mov	w1, wzr
	bl	memset
	b	.LBB8_20
.LBB8_18:                               // %mem.ph391
	mov	x8, xzr
	whilelo	p0.b, xzr, x2
	mov	z0.b, #0                // =0x0
.LBB8_19:                               // %mem.exploop392
                                        // =>This Inner Loop Header: Depth=1
	st1b	{z0.b}, p0, [x0, x8]
	incp	x8, p0.b
	whilelo	p0.b, x8, x2
	b.mi	.LBB8_19
.LBB8_20:                               // %mem.resume394
	ldp	w8, w9, [x21, #200]
	ldp	w11, w12, [x21, #224]
	ldp	w13, w14, [x21, #248]
	orr	w10, wzr, #0x1
                                        // kill: %W8<def> %W8<kill> %X8<def>
	ldr	x0, [x21, #136]
	sxtw	x8, w8
                                        // kill: %W11<def> %W11<kill> %X11<def>
                                        // kill: %W13<def> %W13<kill> %X13<def>
	add	w9, w8, w9
	sxtw	x11, w11
	sxtw	x13, w13
	sub	x8, x10, x8
	add	w12, w11, w12
	sub	w9, w9, #1              // =1
	sub	x11, x10, x11
	add	w14, w13, w14
	add	x8, x8, w9, sxtw
	sub	w9, w12, #1             // =1
	sub	x10, x10, x13
	sub	w12, w14, #1            // =1
	add	x9, x11, w9, sxtw
	add	x10, x10, w12, sxtw
	mul	x8, x9, x8
	mul	x8, x8, x10
	cmp	x22, #17                // =17
	lsl	x2, x8, #2
	b.hs	.LBB8_22
// BB#21:                               // %mem.intrinsic398
	mov	w1, wzr
	bl	memset
	b	.LBB8_24
.LBB8_22:                               // %mem.ph396
	mov	x8, xzr
	whilelo	p0.b, xzr, x2
	mov	z0.b, #0                // =0x0
.LBB8_23:                               // %mem.exploop397
                                        // =>This Inner Loop Header: Depth=1
	st1b	{z0.b}, p0, [x0, x8]
	incp	x8, p0.b
	whilelo	p0.b, x8, x2
	b.mi	.LBB8_23
.LBB8_24:                               // %mem.resume399
	adrp	x21, _bound_0_
	add	x21, x21, :lo12:_bound_0_
	ldp	w9, w10, [x21, #64]
	ldp	w11, w12, [x21, #88]
	ldp	w13, w14, [x21, #112]
	orr	w8, wzr, #0x1
                                        // kill: %W9<def> %W9<kill> %X9<def>
	ldr	x0, [x21]
	sxtw	x9, w9
                                        // kill: %W11<def> %W11<kill> %X11<def>
                                        // kill: %W13<def> %W13<kill> %X13<def>
	add	w10, w9, w10
	sxtw	x11, w11
	sxtw	x13, w13
	sub	x9, x8, x9
	add	w12, w11, w12
	sub	w10, w10, #1            // =1
	sub	x11, x8, x11
	add	w14, w13, w14
	add	x9, x9, w10, sxtw
	sub	w10, w12, #1            // =1
	sub	x8, x8, x13
	sub	w12, w14, #1            // =1
	add	x10, x11, w10, sxtw
	add	x8, x8, w12, sxtw
	mul	x9, x10, x9
	mul	x8, x9, x8
	cmp	x22, #17                // =17
	lsl	x2, x8, #2
	b.hs	.LBB8_26
// BB#25:                               // %mem.intrinsic403
	mov	w1, wzr
	bl	memset
	b	.LBB8_28
.LBB8_26:                               // %mem.ph401
	mov	x8, xzr
	whilelo	p0.b, xzr, x2
	mov	z0.b, #0                // =0x0
.LBB8_27:                               // %mem.exploop402
                                        // =>This Inner Loop Header: Depth=1
	st1b	{z0.b}, p0, [x0, x8]
	incp	x8, p0.b
	whilelo	p0.b, x8, x2
	b.mi	.LBB8_27
.LBB8_28:                               // %mem.resume404
	adrp	x9, _others_0_
	add	x9, x9, :lo12:_others_0_
	ldp	w11, w10, [x9, #12]
	ldr	w8, [x9, #20]
	cmp	w11, #1                 // =1
	cset	w12, lt
	cmp	w10, #1                 // =1
	cset	w13, lt
	cmp	w8, #1                  // =1
	cset	w14, lt
	orr	w13, w13, w14
	orr	w12, w12, w13
	tbnz	w12, #0, .LBB8_53
// BB#29:                               // %L.LB9_387.preheader
	ldrsw	x14, [x19, #44]
	mvn	w18, w11
	ldrsw	x13, [x19, #104]
	ldrsw	x17, [x19, #152]
	orr	w0, wzr, #0xfffffffe
	cmn	w18, #2                 // =2
	ldrsw	x15, [x19, #128]
	csinv	w18, w0, w11, le
	add	w18, w11, w18
	ldr	x16, [x19]
	add	w0, w18, #1             // =1
	lsl	x18, x14, #2
	lsl	x14, x13, #2
	add	x13, x0, #1             // =1
	add	x0, x18, x17, lsl #2
	lsl	x15, x15, #2
	add	x0, x0, x14
	add	x0, x0, x15
	fmov	z0.s, #1.00000000
	whilelo	p0.s, xzr, x13
	add	x0, x16, x0
	ptrue	p1.s
	mov	w1, w8
.LBB8_30:                               // %L.LB9_390
                                        // =>This Loop Header: Depth=1
                                        //     Child Loop BB8_31 Depth 2
                                        //       Child Loop BB8_32 Depth 3
	mov	x2, x0
	mov	w3, w10
.LBB8_31:                               // %L.LB9_393
                                        //   Parent Loop BB8_30 Depth=1
                                        // =>  This Loop Header: Depth=2
                                        //       Child Loop BB8_32 Depth 3
	mov	x4, xzr
	mov	p2.b, p0.b
.LBB8_32:                               // %vector.body
                                        //   Parent Loop BB8_30 Depth=1
                                        //     Parent Loop BB8_31 Depth=2
                                        // =>    This Inner Loop Header: Depth=3
	st1w	{z0.s}, p2, [x2, x4, lsl #2]
	incw	x4
	nor	p2.b, p1/z, p2.b, p2.b
	whilelo	p3.s, x4, x13
	brkb	p2.b, p1/z, p2.b
	brkns	p3.b, p1/z, p2.b, p3.b
	mov	p2.b, p3.b
	b.mi	.LBB8_32
// BB#33:                               // %L.LB9_607
                                        //   in Loop: Header=BB8_31 Depth=2
	subs	w3, w3, #1              // =1
	add	x2, x2, x14
	b.gt	.LBB8_31
// BB#34:                               // %L.LB9_608
                                        //   in Loop: Header=BB8_30 Depth=1
	subs	w1, w1, #1              // =1
	add	x0, x0, x15
	b.gt	.LBB8_30
// BB#35:                               // %L.LB9_609
	add	x0, x18, x17, lsl #3
	add	x0, x0, x14
	add	x0, x0, x15
	add	x0, x16, x0
	mov	w1, w8
.LBB8_36:                               // %L.LB9_390.1
                                        // =>This Loop Header: Depth=1
                                        //     Child Loop BB8_37 Depth 2
                                        //       Child Loop BB8_38 Depth 3
	mov	x2, x0
	mov	w3, w10
.LBB8_37:                               // %L.LB9_393.1
                                        //   Parent Loop BB8_36 Depth=1
                                        // =>  This Loop Header: Depth=2
                                        //       Child Loop BB8_38 Depth 3
	mov	x4, xzr
	mov	p2.b, p0.b
.LBB8_38:                               // %vector.body99
                                        //   Parent Loop BB8_36 Depth=1
                                        //     Parent Loop BB8_37 Depth=2
                                        // =>    This Inner Loop Header: Depth=3
	st1w	{z0.s}, p2, [x2, x4, lsl #2]
	incw	x4
	nor	p2.b, p1/z, p2.b, p2.b
	whilelo	p3.s, x4, x13
	brkb	p2.b, p1/z, p2.b
	brkns	p3.b, p1/z, p2.b, p3.b
	mov	p2.b, p3.b
	b.mi	.LBB8_38
// BB#39:                               // %L.LB9_607.1
                                        //   in Loop: Header=BB8_37 Depth=2
	subs	w3, w3, #1              // =1
	add	x2, x2, x14
	b.gt	.LBB8_37
// BB#40:                               // %L.LB9_608.1
                                        //   in Loop: Header=BB8_36 Depth=1
	subs	w1, w1, #1              // =1
	add	x0, x0, x15
	b.gt	.LBB8_36
// BB#41:                               // %L.LB9_609.1
	orr	w0, wzr, #0xc
	madd	x17, x17, x0, x18
	add	x17, x17, x14
	add	x17, x17, x15
	add	x16, x16, x17
	mov	w17, w8
.LBB8_42:                               // %L.LB9_390.2
                                        // =>This Loop Header: Depth=1
                                        //     Child Loop BB8_43 Depth 2
                                        //       Child Loop BB8_44 Depth 3
	mov	x18, x16
	mov	w0, w10
.LBB8_43:                               // %L.LB9_393.2
                                        //   Parent Loop BB8_42 Depth=1
                                        // =>  This Loop Header: Depth=2
                                        //       Child Loop BB8_44 Depth 3
	mov	x1, xzr
	mov	p2.b, p0.b
.LBB8_44:                               // %vector.body140
                                        //   Parent Loop BB8_42 Depth=1
                                        //     Parent Loop BB8_43 Depth=2
                                        // =>    This Inner Loop Header: Depth=3
	st1w	{z0.s}, p2, [x18, x1, lsl #2]
	incw	x1
	nor	p2.b, p1/z, p2.b, p2.b
	whilelo	p3.s, x1, x13
	brkb	p2.b, p1/z, p2.b
	brkns	p3.b, p1/z, p2.b, p3.b
	mov	p2.b, p3.b
	b.mi	.LBB8_44
// BB#45:                               // %L.LB9_607.2
                                        //   in Loop: Header=BB8_43 Depth=2
	subs	w0, w0, #1              // =1
	add	x18, x18, x14
	b.gt	.LBB8_43
// BB#46:                               // %L.LB9_608.2
                                        //   in Loop: Header=BB8_42 Depth=1
	subs	w17, w17, #1            // =1
	add	x16, x16, x15
	b.gt	.LBB8_42
// BB#47:                               // %L.LB9_399.preheader
	ldrsw	x17, [x19, #152]
	ldrsw	x16, [x19, #44]
	ldrsw	x14, [x19, #104]
	ldrsw	x15, [x19, #128]
	adrp	x18, .LCPI8_0
	ldr	s0, [x18, :lo12:.LCPI8_0]
	ldr	x18, [x19]
	lsl	x17, x17, #4
	lsl	x14, x14, #2
	add	x16, x17, x16, lsl #2
	lsl	x15, x15, #2
	add	x16, x16, x14
	add	x16, x16, x15
	add	x16, x18, x16
	mov	z0.s, p1/m, s0
	mov	w17, w8
.LBB8_48:                               // %L.LB9_399
                                        // =>This Loop Header: Depth=1
                                        //     Child Loop BB8_49 Depth 2
                                        //       Child Loop BB8_50 Depth 3
	mov	x18, x16
	mov	w0, w10
.LBB8_49:                               // %L.LB9_402
                                        //   Parent Loop BB8_48 Depth=1
                                        // =>  This Loop Header: Depth=2
                                        //       Child Loop BB8_50 Depth 3
	mov	x1, xzr
	mov	p2.b, p0.b
.LBB8_50:                               // %vector.body181
                                        //   Parent Loop BB8_48 Depth=1
                                        //     Parent Loop BB8_49 Depth=2
                                        // =>    This Inner Loop Header: Depth=3
	st1w	{z0.s}, p2, [x18, x1, lsl #2]
	incw	x1
	nor	p2.b, p1/z, p2.b, p2.b
	whilelo	p3.s, x1, x13
	brkb	p2.b, p1/z, p2.b
	brkns	p3.b, p1/z, p2.b, p3.b
	mov	p2.b, p3.b
	b.mi	.LBB8_50
// BB#51:                               // %L.LB9_610
                                        //   in Loop: Header=BB8_49 Depth=2
	subs	w0, w0, #1              // =1
	add	x18, x18, x14
	b.gt	.LBB8_49
// BB#52:                               // %L.LB9_611
                                        //   in Loop: Header=BB8_48 Depth=1
	subs	w17, w17, #1            // =1
	add	x16, x16, x15
	b.gt	.LBB8_48
.LBB8_53:                               // %L.LB9_400
	cmp	w11, #1                 // =1
	b.lt	.LBB8_65
// BB#54:                               // %L.LB9_400
	cmp	w10, #1                 // =1
	b.lt	.LBB8_65
// BB#55:                               // %L.LB9_400
	ldr	w13, [x19, #460]
	cmp	w13, #1                 // =1
	b.lt	.LBB8_65
// BB#56:                               // %L.LB9_400
	cmp	w8, #1                  // =1
	b.lt	.LBB8_65
// BB#57:                               // %L.LB9_408.preheader
	ldrsw	x14, [x19, #424]
	ldrsw	x16, [x19, #472]
	ldrsw	x17, [x19, #364]
	ldrsw	x0, [x19, #456]
	ldrsw	x15, [x19, #448]
	mvn	w1, w11
	cmn	w1, #2                  // =2
	orr	w1, wzr, #0xfffffffe
	ldr	x18, [x19, #320]
	csinv	w1, w1, w11, le
	add	w1, w11, w1
	madd	x0, x0, x16, x17
	lsl	x14, x14, #2
	add	w1, w1, #1              // =1
	lsl	x15, x15, #2
	add	x0, x14, x0, lsl #2
	add	x17, x1, #1             // =1
	add	x0, x0, x15
	fmov	z0.s, #1.00000000
	lsl	x16, x16, #2
	whilelo	p0.s, xzr, x17
	add	x18, x18, x0
	ptrue	p1.s
.LBB8_58:                               // %L.LB9_408
                                        // =>This Loop Header: Depth=1
                                        //     Child Loop BB8_59 Depth 2
                                        //       Child Loop BB8_60 Depth 3
                                        //         Child Loop BB8_61 Depth 4
	mov	x0, x18
	mov	w1, w8
.LBB8_59:                               // %L.LB9_411
                                        //   Parent Loop BB8_58 Depth=1
                                        // =>  This Loop Header: Depth=2
                                        //       Child Loop BB8_60 Depth 3
                                        //         Child Loop BB8_61 Depth 4
	mov	x2, x0
	mov	w3, w10
.LBB8_60:                               // %L.LB9_414
                                        //   Parent Loop BB8_58 Depth=1
                                        //     Parent Loop BB8_59 Depth=2
                                        // =>    This Loop Header: Depth=3
                                        //         Child Loop BB8_61 Depth 4
	mov	x4, xzr
	mov	p2.b, p0.b
.LBB8_61:                               // %vector.body222
                                        //   Parent Loop BB8_58 Depth=1
                                        //     Parent Loop BB8_59 Depth=2
                                        //       Parent Loop BB8_60 Depth=3
                                        // =>      This Inner Loop Header: Depth=4
	st1w	{z0.s}, p2, [x2, x4, lsl #2]
	incw	x4
	nor	p2.b, p1/z, p2.b, p2.b
	whilelo	p3.s, x4, x17
	brkb	p2.b, p1/z, p2.b
	brkns	p3.b, p1/z, p2.b, p3.b
	mov	p2.b, p3.b
	b.mi	.LBB8_61
// BB#62:                               // %L.LB9_612
                                        //   in Loop: Header=BB8_60 Depth=3
	subs	w3, w3, #1              // =1
	add	x2, x2, x14
	b.gt	.LBB8_60
// BB#63:                               // %L.LB9_613
                                        //   in Loop: Header=BB8_59 Depth=2
	subs	w1, w1, #1              // =1
	add	x0, x0, x15
	b.gt	.LBB8_59
// BB#64:                               // %L.LB9_614
                                        //   in Loop: Header=BB8_58 Depth=1
	subs	w13, w13, #1            // =1
	add	x18, x18, x16
	b.gt	.LBB8_58
.LBB8_65:                               // %L.LB9_409
	tbnz	w12, #0, .LBB8_72
// BB#66:                               // %L.LB9_420.preheader
	ldrsw	x12, [x21, #104]
	mvn	w16, w11
	ldrsw	x13, [x21, #128]
	ldrsw	x14, [x21, #44]
	cmn	w16, #2                 // =2
	orr	w16, wzr, #0xfffffffe
	csinv	w16, w16, w11, le
	ldr	x15, [x21]
	add	w11, w11, w16
	add	w16, w11, #1            // =1
	lsl	x11, x12, #2
	lsl	x12, x13, #2
	add	x14, x11, x14, lsl #2
	add	x13, x16, #1            // =1
	add	x14, x14, x12
	fmov	z0.s, #1.00000000
	whilelo	p0.s, xzr, x13
	add	x14, x15, x14
	ptrue	p1.s
	mov	w15, w8
.LBB8_67:                               // %L.LB9_420
                                        // =>This Loop Header: Depth=1
                                        //     Child Loop BB8_68 Depth 2
                                        //       Child Loop BB8_69 Depth 3
	mov	x16, x14
	mov	w17, w10
.LBB8_68:                               // %L.LB9_423
                                        //   Parent Loop BB8_67 Depth=1
                                        // =>  This Loop Header: Depth=2
                                        //       Child Loop BB8_69 Depth 3
	mov	x18, xzr
	mov	p2.b, p0.b
.LBB8_69:                               // %vector.body266
                                        //   Parent Loop BB8_67 Depth=1
                                        //     Parent Loop BB8_68 Depth=2
                                        // =>    This Inner Loop Header: Depth=3
	st1w	{z0.s}, p2, [x16, x18, lsl #2]
	incw	x18
	nor	p2.b, p1/z, p2.b, p2.b
	whilelo	p3.s, x18, x13
	brkb	p2.b, p1/z, p2.b
	brkns	p3.b, p1/z, p2.b, p3.b
	mov	p2.b, p3.b
	b.mi	.LBB8_69
// BB#70:                               // %L.LB9_615
                                        //   in Loop: Header=BB8_68 Depth=2
	subs	w17, w17, #1            // =1
	add	x16, x16, x11
	b.gt	.LBB8_68
// BB#71:                               // %L.LB9_616
                                        //   in Loop: Header=BB8_67 Depth=1
	subs	w15, w15, #1            // =1
	add	x14, x14, x12
	b.gt	.LBB8_67
.LBB8_72:                               // %L.LB9_421
	cmp	w8, #1                  // =1
	b.lt	.LBB8_81
// BB#73:                               // %L.LB9_429.preheader
	ldr	w10, [x20, #92]
	cmp	w10, #1                 // =1
	b.lt	.LBB8_81
// BB#74:                               // %L.LB9_429.preheader
	ldr	w11, [x20, #68]
	cmp	w11, #1                 // =1
	b.lt	.LBB8_81
// BB#75:                               // %L.LB9_429.preheader41
	mvn	w15, w11
	ldr	w12, [x9, #20]
	ldrsw	x13, [x20, #104]
	ldrsw	x9, [x20, #44]
	ldrsw	x14, [x20, #88]
	cmn	w15, #2                 // =2
	orr	w15, wzr, #0xfffffffe
	csinv	w15, w15, w11, le
	add	w15, w11, w15
	ldrsw	x11, [x20, #64]
	ldrsw	x16, [x20, #128]
	madd	x9, x14, x13, x9
	ldr	x14, [x20]
	add	x17, x9, x11
	sub	w18, w12, #1            // =1
	lsl	x11, x16, #2
	add	w15, w15, #1            // =1
	lsl	x12, x13, #2
	mul	w16, w18, w18
	add	x13, x15, #1            // =1
	add	x15, x11, x17, lsl #2
	fmov	s0, #1.00000000
	scvtf	s1, w16
	add	x14, x14, x15
	orr	w9, wzr, #0x1
	whilelo	p0.s, xzr, x13
	fdiv	s0, s0, s1
	sub	x14, x14, #4            // =4
	ptrue	p1.s
.LBB8_76:                               // %L.LB9_429
                                        // =>This Loop Header: Depth=1
                                        //     Child Loop BB8_77 Depth 2
                                        //       Child Loop BB8_78 Depth 3
	sub	w15, w9, #1             // =1
	mul	w15, w15, w15
	scvtf	s1, w15
	fmul	s1, s0, s1
	mov	z1.s, p1/m, s1
	mov	x15, x14
	mov	w16, w10
.LBB8_77:                               // %L.LB9_432
                                        //   Parent Loop BB8_76 Depth=1
                                        // =>  This Loop Header: Depth=2
                                        //       Child Loop BB8_78 Depth 3
	mov	x17, xzr
	mov	p2.b, p0.b
.LBB8_78:                               // %vector.body306
                                        //   Parent Loop BB8_76 Depth=1
                                        //     Parent Loop BB8_77 Depth=2
                                        // =>    This Inner Loop Header: Depth=3
	st1w	{z1.s}, p2, [x15, x17, lsl #2]
	incw	x17
	nor	p2.b, p1/z, p2.b, p2.b
	whilelo	p3.s, x17, x13
	brkb	p2.b, p1/z, p2.b
	brkns	p3.b, p1/z, p2.b, p3.b
	mov	p2.b, p3.b
	b.mi	.LBB8_78
// BB#79:                               // %L.LB9_617
                                        //   in Loop: Header=BB8_77 Depth=2
	subs	w16, w16, #1            // =1
	add	x15, x15, x12
	b.gt	.LBB8_77
// BB#80:                               // %L.LB9_433
                                        //   in Loop: Header=BB8_76 Depth=1
	add	x9, x9, #1              // =1
	subs	w8, w8, #1              // =1
	add	x14, x14, x11
	b.gt	.LBB8_76
.LBB8_81:                               // %L.LB9_430
	ldp	x19, x30, [sp, #32]     // 8-byte Folded Reload
	ldp	x21, x20, [sp, #16]     // 8-byte Folded Reload
	ldr	x22, [sp], #48          // 8-byte Folded Reload
	ret
.Lfunc_end8:
	.size	initmt_, .Lfunc_end8-initmt_
	.cfi_endproc
                                        // -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3               // -- Begin function initmem_
.LCPI9_0:
	.word	3                       // 0x3
	.word	27                      // 0x1b
.LCPI9_1:
	.word	1                       // 0x1
	.word	4                       // 0x4
.LCPI9_2:
	.word	4                       // 0x4
	.word	27                      // 0x1b
	.text
	.globl	initmem_
	.p2align	2
	.type	initmem_,@function
initmem_:                               // @initmem_
	.cfi_startproc
// BB#0:                                // %L.entry
	sub	sp, sp, #80             // =80
	stp	d9, d8, [sp, #32]       // 8-byte Folded Spill
	stp	x21, x20, [sp, #48]     // 8-byte Folded Spill
	stp	x19, x30, [sp, #64]     // 8-byte Folded Spill
.Lcfi26:
	.cfi_def_cfa_offset 80
.Lcfi27:
	.cfi_offset w30, -8
.Lcfi28:
	.cfi_offset w19, -16
.Lcfi29:
	.cfi_offset w20, -24
.Lcfi30:
	.cfi_offset w21, -32
.Lcfi31:
	.cfi_offset b8, -40
.Lcfi32:
	.cfi_offset b9, -48
	adrp	x21, _others_0_
	add	x21, x21, :lo12:_others_0_
	adrp	x8, .LCPI9_0
	ldp	w9, w11, [x21]
	ldr	d8, [x8, :lo12:.LCPI9_0]
	ldr	w8, [x21, #8]
	adrp	x19, _pres_0_
	add	x19, x19, :lo12:_pres_0_
	orr	w10, wzr, #0x1
	orr	w12, wzr, #0x4
	cmp	w9, #0                  // =0
	str	w10, [x19, #64]
	str	w9, [x19, #68]
	stp	w10, w11, [x19, #88]
	stp	w10, w8, [x19, #112]
	stur	d8, [x19, #20]
	str	w12, [x19, #28]
	b.le	.LBB9_29
// BB#1:                                // %L.LB10_408
	cmp	w11, #0                 // =0
	str	w10, [x19, #80]
	b.le	.LBB9_30
.LBB9_2:                                // %L.LB10_409
	cmp	w8, #0                  // =0
	mul	w10, w11, w9
	str	w9, [x19, #104]
	b.gt	.LBB9_4
// BB#3:                                // %L.LB10_738
	mov	w8, wzr
	str	wzr, [x19, #116]
.LBB9_4:                                // %L.LB10_410
	add	w9, w10, w9
	str	w10, [x19, #128]
	mul	w8, w8, w10
	mov	w10, #536936448
	mov	w11, #35
	mov	x0, x19
	neg	w9, w9
	str	xzr, [x19, #48]
	stp	w10, w8, [x19, #32]
	stp	w8, w9, [x19, #40]
	str	w11, [x0, #16]!
	mov	w1, #27
	bl	f90_set_intrin_type
	ldrsw	x8, [x19, #92]
	ldrsw	x9, [x19, #68]
	ldrsw	x10, [x19, #116]
	adrp	x1, .C386_initmem_
	adrp	x2, .C382_initmem_
	mul	x8, x8, x9
	adrp	x6, .C285_initmem_
	adrp	x7, .C284_initmem_
	mul	x8, x8, x10
	add	x1, x1, :lo12:.C386_initmem_
	add	x2, x2, :lo12:.C382_initmem_
	add	x6, x6, :lo12:.C285_initmem_
	add	x7, x7, :lo12:.C284_initmem_
	add	x0, sp, #24             // =24
	mov	x3, xzr
	mov	x4, x19
	mov	x5, xzr
	str	x8, [sp, #24]
	stp	xzr, xzr, [sp]
	bl	f90_alloc04_chk
	adrp	x8, .LCPI9_1
	ldr	d0, [x8, :lo12:.LCPI9_1]
	ldp	w8, w10, [x21]
	adrp	x12, .LCPI9_2
	ldr	w9, [x21, #8]
	ldr	d9, [x12, :lo12:.LCPI9_2]
	adrp	x19, _mtrx_0_
	add	x19, x19, :lo12:_mtrx_0_
	orr	w11, wzr, #0x1
	orr	w12, wzr, #0x4
	cmp	w8, #0                  // =0
	str	d0, [x19, #136]
	stp	w11, w8, [x19, #64]
	stp	w11, w10, [x19, #88]
	stp	w11, w9, [x19, #112]
	stur	d9, [x19, #20]
	str	w12, [x19, #28]
	b.le	.LBB9_31
// BB#5:                                // %L.LB10_413
	cmp	w10, #0                 // =0
	str	w11, [x19, #80]
	b.le	.LBB9_32
.LBB9_6:                                // %L.LB10_414
	cmp	w9, #0                  // =0
	mul	w10, w10, w8
	str	w8, [x19, #104]
	b.gt	.LBB9_8
// BB#7:                                // %L.LB10_741
	mov	w9, wzr
	str	wzr, [x19, #116]
.LBB9_8:                                // %L.LB10_416
	mul	w9, w9, w10
	add	w8, w10, w8
	add	w8, w8, w9
	str	w10, [x19, #128]
	mov	w10, #536936448
	mov	w11, #35
	mov	x0, x19
	str	w9, [x19, #152]
	lsl	w9, w9, #2
	neg	w8, w8
	str	xzr, [x19, #48]
	stp	w10, w9, [x19, #32]
	stp	w9, w8, [x19, #40]
	str	w11, [x0, #16]!
	mov	w1, #27
	bl	f90_set_intrin_type
	ldrsw	x8, [x19, #92]
	ldrsw	x9, [x19, #68]
	ldrsw	x10, [x19, #116]
	ldrsw	x11, [x19, #140]
	adrp	x1, .C386_initmem_
	mul	x8, x8, x9
	mul	x8, x8, x10
	adrp	x2, .C382_initmem_
	adrp	x6, .C285_initmem_
	adrp	x7, .C284_initmem_
	mul	x8, x8, x11
	add	x1, x1, :lo12:.C386_initmem_
	add	x2, x2, :lo12:.C382_initmem_
	add	x6, x6, :lo12:.C285_initmem_
	add	x7, x7, :lo12:.C284_initmem_
	add	x0, sp, #24             // =24
	mov	x3, xzr
	mov	x4, x19
	mov	x5, xzr
	str	x8, [sp, #24]
	stp	xzr, xzr, [sp]
	bl	f90_alloc04_chk
	ldp	w8, w10, [x21]
	ldr	w9, [x21, #8]
	mov	x12, #12884901891
	movk	x12, #1
	orr	w11, wzr, #0x1
	str	x12, [x19, #296]
	orr	w12, wzr, #0x4
	cmp	w8, #0                  // =0
	stur	d9, [x19, #180]
	stp	w11, w8, [x19, #224]
	str	w11, [x19, #272]
	stp	w11, w10, [x19, #248]
	str	w9, [x19, #276]
	str	w12, [x19, #188]
	b.le	.LBB9_33
// BB#9:                                // %L.LB10_417
	cmp	w10, #0                 // =0
	str	w11, [x19, #240]
	b.le	.LBB9_34
.LBB9_10:                               // %L.LB10_418
	cmp	w9, #0                  // =0
	mul	w10, w10, w8
	str	w8, [x19, #264]
	b.gt	.LBB9_12
// BB#11:                               // %L.LB10_745
	mov	w9, wzr
	str	wzr, [x19, #276]
.LBB9_12:                               // %L.LB10_420
	mov	w11, #35
	mov	x20, x19
	mul	w9, w9, w10
	add	w8, w10, w8
	str	w11, [x20, #176]!
	add	w8, w8, w9
	mov	w11, #536936448
	str	w10, [x20, #112]
	add	w10, w9, w9, lsl #1
	neg	w8, w8
	mov	w1, #27
	mov	x0, x20
	str	w9, [x20, #136]
	str	xzr, [x20, #32]
	stp	w10, w8, [x20, #24]
	stp	w11, w10, [x20, #16]
	bl	f90_set_intrin_type
	ldrsw	x8, [x20, #76]
	ldrsw	x9, [x20, #52]
	ldrsw	x10, [x20, #100]
	ldrsw	x11, [x20, #124]
	adrp	x1, .C386_initmem_
	mul	x8, x8, x9
	mul	x8, x8, x10
	adrp	x2, .C382_initmem_
	adrp	x6, .C283_initmem_
	adrp	x7, .C284_initmem_
	mul	x8, x8, x11
	sub	x4, x20, #16            // =16
	add	x1, x1, :lo12:.C386_initmem_
	add	x2, x2, :lo12:.C382_initmem_
	add	x6, x6, :lo12:.C283_initmem_
	add	x7, x7, :lo12:.C284_initmem_
	add	x0, sp, #24             // =24
	mov	x3, xzr
	mov	x5, xzr
	str	x8, [sp, #24]
	stp	xzr, xzr, [sp]
	bl	f90_alloc04_chk
	ldp	w8, w10, [x21]
	ldr	w9, [x21, #8]
	mov	x12, #12884901891
	movk	x12, #1
	orr	w11, wzr, #0x1
	str	x12, [x20, #280]
	orr	w12, wzr, #0x4
	cmp	w8, #0                  // =0
	stur	d9, [x20, #164]
	stp	w11, w8, [x20, #208]
	str	w11, [x20, #256]
	stp	w11, w10, [x20, #232]
	str	w9, [x20, #260]
	str	w12, [x20, #172]
	b.le	.LBB9_35
// BB#13:                               // %L.LB10_421
	cmp	w10, #0                 // =0
	str	w11, [x19, #400]
	b.le	.LBB9_36
.LBB9_14:                               // %L.LB10_422
	cmp	w9, #0                  // =0
	mul	w10, w10, w8
	str	w8, [x19, #424]
	b.gt	.LBB9_16
// BB#15:                               // %L.LB10_749
	mov	w9, wzr
	str	wzr, [x19, #436]
.LBB9_16:                               // %L.LB10_424
	mul	w9, w9, w10
	add	w8, w10, w8
	str	w10, [x19, #448]
	mov	w10, #536936448
	add	w8, w8, w9
	str	w10, [x19, #352]
	mov	w10, #35
	str	w9, [x19, #472]
	add	w9, w9, w9, lsl #1
	neg	w8, w8
	add	x0, x19, #336           // =336
	mov	w1, #27
	str	xzr, [x19, #368]
	str	w10, [x19, #336]
	str	w9, [x19, #360]
	str	w9, [x19, #356]
	str	w8, [x19, #364]
	bl	f90_set_intrin_type
	ldrsw	x8, [x19, #412]
	ldrsw	x9, [x19, #388]
	ldrsw	x10, [x19, #436]
	ldrsw	x11, [x19, #460]
	adrp	x1, .C386_initmem_
	mul	x8, x8, x9
	mul	x8, x8, x10
	adrp	x2, .C382_initmem_
	adrp	x6, .C283_initmem_
	adrp	x7, .C284_initmem_
	mul	x8, x8, x11
	add	x4, x19, #320           // =320
	add	x1, x1, :lo12:.C386_initmem_
	add	x2, x2, :lo12:.C382_initmem_
	add	x6, x6, :lo12:.C283_initmem_
	add	x7, x7, :lo12:.C284_initmem_
	add	x0, sp, #24             // =24
	mov	x3, xzr
	mov	x5, xzr
	str	x8, [sp, #24]
	stp	xzr, xzr, [sp]
	bl	f90_alloc04_chk
	ldp	w8, w10, [x21]
	ldr	w9, [x21, #8]
	adrp	x19, _bound_0_
	add	x19, x19, :lo12:_bound_0_
	orr	w11, wzr, #0x1
	orr	w12, wzr, #0x4
	cmp	w8, #0                  // =0
	stp	w11, w8, [x19, #64]
	stur	d8, [x19, #20]
	stp	w11, w10, [x19, #88]
	stp	w11, w9, [x19, #112]
	str	w12, [x19, #28]
	b.le	.LBB9_37
// BB#17:                               // %L.LB10_425
	cmp	w10, #0                 // =0
	str	w11, [x19, #80]
	b.le	.LBB9_38
.LBB9_18:                               // %L.LB10_426
	cmp	w9, #0                  // =0
	mul	w10, w10, w8
	str	w8, [x19, #104]
	b.gt	.LBB9_20
// BB#19:                               // %L.LB10_753
	mov	w9, wzr
	str	wzr, [x19, #116]
.LBB9_20:                               // %L.LB10_427
	add	w8, w10, w8
	str	w10, [x19, #128]
	mul	w9, w9, w10
	mov	w10, #536936448
	mov	w11, #35
	mov	x0, x19
	neg	w8, w8
	str	xzr, [x19, #48]
	stp	w10, w9, [x19, #32]
	stp	w9, w8, [x19, #40]
	str	w11, [x0, #16]!
	mov	w1, #27
	bl	f90_set_intrin_type
	ldrsw	x8, [x19, #92]
	ldrsw	x9, [x19, #68]
	ldrsw	x10, [x19, #116]
	adrp	x1, .C386_initmem_
	adrp	x2, .C382_initmem_
	mul	x8, x8, x9
	adrp	x6, .C285_initmem_
	adrp	x7, .C284_initmem_
	mul	x8, x8, x10
	add	x1, x1, :lo12:.C386_initmem_
	add	x2, x2, :lo12:.C382_initmem_
	add	x6, x6, :lo12:.C285_initmem_
	add	x7, x7, :lo12:.C284_initmem_
	add	x0, sp, #24             // =24
	mov	x3, xzr
	mov	x4, x19
	mov	x5, xzr
	str	x8, [sp, #24]
	stp	xzr, xzr, [sp]
	bl	f90_alloc04_chk
	ldp	w8, w10, [x21]
	ldr	w9, [x21, #8]
	adrp	x19, _work_0_
	add	x19, x19, :lo12:_work_0_
	orr	w11, wzr, #0x1
	orr	w12, wzr, #0x4
	cmp	w8, #0                  // =0
	stp	w11, w8, [x19, #64]
	stur	d8, [x19, #20]
	stp	w11, w10, [x19, #88]
	stp	w11, w9, [x19, #112]
	str	w12, [x19, #28]
	b.le	.LBB9_39
// BB#21:                               // %L.LB10_428
	cmp	w10, #0                 // =0
	str	w11, [x19, #80]
	b.le	.LBB9_40
.LBB9_22:                               // %L.LB10_429
	cmp	w9, #0                  // =0
	mul	w10, w10, w8
	str	w8, [x19, #104]
	b.gt	.LBB9_24
// BB#23:                               // %L.LB10_756
	mov	w9, wzr
	str	wzr, [x19, #116]
.LBB9_24:                               // %L.LB10_430
	add	w8, w10, w8
	str	w10, [x19, #128]
	mul	w9, w9, w10
	mov	w10, #536936448
	mov	w11, #35
	mov	x0, x19
	neg	w8, w8
	str	xzr, [x19, #48]
	stp	w10, w9, [x19, #32]
	stp	w9, w8, [x19, #40]
	str	w11, [x0, #16]!
	mov	w1, #27
	bl	f90_set_intrin_type
	ldrsw	x8, [x19, #92]
	ldrsw	x9, [x19, #68]
	ldrsw	x10, [x19, #116]
	adrp	x1, .C386_initmem_
	adrp	x2, .C382_initmem_
	mul	x8, x8, x9
	adrp	x6, .C285_initmem_
	adrp	x7, .C284_initmem_
	mul	x8, x8, x10
	add	x1, x1, :lo12:.C386_initmem_
	add	x2, x2, :lo12:.C382_initmem_
	add	x6, x6, :lo12:.C285_initmem_
	add	x7, x7, :lo12:.C284_initmem_
	add	x0, sp, #24             // =24
	mov	x3, xzr
	mov	x4, x19
	mov	x5, xzr
	str	x8, [sp, #24]
	stp	xzr, xzr, [sp]
	bl	f90_alloc04_chk
	ldp	w8, w10, [x21]
	ldr	w9, [x21, #8]
	orr	w11, wzr, #0x1
	orr	w12, wzr, #0x4
	cmp	w8, #0                  // =0
	stur	d8, [x19, #156]
	stp	w11, w8, [x19, #200]
	stp	w11, w10, [x19, #224]
	stp	w11, w9, [x19, #248]
	str	w12, [x19, #164]
	b.le	.LBB9_41
// BB#25:                               // %L.LB10_431
	cmp	w10, #0                 // =0
	str	w11, [x19, #216]
	b.le	.LBB9_42
.LBB9_26:                               // %L.LB10_432
	cmp	w9, #0                  // =0
	mul	w10, w10, w8
	str	w8, [x19, #240]
	b.gt	.LBB9_28
// BB#27:                               // %L.LB10_759
	mov	w9, wzr
	str	wzr, [x19, #252]
.LBB9_28:                               // %L.LB10_433
	mov	w11, #35
	add	w8, w10, w8
	str	w11, [x19, #152]!
	mul	w9, w9, w10
	mov	w12, #536936448
	neg	w8, w8
	mov	w1, #27
	mov	x0, x19
	str	w10, [x19, #112]
	stp	w9, w8, [x19, #24]
	str	xzr, [x19, #32]
	stp	w12, w9, [x19, #16]
	bl	f90_set_intrin_type
	ldrsw	x8, [x19, #76]
	ldrsw	x9, [x19, #52]
	ldrsw	x10, [x19, #100]
	adrp	x1, .C386_initmem_
	adrp	x2, .C382_initmem_
	mul	x8, x8, x9
	adrp	x6, .C283_initmem_
	adrp	x7, .C284_initmem_
	mul	x8, x8, x10
	sub	x4, x19, #16            // =16
	add	x1, x1, :lo12:.C386_initmem_
	add	x2, x2, :lo12:.C382_initmem_
	add	x6, x6, :lo12:.C283_initmem_
	add	x7, x7, :lo12:.C284_initmem_
	add	x0, sp, #24             // =24
	mov	x3, xzr
	mov	x5, xzr
	str	x8, [sp, #24]
	stp	xzr, xzr, [sp]
	bl	f90_alloc04_chk
	ldp	x19, x30, [sp, #64]     // 8-byte Folded Reload
	ldp	x21, x20, [sp, #48]     // 8-byte Folded Reload
	ldp	d9, d8, [sp, #32]       // 8-byte Folded Reload
	add	sp, sp, #80             // =80
	ret
.LBB9_29:                               // %L.LB10_736
	mov	w9, wzr
	str	wzr, [x19, #68]
	cmp	w11, #0                 // =0
	str	w10, [x19, #80]
	b.gt	.LBB9_2
.LBB9_30:                               // %L.LB10_737
	mov	w11, wzr
	str	wzr, [x19, #92]
	b	.LBB9_2
.LBB9_31:                               // %L.LB10_739
	mov	w8, wzr
	str	wzr, [x19, #68]
	cmp	w10, #0                 // =0
	str	w11, [x19, #80]
	b.gt	.LBB9_6
.LBB9_32:                               // %L.LB10_740
	mov	w10, wzr
	str	wzr, [x19, #92]
	b	.LBB9_6
.LBB9_33:                               // %L.LB10_743
	mov	w8, wzr
	str	wzr, [x19, #228]
	cmp	w10, #0                 // =0
	str	w11, [x19, #240]
	b.gt	.LBB9_10
.LBB9_34:                               // %L.LB10_744
	mov	w10, wzr
	str	wzr, [x19, #252]
	b	.LBB9_10
.LBB9_35:                               // %L.LB10_747
	mov	w8, wzr
	str	wzr, [x19, #388]
	cmp	w10, #0                 // =0
	str	w11, [x19, #400]
	b.gt	.LBB9_14
.LBB9_36:                               // %L.LB10_748
	mov	w10, wzr
	str	wzr, [x19, #412]
	b	.LBB9_14
.LBB9_37:                               // %L.LB10_751
	mov	w8, wzr
	str	wzr, [x19, #68]
	cmp	w10, #0                 // =0
	str	w11, [x19, #80]
	b.gt	.LBB9_18
.LBB9_38:                               // %L.LB10_752
	mov	w10, wzr
	str	wzr, [x19, #92]
	b	.LBB9_18
.LBB9_39:                               // %L.LB10_754
	mov	w8, wzr
	str	wzr, [x19, #68]
	cmp	w10, #0                 // =0
	str	w11, [x19, #80]
	b.gt	.LBB9_22
.LBB9_40:                               // %L.LB10_755
	mov	w10, wzr
	str	wzr, [x19, #92]
	b	.LBB9_22
.LBB9_41:                               // %L.LB10_757
	mov	w8, wzr
	str	wzr, [x19, #204]
	cmp	w10, #0                 // =0
	str	w11, [x19, #216]
	b.gt	.LBB9_26
.LBB9_42:                               // %L.LB10_758
	mov	w10, wzr
	str	wzr, [x19, #228]
	b	.LBB9_26
.Lfunc_end9:
	.size	initmem_, .Lfunc_end9-initmem_
	.cfi_endproc
                                        // -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2               // -- Begin function jacobi_
.LCPI10_0:
	.word	1061997773              // float 0.800000011
	.text
	.globl	jacobi_
	.p2align	2
	.type	jacobi_,@function
jacobi_:                                // @jacobi_
// BB#0:                                // %L.entry
	ldr	w2, [x0]
	cmp	w2, #1                  // =1
	b.lt	.LBB10_23
// BB#1:                                // %L.LB11_385.preheader
	str	d14, [sp, #-160]!       // 8-byte Folded Spill
	stp	d13, d12, [sp, #16]     // 8-byte Folded Spill
	stp	d11, d10, [sp, #32]     // 8-byte Folded Spill
	stp	d9, d8, [sp, #48]       // 8-byte Folded Spill
	stp	x28, x27, [sp, #64]     // 8-byte Folded Spill
	stp	x26, x25, [sp, #80]     // 8-byte Folded Spill
	stp	x24, x23, [sp, #96]     // 8-byte Folded Spill
	stp	x22, x21, [sp, #112]    // 8-byte Folded Spill
	stp	x20, x19, [sp, #128]    // 8-byte Folded Spill
	stp	x29, x30, [sp, #144]    // 8-byte Folded Spill
	sub	sp, sp, #544            // =544
	adrp	x8, _others_0_
	add	x8, x8, :lo12:_others_0_
	ldp	w3, w22, [x8, #16]
	ldr	w12, [x8, #12]
	adrp	x9, .LCPI10_0
	ldr	s1, [x9, :lo12:.LCPI10_0]
	cmp	w22, #3                 // =3
	cset	w8, lt
	subs	w9, w12, #3             // =3
	cset	w10, lt
	cmp	w3, #3                  // =3
	cset	w11, lt
	str	x1, [sp, #8]            // 8-byte Folded Spill
	adrp	x30, _work_0_
	adrp	x1, _pres_0_
	ptrue	p0.s
	orr	w8, w8, w11
	add	x30, x30, :lo12:_work_0_
	add	x1, x1, :lo12:_pres_0_
	mov	z0.s, #0                // =0x0
	ptrue	p1.s, vl1
	sub	x4, x12, #2             // =2
	add	x18, x9, #1             // =1
	orr	w5, w10, w8
	mov	z1.s, p0/m, s1
	str	x12, [sp, #512]         // 8-byte Folded Spill
	str	x22, [sp, #136]         // 8-byte Folded Spill
	str	x3, [sp, #288]          // 8-byte Folded Spill
	str	w5, [sp, #24]           // 4-byte Folded Spill
	str	x18, [sp, #16]          // 8-byte Folded Spill
.LBB10_2:                               // %L.LB11_385
                                        // =>This Loop Header: Depth=1
                                        //     Child Loop BB10_4 Depth 2
                                        //       Child Loop BB10_7 Depth 3
                                        //         Child Loop BB10_10 Depth 4
                                        //     Child Loop BB10_16 Depth 2
                                        //       Child Loop BB10_17 Depth 3
                                        //         Child Loop BB10_18 Depth 4
	cmp	w22, #3                 // =3
	fmov	s2, wzr
	b.lt	.LBB10_14
// BB#3:                                // %L.LB11_388.preheader
                                        //   in Loop: Header=BB10_2 Depth=1
	ldrsw	x8, [x30, #104]
	adrp	x12, _mtrx_0_
	add	x12, x12, :lo12:_mtrx_0_
	str	w2, [sp, #28]           // 4-byte Folded Spill
	str	x8, [sp, #536]          // 8-byte Folded Spill
	ldrsw	x8, [x30, #128]
	ldrsw	x17, [x1, #44]
	ldr	x2, [x1]
	mov	x23, x12
	mov	x9, x4
	ldrsw	x4, [x23, #364]
	ldrsw	x0, [x30, #44]
	ldr	x16, [x30]
	ldrsw	x3, [x23, #472]
	ldrsw	x26, [x30, #180]
	ldr	x27, [x30, #136]
	ldrsw	x29, [x30, #240]
	ldrsw	x30, [x30, #264]
	str	x8, [sp, #552]          // 8-byte Folded Spill
	ldrsw	x22, [x23, #44]
	adrp	x8, _bound_0_
	add	x17, x2, x17, lsl #2
	ldrsw	x20, [x23, #128]
	add	x8, x8, :lo12:_bound_0_
	str	x17, [sp, #280]         // 8-byte Folded Spill
	lsl	x17, x4, #2
	orr	w4, wzr, #0xc
	ldrsw	x19, [x23, #104]
	ldrsw	x24, [x8, #104]
	ldrsw	x25, [x8, #44]
	ldr	x28, [x8]
	add	x16, x16, x0, lsl #2
	add	x0, x17, x3, lsl #2
	add	x2, x17, x3, lsl #3
	madd	x17, x3, x4, x17
	ldrsw	x3, [x8, #128]
	lsl	x8, x30, #2
	str	x8, [sp, #128]          // 8-byte Folded Spill
	lsl	x8, x29, #2
	str	x8, [sp, #216]          // 8-byte Folded Spill
	lsl	x8, x22, #2
	ldrsw	x6, [x23, #204]
	str	x8, [sp, #208]          // 8-byte Folded Spill
	lsl	x8, x20, #2
	ldrsw	x10, [x1, #104]
	ldrsw	x11, [x1, #128]
	ldrsw	x1, [x23, #288]
	str	x8, [sp, #120]          // 8-byte Folded Spill
	lsl	x8, x19, #2
	ldrsw	x15, [x23, #264]
	str	x8, [sp, #200]          // 8-byte Folded Spill
	lsl	x8, x3, #2
	str	x8, [sp, #112]          // 8-byte Folded Spill
	lsl	x8, x24, #2
	str	x8, [sp, #192]          // 8-byte Folded Spill
	lsl	x8, x6, #2
	ldrsw	x13, [x23, #448]
	str	x8, [sp, #184]          // 8-byte Folded Spill
	lsl	x8, x1, #2
	ldrsw	x12, [x23, #424]
	str	x8, [sp, #104]          // 8-byte Folded Spill
	lsl	x8, x15, #2
	str	x8, [sp, #176]          // 8-byte Folded Spill
	lsl	x8, x11, #2
	str	x8, [sp, #96]           // 8-byte Folded Spill
	lsl	x8, x10, #2
	str	x8, [sp, #168]          // 8-byte Folded Spill
	lsl	x8, x13, #2
	str	x8, [sp, #88]           // 8-byte Folded Spill
	lsl	x8, x12, #2
	str	x8, [sp, #160]          // 8-byte Folded Spill
	ldr	x8, [sp, #552]          // 8-byte Folded Reload
	ldr	x14, [x23, #320]
	ldrsw	x5, [x23, #312]
	ldr	x7, [x23, #160]
	lsl	x8, x8, #2
	ldrsw	x21, [x23, #152]
	ldr	x23, [x23]
	str	x8, [sp, #80]           // 8-byte Folded Spill
	ldr	x8, [sp, #536]          // 8-byte Folded Reload
	add	x26, x27, x26, lsl #2
	add	x23, x23, #4            // =4
	add	x25, x28, x25, lsl #2
	lsl	x8, x8, #2
	add	x18, x23, x21, lsl #4
	str	x8, [sp, #152]          // 8-byte Folded Spill
	add	x8, x26, #4             // =4
	str	x18, [sp, #272]         // 8-byte Folded Spill
	add	x18, x23, x21, lsl #2
	str	x8, [sp, #72]           // 8-byte Folded Spill
	add	x8, x25, #4             // =4
	str	x18, [sp, #264]         // 8-byte Folded Spill
	add	x18, x23, x21, lsl #3
	add	x10, x14, #4            // =4
	str	x8, [sp, #64]           // 8-byte Folded Spill
	add	x8, x16, #4             // =4
	add	x7, x7, #4              // =4
	str	x18, [sp, #256]         // 8-byte Folded Spill
	madd	x18, x21, x4, x23
	ldr	x22, [sp, #136]         // 8-byte Folded Reload
	ldr	x3, [sp, #288]          // 8-byte Folded Reload
	str	x8, [sp, #56]           // 8-byte Folded Spill
	add	x8, x10, x0
	str	x18, [sp, #248]         // 8-byte Folded Spill
	add	x18, x7, x5, lsl #2
	str	x8, [sp, #48]           // 8-byte Folded Spill
	add	x8, x10, x2
	str	x18, [sp, #240]         // 8-byte Folded Spill
	add	x18, x7, x5, lsl #3
	str	x8, [sp, #40]           // 8-byte Folded Spill
	add	x8, x10, x17
	str	x18, [sp, #232]         // 8-byte Folded Spill
	madd	x18, x5, x4, x7
	mov	x4, x9
	fmov	s2, wzr
	str	x8, [sp, #32]           // 8-byte Folded Spill
	orr	w8, wzr, #0x2
	str	x18, [sp, #224]         // 8-byte Folded Spill
.LBB10_4:                               // %L.LB11_388
                                        //   Parent Loop BB10_2 Depth=1
                                        // =>  This Loop Header: Depth=2
                                        //       Child Loop BB10_7 Depth 3
                                        //         Child Loop BB10_10 Depth 4
	cmp	w3, #2                  // =2
	b.gt	.LBB10_6
// BB#5:                                // %L.LB11_388.L.LB11_392_crit_edge
                                        //   in Loop: Header=BB10_4 Depth=2
	add	x8, x8, #1              // =1
	cmp	x8, x22
	b.ne	.LBB10_4
	b	.LBB10_13
.LBB10_6:                               // %L.LB11_391.preheader
                                        //   in Loop: Header=BB10_4 Depth=2
	ldr	x10, [sp, #128]         // 8-byte Folded Reload
	ldr	x11, [sp, #72]          // 8-byte Folded Reload
	sub	x9, x8, #1              // =1
	add	x13, x8, #1             // =1
	orr	w22, wzr, #0x2
	madd	x10, x10, x8, x11
	str	x10, [sp, #424]         // 8-byte Folded Spill
	ldr	x10, [sp, #120]         // 8-byte Folded Reload
	ldp	x12, x11, [sp, #56]     // 8-byte Folded Reload
	str	x13, [sp, #144]         // 8-byte Folded Spill
	mul	x10, x10, x8
	str	x10, [sp, #416]         // 8-byte Folded Spill
	ldr	x10, [sp, #112]         // 8-byte Folded Reload
	madd	x10, x10, x8, x11
	str	x10, [sp, #408]         // 8-byte Folded Spill
	ldr	x10, [sp, #104]         // 8-byte Folded Reload
	mul	x10, x10, x8
	str	x10, [sp, #400]         // 8-byte Folded Spill
	ldp	x11, x10, [sp, #80]     // 8-byte Folded Reload
	madd	x11, x11, x8, x12
	str	x11, [sp, #392]         // 8-byte Folded Spill
	ldr	x11, [sp, #96]          // 8-byte Folded Reload
	mul	x10, x10, x8
	mul	x12, x11, x8
	ldr	x8, [sp, #48]           // 8-byte Folded Reload
	mul	x9, x11, x9
	mul	x11, x11, x13
	stp	x9, x12, [sp, #376]     // 8-byte Folded Spill
	add	x8, x8, x10
	stp	x8, x11, [sp, #360]     // 8-byte Folded Spill
	ldr	x8, [sp, #40]           // 8-byte Folded Reload
	add	x8, x8, x10
	str	x8, [sp, #352]          // 8-byte Folded Spill
	ldr	x8, [sp, #32]           // 8-byte Folded Reload
	add	x8, x8, x10
	str	x8, [sp, #344]          // 8-byte Folded Spill
	add	x8, x12, #8             // =8
	str	x8, [sp, #336]          // 8-byte Folded Spill
	add	x8, x12, #4             // =4
	str	x8, [sp, #328]          // 8-byte Folded Spill
	add	x8, x9, #4              // =4
	str	x8, [sp, #320]          // 8-byte Folded Spill
	add	x8, x11, #4             // =4
	str	x8, [sp, #312]          // 8-byte Folded Spill
	add	x8, x11, #8             // =8
	str	x8, [sp, #304]          // 8-byte Folded Spill
	add	x8, x9, #8              // =8
	str	x8, [sp, #296]          // 8-byte Folded Spill
.LBB10_7:                               // %L.LB11_391
                                        //   Parent Loop BB10_2 Depth=1
                                        //     Parent Loop BB10_4 Depth=2
                                        // =>    This Loop Header: Depth=3
                                        //         Child Loop BB10_10 Depth 4
	ldr	x8, [sp, #512]          // 8-byte Folded Reload
	cmp	w8, #2                  // =2
	b.gt	.LBB10_9
// BB#8:                                // %L.LB11_391.L.LB11_395_crit_edge
                                        //   in Loop: Header=BB10_7 Depth=3
	add	x22, x22, #1            // =1
	cmp	x22, x3
	b.ne	.LBB10_7
	b	.LBB10_12
.LBB10_9:                               // %L.LB11_394.preheader
                                        //   in Loop: Header=BB10_7 Depth=3
	ldr	x8, [sp, #216]          // 8-byte Folded Reload
	ldr	x9, [sp, #424]          // 8-byte Folded Reload
	ldr	x12, [sp, #392]         // 8-byte Folded Reload
	ldp	x16, x14, [sp, #248]    // 8-byte Folded Reload
	sub	x10, x22, #1            // =1
	madd	x8, x8, x22, x9
	str	x8, [sp, #496]          // 8-byte Folded Spill
	ldr	x8, [sp, #200]          // 8-byte Folded Reload
	ldr	x9, [sp, #408]          // 8-byte Folded Reload
	add	x1, x22, #1             // =1
	str	x1, [sp, #504]          // 8-byte Folded Spill
	mul	x15, x8, x22
	ldr	x8, [sp, #192]          // 8-byte Folded Reload
	add	x14, x14, x15
	add	x16, x16, x15
	whilelo	p2.s, xzr, x4
	madd	x8, x8, x22, x9
	ldp	x11, x9, [sp, #152]     // 8-byte Folded Reload
	str	x8, [sp, #552]          // 8-byte Folded Spill
	ldp	x18, x8, [sp, #168]     // 8-byte Folded Reload
	mov	x25, xzr
	madd	x11, x11, x22, x12
	ldp	x13, x12, [sp, #264]    // 8-byte Folded Reload
	mul	x2, x18, x10
	ldr	x10, [sp, #224]         // 8-byte Folded Reload
	mul	x8, x8, x22
	add	x0, x12, x15
	add	x7, x13, x15
	ldr	x15, [sp, #240]         // 8-byte Folded Reload
	add	x3, x10, x8
	ldr	x10, [sp, #360]         // 8-byte Folded Reload
	mul	x9, x9, x22
	add	x17, x15, x8
	ldr	x15, [sp, #232]         // 8-byte Folded Reload
	str	x11, [sp, #536]         // 8-byte Folded Spill
	mul	x11, x18, x22
	mul	x1, x18, x1
	add	x19, x15, x8
	add	x8, x10, x9
	ldr	x10, [sp, #352]         // 8-byte Folded Reload
	str	x8, [sp, #528]          // 8-byte Folded Spill
	mov	x22, x4
	sel	z2.s, p1, z2.s, z0.s
	add	x8, x10, x9
	ldp	x29, x10, [sp, #336]    // 8-byte Folded Reload
	str	x8, [sp, #520]          // 8-byte Folded Spill
	ldp	x8, x13, [sp, #304]     // 8-byte Folded Reload
	add	x10, x10, x9
	ldr	x9, [sp, #368]          // 8-byte Folded Reload
	add	x15, x8, x11
	ldp	x12, x8, [sp, #320]     // 8-byte Folded Reload
	add	x4, x13, x11
	add	x24, x9, x11
	ldp	x9, x18, [sp, #376]     // 8-byte Folded Reload
	add	x6, x29, x11
	add	x28, x8, x11
	add	x20, x12, x11
	add	x21, x9, x11
	ldr	x9, [sp, #296]          // 8-byte Folded Reload
	add	x5, x18, x11
	add	x30, x12, x1
	add	x9, x9, x11
	str	x9, [sp, #488]          // 8-byte Folded Spill
	ldr	x9, [sp, #208]          // 8-byte Folded Reload
	add	x11, x0, x9
	add	x23, x7, x9
	add	x26, x14, x9
	add	x16, x16, x9
	ldr	x9, [sp, #184]          // 8-byte Folded Reload
	add	x7, x13, x2
	add	x0, x13, x1
	add	x17, x17, x9
	add	x27, x19, x9
	add	x9, x3, x9
	str	x9, [sp, #480]          // 8-byte Folded Spill
	add	x9, x29, x1
	str	x9, [sp, #472]          // 8-byte Folded Spill
	add	x9, x18, x1
	str	x9, [sp, #464]          // 8-byte Folded Spill
	add	x9, x8, x1
	add	x8, x8, x2
	str	x8, [sp, #448]          // 8-byte Folded Spill
	add	x8, x18, x2
	str	x9, [sp, #456]          // 8-byte Folded Spill
	add	x9, x12, x2
	str	x8, [sp, #440]          // 8-byte Folded Spill
	add	x8, x29, x2
	ldr	x18, [sp, #280]         // 8-byte Folded Reload
	ldr	x2, [sp, #416]          // 8-byte Folded Reload
	str	x8, [sp, #432]          // 8-byte Folded Spill
	add	x19, x18, x28
	add	x14, x11, x2
	add	x1, x26, x2
	ldr	x11, [sp, #400]         // 8-byte Folded Reload
	add	x26, x18, x9
	ldr	x9, [sp, #480]          // 8-byte Folded Reload
	add	x28, x23, x2
	add	x8, x18, x15
	add	x13, x18, x4
	add	x23, x9, x11
	ldr	x9, [sp, #472]          // 8-byte Folded Reload
	add	x12, x18, x5
	add	x4, x17, x11
	add	x5, x27, x11
	add	x11, x18, x9
	ldp	x15, x9, [sp, #456]     // 8-byte Folded Reload
	add	x29, x18, x21
	add	x21, x16, x2
	add	x3, x18, x6
	add	x2, x18, x15
	ldr	x15, [sp, #448]         // 8-byte Folded Reload
	add	x6, x18, x30
	add	x24, x18, x24
	add	x20, x18, x20
	add	x17, x18, x15
	ldr	x15, [sp, #440]         // 8-byte Folded Reload
	add	x7, x18, x7
	add	x16, x18, x0
	add	x9, x18, x9
	add	x27, x18, x15
	ldr	x15, [sp, #432]         // 8-byte Folded Reload
	add	x30, x18, x15
	ldr	x15, [sp, #488]         // 8-byte Folded Reload
	add	x0, x18, x15
	ldr	x18, [sp, #496]         // 8-byte Folded Reload
.LBB10_10:                              // %vector.body62
                                        //   Parent Loop BB10_2 Depth=1
                                        //     Parent Loop BB10_4 Depth=2
                                        //       Parent Loop BB10_7 Depth=3
                                        // =>      This Inner Loop Header: Depth=4
	ldr	x15, [sp, #536]         // 8-byte Folded Reload
	ld1w	{z4.s}, p2/z, [x20, x25, lsl #2]
	ld1w	{z5.s}, p2/z, [x10, x25, lsl #2]
	ld1w	{z18.s}, p2/z, [x29, x25, lsl #2]
	ld1w	{z3.s}, p2/z, [x15, x25, lsl #2]
	ldr	x15, [sp, #520]         // 8-byte Folded Reload
	ld1w	{z19.s}, p2/z, [x8, x25, lsl #2]
	ld1w	{z6.s}, p2/z, [x17, x25, lsl #2]
	ld1w	{z20.s}, p2/z, [x24, x25, lsl #2]
	ld1w	{z7.s}, p2/z, [x15, x25, lsl #2]
	ldr	x15, [sp, #528]         // 8-byte Folded Reload
	ld1w	{z23.s}, p2/z, [x26, x25, lsl #2]
	ld1w	{z24.s}, p2/z, [x16, x25, lsl #2]
	ld1w	{z16.s}, p2/z, [x12, x25, lsl #2]
	ld1w	{z17.s}, p2/z, [x15, x25, lsl #2]
	ld1w	{z21.s}, p2/z, [x0, x25, lsl #2]
	ld1w	{z25.s}, p2/z, [x7, x25, lsl #2]
	ld1w	{z28.s}, p2/z, [x27, x25, lsl #2]
	ld1w	{z29.s}, p2/z, [x11, x25, lsl #2]
	ld1w	{z22.s}, p2/z, [x23, x25, lsl #2]
	ld1w	{z26.s}, p2/z, [x6, x25, lsl #2]
	ld1w	{z30.s}, p2/z, [x30, x25, lsl #2]
	ld1w	{z27.s}, p2/z, [x5, x25, lsl #2]
	ld1w	{z31.s}, p2/z, [x9, x25, lsl #2]
	fmla	z3.s, p0/m, z5.s, z4.s
	fadd	z4.s, z19.s, z18.s
	ld1w	{z8.s}, p2/z, [x4, x25, lsl #2]
	fmla	z3.s, p0/m, z7.s, z6.s
	fadd	z5.s, z24.s, z23.s
	fsub	z4.s, z4.s, z20.s
	ld1w	{z9.s}, p2/z, [x13, x25, lsl #2]
	ld1w	{z10.s}, p2/z, [x21, x25, lsl #2]
	fadd	z6.s, z29.s, z28.s
	fsub	z5.s, z5.s, z25.s
	fsub	z4.s, z4.s, z21.s
	fmla	z3.s, p0/m, z17.s, z16.s
	ldr	x15, [sp, #552]         // 8-byte Folded Reload
	ld1w	{z11.s}, p2/z, [x2, x25, lsl #2]
	ld1w	{z12.s}, p2/z, [x1, x25, lsl #2]
	fsub	z6.s, z6.s, z30.s
	fsub	z5.s, z5.s, z26.s
	fmla	z3.s, p0/m, z22.s, z4.s
	ld1w	{z13.s}, p2/z, [x3, x25, lsl #2]
	ld1w	{z14.s}, p2/z, [x28, x25, lsl #2]
	fsub	z6.s, z6.s, z31.s
	fmla	z3.s, p0/m, z5.s, z27.s
	fmla	z3.s, p0/m, z6.s, z8.s
	ld1w	{z4.s}, p2/z, [x14, x25, lsl #2]
	ld1w	{z5.s}, p2/z, [x19, x25, lsl #2]
	fmla	z3.s, p0/m, z10.s, z9.s
	ld1w	{z6.s}, p2/z, [x15, x25, lsl #2]
	fmla	z3.s, p0/m, z12.s, z11.s
	fmla	z3.s, p0/m, z14.s, z13.s
	fnmsb	z3.s, p0/m, z4.s, z5.s
	fmul	z3.s, z3.s, z6.s
	fmla	z2.s, p2/m, z3.s, z3.s
	fmad	z3.s, p0/m, z1.s, z5.s
	st1w	{z3.s}, p2, [x18, x25, lsl #2]
	incw	x25
	whilelo	p2.s, x25, x22
	b.mi	.LBB10_10
// BB#11:                               // %middle.block63
                                        //   in Loop: Header=BB10_7 Depth=3
	ldr	x3, [sp, #288]          // 8-byte Folded Reload
	mov	x4, x22
	ldr	x22, [sp, #504]         // 8-byte Folded Reload
	faddv	s2, p0, z2.s
	cmp	x22, x3
	b.ne	.LBB10_7
.LBB10_12:                              // %L.LB11_392.loopexit
                                        //   in Loop: Header=BB10_4 Depth=2
	ldp	x22, x8, [sp, #136]     // 8-byte Folded Reload
	cmp	x8, x22
	b.ne	.LBB10_4
.LBB10_13:                              // %L.LB11_389.loopexit
                                        //   in Loop: Header=BB10_2 Depth=1
	ldp	w5, w2, [sp, #24]       // 4-byte Folded Reload
	ldr	x18, [sp, #16]          // 8-byte Folded Reload
	adrp	x30, _work_0_
	adrp	x1, _pres_0_
	add	x30, x30, :lo12:_work_0_
	add	x1, x1, :lo12:_pres_0_
.LBB10_14:                              // %L.LB11_389
                                        //   in Loop: Header=BB10_2 Depth=1
	tbnz	w5, #0, .LBB10_21
// BB#15:                               // %L.LB11_397.preheader
                                        //   in Loop: Header=BB10_2 Depth=1
	ldrsw	x9, [x1, #104]
	ldrsw	x8, [x1, #128]
	ldrsw	x11, [x30, #240]
	ldrsw	x10, [x30, #264]
	ldrsw	x14, [x1, #44]
	ldrsw	x12, [x30, #180]
	add	x16, x8, x9
	ldr	x13, [x30, #136]
	ldr	x15, [x1]
	lsl	x16, x16, #3
	add	x14, x16, x14, lsl #2
	add	x16, x10, x11
	lsl	x16, x16, #3
	add	x12, x16, x12, lsl #2
	add	x14, x15, x14
	add	x13, x13, x12
	whilelo	p2.s, xzr, x18
	lsl	x8, x8, #2
	lsl	x9, x9, #2
	lsl	x10, x10, #2
	lsl	x11, x11, #2
	add	x12, x14, #4            // =4
	add	x13, x13, #4            // =4
	orr	w14, wzr, #0x2
.LBB10_16:                              // %L.LB11_397
                                        //   Parent Loop BB10_2 Depth=1
                                        // =>  This Loop Header: Depth=2
                                        //       Child Loop BB10_17 Depth 3
                                        //         Child Loop BB10_18 Depth 4
	mov	x15, x13
	mov	x16, x12
	orr	w17, wzr, #0x2
.LBB10_17:                              // %L.LB11_400
                                        //   Parent Loop BB10_2 Depth=1
                                        //     Parent Loop BB10_16 Depth=2
                                        // =>    This Loop Header: Depth=3
                                        //         Child Loop BB10_18 Depth 4
	mov	x0, xzr
	mov	p3.b, p2.b
.LBB10_18:                              // %vector.body
                                        //   Parent Loop BB10_2 Depth=1
                                        //     Parent Loop BB10_16 Depth=2
                                        //       Parent Loop BB10_17 Depth=3
                                        // =>      This Inner Loop Header: Depth=4
	ld1w	{z3.s}, p3/z, [x15, x0, lsl #2]
	nor	p4.b, p0/z, p3.b, p3.b
	brkb	p4.b, p0/z, p4.b
	st1w	{z3.s}, p3, [x16, x0, lsl #2]
	incw	x0
	whilelo	p3.s, x0, x18
	brkns	p3.b, p0/z, p4.b, p3.b
	b.mi	.LBB10_18
// BB#19:                               // %L.LB11_493
                                        //   in Loop: Header=BB10_17 Depth=3
	add	x17, x17, #1            // =1
	add	x16, x16, x9
	cmp	x17, x3
	add	x15, x15, x11
	b.ne	.LBB10_17
// BB#20:                               // %L.LB11_494
                                        //   in Loop: Header=BB10_16 Depth=2
	add	x14, x14, #1            // =1
	add	x12, x12, x8
	cmp	x14, x22
	add	x13, x13, x10
	b.ne	.LBB10_16
.LBB10_21:                              // %L.LB11_398
                                        //   in Loop: Header=BB10_2 Depth=1
	subs	w2, w2, #1              // =1
	b.gt	.LBB10_2
// BB#22:                               // %L.LB11_386.loopexit
	ldr	x8, [sp, #8]            // 8-byte Folded Reload
	str	s2, [x8]
	add	sp, sp, #544            // =544
	ldp	x29, x30, [sp, #144]    // 8-byte Folded Reload
	ldp	x20, x19, [sp, #128]    // 8-byte Folded Reload
	ldp	x22, x21, [sp, #112]    // 8-byte Folded Reload
	ldp	x24, x23, [sp, #96]     // 8-byte Folded Reload
	ldp	x26, x25, [sp, #80]     // 8-byte Folded Reload
	ldp	x28, x27, [sp, #64]     // 8-byte Folded Reload
	ldp	d9, d8, [sp, #48]       // 8-byte Folded Reload
	ldp	d11, d10, [sp, #32]     // 8-byte Folded Reload
	ldp	d13, d12, [sp, #16]     // 8-byte Folded Reload
	ldr	d14, [sp], #160         // 8-byte Folded Reload
.LBB10_23:                              // %L.LB11_386
	ret
.Lfunc_end10:
	.size	jacobi_, .Lfunc_end10-jacobi_
                                        // -- End function
	.globl	second_                 // -- Begin function second_
	.p2align	2
	.type	second_,@function
second_:                                // @second_
	.cfi_startproc
// BB#0:                                // %L.entry
	sub	sp, sp, #32             // =32
	str	x30, [sp, #16]          // 8-byte Folded Spill
.Lcfi33:
	.cfi_def_cfa_offset 32
.Lcfi34:
	.cfi_offset w30, -16
	adrp	x3, .C305_second_
	add	x3, x3, :lo12:.C305_second_
	add	x0, sp, #28             // =28
	add	x1, sp, #24             // =24
	add	x2, sp, #12             // =12
	mov	x4, x3
	mov	x5, x3
	bl	fort_sysclk
	ldr	s0, [sp, #28]
	ldr	x30, [sp, #16]          // 8-byte Folded Reload
	sshll	v0.2d, v0.2s, #0
	scvtf	d0, d0
	add	sp, sp, #32             // =32
	ret
.Lfunc_end11:
	.size	second_, .Lfunc_end11-second_
	.cfi_endproc
                                        // -- End function
	.type	.C387_MAIN_,@object     // @.C387_MAIN_
	.section	.rodata,"a",@progbits
	.p2align	4
.C387_MAIN_:
	.ascii	" Score based on Pentium III 600MHz :"
	.size	.C387_MAIN_, 36

	.type	.C386_MAIN_,@object     // @.C386_MAIN_
	.p2align	2
.C386_MAIN_:
	.word	129                     // 0x81
	.size	.C386_MAIN_, 4

	.type	.C384_MAIN_,@object     // @.C384_MAIN_
	.p2align	2
.C384_MAIN_:
	.ascii	" MFLOPS:"
	.size	.C384_MAIN_, 8

	.type	.C383_MAIN_,@object     // @.C383_MAIN_
	.p2align	2
.C383_MAIN_:
	.word	127                     // 0x7f
	.size	.C383_MAIN_, 4

	.type	.C382_MAIN_,@object     // @.C382_MAIN_
	.p2align	2
.C382_MAIN_:
	.ascii	" Gosa :"
	.size	.C382_MAIN_, 7

	.type	.C381_MAIN_,@object     // @.C381_MAIN_
	.p2align	2
.C381_MAIN_:
	.word	126                     // 0x7e
	.size	.C381_MAIN_, 4

	.type	.C380_MAIN_,@object     // @.C380_MAIN_
	.p2align	2
.C380_MAIN_:
	.ascii	" times"
	.size	.C380_MAIN_, 6

	.type	.C379_MAIN_,@object     // @.C379_MAIN_
	.p2align	4
.C379_MAIN_:
	.ascii	" Loop executed for "
	.size	.C379_MAIN_, 19

	.type	.C378_MAIN_,@object     // @.C378_MAIN_
	.p2align	2
.C378_MAIN_:
	.word	125                     // 0x7d
	.size	.C378_MAIN_, 4

	.type	.C377_MAIN_,@object     // @.C377_MAIN_
	.p2align	4
.C377_MAIN_:
	.ascii	"Wait for a while."
	.size	.C377_MAIN_, 17

	.type	.C376_MAIN_,@object     // @.C376_MAIN_
	.p2align	2
.C376_MAIN_:
	.word	112                     // 0x70
	.size	.C376_MAIN_, 4

	.type	.C375_MAIN_,@object     // @.C375_MAIN_
	.p2align	4
.C375_MAIN_:
	.ascii	"This will take about one minute."
	.size	.C375_MAIN_, 32

	.type	.C374_MAIN_,@object     // @.C374_MAIN_
	.p2align	2
.C374_MAIN_:
	.word	111                     // 0x6f
	.size	.C374_MAIN_, 4

	.type	.C373_MAIN_,@object     // @.C373_MAIN_
	.p2align	2
.C373_MAIN_:
	.ascii	" times."
	.size	.C373_MAIN_, 7

	.type	.C372_MAIN_,@object     // @.C372_MAIN_
	.p2align	4
.C372_MAIN_:
	.ascii	"The loop will be excuted in"
	.size	.C372_MAIN_, 27

	.type	.C371_MAIN_,@object     // @.C371_MAIN_
	.p2align	2
.C371_MAIN_:
	.word	110                     // 0x6e
	.size	.C371_MAIN_, 4

	.type	.C370_MAIN_,@object     // @.C370_MAIN_
	.p2align	4
.C370_MAIN_:
	.ascii	"Now, start the actual measurement process."
	.size	.C370_MAIN_, 42

	.type	.C369_MAIN_,@object     // @.C369_MAIN_
	.p2align	2
.C369_MAIN_:
	.word	109                     // 0x6d
	.size	.C369_MAIN_, 4

	.type	.C365_MAIN_,@object     // @.C365_MAIN_
	.p2align	2
.C365_MAIN_:
	.ascii	"  time(s):"
	.size	.C365_MAIN_, 10

	.type	.C363_MAIN_,@object     // @.C363_MAIN_
	.p2align	2
.C363_MAIN_:
	.ascii	"  MFLOPS:"
	.size	.C363_MAIN_, 9

	.type	.C362_MAIN_,@object     // @.C362_MAIN_
	.p2align	2
.C362_MAIN_:
	.word	105                     // 0x69
	.size	.C362_MAIN_, 4

	.type	.C357_MAIN_,@object     // @.C357_MAIN_
	.p2align	4
.C357_MAIN_:
	.ascii	" Measure the performance in 3 times."
	.size	.C357_MAIN_, 36

	.type	.C356_MAIN_,@object     // @.C356_MAIN_
	.p2align	2
.C356_MAIN_:
	.word	95                      // 0x5f
	.size	.C356_MAIN_, 4

	.type	.C355_MAIN_,@object     // @.C355_MAIN_
	.p2align	4
.C355_MAIN_:
	.ascii	" Start rehearsal measurement process."
	.size	.C355_MAIN_, 37

	.type	.C354_MAIN_,@object     // @.C354_MAIN_
	.p2align	2
.C354_MAIN_:
	.word	94                      // 0x5e
	.size	.C354_MAIN_, 4

	.type	.C349_MAIN_,@object     // @.C349_MAIN_
	.p2align	4
.C349_MAIN_:
	.ascii	"Time measurement accuracy : "
	.size	.C349_MAIN_, 28

	.type	.C345_MAIN_,@object     // @.C345_MAIN_
	.p2align	2
.C345_MAIN_:
	.ascii	"(2x,a,e10.5)"
	.size	.C345_MAIN_, 12

	.type	.C285_MAIN_,@object     // @.C285_MAIN_
	.p2align	2
.C285_MAIN_:
	.word	1                       // 0x1
	.size	.C285_MAIN_, 4

	.type	.C344_MAIN_,@object     // @.C344_MAIN_
	.p2align	2
.C344_MAIN_:
	.word	90                      // 0x5a
	.size	.C344_MAIN_, 4

	.type	.C343_MAIN_,@object     // @.C343_MAIN_
	.p2align	2
.C343_MAIN_:
	.ascii	" kmax="
	.size	.C343_MAIN_, 6

	.type	.C342_MAIN_,@object     // @.C342_MAIN_
	.p2align	2
.C342_MAIN_:
	.ascii	" jmax="
	.size	.C342_MAIN_, 6

	.type	.C341_MAIN_,@object     // @.C341_MAIN_
	.p2align	2
.C341_MAIN_:
	.ascii	" imax="
	.size	.C341_MAIN_, 6

	.type	.C340_MAIN_,@object     // @.C340_MAIN_
	.p2align	2
.C340_MAIN_:
	.word	86                      // 0x56
	.size	.C340_MAIN_, 4

	.type	.C333_MAIN_,@object     // @.C333_MAIN_
	.p2align	2
.C333_MAIN_:
	.ascii	" mkmax="
	.size	.C333_MAIN_, 7

	.type	.C332_MAIN_,@object     // @.C332_MAIN_
	.p2align	2
.C332_MAIN_:
	.ascii	" mjmax="
	.size	.C332_MAIN_, 7

	.type	.C338_MAIN_,@object     // @.C338_MAIN_
	.p2align	2
.C338_MAIN_:
	.word	25                      // 0x19
	.size	.C338_MAIN_, 4

	.type	.C336_MAIN_,@object     // @.C336_MAIN_
	.p2align	2
.C336_MAIN_:
	.word	14                      // 0xe
	.size	.C336_MAIN_, 4

	.type	.C331_MAIN_,@object     // @.C331_MAIN_
	.p2align	2
.C331_MAIN_:
	.ascii	" mimax="
	.size	.C331_MAIN_, 7

	.type	.C328_MAIN_,@object     // @.C328_MAIN_
	.p2align	2
.C328_MAIN_:
	.word	6                       // 0x6
	.size	.C328_MAIN_, 4

	.type	.C325_MAIN_,@object     // @.C325_MAIN_
	.p2align	4
.C325_MAIN_:
	.ascii	"himenoBMTxp-allocate.f90"
	.size	.C325_MAIN_, 24

	.type	.C327_MAIN_,@object     // @.C327_MAIN_
	.p2align	2
.C327_MAIN_:
	.word	85                      // 0x55
	.size	.C327_MAIN_, 4

	.type	.C283_MAIN_,@object     // @.C283_MAIN_
	.p2align	2
.C283_MAIN_:
	.word	0                       // 0x0
	.size	.C283_MAIN_, 4

	.type	.C369_readparam_,@object // @.C369_readparam_
	.p2align	3
.C369_readparam_:
	.ascii	"XS      "
	.size	.C369_readparam_, 8

	.type	.C328_readparam_,@object // @.C328_readparam_
	.p2align	4
.C328_readparam_:
	.ascii	"           XL (1024x512x512)"
	.size	.C328_readparam_, 28

	.type	.C327_readparam_,@object // @.C327_readparam_
	.p2align	2
.C327_readparam_:
	.word	151                     // 0x97
	.size	.C327_readparam_, 4

	.type	.C326_readparam_,@object // @.C326_readparam_
	.p2align	4
.C326_readparam_:
	.ascii	"           L  (512x256x256)"
	.size	.C326_readparam_, 27

	.type	.C325_readparam_,@object // @.C325_readparam_
	.p2align	2
.C325_readparam_:
	.word	150                     // 0x96
	.size	.C325_readparam_, 4

	.type	.C324_readparam_,@object // @.C324_readparam_
	.p2align	4
.C324_readparam_:
	.ascii	"           M  (256x128x128)"
	.size	.C324_readparam_, 27

	.type	.C323_readparam_,@object // @.C323_readparam_
	.p2align	2
.C323_readparam_:
	.word	149                     // 0x95
	.size	.C323_readparam_, 4

	.type	.C322_readparam_,@object // @.C322_readparam_
	.p2align	4
.C322_readparam_:
	.ascii	"           S  (128x64x64)"
	.size	.C322_readparam_, 25

	.type	.C321_readparam_,@object // @.C321_readparam_
	.p2align	2
.C321_readparam_:
	.word	148                     // 0x94
	.size	.C321_readparam_, 4

	.type	.C320_readparam_,@object // @.C320_readparam_
	.p2align	4
.C320_readparam_:
	.ascii	"           XS (64x32x32)"
	.size	.C320_readparam_, 24

	.type	.C319_readparam_,@object // @.C319_readparam_
	.p2align	2
.C319_readparam_:
	.word	147                     // 0x93
	.size	.C319_readparam_, 4

	.type	.C318_readparam_,@object // @.C318_readparam_
	.p2align	2
.C318_readparam_:
	.ascii	"Grid-size= "
	.size	.C318_readparam_, 11

	.type	.C317_readparam_,@object // @.C317_readparam_
	.p2align	2
.C317_readparam_:
	.word	146                     // 0x92
	.size	.C317_readparam_, 4

	.type	.C312_readparam_,@object // @.C312_readparam_
	.p2align	4
.C312_readparam_:
	.ascii	"Select Grid-size:"
	.size	.C312_readparam_, 17

	.type	.C283_readparam_,@object // @.C283_readparam_
	.p2align	2
.C283_readparam_:
	.word	0                       // 0x0
	.size	.C283_readparam_, 4

	.type	.C309_readparam_,@object // @.C309_readparam_
	.p2align	2
.C309_readparam_:
	.word	6                       // 0x6
	.size	.C309_readparam_, 4

	.type	.C306_readparam_,@object // @.C306_readparam_
	.p2align	4
.C306_readparam_:
	.ascii	"himenoBMTxp-allocate.f90"
	.size	.C306_readparam_, 24

	.type	.C308_readparam_,@object // @.C308_readparam_
	.p2align	2
.C308_readparam_:
	.word	144                     // 0x90
	.size	.C308_readparam_, 4

	.type	.C330_grid_set_,@object // @.C330_grid_set_
	.p2align	4
.C330_grid_set_:
	.ascii	"Invalid input character !!"
	.size	.C330_grid_set_, 26

	.type	.C283_grid_set_,@object // @.C283_grid_set_
	.p2align	2
.C283_grid_set_:
	.word	0                       // 0x0
	.size	.C283_grid_set_, 4

	.type	.C327_grid_set_,@object // @.C327_grid_set_
	.p2align	2
.C327_grid_set_:
	.word	6                       // 0x6
	.size	.C327_grid_set_, 4

	.type	.C324_grid_set_,@object // @.C324_grid_set_
	.p2align	4
.C324_grid_set_:
	.ascii	"himenoBMTxp-allocate.f90"
	.size	.C324_grid_set_, 24

	.type	.C326_grid_set_,@object // @.C326_grid_set_
	.p2align	2
.C326_grid_set_:
	.word	215                     // 0xd7
	.size	.C326_grid_set_, 4

	.type	.C323_grid_set_,@object // @.C323_grid_set_
	.p2align	2
.C323_grid_set_:
	.ascii	"XL"
	.size	.C323_grid_set_, 2

	.type	.C321_grid_set_,@object // @.C321_grid_set_
	.p2align	2
.C321_grid_set_:
	.ascii	"xl"
	.size	.C321_grid_set_, 2

	.type	.C320_grid_set_,@object // @.C320_grid_set_
	.p2align	2
.C320_grid_set_:
	.byte	76
	.size	.C320_grid_set_, 1

	.type	.C318_grid_set_,@object // @.C318_grid_set_
	.p2align	2
.C318_grid_set_:
	.byte	108
	.size	.C318_grid_set_, 1

	.type	.C317_grid_set_,@object // @.C317_grid_set_
	.p2align	2
.C317_grid_set_:
	.byte	77
	.size	.C317_grid_set_, 1

	.type	.C315_grid_set_,@object // @.C315_grid_set_
	.p2align	2
.C315_grid_set_:
	.byte	109
	.size	.C315_grid_set_, 1

	.type	.C314_grid_set_,@object // @.C314_grid_set_
	.p2align	2
.C314_grid_set_:
	.byte	83
	.size	.C314_grid_set_, 1

	.type	.C312_grid_set_,@object // @.C312_grid_set_
	.p2align	2
.C312_grid_set_:
	.byte	115
	.size	.C312_grid_set_, 1

	.type	.C310_grid_set_,@object // @.C310_grid_set_
	.p2align	2
.C310_grid_set_:
	.ascii	"XS"
	.size	.C310_grid_set_, 2

	.type	.C307_grid_set_,@object // @.C307_grid_set_
	.p2align	2
.C307_grid_set_:
	.ascii	"xs"
	.size	.C307_grid_set_, 2

	.type	.C284_initmem_,@object  // @.C284_initmem_
	.p2align	3
.C284_initmem_:
	.xword	0                       // 0x0
	.size	.C284_initmem_, 8

	.type	.C283_initmem_,@object  // @.C283_initmem_
	.p2align	2
.C283_initmem_:
	.word	0                       // 0x0
	.size	.C283_initmem_, 4

	.type	.C382_initmem_,@object  // @.C382_initmem_
	.p2align	2
.C382_initmem_:
	.word	4                       // 0x4
	.size	.C382_initmem_, 4

	.type	.C386_initmem_,@object  // @.C386_initmem_
	.p2align	2
.C386_initmem_:
	.word	27                      // 0x1b
	.size	.C386_initmem_, 4

	.type	.C285_initmem_,@object  // @.C285_initmem_
	.p2align	2
.C285_initmem_:
	.word	1                       // 0x1
	.size	.C285_initmem_, 4

	.type	.C305_second_,@object   // @.C305_second_
	.p2align	2
.C305_second_:
	.word	25                      // 0x19
	.size	.C305_second_, 4

	.type	_others_0_,@object      // @_others_0_
	.comm	_others_0_,24,128
	.type	_work_0_,@object        // @_work_0_
	.comm	_work_0_,296,128
	.type	_bound_0_,@object       // @_bound_0_
	.comm	_bound_0_,148,128
	.type	_mtrx_0_,@object        // @_mtrx_0_
	.comm	_mtrx_0_,528,128
	.type	_pres_0_,@object        // @_pres_0_
	.comm	_pres_0_,148,128

	.section	".note.GNU-stack","",@progbits
