#ifndef _FIFO_H
#define _FIFO_H

#include "util.h"

#define DECLARE_FIFO(type, name)                \
	struct {                                    \
		size_t front, back, size, mask;         \
		type *data;                             \
	} name

#define fifo_for_each(c, fifo, iter)					\
    for (iter = (fifo)->front;                          \
	    c = (fifo)->data[iter], iter != (fifo)->back;  \
	    iter = (iter + 1) & (fifo)->mask)

#define __init_fifo(fifo, type)                             \
({                                                          \
    size_t _allocated_size, _bytes;                         \
    BUG_ON(!(fifo)->size);                                  \
                                                            \
    _allocated_size = roundup_pow_of_two((fifo)->size + 1); \
    _bytes = _allocated_size * sizeof(*(fifo)->data);		\
                                                            \
    (fifo)->mask = _allocated_size - 1;                     \
    (fifo)->front = (fifo)->back = 0;                       \
                                                            \
    (fifo)->data = (type *)calloc(1, _bytes);                 \
    BUG_ON((fifo)->data == NULL);                           \
    (fifo)->data;                                           \
})

#define init_fifo_exact(fifo, _size, type)  \
({                                          \
    (fifo)->size = (_size);                   \
    __init_fifo(fifo, type);                  \
})

#define init_fifo(fifo, _size, type)                        \
({                                                          \
    (fifo)->size = (_size);                                   \
    if ((fifo)->size > 4)                                     \
        (fifo)->size = roundup_pow_of_two((fifo)->size) - 1;	\
    __init_fifo(fifo, type);                                  \
})

#define free_fifo(fifo)							\
do {                                        \
    free((fifo)->data);                     \
    (fifo)->data = NULL;                    \
} while (0)

#define fifo_used(fifo)		(((fifo)->back - (fifo)->front) & (fifo)->mask)
#define fifo_free(fifo)		((fifo)->size - fifo_used(fifo))

#define fifo_empty(fifo)	(!fifo_used(fifo))
#define fifo_full(fifo)		(!fifo_free(fifo))

#define fifo_front(fifo)	((fifo)->data[(fifo)->front])
#define fifo_back(fifo)                                 \
	((fifo)->data[((fifo)->back - 1) & (fifo)->mask])

#define fifo_idx(fifo, p)	(((p) - &fifo_front(fifo)) & (fifo)->mask)

#define fifo_push_back(fifo, i)                 \
({                                          \
     bool _r = !fifo_full((fifo));           \
     if (_r) {                               \
         (fifo)->data[(fifo)->back++] = (i); \
         (fifo)->back &= (fifo)->mask;       \
     }                                       \
     _r;                                     \
})

#define fifo_pop_front(fifo, i)                 \
({                                          \
    bool _r = !fifo_empty((fifo));            \
    if (_r) {                                 \
        (i) = (fifo)->data[(fifo)->front++];  \
        (fifo)->front &= (fifo)->mask;        \
    }                                         \
    _r;                                       \
})

#define fifo_push_front(fifo, i)                \
({                                          \
    bool _r = !fifo_full((fifo));           \
    if (_r) {                               \
        --(fifo)->front;					\
        (fifo)->front &= (fifo)->mask;      \
        (fifo)->data[(fifo)->front] = (i);  \
    }                                       \
    _r;                                     \
})

#define fifo_pop_back(fifo, i)                  \
({                                          \
    bool _r = !fifo_empty((fifo));          \
    if (_r) {                               \
        --(fifo)->back;						\
        (fifo)->back &= (fifo)->mask;       \
        (i) = (fifo)->data[(fifo)->back]    \
            }								\
    _r;                                     \
})

#define fifo_push(fifo, i)	fifo_push_back(fifo, (i))
#define fifo_pop(fifo, i)	fifo_pop_front(fifo, (i))

#define fifo_swap(l, r)							\
do {                                        \
    swap((l)->front, (r)->front);           \
    swap((l)->back, (r)->back);             \
    swap((l)->size, (r)->size);             \
    swap((l)->mask, (r)->mask);             \
    swap((l)->data, (r)->data);             \
} while (0)

#define fifo_move(dest, src)                    \
do {                                        \
     typeof(*((dest)->data)) _t;             \
     while (!fifo_full(dest) &&              \
            fifo_pop(src, _t))               \
         fifo_push(dest, _t);                \
} while (0)


#endif /* _FIFO_H */
