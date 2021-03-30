	.file	"prog3.c"
	.text
	.p2align 4
	.globl	crypt
	.type	crypt, @function
crypt:
.LFB0:
	.cfi_startproc
	endbr64
	movq	%rdi, %rax
	ret
	.cfi_endproc
.LFE0:
	.size	crypt, .-crypt
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"Write text to encrypt: "
.LC1:
	.string	"%s"
.LC2:
	.string	"crypt(%s) = %s\n"
.LC3:
	.string	"Done!"
	.section	.text.startup,"ax",@progbits
	.p2align 4
	.globl	main
	.type	main, @function
main:
.LFB1:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	leaq	.LC0(%rip), %rdi
	subq	$112, %rsp
	.cfi_def_cfa_offset 128
	movq	%fs:40, %rax
	movq	%rax, 104(%rsp)
	xorl	%eax, %eax
	movq	%rsp, %rbp
	call	printf@PLT
	movq	%rbp, %rsi
	leaq	.LC1(%rip), %rdi
	xorl	%eax, %eax
	call	__isoc99_scanf@PLT
	movq	%rbp, %rdx
	movq	%rbp, %rsi
	xorl	%eax, %eax
	leaq	.LC2(%rip), %rdi
	call	printf@PLT
	leaq	.LC3(%rip), %rdi
	call	puts@PLT
	movq	104(%rsp), %rax
	xorq	%fs:40, %rax
	jne	.L6
	addq	$112, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	xorl	%eax, %eax
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
.L6:
	.cfi_restore_state
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE1:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 9.3.0-17ubuntu1~20.04) 9.3.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	 1f - 0f
	.long	 4f - 1f
	.long	 5
0:
	.string	 "GNU"
1:
	.align 8
	.long	 0xc0000002
	.long	 3f - 2f
2:
	.long	 0x3
3:
	.align 8
4:
