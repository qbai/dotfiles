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

#endif /* _COMPILER-GCC_H */
