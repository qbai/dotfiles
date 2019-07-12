#ifndef _UTIL_H
#define _UTIL_H

#include <stdio.h>
#include <stdbool.h>
#include <assert.h>

#include <stdint.h>

/* runtime checking error */
#define BUG_ON(cond) assert(!(cond))

/* Force compilation if condition is true */
#ifdef DEBUG
    #define BUILD_BUG_ON(condition) ((void)sizeof(char[1 - 2*!!(condition)])
#else
    #define BUILD_BUG_ON(condition) (0)

#define swap(a, b)                                                  \
    do { typeof(a) __tmp = (a); (a) = (b); (b) = __tmp; } while (0)

#define offsetof(TYPE, MEMBER) ((size_t) &((TYPE *)0)->MEMBER)

#define container_of(ptr, type, member) ({                          \
            const typeof( ((type *)0)->member ) *__mptr = (ptr);	\
            (type *)( (char *)__mptr - offsetof(type,member) );})


#include "log2.h"

#include "compiler-gcc.h"

#endif /* _UTIL_H */
