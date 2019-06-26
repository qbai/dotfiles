#include "heap.h"

/* test1 */
#define min_cmp(l, r)    (l > r) /* minimum heap */
#define max_cmp(l, r)    (l < r) /* maximum heap */

void test1()
{
    int i, b = 0;
    int a[] = {10, 3, 34, 23, 1, 11, 84, 15, 38, 48};

    DECLARE_HEAP(int, heap);
    init_heap(&heap, 128, int);

    for (i = 0; i < 10; i++) {
        heap_add(&heap, a[i], min_cmp);
        //heap_add(&heap, *(a + i), min_cmp);
    }

    while (!heap_full(&heap)) {
        if (!heap_pop(&heap, b, min_cmp)) {
            break;
        }
        printf("%d ", b);
    }

    printf("\n");

    free_heap(&heap);
}

/* test2 */
#define min_cmp2(l, r)  (*(int *)l > *(int *)r) /* minimum heap */
#define max_cmp2(l, r)  (*(int *)l < *(int *)r) /* maximum heap */

void test2()
{
    int i;
    int a[] = {10, 3, 34, 23, 1, 11, 84, 15, 38, 48};
    int len = sizeof(a) / sizeof(int);
    int *b = NULL;

    DECLARE_HEAP(int *, heap);
    init_heap(&heap, 128, int *);

    for (i = 0; i < len; i++) {
        //b = a + i;
        heap_add(&heap, &a[i], min_cmp2);
    }

    while (!heap_full(&heap)) {
        if (!heap_pop(&heap, b, min_cmp2)) {
            break;
        }
        printf("%d ", *b);
    }

    printf("\n");

    free_heap(&heap);
}

/* int get_int2(struct foo *p) */
/* { */
/*     return p->val; */
/* } */
//#define min_cmp3(l, r)  (get_int2(l) > get_int2(r)) /* minimum heap */

/* test3 */
struct foo {
    int val;
};
#define min_cmp3(l, r)  (((struct foo *)l)->val > ((struct foo *)r)->val) /* minimum heap */
#define max_cmp3(l, r)  (((struct foo *)l)->val < ((struct foo *)r)->val) /* maximum heap */

void test3()
{
    struct foo *a, *b, *c, *d = NULL;

    a = (struct foo *) calloc(1, sizeof(struct foo));
    b = (struct foo *) calloc(1, sizeof(struct foo));
    c = (struct foo *) calloc(1, sizeof(struct foo));
    a->val = 10;
    b->val = 3;
    c->val = 34;

    DECLARE_HEAP(struct foo *, heap);
    init_heap(&heap, 128, struct foo *);

    heap_add(&heap, a, max_cmp3);
    heap_add(&heap, b, max_cmp3);
    heap_add(&heap, c, max_cmp3);

    while (!heap_full(&heap)) {
        if (!heap_pop(&heap, d, max_cmp3)) {
            break;
        }
        printf("%d ", d->val);
    }

    printf("\n");

    free_heap(&heap);
}

int main()
{
    //test1();
    test2();
    //test3();
    return 0;
}
