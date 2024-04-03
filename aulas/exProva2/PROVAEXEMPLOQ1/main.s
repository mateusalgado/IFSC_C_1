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
	.ascii "Entre com a marca\347\343o inicial do cronometro em horas\0"
	.align 8
.LC2:
	.ascii "minutos e segundos <h> <min> <seg>:\0"
.LC3:
	.ascii "%d %d %d\0"
	.align 8
.LC4:
	.ascii "Entre com a marca\347\343o final do cronometro em horas\0"
	.align 8
.LC5:
	.ascii "Tempo transcorrido: %02d:%02d:%02d\0"
	.text
	.globl	main
	.def	main;	.scl	2;	.type	32;	.endef
	.seh_proc	main
main:
.LFB13:
	.file 1 "D:/Users/Marco/Documents/2022_2/codeblocks/PROVAEXEMPLOQ1/main.c"
	.loc 1 12 1
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
	.seh_endprologue
	.loc 1 12 1
	call	__main
.LVL0:
	.loc 1 14 5
	leaq	.LC0(%rip), %rdx
	movl	$2, %ecx
	call	setlocale
	.loc 1 15 5
	leaq	.LC1(%rip), %rcx
	call	puts
	.loc 1 16 5
	leaq	.LC2(%rip), %rcx
	call	puts
	.loc 1 17 5
	leaq	-12(%rbp), %rax
	leaq	8(%rax), %rcx
	leaq	-12(%rbp), %rax
	leaq	4(%rax), %rdx
	leaq	-12(%rbp), %rax
	movq	%rcx, %r9
	movq	%rdx, %r8
	movq	%rax, %rdx
	leaq	.LC3(%rip), %rcx
	call	scanf
	.loc 1 18 5
	leaq	.LC4(%rip), %rcx
	call	puts
	.loc 1 19 5
	leaq	.LC2(%rip), %rcx
	call	puts
	.loc 1 20 5
	leaq	-24(%rbp), %rax
	leaq	8(%rax), %rcx
	leaq	-24(%rbp), %rax
	leaq	4(%rax), %rdx
	leaq	-24(%rbp), %rax
	movq	%rcx, %r9
	movq	%rdx, %r8
	movq	%rax, %rdx
	leaq	.LC3(%rip), %rcx
	call	scanf
	.loc 1 21 5
	leaq	-36(%rbp), %rcx
	leaq	-24(%rbp), %rdx
	leaq	-12(%rbp), %rax
	movq	%rcx, %r8
	movq	%rax, %rcx
	call	Elapsed_time
	.loc 1 22 5
	movl	-28(%rbp), %ecx
	movl	-32(%rbp), %edx
	movl	-36(%rbp), %eax
	movl	%ecx, %r9d
	movl	%edx, %r8d
	movl	%eax, %edx
	leaq	.LC5(%rip), %rcx
	call	printf
	.loc 1 23 12
	movl	$0, %eax
	.loc 1 24 1
	addq	$80, %rsp
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.seh_endproc
	.globl	Elapsed_time
	.def	Elapsed_time;	.scl	2;	.type	32;	.endef
	.seh_proc	Elapsed_time
Elapsed_time:
.LFB14:
	.loc 1 26 1
	.cfi_startproc
	pushq	%rbp
	.seh_pushreg	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rbx
	.seh_pushreg	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	subq	$56, %rsp
	.seh_stackalloc	56
	.cfi_def_cfa_offset 80
	leaq	128(%rsp), %rbp
	.seh_setframe	%rbp, 128
	.cfi_def_cfa 6, -48
	.seh_endprologue
	movq	%rcx, -48(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%r8, -32(%rbp)
	.loc 1 28 13
	movq	-40(%rbp), %rax
	movq	%rax, %rcx
	call	Segundos
	movl	%eax, %ebx
	.loc 1 28 26
	movq	-48(%rbp), %rcx
	call	Segundos
	.loc 1 28 11
	subl	%eax, %ebx
	movl	%ebx, %eax
	movl	%eax, -84(%rbp)
	.loc 1 29 21
	movl	-84(%rbp), %ecx
	movl	$-1851608123, %edx
	movl	%ecx, %eax
	imull	%edx
	leal	(%rdx,%rcx), %eax
	sarl	$11, %eax
	movl	%eax, %edx
	movl	%ecx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	.loc 1 29 14
	movq	-32(%rbp), %rax
	movl	%edx, (%rax)
	.loc 1 30 11
	movl	-84(%rbp), %ecx
	movl	$-1851608123, %edx
	movl	%ecx, %eax
	imull	%edx
	leal	(%rdx,%rcx), %eax
	sarl	$11, %eax
	movl	%eax, %edx
	movl	%ecx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	imull	$3600, %eax, %eax
	subl	%eax, %ecx
	movl	%ecx, %eax
	movl	%eax, -84(%rbp)
	.loc 1 31 20
	movl	-84(%rbp), %ecx
	movl	$-2004318071, %edx
	movl	%ecx, %eax
	imull	%edx
	leal	(%rdx,%rcx), %eax
	sarl	$5, %eax
	movl	%eax, %edx
	movl	%ecx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	.loc 1 31 13
	movq	-32(%rbp), %rax
	movl	%edx, 4(%rax)
	.loc 1 32 20
	movl	-84(%rbp), %ecx
	movl	$-2004318071, %edx
	movl	%ecx, %eax
	imull	%edx
	leal	(%rdx,%rcx), %eax
	sarl	$5, %eax
	movl	%eax, %edx
	movl	%ecx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	imull	$60, %eax, %eax
	subl	%eax, %ecx
	movl	%ecx, %eax
	.loc 1 32 13
	movq	-32(%rbp), %rdx
	movl	%eax, 8(%rdx)
	.loc 1 33 1
	nop
	addq	$56, %rsp
	popq	%rbx
	.cfi_restore 3
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, -40
	ret
	.cfi_endproc
.LFE14:
	.seh_endproc
	.globl	Segundos
	.def	Segundos;	.scl	2;	.type	32;	.endef
	.seh_proc	Segundos
Segundos:
.LFB15:
	.loc 1 35 1
	.cfi_startproc
	pushq	%rbp
	.seh_pushreg	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.cfi_def_cfa_register 6
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	.loc 1 36 18
	movq	16(%rbp), %rax
	movl	(%rax), %eax
	.loc 1 36 25
	imull	$60, %eax, %eax
	.loc 1 36 31
	movq	16(%rbp), %rdx
	movl	4(%rdx), %edx
	.loc 1 36 28
	addl	%edx, %eax
	.loc 1 36 14
	imull	$60, %eax, %eax
	.loc 1 36 40
	movq	16(%rbp), %rdx
	movl	8(%rdx), %edx
	.loc 1 36 38
	addl	%edx, %eax
	.loc 1 37 1
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15:
	.seh_endproc
.Letext0:
	.section	.debug_info,"dr"
.Ldebug_info0:
	.long	0x280
	.word	0x4
	.secrel32	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.ascii "GNU C17 8.1.0 -mtune=core2 -march=nocona -g\0"
	.byte	0xc
	.ascii "D:\\Users\\Marco\\Documents\\2022_2\\codeblocks\\PROVAEXEMPLOQ1\\main.c\0"
	.ascii "D:\\\\Users\\\\Marco\\\\Documents\\\\2022_2\\\\codeblocks\\\\PROVAEXEMPLOQ1\0"
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
	.uleb128 0x3
	.ascii "tempo\0"
	.byte	0xc
	.byte	0x1
	.byte	0x3
	.byte	0x8
	.long	0x198
	.uleb128 0x4
	.ascii "hora\0"
	.byte	0x1
	.byte	0x5
	.byte	0x9
	.long	0x117
	.byte	0
	.uleb128 0x4
	.ascii "min\0"
	.byte	0x1
	.byte	0x6
	.byte	0x9
	.long	0x117
	.byte	0x4
	.uleb128 0x4
	.ascii "seg\0"
	.byte	0x1
	.byte	0x7
	.byte	0x9
	.long	0x117
	.byte	0x8
	.byte	0
	.uleb128 0x5
	.ascii "Segundos\0"
	.byte	0x1
	.byte	0x22
	.byte	0x5
	.long	0x117
	.quad	.LFB15
	.quad	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.long	0x1cd
	.uleb128 0x6
	.ascii "p\0"
	.byte	0x1
	.byte	0x22
	.byte	0x1c
	.long	0x1cd
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0x160
	.uleb128 0x8
	.ascii "Elapsed_time\0"
	.byte	0x1
	.byte	0x19
	.byte	0x6
	.quad	.LFB14
	.quad	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.long	0x236
	.uleb128 0x6
	.ascii "pi\0"
	.byte	0x1
	.byte	0x19
	.byte	0x21
	.long	0x1cd
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x6
	.ascii "pf\0"
	.byte	0x1
	.byte	0x19
	.byte	0x32
	.long	0x1cd
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x6
	.ascii "pd\0"
	.byte	0x1
	.byte	0x19
	.byte	0x43
	.long	0x1cd
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x9
	.ascii "total\0"
	.byte	0x1
	.byte	0x1b
	.byte	0x9
	.long	0x117
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0xa
	.ascii "main\0"
	.byte	0x1
	.byte	0xb
	.byte	0x5
	.long	0x117
	.quad	.LFB13
	.quad	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x9
	.ascii "ti\0"
	.byte	0x1
	.byte	0xd
	.byte	0x12
	.long	0x160
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x9
	.ascii "tf\0"
	.byte	0x1
	.byte	0xd
	.byte	0x16
	.long	0x160
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x9
	.ascii "delta\0"
	.byte	0x1
	.byte	0xd
	.byte	0x1a
	.long	0x160
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
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
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0xd
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
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x5
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
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
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
	.uleb128 0x9
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
	.def	puts;	.scl	2;	.type	32;	.endef
	.def	scanf;	.scl	2;	.type	32;	.endef
	.def	printf;	.scl	2;	.type	32;	.endef
