	.arch armv5t
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 2
	.eabi_attribute 30, 6
	.eabi_attribute 34, 0
	.eabi_attribute 18, 4
	.file	"rev-str-lambda.cpp"
	.text
	.section	.rodata
	.align	2
	.type	_ZStL19piecewise_construct, %object
	.size	_ZStL19piecewise_construct, 1
_ZStL19piecewise_construct:
	.space	1
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,4
	.align	2
.LC0:
	.ascii	"abcdefg\000"
	.align	2
.LC1:
	.ascii	"String as input: \000"
	.align	2
.LC2:
	.ascii	"String reversed: \000"
	.align	2
.LC3:
	.word	__stack_chk_guard
	.text
	.align	2
	.global	main
	.syntax unified
	.arm
	.fpu softvfp
	.type	main, %function
main:
	.fnstart
.LFB1516:
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	.save {fp, lr}
	.setfp fp, sp, #4
	add	fp, sp, #4
	.pad #40
	sub	sp, sp, #40
	ldr	r3, .L9
	ldr	r3, [r3]
	str	r3, [fp, #-8]
	mov	r3,#0
	sub	r3, fp, #40
	mov	r0, r3
	bl	_ZNSaIcEC1Ev
	sub	r2, fp, #40
	sub	r3, fp, #32
	ldr	r1, .L9+4
	mov	r0, r3
.LEHB0:
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_
.LEHE0:
	sub	r3, fp, #40
	mov	r0, r3
	bl	_ZNSaIcED1Ev
	ldr	r1, .L9+8
	ldr	r0, .L9+12
.LEHB1:
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	mov	r2, r0
	sub	r3, fp, #32
	mov	r1, r3
	mov	r0, r2
	bl	_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE
	mov	r3, r0
	ldr	r1, .L9+16
	mov	r0, r3
	bl	_ZNSolsEPFRSoS_E
	sub	r3, fp, #32
	mov	r0, r3
	bl	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4sizeEv
	mov	r3, r0
	str	r3, [fp, #-44]
	sub	r3, fp, #32
	str	r3, [fp, #-40]
	sub	r3, fp, #44
	str	r3, [fp, #-36]
	ldr	r1, .L9+20
	ldr	r0, .L9+12
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	mov	r2, r0
	sub	r3, fp, #32
	mov	r1, r3
	mov	r0, r2
	bl	_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE
	mov	r3, r0
	ldr	r1, .L9+16
	mov	r0, r3
	bl	_ZNSolsEPFRSoS_E
.LEHE1:
	sub	r3, fp, #32
	mov	r0, r3
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	mov	r3, #0
	ldr	r2, .L9
	ldr	r1, [r2]
	ldr	r2, [fp, #-8]
	eors	r1, r2, r1
	mov	r2, #0
	beq	.L5
	b	.L8
.L6:
	sub	r3, fp, #40
	mov	r0, r3
	bl	_ZNSaIcED1Ev
.LEHB2:
	bl	__cxa_end_cleanup
.L7:
	sub	r3, fp, #32
	mov	r0, r3
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	bl	__cxa_end_cleanup
.LEHE2:
.L8:
	bl	__stack_chk_fail
.L5:
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
.L10:
	.align	2
.L9:
	.word	.LC3
	.word	.LC0
	.word	.LC1
	.word	_ZSt4cout
	.word	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	.word	.LC2
	.global	__gxx_personality_v0
	.personality	__gxx_personality_v0
	.handlerdata
.LLSDA1516:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE1516-.LLSDACSB1516
.LLSDACSB1516:
	.uleb128 .LEHB0-.LFB1516
	.uleb128 .LEHE0-.LEHB0
	.uleb128 .L6-.LFB1516
	.uleb128 0
	.uleb128 .LEHB1-.LFB1516
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L7-.LFB1516
	.uleb128 0
	.uleb128 .LEHB2-.LFB1516
	.uleb128 .LEHE2-.LEHB2
	.uleb128 0
	.uleb128 0
.LLSDACSE1516:
	.text
	.fnend
	.size	main, .-main
	.align	2
	.syntax unified
	.arm
	.fpu softvfp
	.type	_Z41__static_initialization_and_destruction_0ii, %function
_Z41__static_initialization_and_destruction_0ii:
	.fnstart
.LFB2011:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #8
	str	r0, [fp, #-8]
	str	r1, [fp, #-12]
	ldr	r3, [fp, #-8]
	cmp	r3, #1
	bne	.L13
	ldr	r3, [fp, #-12]
	ldr	r2, .L14
	cmp	r3, r2
	bne	.L13
	ldr	r0, .L14+4
	bl	_ZNSt8ios_base4InitC1Ev
	ldr	r2, .L14+8
	ldr	r1, .L14+12
	ldr	r0, .L14+4
	bl	__aeabi_atexit
.L13:
	nop
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
.L15:
	.align	2
.L14:
	.word	65535
	.word	_ZStL8__ioinit
	.word	__dso_handle
	.word	_ZNSt8ios_base4InitD1Ev
	.cantunwind
	.fnend
	.size	_Z41__static_initialization_and_destruction_0ii, .-_Z41__static_initialization_and_destruction_0ii
	.align	2
	.syntax unified
	.arm
	.fpu softvfp
	.type	_GLOBAL__sub_I_main, %function
_GLOBAL__sub_I_main:
	.fnstart
.LFB2012:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	ldr	r1, .L17
	mov	r0, #1
	bl	_Z41__static_initialization_and_destruction_0ii
	pop	{fp, pc}
.L18:
	.align	2
.L17:
	.word	65535
	.cantunwind
	.fnend
	.size	_GLOBAL__sub_I_main, .-_GLOBAL__sub_I_main
	.section	.init_array,"aw",%init_array
	.align	2
	.word	_GLOBAL__sub_I_main(target1)
	.hidden	__dso_handle
	.ident	"GCC: (Ubuntu 9.4.0-1ubuntu1~20.04.1) 9.4.0"
	.section	.note.GNU-stack,"",%progbits
