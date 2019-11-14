#ifndef _RB_TREE_H
#define _RB_TREE_H


#include "util.h"

#define container_of_or_null(ptr, type, member)     \
({                                                  \
    typeof(ptr) _ptr = ptr;                         \
    _ptr ? container_of(_ptr, type, member) : NULL; \
})

#define RB_INSERT(root, new, member, cmp)                       \
({                                                          \
    __label__ dup;                                          \
    struct rb_node **n = &(root)->rb_node, *parent = NULL;  \
    typeof(new) this;                                       \
    int res, ret = -1;                                      \
                                                            \
    while (*n) {                                            \
        parent = *n;                                        \
        this = container_of(*n, typeof(*(new)), member);	\
        res = cmp(new, this);                               \
        if (!res)                                           \
            goto dup;                                       \
        n = res < 0                                         \
                  ? &(*n)->rb_left                          \
            : &(*n)->rb_right;                              \
    }                                                       \
                                                            \
    rb_link_node(&(new)->member, parent, n);                \
    rb_insert_color(&(new)->member, root);                  \
    ret = 0;                                                \
dup:                                                        \
    ret;                                                    \
})

#define RB_SEARCH(root, search, member, cmp)                    \
({                                                              \
  struct rb_node *n = (root)->rb_node;                          \
  typeof(&(search)) this, ret = NULL;                           \
  int res;                                                      \
                                                                \
  while (n) {                                                   \
             this = container_of(n, typeof(search), member);    \
             res = cmp(&(search), this);                        \
             if (!res) {                                        \
                        ret = this;                             \
                        break;                                  \
                        }                                       \
             n = res < 0                                        \
                       ? n->rb_left                             \
                 : n->rb_right;                                 \
             }                                                  \
  ret;                                                          \
})

#define RB_FIRST(root, type, member)					\
	container_of_or_null(rb_first(root), type, member)

#define RB_LAST(root, type, member)                     \
	container_of_or_null(rb_last(root), type, member)

#define RB_NEXT(ptr, member)                                            \
	container_of_or_null(rb_next(&(ptr)->member), typeof(*ptr), member)

#define RB_PREV(ptr, member)                                            \
	container_of_or_null(rb_prev(&(ptr)->member), typeof(*ptr), member)

#endif /* _RB_TREE_H */
