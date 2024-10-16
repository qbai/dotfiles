/**********************************************************************
  Copyright(c) 2011-2015 Intel Corporation All rights reserved.

  Redistribution and use in source and binary forms, with or without
  modification, are permitted provided that the following conditions 
  are met:
    * Redistributions of source code must retain the above copyright
      notice, this list of conditions and the following disclaimer.
    * Redistributions in binary form must reproduce the above copyright
      notice, this list of conditions and the following disclaimer in
      the documentation and/or other materials provided with the
      distribution.
    * Neither the name of Intel Corporation nor the names of its
      contributors may be used to endorse or promote products derived
      from this software without specific prior written permission.

  THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
  "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
  LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR
  A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT
  OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
  SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT
  LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,
  DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY
  THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
  (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
  OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
**********************************************************************/

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "mem_routines.h"

#define RAND_ALIGN   32
#ifndef RANDOMS
# define RANDOMS 2000
#endif
#ifndef TEST_SEED
# define TEST_SEED 0x1234
#endif

#define TEST_LEN 0x1000

int main(int argc, char *argv[])
{
	unsigned char *src, *des;
	int i, r, ret = 0;

	srand(TEST_SEED);

	printf("mem_cpy_avx_test %d bytes, %d randoms, seed=0x%x\n",
	       TEST_LEN, RANDOMS, TEST_SEED);

	if ((src = (unsigned char *)malloc(TEST_LEN)) == NULL) {
		printf("Error: src malloc failed\n");
		return -1;
	}

	if ((des = (unsigned char *)malloc(TEST_LEN)) == NULL) {
		printf("Error: des malloc failed\n");
		return -1;
	}

	memset(src, 0x55, TEST_LEN);
	memset(des, 0xAA, TEST_LEN);

	// Test the whole length
	mem_cpy_avx(des, src, TEST_LEN);
	if (memcmp(des, src, TEST_LEN)) {
		printf("Error: whole length test failed - mem_cpy_avx\n");
		ret |= 1;
	} else {
		putchar('.');
		fflush(0);
	}

	// Test difference at random position
	for (i = 0; i < RANDOMS; i++) {
		r = rand() % TEST_LEN;
		*(src + r) = *(des + r) + 1;
		mem_cpy_avx(des, src, TEST_LEN);
		if (memcmp(des, src, TEST_LEN)) {
			printf("Error: random pos test failed (r: %d) - mem_cpy_avx\n", r);
			ret |= 1;
		} else {
			putchar('.');
			fflush(0);
		}
	}

	// Test random length
	for (i = 0; i < RANDOMS; i++) {
		r = rand() % TEST_LEN;
		memset(src, r, r);
		memset(des, r * 3 + 1, r);
		mem_cpy_avx(des, src, r);
		if (memcmp(des, src, r)) {
			printf("Error: random len test failed (r: %d) - mem_cpy_avx\n", r);
			ret |= 1;
		} else {
			putchar('.');
			fflush(0);
		}
	}

	printf(ret == 0 ? " Pass\n" : " Fail\n");

	return ret;
}
