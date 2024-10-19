
.section .data
.global ar
ar:
    .long   23
    .long   45
    .long   3
    .long   34
    
.global p
p:
    .quad   ar

        
.code64
.section .text
.align 16

.global test
test:
	/* lea p(%rip), %rax */		/* PIE mode */

	/* p addr is 28
	 * ar addr is 18
	 */	

	/* lea 0x5, %rax */			/* 0x5 */
	/* lea $0x5, %rax */		/* compile error */
	
	/* lea p, %rax */   		/* 28 */
	/* lea (p), %rax */ 		/* 28 */

	/*
		lea p, %rdx
		lea %rdx, %rax
	*/							/* compile error */
		
	/*
	lea p, %rdx
	lea (%rdx), %rax
	*/							/* 28 */

	/*						
	lea p, %rdx
	mov %rdx, %rax
	*/							/* 28 */
	
	/*
	lea p, %rdx
	mov (%rdx), %rax			
	*/ 							/* 18 */

	/*
	lea 0x123, %rdx
	lea (%rdx), p
	*/							/* compile error */
								/* lea only for register */







	


	/* mov p, %rax */			/* 18 */
	/* mov (p), %rax */			/* 18 */
	/* mov $p, %rax  */			/* 28 */

	/*
	mov p, %rdx
	mov (%rdx), %rax
	*/							/*  0x17 for 18 ar[0] */

	/* mov 0x123, %rax */ 		/* seg fault */

	/*
	lea 0x123, %rdx
	mov %rdx, p
	*/							/* p value is 0x123 */

	/*
	lea 0x123, %rdx
	mov %rdx, (p)
	*/							/* p value is 0x123 */

	/*
	lea 0x123, %rdx
	lea p, %rax
	mov %rdx, %rax
	*/							/* rax value is 0x123 */

	/*
	lea 0x123, %rdx
	lea p, %rax
	mov %rdx, (%rax)
	*/							/* p value is 0x123 */



	
	ret
