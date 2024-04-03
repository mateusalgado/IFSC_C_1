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
	.ascii "Informa as dimens\365es <m>x<n> da matriz: \0"
.LC2:
	.ascii "%dx%d\0"
	.align 8
.LC3:
	.ascii "Entre com a nova coluna da matriz: \0"
.LC4:
	.ascii "%d\0"
	.text
	.globl	main
	.def	main;	.scl	2;	.type	32;	.endef
	.seh_proc	main
main:
.LFB13:
	.file 1 "D:/Users/Marco/Documents/2022_2/codeblocks/PROVAEXEMPLOQ2/main.c"
	.loc 1 8 1
	.cfi_startproc
	pushq	%rbp
	.seh_pushreg	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	subq	$496, %rsp
	.seh_stackalloc	496
	.cfi_def_cfa_offset 512
	leaq	128(%rsp), %rbp
	.seh_setframe	%rbp, 128
	.cfi_def_cfa 6, 384
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
	leaq	-56(%rbp), %rdx
	leaq	-52(%rbp), %rax
	movq	%rdx, %r8
	movq	%rax, %rdx
	leaq	.LC2(%rip), %rcx
	call	scanf
	.loc 1 13 5
	movl	-56(%rbp), %ecx
	movl	-52(%rbp), %edx
	leaq	-48(%rbp), %rax
	movl	%ecx, %r8d
	movq	%rax, %rcx
	call	Cria_Matriz
	.loc 1 14 5
	movl	-56(%rbp), %ecx
	movl	-52(%rbp), %edx
	leaq	-48(%rbp), %rax
	movl	%ecx, %r8d
	movq	%rax, %rcx
	call	Imprime_Matriz
	.loc 1 15 5
	leaq	.LC3(%rip), %rcx
	call	printf
.LBB2:
	.loc 1 16 14
	movl	$0, 364(%rbp)
	.loc 1 16 5
	jmp	.L2
.L3:
	.loc 1 17 9 discriminator 3
	leaq	-96(%rbp), %rax
	movl	364(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movq	%rax, %rdx
	leaq	.LC4(%rip), %rcx
	call	scanf
	.loc 1 16 25 discriminator 3
	addl	$1, 364(%rbp)
.L2:
	.loc 1 16 20 discriminator 1
	movl	-52(%rbp), %eax
	.loc 1 16 5 discriminator 1
	cmpl	%eax, 364(%rbp)
	jl	.L3
.LBE2:
	.loc 1 18 5
	movl	-56(%rbp), %r8d
	movl	-52(%rbp), %ecx
	leaq	-96(%rbp), %rdx
	leaq	-48(%rbp), %rax
	movl	%r8d, %r9d
	movl	%ecx, %r8d
	movq	%rax, %rcx
	call	Aumenta_Matriz
	.loc 1 19 5
	movl	-56(%rbp), %eax
	leal	1(%rax), %ecx
	movl	-52(%rbp), %edx
	leaq	-48(%rbp), %rax
	movl	%ecx, %r8d
	movq	%rax, %rcx
	call	Imprime_Matriz
	.loc 1 20 12
	movl	$0, %eax
	.loc 1 21 1
	addq	$496, %rsp
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, -488
	ret
	.cfi_endproc
.LFE13:
	.seh_endproc
	.globl	Cria_Matriz
	.def	Cria_Matriz;	.scl	2;	.type	32;	.endef
	.seh_proc	Cria_Matriz
Cria_Matriz:
.LFB14:
	.loc 1 24 1
	.cfi_startproc
	pushq	%rbp
	.seh_pushreg	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	.seh_stackalloc	16
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movl	%edx, 24(%rbp)
	movl	%r8d, 32(%rbp)
	.loc 1 26 11
	movl	$0, -4(%rbp)
	.loc 1 26 5
	jmp	.L6
.L9:
	.loc 1 27 15
	movl	$0, -8(%rbp)
	.loc 1 27 9
	jmp	.L7
.L8:
	.loc 1 28 28 discriminator 3
	movl	$5, %eax
	subl	-4(%rbp), %eax
	movl	%eax, %r8d
	.loc 1 28 34 discriminator 3
	movl	-8(%rbp), %eax
	leal	1(%rax), %r9d
	.loc 1 28 19 discriminator 3
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	16(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	.loc 1 28 31 discriminator 3
	movl	%r8d, %edx
	imull	%r9d, %edx
	.loc 1 28 25 discriminator 3
	movl	-8(%rbp), %eax
	cltq
	movl	%edx, (%rcx,%rax,4)
	.loc 1 27 25 discriminator 3
	addl	$1, -8(%rbp)
.L7:
	.loc 1 27 9 discriminator 1
	movl	-8(%rbp), %eax
	cmpl	32(%rbp), %eax
	jl	.L8
	.loc 1 26 21 discriminator 2
	addl	$1, -4(%rbp)
.L6:
	.loc 1 26 5 discriminator 1
	movl	-4(%rbp), %eax
	cmpl	24(%rbp), %eax
	jl	.L9
	.loc 1 29 1
	nop
	addq	$16, %rsp
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14:
	.seh_endproc
	.section .rdata,"dr"
.LC5:
	.ascii "%2d \0"
.LC6:
	.ascii "|\0"
	.text
	.globl	Imprime_Matriz
	.def	Imprime_Matriz;	.scl	2;	.type	32;	.endef
	.seh_proc	Imprime_Matriz
Imprime_Matriz:
.LFB15:
	.loc 1 31 1
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
	movq	%rcx, 16(%rbp)
	movl	%edx, 24(%rbp)
	movl	%r8d, 32(%rbp)
.LBB3:
	.loc 1 32 14
	movl	$0, -4(%rbp)
	.loc 1 32 5
	jmp	.L11
.L14:
	.loc 1 34 10
	movl	$124, %ecx
	call	putchar
.LBB4:
	.loc 1 35 19
	movl	$0, -8(%rbp)
	.loc 1 35 10
	jmp	.L12
.L13:
	.loc 1 36 34 discriminator 3
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	16(%rbp), %rax
	addq	%rax, %rdx
	.loc 1 36 13 discriminator 3
	movl	-8(%rbp), %eax
	cltq
	movl	(%rdx,%rax,4), %eax
	movl	%eax, %edx
	leaq	.LC5(%rip), %rcx
	call	printf
	.loc 1 35 30 discriminator 3
	addl	$1, -8(%rbp)
.L12:
	.loc 1 35 10 discriminator 1
	movl	-8(%rbp), %eax
	cmpl	32(%rbp), %eax
	jl	.L13
.LBE4:
	.loc 1 37 10 discriminator 2
	leaq	.LC6(%rip), %rcx
	call	puts
	.loc 1 32 25 discriminator 2
	addl	$1, -4(%rbp)
.L11:
	.loc 1 32 5 discriminator 1
	movl	-4(%rbp), %eax
	cmpl	24(%rbp), %eax
	jl	.L14
.LBE3:
	.loc 1 39 1
	nop
	addq	$48, %rsp
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15:
	.seh_endproc
	.globl	Aumenta_Matriz
	.def	Aumenta_Matriz;	.scl	2;	.type	32;	.endef
	.seh_proc	Aumenta_Matriz
Aumenta_Matriz:
.LFB16:
	.loc 1 42 1
	.cfi_startproc
	pushq	%rbp
	.seh_pushreg	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	.seh_stackalloc	16
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movl	%r8d, 32(%rbp)
	movl	%r9d, 40(%rbp)
.LBB5:
	.loc 1 43 14
	movl	$0, -4(%rbp)
	.loc 1 43 5
	jmp	.L16
.L17:
	.loc 1 45 27 discriminator 3
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	24(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	.loc 1 45 17 discriminator 3
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	16(%rbp), %rax
	addq	%rax, %rdx
	.loc 1 45 24 discriminator 3
	movl	(%rcx), %ecx
	.loc 1 45 23 discriminator 3
	movl	40(%rbp), %eax
	cltq
	movl	%ecx, (%rdx,%rax,4)
	.loc 1 43 25 discriminator 3
	addl	$1, -4(%rbp)
.L16:
	.loc 1 43 5 discriminator 1
	movl	-4(%rbp), %eax
	cmpl	32(%rbp), %eax
	jl	.L17
.LBE5:
	.loc 1 47 1
	nop
	addq	$16, %rsp
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16:
	.seh_endproc
.Letext0:
	.section	.debug_info,"dr"
.Ldebug_info0:
	.long	0x38a
	.word	0x4
	.secrel32	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.ascii "GNU C17 8.1.0 -mtune=core2 -march=nocona -g\0"
	.byte	0xc
	.ascii "D:\\Users\\Marco\\Documents\\2022_2\\codeblocks\\PROVAEXEMPLOQ2\\main.c\0"
	.ascii "D:\\\\Users\\\\Marco\\\\Documents\\\\2022_2\\\\codeblocks\\\\PROVAEXEMPLOQ2\0"
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
	.uleb128 0x3
	.byte	0x8
	.long	0x117
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
	.uleb128 0x4
	.ascii "Aumenta_Matriz\0"
	.byte	0x1
	.byte	0x29
	.byte	0x6
	.quad	.LFB16
	.quad	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.long	0x1e5
	.uleb128 0x5
	.secrel32	.LASF0
	.byte	0x1
	.byte	0x29
	.byte	0x19
	.long	0x1f5
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x6
	.ascii "p\0"
	.byte	0x1
	.byte	0x29
	.byte	0x2b
	.long	0x12a
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x6
	.ascii "m\0"
	.byte	0x1
	.byte	0x29
	.byte	0x31
	.long	0x117
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x6
	.ascii "n\0"
	.byte	0x1
	.byte	0x29
	.byte	0x37
	.long	0x117
	.uleb128 0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0x7
	.quad	.LBB5
	.quad	.LBE5-.LBB5
	.uleb128 0x8
	.ascii "i\0"
	.byte	0x1
	.byte	0x2b
	.byte	0xe
	.long	0x117
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.byte	0
	.uleb128 0x9
	.long	0x117
	.long	0x1f5
	.uleb128 0xa
	.long	0xd6
	.byte	0x9
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x1e5
	.uleb128 0xb
	.ascii "Imprime_Matriz\0"
	.byte	0x1
	.byte	0x1e
	.byte	0x6
	.quad	.LFB15
	.quad	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.long	0x28c
	.uleb128 0x5
	.secrel32	.LASF0
	.byte	0x1
	.byte	0x1e
	.byte	0x19
	.long	0x1f5
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x6
	.ascii "m\0"
	.byte	0x1
	.byte	0x1e
	.byte	0x2b
	.long	0x117
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x6
	.ascii "n\0"
	.byte	0x1
	.byte	0x1e
	.byte	0x31
	.long	0x117
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x7
	.quad	.LBB3
	.quad	.LBE3-.LBB3
	.uleb128 0x8
	.ascii "i\0"
	.byte	0x1
	.byte	0x20
	.byte	0xe
	.long	0x117
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x7
	.quad	.LBB4
	.quad	.LBE4-.LBB4
	.uleb128 0x8
	.ascii "j\0"
	.byte	0x1
	.byte	0x23
	.byte	0x13
	.long	0x117
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x4
	.ascii "Cria_Matriz\0"
	.byte	0x1
	.byte	0x17
	.byte	0x6
	.quad	.LFB14
	.quad	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.long	0x2f6
	.uleb128 0x5
	.secrel32	.LASF0
	.byte	0x1
	.byte	0x17
	.byte	0x18
	.long	0x1f5
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x6
	.ascii "m\0"
	.byte	0x1
	.byte	0x17
	.byte	0x29
	.long	0x117
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x6
	.ascii "n\0"
	.byte	0x1
	.byte	0x17
	.byte	0x2f
	.long	0x117
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x8
	.ascii "i\0"
	.byte	0x1
	.byte	0x19
	.byte	0x9
	.long	0x117
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x8
	.ascii "j\0"
	.byte	0x1
	.byte	0x19
	.byte	0xb
	.long	0x117
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xc
	.ascii "main\0"
	.byte	0x1
	.byte	0x7
	.byte	0x5
	.long	0x117
	.quad	.LFB13
	.quad	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.long	0x37b
	.uleb128 0x8
	.ascii "matriz\0"
	.byte	0x1
	.byte	0x9
	.byte	0x9
	.long	0x37b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -432
	.uleb128 0x8
	.ascii "m\0"
	.byte	0x1
	.byte	0x9
	.byte	0x18
	.long	0x117
	.uleb128 0x3
	.byte	0x91
	.sleb128 -436
	.uleb128 0x8
	.ascii "n\0"
	.byte	0x1
	.byte	0x9
	.byte	0x1a
	.long	0x117
	.uleb128 0x3
	.byte	0x91
	.sleb128 -440
	.uleb128 0x8
	.ascii "coluna\0"
	.byte	0x1
	.byte	0x9
	.byte	0x1c
	.long	0x1e5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -480
	.uleb128 0x7
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.uleb128 0x8
	.ascii "i\0"
	.byte	0x1
	.byte	0x10
	.byte	0xe
	.long	0x117
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.byte	0
	.uleb128 0xd
	.long	0x117
	.uleb128 0xa
	.long	0xd6
	.byte	0x9
	.uleb128 0xa
	.long	0xd6
	.byte	0x9
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
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
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
	.uleb128 0x6
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
	.uleb128 0x7
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
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
.LASF0:
	.ascii "pmatriz\0"
	.ident	"GCC: (x86_64-posix-seh-rev0, Built by MinGW-W64 project) 8.1.0"
	.def	setlocale;	.scl	2;	.type	32;	.endef
	.def	printf;	.scl	2;	.type	32;	.endef
	.def	scanf;	.scl	2;	.type	32;	.endef
	.def	putchar;	.scl	2;	.type	32;	.endef
	.def	puts;	.scl	2;	.type	32;	.endef
