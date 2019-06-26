#ifndef _HEAP_H
#define _HEAP_H

#include <stdio.h>
#include <stdbool.h>

#include "util.h"

#define DECLARE_HEAP(type, name)                \
	struct {                                    \
		size_t size, used;                      \
		type *data;                             \
	} name

#define init_heap(heap, _size, type)                            \
    ({                                                          \
        size_t _bytes;                                          \
        (heap)->used = 0;                                       \
        (heap)->size = (_size);                                 \
        _bytes = (heap)->size * sizeof(*(heap)->data);        \
        (heap)->data = (type *)calloc(1, _bytes);               \
        BUG_ON((heap)->data == NULL);                           \
        (heap)->data;                                           \
    })

#define free_heap(heap)							\
    do {                                        \
        free((heap)->data);                     \
        (heap)->data = NULL;                    \
    } while (0)

#define heap_swap(h, i, j)	swap((h)->data[i], (h)->data[j])

#define heap_sift(h, i, cmp)                            \
    do {                                                \
        size_t _r, _j = i;                              \
                                                        \
        for (; _j * 2 + 1 < (h)->used; _j = _r) {       \
            _r = _j * 2 + 1;                            \
            if (_r + 1 < (h)->used &&                   \
                cmp((h)->data[_r], (h)->data[_r + 1]))  \
                _r++;                                   \
                                                        \
            if (cmp((h)->data[_r], (h)->data[_j]))      \
                break;                                  \
            heap_swap(h, _r, _j);                       \
        }                                               \
    } while (0)

#define heap_sift_down(h, i, cmp)					\
    do {                                            \
        while (i) {                                 \
            size_t p = (i - 1) / 2;					\
            if (cmp((h)->data[i], (h)->data[p]))    \
                break;                              \
            heap_swap(h, i, p);                     \
            i = p;                                  \
        }                                           \
    } while (0)

#define heap_add(h, d, cmp)						\
    ({                                          \
      bool _r = !heap_full(h);					\
      if (_r) {                                 \
          size_t _i = (h)->used++;				\
          (h)->data[_i] = d;					\
                                                \
          heap_sift_down(h, _i, cmp);           \
          heap_sift(h, _i, cmp);                \
      }                                         \
      _r;                                       \
    })

#define heap_pop(h, d, cmp)						\
    ({                                          \
        bool _r = (h)->used;                    \
        if (_r) {                               \
            (d) = (h)->data[0];					\
            (h)->used--;						\
            heap_swap(h, 0, (h)->used);         \
            heap_sift(h, 0, cmp);               \
        }                                       \
        _r;                                     \
    })

#define heap_peek(h)	((h)->used ? (h)->data[0] : NULL)

#define heap_full(h)	((h)->used == (h)->size)

#define heap_empty(h)	((h)->used == 0)

#endif /* _HEAP_H */
