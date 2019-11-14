#ifndef _COMPILER-GCC_H
#define _COMPILER-GCC_H

/*
 * Common definitions for all gcc versions go here.
 */
#define GCC_VERSION (__GNUC__ * 10000           \
                     + __GNUC_MINOR__ * 100     \
                     + __GNUC_PATCHLEVEL__)

#if GCC_VERSION < 30200
# error Sorry, your compiler is too old - please upgrade it.
#endif

/* gcc 4.0.0 */
#if GCC_VERSION >= 40000

#endif /* gcc version >= 40000 specific checks */

#define barrier() __asm__ __volatile__("": : :"memory")

#define __READ_ONCE_SIZE                                            \
({                                                              \
    switch (size) {                                             \
    case 1: *(__u8 *)res = *(volatile __u8 *)p; break;          \
    case 2: *(__u16 *)res = *(volatile __u16 *)p; break;		\
    case 4: *(__u32 *)res = *(volatile __u32 *)p; break;		\
    case 8: *(__u64 *)res = *(volatile __u64 *)p; break;		\
    default:                                                    \
        barrier();                                              \
        __builtin_memcpy((void *)res, (const void *)p, size);	\
        barrier();                                              \
    }                                                           \
})

static __always_inline
void __read_once_size(const volatile void *p, void *res, int size)
{
	__READ_ONCE_SIZE;
}

static void __read_once_size_nocheck(const volatile void *p, void *res, int size)
{
	__READ_ONCE_SIZE;
}

static __always_inline void __write_once_size(volatile void *p, void *res, int size)
{
	switch (size) {
	case 1: *(volatile __u8 *)p = *(__u8 *)res; break;
	case 2: *(volatile __u16 *)p = *(__u16 *)res; break;
	case 4: *(volatile __u32 *)p = *(__u32 *)res; break;
	case 8: *(volatile __u64 *)p = *(__u64 *)res; break;
	default:
		barrier();
		__builtin_memcpy((void *)p, (const void *)res, size);
		barrier();
	}
}


#define READ_ONCE(x)                                                \
({                                                                  \
    union { typeof(x) __val; char __c[1]; } __u =                   \
                                                { .__c = { 0 } };   \
    __read_once_size(&(x), __u.__c, sizeof(x));                     \
    __u.__val;                                                      \
})

#define WRITE_ONCE(x, val)                                              \
({                                                                  \
    union { typeof(x) __val; char __c[1]; } __u =                   \
                                                { .__val = (val) }; \
    __write_once_size(&(x), __u.__c, sizeof(x));                    \
    __u.__val;                                                      \
})


#endif /* _COMPILER-GCC_H */
