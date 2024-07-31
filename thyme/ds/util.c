#include "util.h"
#include "x86.h"



static int raid6_have_avx512(void)
{
	return boot_cpu_has(X86_FEATURE_AVX2) &&
		boot_cpu_has(X86_FEATURE_AVX) &&
		boot_cpu_has(X86_FEATURE_AVX512F) &&
		boot_cpu_has(X86_FEATURE_AVX512BW) &&
		boot_cpu_has(X86_FEATURE_AVX512VL) &&
		boot_cpu_has(X86_FEATURE_AVX512DQ);
}

static inline int boot_cpu_has(int flag)
{
	u32 eax, ebx, ecx, edx;

	eax = (flag & 0x100) ? 7 :
		(flag & 0x20) ? 0x80000001 : 1;
	ecx = 0;

	asm volatile("cpuid"
                 : "+a" (eax), "=b" (ebx), "=d" (edx), "+c" (ecx));

	return ((flag & 0x100 ? ebx :
             (flag & 0x80) ? ecx : edx) >> (flag & 31)) & 1;
}
