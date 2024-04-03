	.file	"main.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.def	__main;	.scl	2;	.type	32;	.endef
	.section .rdata,"dr"
.LC0:
	.ascii "\0"
	.align 8
.LC1:
	.ascii "Entre com o numero de elementos das s\351ries: \0"
.LC2:
	.ascii "%d\0"
.LC3:
	.ascii "Valor de PI/4: %f\12\0"
.LC4:
	.ascii "Valor da s\351rie log: %f\12\0"
	.text
	.globl	main
	.def	main;	.scl	2;	.type	32;	.endef
	.seh_proc	main
main:
.LFB13:
	.file 1 "D:/Users/Marco/Documents/2022_2/codeblocks/PROVAEXEMPLOQ3/main.c"
	.loc 1 8 1
	.cfi_startproc
	pushq	%rbp
	.seh_pushreg	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	.loc 1 8 1
	call	__main
.LVL0:
	.loc 1 10 5
	leaq	.LC0(%rip), %rdx
	movl	$2, %ecx
	call	setlocale
	.loc 1 11 5
	leaq	.LC1(%rip), %rcx
	call	printf
	.loc 1 12 5
	leaq	-4(%rbp), %rax
	movq	%rax, %rdx
	leaq	.LC2(%rip), %rcx
	call	scanf
	.loc 1 13 34
	movl	-4(%rbp), %eax
	movl	%eax, %ecx
	call	Leibniz
	.loc 1 13 5
	cvtss2sd	%xmm0, %xmm0
	movq	%xmm0, %rax
	movq	%rax, %rdx
	movq	%rdx, %xmm1
	movq	%rax, %rdx
	leaq	.LC3(%rip), %rcx
	call	printf
	.loc 1 14 39
	movl	-4(%rbp), %eax
	movl	%eax, %ecx
	call	Serie_log
	.loc 1 14 5
	cvtss2sd	%xmm0, %xmm0
	movq	%xmm0, %rax
	movq	%rax, %rdx
	movq	%rdx, %xmm1
	movq	%rax, %rdx
	leaq	.LC4(%rip), %rcx
	call	printf
	.loc 1 15 12
	movl	$0, %eax
	.loc 1 16 1
	addq	$48, %rsp
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.seh_endproc
	.globl	Leibniz
	.def	Leibniz;	.scl	2;	.type	32;	.endef
	.seh_proc	Leibniz
Leibniz:
.LFB14:
	.loc 1 18 1
	.cfi_startproc
	pushq	%rbp
	.seh_pushreg	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	.seh_stackalloc	64
	movaps	%xmm6, -16(%rbp)
	.seh_savexmm	%xmm6, 48
	.cfi_offset 23, -32
	.seh_endprologue
	movl	%ecx, 16(%rbp)
	.loc 1 19 11
	pxor	%xmm0, %xmm0
	movss	%xmm0, -20(%rbp)
.LBB2:
	.loc 1 20 13
	movl	$0, -24(%rbp)
	.loc 1 20 5
	jmp	.L4
.L5:
	.loc 1 21 21 discriminator 3
	cvtss2sd	-20(%rbp), %xmm6
	.loc 1 21 23 discriminator 3
	cvtsi2sd	-24(%rbp), %xmm0
	movq	.LC6(%rip), %rax
	movapd	%xmm0, %xmm1
	movq	%rax, %xmm0
	call	pow
	movapd	%xmm0, %xmm1
	.loc 1 21 35 discriminator 3
	movl	-24(%rbp), %eax
	addl	%eax, %eax
	.loc 1 21 37 discriminator 3
	addl	$1, %eax
	.loc 1 21 32 discriminator 3
	cvtsi2sd	%eax, %xmm0
	divsd	%xmm0, %xmm1
	movapd	%xmm1, %xmm0
	.loc 1 21 21 discriminator 3
	addsd	%xmm6, %xmm0
	.loc 1 21 14 discriminator 3
	cvtsd2ss	%xmm0, %xmm2
	movss	%xmm2, -20(%rbp)
	.loc 1 20 22 discriminator 3
	addl	$1, -24(%rbp)
.L4:
	.loc 1 20 5 discriminator 1
	movl	-24(%rbp), %eax
	cmpl	16(%rbp), %eax
	jl	.L5
.LBE2:
	.loc 1 22 12
	movss	-20(%rbp), %xmm0
	.loc 1 23 1
	movaps	-16(%rbp), %xmm6
	addq	$64, %rsp
	.cfi_restore 23
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14:
	.seh_endproc
	.globl	Serie_log
	.def	Serie_log;	.scl	2;	.type	32;	.endef
	.seh_proc	Serie_log
Serie_log:
.LFB15:
	.loc 1 25 1
	.cfi_startproc
	pushq	%rbp
	.seh_pushreg	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	.seh_stackalloc	80
	movaps	%xmm6, -32(%rbp)
	.seh_savexmm	%xmm6, 48
	movaps	%xmm7, -16(%rbp)
	.seh_savexmm	%xmm7, 64
	.cfi_offset 23, -48
	.cfi_offset 24, -32
	.seh_endprologue
	movl	%ecx, 16(%rbp)
	.loc 1 26 11
	pxor	%xmm0, %xmm0
	movss	%xmm0, -36(%rbp)
.LBB3:
	.loc 1 27 13
	movl	$1, -40(%rbp)
	.loc 1 27 5
	jmp	.L8
.L9:
	.loc 1 28 21 discriminator 3
	cvtss2sd	-36(%rbp), %xmm6
	.loc 1 28 23 discriminator 3
	cvtsi2sd	-40(%rbp), %xmm0
	movq	.LC6(%rip), %rax
	movapd	%xmm0, %xmm1
	movq	%rax, %xmm0
	call	pow
	movapd	%xmm0, %xmm7
	.loc 1 28 33 discriminator 3
	cvtsi2sd	-40(%rbp), %xmm1
	movsd	.LC7(%rip), %xmm0
	addsd	%xmm1, %xmm0
	call	log10
	.loc 1 28 32 discriminator 3
	mulsd	%xmm7, %xmm0
	.loc 1 28 21 discriminator 3
	addsd	%xmm6, %xmm0
	.loc 1 28 14 discriminator 3
	cvtsd2ss	%xmm0, %xmm2
	movss	%xmm2, -36(%rbp)
	.loc 1 27 23 discriminator 3
	addl	$1, -40(%rbp)
.L8:
	.loc 1 27 5 discriminator 1
	movl	-40(%rbp), %eax
	cmpl	16(%rbp), %eax
	jle	.L9
.LBE3:
	.loc 1 29 12
	movss	-36(%rbp), %xmm0
	.loc 1 30 1
	movaps	-32(%rbp), %xmm6
	movaps	-16(%rbp), %xmm7
	addq	$80, %rsp
	.cfi_restore 24
	.cfi_restore 23
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15:
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC6:
	.long	0
	.long	-1074790400
	.align 8
.LC7:
	.long	0
	.long	1071644672
	.text
.Letext0:
	.file 2 "C:/Program Files/CodeBlocks/MinGW/x86_64-w64-mingw32/include/math.h"
	.section	.debug_info,"dr"
.Ldebug_info0:
	.long	0x29f
	.word	0x4
	.secrel32	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.ascii "GNU C17 8.1.0 -mtune=core2 -march=nocona -g\0"
	.byte	0xc
	.ascii "D:\\Users\\Marco\\Documents\\2022_2\\codeblocks\\PROVAEXEMPLOQ3\\main.c\0"
	.ascii "D:\\\\Users\\\\Marco\\\\Documents\\\\2022_2\\\\codeblocks\\\\PROVAEXEMPLOQ3\0"
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.secrel32	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.ascii "char\0"
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.ascii "long long unsigned int\0"
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.ascii "long long int\0"
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.ascii "short unsigned int\0"
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.ascii "int\0"
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.ascii "long int\0"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.ascii "unsigned int\0"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.ascii "long unsigned int\0"
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.ascii "unsigned char\0"
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.ascii "double\0"
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.ascii "float\0"
	.uleb128 0x2
	.byte	0x10
	.byte	0x4
	.ascii "long double\0"
	.uleb128 0x3
	.byte	0x8
	.long	0x160
	.uleb128 0x4
	.ascii "__imp__HUGE\0"
	.byte	0x2
	.byte	0x9c
	.byte	0x13
	.long	0x182
	.uleb128 0x5
	.ascii "signgam\0"
	.byte	0x2
	.word	0x393
	.byte	0xe
	.long	0x117
	.uleb128 0x6
	.ascii "Serie_log\0"
	.byte	0x1
	.byte	0x18
	.byte	0x7
	.long	0x16a
	.quad	.LFB15
	.quad	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.long	0x212
	.uleb128 0x7
	.ascii "n\0"
	.byte	0x1
	.byte	0x18
	.byte	0x15
	.long	0x117
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x8
	.ascii "soma\0"
	.byte	0x1
	.byte	0x1a
	.byte	0xb
	.long	0x16a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x9
	.quad	.LBB3
	.quad	.LBE3-.LBB3
	.uleb128 0x8
	.ascii "i\0"
	.byte	0x1
	.byte	0x1b
	.byte	0xd
	.long	0x117
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.byte	0
	.uleb128 0x6
	.ascii "Leibniz\0"
	.byte	0x1
	.byte	0x11
	.byte	0x7
	.long	0x16a
	.quad	.LFB14
	.quad	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.long	0x275
	.uleb128 0x7
	.ascii "n\0"
	.byte	0x1
	.byte	0x11
	.byte	0x13
	.long	0x117
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x8
	.ascii "soma\0"
	.byte	0x1
	.byte	0x13
	.byte	0xb
	.long	0x16a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x9
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.uleb128 0x8
	.ascii "i\0"
	.byte	0x1
	.byte	0x14
	.byte	0xd
	.long	0x117
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.uleb128 0xa
	.ascii "main\0"
	.byte	0x1
	.byte	0x7
	.byte	0x5
	.long	0x117
	.quad	.LFB13
	.quad	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x8
	.ascii "n\0"
	.byte	0x1
	.byte	0x9
	.byte	0x9
	.long	0x117
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.byte	0
	.section	.debug_abbrev,"dr"
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0x8
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1b
	.uleb128 0x8
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x10
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2116
	.uleb128 0x19
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_aranges,"dr"
	.long	0x2c
	.word	0x2
	.secrel32	.Ldebug_info0
	.byte	0x8
	.byte	0
	.word	0
	.word	0
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.quad	0
	.quad	0
	.section	.debug_line,"dr"
.Ldebug_line0:
	.section	.debug_str,"dr"
	.ident	"GCC: (x86_64-posix-seh-rev0, Built by MinGW-W64 project) 8.1.0"
	.def	setlocale;	.scl	2;	.type	32;	.endef
	.def	printf;	.scl	2;	.type	32;	.endef
	.def	scanf;	.scl	2;	.type	32;	.endef
	.def	pow;	.scl	2;	.type	32;	.endef
	.def	log10;	.scl	2;	.type	32;	.endef
