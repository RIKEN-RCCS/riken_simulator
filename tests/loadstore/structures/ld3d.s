	.text
	.file	"ld3d.c"
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4               // -- Begin function main
.LCPI0_0:
	.xword	0                       // double 0
	.xword	-9223372036854775808    // double -0
.LCPI0_1:
	.xword	0                       // double 0
	.xword	4607182418800017408     // double 1
.LCPI0_2:
	.xword	-4616189618054758400    // double -1
	.xword	4636737291354636288     // double 100
.LCPI0_3:
	.xword	4611686018427387904     // double 2
	.xword	-4611686018427387904    // double -2
.LCPI0_4:
	.xword	4641240890982006784     // double 200
	.xword	4613937818241073152     // double 3
.LCPI0_5:
	.xword	-4609434218613702656    // double -3
	.xword	4643985272004935680     // double 300
.LCPI0_6:
	.xword	4616189618054758400     // double 4
	.xword	-4607182418800017408    // double -4
.LCPI0_7:
	.xword	4645744490609377280     // double 400
	.xword	4617315517961601024     // double 5
.LCPI0_8:
	.xword	-4606056518893174784    // double -5
	.xword	4647503709213818880     // double 500
.LCPI0_9:
	.xword	4618441417868443648     // double 6
	.xword	-4604930618986332160    // double -6
.LCPI0_10:
	.xword	4648488871632306176     // double 600
	.xword	4619567317775286272     // double 7
.LCPI0_11:
	.xword	-4603804719079489536    // double -7
	.xword	4649368480934526976     // double 700
	.text
	.globl	main
	.p2align	2
	.type	main,@function
main:                                   // @main
// BB#0:
	stp	x20, x19, [sp, #-32]!   // 8-byte Folded Spill
	adrp	x8, .LCPI0_0
	ldr	q0, [x8, :lo12:.LCPI0_0]
	adrp	x8, .LCPI0_2
	adrp	x10, .LCPI0_1
	ldr	q2, [x8, :lo12:.LCPI0_2]
	adrp	x8, .LCPI0_4
	ldr	q1, [x10, :lo12:.LCPI0_1]
	ldr	q4, [x8, :lo12:.LCPI0_4]
	adrp	x8, .LCPI0_6
	adrp	x10, .LCPI0_3
	ldr	q6, [x8, :lo12:.LCPI0_6]
	mov	x8, #61572651155456
	adrp	x9, c
	ldr	q3, [x10, :lo12:.LCPI0_3]
	movk	x8, #49295, lsl #48
	add	x9, x9, :lo12:c
	dup	v7.2d, x8
	adrp	x8, .LCPI0_8
	stp	q0, q1, [x9]
	ldr	q0, [x8, :lo12:.LCPI0_8]
	adrp	x8, .LCPI0_9
	adrp	x10, .LCPI0_5
	adrp	x20, v
	ldr	q1, [x8, :lo12:.LCPI0_9]
	adrp	x8, .LCPI0_10
	ldr	q5, [x10, :lo12:.LCPI0_5]
	adrp	x10, .LCPI0_7
	add	x20, x20, :lo12:v
	stp	q2, q3, [x9, #32]
	ldr	q2, [x8, :lo12:.LCPI0_10]
	adrp	x8, .LCPI0_11
	stp	q7, q7, [x20]
	stp	q7, q7, [x20, #32]
	stp	q7, q7, [x20, #64]
	stp	q7, q7, [x20, #96]
	stp	q7, q7, [x20, #128]
	stp	q7, q7, [x20, #160]
	ldr	q7, [x10, :lo12:.LCPI0_7]
	ldr	q3, [x8, :lo12:.LCPI0_11]
	stp	x29, x30, [sp, #16]     // 8-byte Folded Spill
	stp	q4, q5, [x9, #64]
	stp	q6, q7, [x9, #96]
	ptrue	p0.b
	stp	q0, q1, [x9, #128]
	stp	q2, q3, [x9, #160]
	ld3d	{z0.d, z1.d, z2.d}, p0/z, [x9]
	adrp	x19, .L.str
	add	x19, x19, :lo12:.L.str
	mov	x0, x19
	st3d	{z0.d, z1.d, z2.d}, p0, [x20]
	st3d	{z0.d, z1.d, z2.d}, p0, [x20]
	ldp	d0, d1, [x20]
	ldr	d2, [x20, #16]
	add	x29, sp, #16            // =16
	bl	printf
	ldp	d0, d1, [x20, #24]
	ldr	d2, [x20, #40]
	mov	x0, x19
	bl	printf
	ldp	d0, d1, [x20, #48]
	ldr	d2, [x20, #64]
	mov	x0, x19
	bl	printf
	ldp	d0, d1, [x20, #72]
	ldr	d2, [x20, #88]
	mov	x0, x19
	bl	printf
	ldp	d0, d1, [x20, #96]
	ldr	d2, [x20, #112]
	mov	x0, x19
	bl	printf
	ldp	d0, d1, [x20, #120]
	ldr	d2, [x20, #136]
	mov	x0, x19
	bl	printf
	ldp	d0, d1, [x20, #144]
	ldr	d2, [x20, #160]
	mov	x0, x19
	bl	printf
	ldp	d0, d1, [x20, #168]
	ldr	d2, [x20, #184]
	mov	x0, x19
	bl	printf
	ldp	x29, x30, [sp, #16]     // 8-byte Folded Reload
	mov	w0, wzr
	ldp	x20, x19, [sp], #32     // 8-byte Folded Reload
	ret
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
                                        // -- End function
	.type	c,@object               // @c
	.comm	c,192,8
	.type	v,@object               // @v
	.comm	v,192,8
	.type	.L.str,@object          // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"(%lf, %lf, %lf)\n"
	.size	.L.str, 17


	.ident	"ARM clang version 1.4 (build number 48) (based on LLVM 5.0.0svn)"
	.section	".note.GNU-stack","",@progbits
