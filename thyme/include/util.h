#ifndef _UTIL_H
#define _UTIL_H

#include <stdio.h>
#include <stdbool.h>
#include <assert.h>

#include <stdint.h>

#ifndef UINT_MAX
    #define UINT_MAX	(~0U)
#endif

/* runtime checking error */
#define BUG_ON(cond) assert(!(cond))

/* Force compilation if condition is true */
#ifdef DEBUG
    #define BUILD_BUG_ON(condition) ((void)sizeof(char[1 - 2*!!(condition)])
    #define BUILD_BUG_ON_ZERO(e) (sizeof(struct { int:(-!!(e)); }))
    //#define BUILD_BUG_ON_ZERO(e) (sizeof(char[1 - 2 * !!(e)]) - 1)
#else
    #define BUILD_BUG_ON(condition) (0)
    #define BUILD_BUG_ON_ZERO(e) (0)

#endif /* DEBUG */

#define swap(a, b)                                                  \
    do { typeof(a) __tmp = (a); (a) = (b); (b) = __tmp; } while (0)

#define offsetof(TYPE, MEMBER) ((size_t) &((TYPE *)0)->MEMBER)

#define container_of(ptr, type, member) ({                          \
            const typeof( ((type *)0)->member ) *__mptr = (ptr);	\
            (type *)( (char *)__mptr - offsetof(type,member) );})

#define ARRAY_SIZE(x) (sizeof(x) / sizeof(*(x)))

#define __same_type(a, b) __builtin_types_compatible_p(typeof(a), typeof(b))
#define __must_be_array(a)	BUILD_BUG_ON_ZERO(__same_type((a), &(a)[0]))
#define ARRAY_SIZE2(arr) (sizeof(arr) / sizeof((arr)[0]) + __must_be_array(arr))

typedef __signed__ char __s8;
typedef unsigned char __u8;

typedef __signed__ short __s16;
typedef unsigned short __u16;

typedef __signed__ int __s32;
typedef unsigned int __u32;

typedef __signed__ long __s64;
typedef unsigned long __u64;

#define LIST_POISON1  NULL
#define LIST_POISON2  NULL

typedef __u8 u8;
typedef __u32 u32;
typedef __u64 u64;

#define GOLDEN_RATIO_32 0x61C88647
#define GOLDEN_RATIO_64 0x61C8864680B583EBull

#define hash_32 hash_32_generic
#define hash_64 hash_64_generic

static inline u32 hash_32_generic(u32 val, unsigned int bits)
{
	return val * GOLDEN_RATIO_32  >> (32 - bits);
}

static inline u32 hash_64_generic(u64 val, unsigned int bits)
{
	return val * GOLDEN_RATIO_64 >> (64 - bits);
}


#include "log2.h"

#include "compiler-gcc.h"

#endif /* _UTIL_H */
