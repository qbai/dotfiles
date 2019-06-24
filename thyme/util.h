#ifndef _UTIL_H
#define _UTIL_H

#include <assert.h>

#define BUG_ON(cond) assert(!(cond))

#define swap(a, b)                                                  \
    do { typeof(a) __tmp = (a); (a) = (b); (b) = __tmp; } while (0)


#define roundup_pow_of_two(n)                               \
(                                                           \
 __builtin_constant_p(n) ? (                                \
                            (n == 1) ? 1 :                  \
                            (1UL << (ilog2((n) - 1) + 1))	\
                                    ) :                     \
 __roundup_pow_of_two(n)                                    \
)


#endif /* _UTIL_H */
