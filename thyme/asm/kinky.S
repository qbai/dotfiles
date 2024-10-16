#include "reg_size.h"

.code64
.section .text
.align 16


.global mem_cmp_avx2
mem_cmp_avx2:
	mov $0, pos
    sub $(4*32), len
    jle .mem_cmp_small_block

	.mem_cmp_loop:
    	vmovdqu (src, pos), %ymm0
    	vmovdqu 1*32(src, pos), %ymm1
    	vmovdqu 2*32(src, pos), %ymm2
    	vmovdqu 3*32(src, pos), %ymm3
    	vmovdqu (des, pos), %ymm4
    	vmovdqu 1*32(des, pos), %ymm5
    	vmovdqu 2*32(des, pos), %ymm6
    	vmovdqu 3*32(des, pos), %ymm7
    	vpxor   %ymm4, %ymm0, %ymm8
    	vpxor   %ymm5, %ymm1, %ymm9
    	vpxor   %ymm6, %ymm2, %ymm10
    	vpxor   %ymm7, %ymm3, %ymm11
    	vpor    %ymm9, %ymm8, %ymm0
    	vpor    %ymm11, %ymm10, %ymm4
    	vpor    %ymm0, %ymm4, %ymm1
    	vptest  %ymm1, %ymm1
    	jnz .return_fail
    	add $(4*32), pos
    	cmp len, pos
    	jl  .mem_cmp_loop

	.mem_cmp_last_block:
		vmovdqu (src, len), %ymm0
		vmovdqu 1*32(src, len), %ymm1
		vmovdqu 2*32(src, len), %ymm2
		vmovdqu 3*32(src, len), %ymm3
		vmovdqu (des, len), %ymm4
		vmovdqu 1*32(des, len), %ymm5
		vmovdqu 2*32(des, len), %ymm6
		vmovdqu 3*32(des, len), %ymm7
		vpxor   %ymm4, %ymm0, %ymm8
		vpxor   %ymm5, %ymm1, %ymm9
		vpxor   %ymm6, %ymm2, %ymm10
		vpxor   %ymm7, %ymm3, %ymm11
		vpor    %ymm9, %ymm8, %ymm0
		vpor    %ymm11, %ymm10, %ymm4
		vpor    %ymm0, %ymm4, %ymm1
		vptest  %ymm1, %ymm1
	    jnz .return_fail

	.return_pass1:
	    mov $0, %rax
	    ret
	    
	.mem_cmp_small_block:
	    add $(4*32), len
	    cmp $(3*32), len
	    jl  .mem_cmp_lt96
	    vmovdqu (src), %ymm0
	    vmovdqu 32(src), %ymm1
	    vmovdqu 2*32(src), %ymm2
	    vmovdqu (des), %ymm3
	    vmovdqu 32(des), %ymm4
	    vmovdqu 2*32(des), %ymm5
	    vpxor   %ymm3, %ymm0, %ymm6
	    vpxor   %ymm4, %ymm1, %ymm7
	    vpxor   %ymm5, %ymm2, %ymm8
	    vpor    %ymm7, %ymm6, %ymm9
	    vpor    %ymm8, %ymm9, %ymm0
	    vptest  %ymm0, %ymm0
	    jnz .return_fail
	    vmovdqu -32(src, len), %ymm0
	    vmovdqu -32(des, len), %ymm1
	    vpxor   %ymm1, %ymm0, %ymm2
	    vptest  %ymm2, %ymm2
	    jnz .return_fail
	    jmp .return_pass1

	.mem_cmp_lt96:
	    cmp $(2*32), len
	    jl  .mem_cmp_lt64
	    vmovdqu (src), %ymm0
	    vmovdqu 32(src), %ymm1
	    vmovdqu (des), %ymm2
	    vmovdqu 32(des), %ymm3
	    vpxor   %ymm2, %ymm0, %ymm4
	    vpxor   %ymm3, %ymm1, %ymm5
	    vpor    %ymm5, %ymm4, %ymm6
	    vptest  %ymm6, %ymm6
	    jnz .return_fail
	    vmovdqu -32(src, len), %ymm0
	    vmovdqu -32(des, len), %ymm1
	    vpxor   %ymm1, %ymm0, %ymm2
	    vptest  %ymm2, %ymm2
	    jnz .return_fail
	    jmp .return_pass1

	.mem_cmp_lt64:
	    cmp $32, len
	    jl  .mem_cmp_lt32
	    vmovdqu (src), %ymm0
	    vmovdqu (des), %ymm1
	    vmovdqu -32(src, len), %ymm2
	    vmovdqu -32(des, len), %ymm3
	    vpxor   %ymm1, %ymm0, %ymm4
	    vpxor   %ymm3, %ymm2, %ymm5
	    vpor    %ymm5, %ymm4, %ymm0
	    vptest  %ymm0, %ymm0
	    jnz .return_fail
	    jmp .return_pass1
	
	
	.mem_cmp_lt32:
	    cmp $16, len
	    jl  .mem_cmp_lt16
	    vmovdqu (src), %xmm0
	    vmovdqu (des), %xmm1
	    vmovdqu -16(src, len), %xmm2
	    vmovdqu -16(des, len), %xmm3
	    vpxor   %xmm1, %xmm0, %xmm4
	    vpxor   %xmm3, %xmm2, %xmm5
	    vpor    %xmm5, %xmm4, %xmm0
	    vptest  %xmm0, %xmm0
	    jnz .return_fail
	    jmp .return_pass1
	
	
	.mem_cmp_lt16:
	    cmp $8, len
	    jl  .mem_cmp_lt8
	    mov (src), tmp
	    mov (des), tmp3
	    xor tmp3, tmp
	    test    tmp, tmp
	    jnz .return_fail
	    mov -8(src, len), tmp
	    mov -8(des, len), tmp3
	    xor tmp3, tmp
	    test    tmp, tmp
	    jnz .return_fail
	    jmp .return_pass1
	
	.mem_cmp_lt8:
	    cmp $0, len
	    je  .return_pass1
	.mem_cmp_1byte_loop:
	    mov (src, pos), tmpb
	    cmp (des, pos), tmpb
	    jnz .return_fail
	    add $1, pos
	    cmp len, pos
	    jl  .mem_cmp_1byte_loop
	    jmp .return_pass1

	.return_fail:
	    mov $1, %rax
	    ret


	
.global mem_cpy_avx
mem_cpy_avx:
	mov $0, %rax
	sub $(8*32), %rdx
	jle .mem_cpy_small_block

	.mem_cpy_loop:
		vmovdqu (%rsi, %rax), %ymm0
		vmovdqu 1*32(%rsi, %rax), %ymm1
		vmovdqu 2*32(%rsi, %rax), %ymm2
		vmovdqu 3*32(%rsi, %rax), %ymm3
		vmovdqu 4*32(%rsi, %rax), %ymm4
	  	vmovdqu 5*32(%rsi, %rax), %ymm5
	  	vmovdqu 6*32(%rsi, %rax), %ymm6
	 	vmovdqu 7*32(%rsi, %rax), %ymm7
		vmovdqu %ymm0, (%rdi, %rax)
		vmovdqu %ymm1, 1*32(%rdi, %rax)
		vmovdqu %ymm2, 2*32(%rdi, %rax)
		vmovdqu %ymm3, 3*32(%rdi, %rax)
		vmovdqu %ymm4, 4*32(%rdi, %rax)
		vmovdqu %ymm5, 5*32(%rdi, %rax)
		vmovdqu %ymm6, 6*32(%rdi, %rax)
		vmovdqu %ymm7, 7*32(%rdi, %rax)
		add $(8*32), %rax
		cmp %rdx, %rax
	 	jl  .mem_cpy_loop

	.mem_cpy_last_block:
		vmovdqu (%rsi, %rdx), %ymm0
		vmovdqu 1*32(%rsi, %rdx), %ymm1
		vmovdqu 2*32(%rsi, %rdx), %ymm2
		vmovdqu 3*32(%rsi, %rdx), %ymm3
		vmovdqu 4*32(%rsi, %rdx), %ymm4
		vmovdqu 5*32(%rsi, %rdx), %ymm5
		vmovdqu 6*32(%rsi, %rdx), %ymm6
		vmovdqu 7*32(%rsi, %rdx), %ymm7
		vmovdqu %ymm0, (%rdi, %rdx)
		vmovdqu %ymm1, 1*32(%rdi, %rdx)
		vmovdqu %ymm2, 2*32(%rdi, %rdx)
		vmovdqu %ymm3, 3*32(%rdi, %rdx)
		vmovdqu %ymm4, 4*32(%rdi, %rdx)
		vmovdqu %ymm5, 5*32(%rdi, %rdx)
		vmovdqu %ymm6, 6*32(%rdi, %rdx)
		vmovdqu %ymm7, 7*32(%rdi, %rdx)

	.return_pass:
	    mov     %rdx, %rax
	    ret

	.mem_cpy_small_block:
	    add     $(8*32), %rdx
	    cmp     $(4*32), %rdx
	    jl      .mem_cpy_lt128
		vmovdqu (%rsi, %rax), %ymm0
		vmovdqu 1*32(%rsi, %rax), %ymm1
		vmovdqu 2*32(%rsi, %rax), %ymm2
		vmovdqu 3*32(%rsi, %rax), %ymm3
	    vmovdqu %ymm0, (%rdi, %rax)
	    vmovdqu %ymm1, 1*32(%rdi, %rax)
	    vmovdqu %ymm2, 2*32(%rdi, %rax)
	    vmovdqu %ymm3, 3*32(%rdi, %rax)  
	  	sub     $(4*32), %rdx
	    add     $(4*32), %rax

	.mem_cpy_lt128:
	    cmp     $(2*32), %rdx
	    jl      .mem_cpy_lt64
		vmovdqu (%rsi, %rax), %ymm0
		vmovdqu 1*32(%rsi, %rax), %ymm1
		vmovdqu %ymm0, (%rdi, %rax)
		vmovdqu %ymm1, 1*32(%rdi, %rax)
	    sub     $(2*32), %rdx
	    add     $(2*32), %rax

	.mem_cpy_lt64:
	    cmp     $32, %rdx
	    jl      .mem_cpy_lt32
		vmovdqu (%rsi, %rax), %ymm0
		vmovdqu %ymm0, (%rdi, %rax)
	    sub     $32, %rdx
	    add     $32, %rax

	.mem_cpy_lt32:
	    cmp     $16, %rdx
	    jl      .mem_cpy_lt16
	    add     %rax, %rdx
	    sub     $16, %rdx
	    vmovdqu (%rsi, %rax), %xmm0
	    vmovdqu (%rsi, %rdx), %xmm1
	    vmovdqu %xmm0, (%rdi, %rax)
	    vmovdqu %xmm1, (%rdi, %rdx)
	    jmp     .return_pass

	.mem_cpy_lt16:
	          cmp     $8, %rdx
	          jl      .mem_cpy_lt8
	          add     %rax, %rdx
	          sub     $8, %rdx
	          mov     (%rsi, %rax), %r11
	          mov     (%rsi, %rdx), %rcx
	          mov     %r11, (%rdi, %rax)
	          mov     %rcx, (%rdi, %rdx)
	          jmp     .return_pass

	.mem_cpy_lt8:
	          cmp     $0, %rdx
	          je      .return_pass
	.mem_cpy_1byte_loop:
	          mov     (%rsi, %rax), %r11b
	          mov     %r11b, (%rdi, %rax)
	          add     $1, %rax
	          sub     $1, %rdx
	          jg      .mem_cpy_1byte_loop
	          jmp     .return_pass

	

	          
