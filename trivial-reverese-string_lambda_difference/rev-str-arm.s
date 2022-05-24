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
	.file	"rev-str.cpp"
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
	@ args = 0, pretend = 0, frame = 48
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, fp, lr}
	.save {r4, fp, lr}
	.setfp fp, sp, #8
	add	fp, sp, #8
	.pad #52
	sub	sp, sp, #52
	ldr	r3, .L11
	ldr	r3, [r3]
	str	r3, [fp, #-16]
	mov	r3,#0
	sub	r3, fp, #56
	mov	r0, r3
	bl	_ZNSaIcEC1Ev
	sub	r2, fp, #56
	sub	r3, fp, #40
	ldr	r1, .L11+4
	mov	r0, r3
.LEHB0:
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_
.LEHE0:
	sub	r3, fp, #56
	mov	r0, r3
	bl	_ZNSaIcED1Ev
	ldr	r1, .L11+8
	ldr	r0, .L11+12
.LEHB1:
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	mov	r2, r0
	sub	r3, fp, #40
	mov	r1, r3
	mov	r0, r2
	bl	_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE
	mov	r3, r0
	ldr	r1, .L11+16
	mov	r0, r3
	bl	_ZNSolsEPFRSoS_E
	sub	r3, fp, #40
	mov	r0, r3
	bl	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4sizeEv
	mov	r3, r0
	str	r3, [fp, #-48]
	mov	r3, #0
	str	r3, [fp, #-52]
.L3:
	ldr	r3, [fp, #-48]
	lsr	r2, r3, #31
	add	r3, r2, r3
	asr	r3, r3, #1
	mov	r2, r3
	ldr	r3, [fp, #-52]
	cmp	r3, r2
	bge	.L2
	ldr	r3, [fp, #-48]
	sub	r2, r3, #1
	ldr	r3, [fp, #-52]
	sub	r3, r2, r3
	str	r3, [fp, #-44]
	ldr	r2, [fp, #-44]
	sub	r3, fp, #40
	mov	r1, r2
	mov	r0, r3
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEixEj
	mov	r3, r0
	ldrb	r3, [r3]
	strb	r3, [fp, #-53]
	ldr	r2, [fp, #-52]
	sub	r3, fp, #40
	mov	r1, r2
	mov	r0, r3
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEixEj
	mov	r4, r0
	ldr	r2, [fp, #-44]
	sub	r3, fp, #40
	mov	r1, r2
	mov	r0, r3
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEixEj
	mov	r3, r0
	ldrb	r2, [r4]	@ zero_extendqisi2
	strb	r2, [r3]
	ldr	r2, [fp, #-52]
	sub	r3, fp, #40
	mov	r1, r2
	mov	r0, r3
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEixEj
	mov	r2, r0
	ldrb	r3, [fp, #-53]
	strb	r3, [r2]
	ldr	r3, [fp, #-52]
	add	r3, r3, #1
	str	r3, [fp, #-52]
	b	.L3
.L2:
	ldr	r1, .L11+20
	ldr	r0, .L11+12
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	mov	r2, r0
	sub	r3, fp, #40
	mov	r1, r3
	mov	r0, r2
	bl	_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE
	mov	r3, r0
	ldr	r1, .L11+16
	mov	r0, r3
	bl	_ZNSolsEPFRSoS_E
.LEHE1:
	sub	r3, fp, #40
	mov	r0, r3
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	mov	r3, #0
	ldr	r2, .L11
	ldr	r1, [r2]
	ldr	r2, [fp, #-16]
	eors	r1, r2, r1
	mov	r2, #0
	beq	.L7
	b	.L10
.L8:
	sub	r3, fp, #56
	mov	r0, r3
	bl	_ZNSaIcED1Ev
.LEHB2:
	bl	__cxa_end_cleanup
.L9:
	sub	r3, fp, #40
	mov	r0, r3
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	bl	__cxa_end_cleanup
.LEHE2:
.L10:
	bl	__stack_chk_fail
.L7:
	mov	r0, r3
	sub	sp, fp, #8
	@ sp needed
	pop	{r4, fp, pc}
.L12:
	.align	2
.L11:
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
	.uleb128 .L8-.LFB1516
	.uleb128 0
	.uleb128 .LEHB1-.LFB1516
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L9-.LFB1516
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
.LFB2010:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #8
	str	r0, [fp, #-8]
	str	r1, [fp, #-12]
	ldr	r3, [fp, #-8]
	cmp	r3, #1
	bne	.L15
	ldr	r3, [fp, #-12]
	ldr	r2, .L16
	cmp	r3, r2
	bne	.L15
	ldr	r0, .L16+4
	bl	_ZNSt8ios_base4InitC1Ev
	ldr	r2, .L16+8
	ldr	r1, .L16+12
	ldr	r0, .L16+4
	bl	__aeabi_atexit
.L15:
	nop
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
.L17:
	.align	2
.L16:
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
.LFB2011:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	ldr	r1, .L19
	mov	r0, #1
	bl	_Z41__static_initialization_and_destruction_0ii
	pop	{fp, pc}
.L20:
	.align	2
.L19:
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
