#ifndef _UTIL_H
#define _UTIL_H

#include <stdio.h>
#include <stdbool.h>
#include <assert.h>

#include <stdint.h>

#define BUG_ON(cond) assert(!(cond))

#define swap(a, b)                                                  \
    do { typeof(a) __tmp = (a); (a) = (b); (b) = __tmp; } while (0)

#include "log2.h"

#include "compiler-gcc.h"

#endif /* _UTIL_H */
