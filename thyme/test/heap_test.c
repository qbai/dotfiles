#include "heap.h"


DECLARE_HEAP(int, heap);


#define min_cmp(l, r)    (l > r) /* minimum heap */
#define max_cmp(l, r)    (l < r) /* maximum heap */

void test1()
{
    int i, b = 0;
    int a[] = {10, 3, 34, 23, 1, 11, 84, 15, 38, 48};

    init_heap(&heap, 128, int);

    for (i = 0; i < 10; i++) {
        heap_add(&heap, a[i], min_cmp);
    }

    while (!heap_full(&heap)) {
        if (!heap_pop(&heap, b, min_cmp)) {
            break;
        }
        printf("%d ", b);
    }

    //printf("%d\n", heap_peek(&heap));
    printf("\n");

    free_heap(&heap);
}

#define min_cmp_p(l, r)  (l > r) /* minimum heap */

void test2()
{
    int i;
    int a[] = {10, 3, 34, 23, 1, 11, 84, 15, 38, 48};
    int *b = NULL;

    init_heap(&heap, 128, int *);

    for (i = 0; i < 10; i++) {
        b = a + i;
        heap_add(&heap, &b, min_cmp_p);
    }

    b = NULL;
    while (!heap_full(&heap)) {
        if (!heap_pop(&heap, b, min_cmp_p)) {
            //return -1;
            break;
        }
        printf("%p:%d ", b, *b);
    }

    printf("\n");

    free_heap(&heap);
}

int get_int(int *p)
{
    return *p;
}

#define min_cmp3(l, r)  (l > r) /* minimum heap */
#define min_cmp3_p(l, r)  (get_int(l) > get_int(r)) /* minimum heap */

void test3()
{
    //int i;
    //int a[] = {10, 3, 34, 23, 1, 11, 84, 15, 38, 48};
    //int *b = NULL;

    init_heap(&heap, 128, int *);

    /* for (i = 0; i < 10; i++) { */
    /*     b = a + i; */
    /*     heap_add(&heap, &b, min_cmp_p); */
    /* } */
    int a = 10;
    int b = 3;
    int c = 34;
    int d = 0;
    int *aa = &a;
    int *bb = &b;
    int *cc = &c;
    int *dd = &d;

    /* heap_add(&heap, a, min_cmp_p); */
    /* heap_add(&heap, b, min_cmp_p); */
    /* heap_add(&heap, c, min_cmp_p); */

    *dd = get_int(aa);
    heap_add(&heap, aa, min_cmp3_p);
    heap_add(&heap, bb, min_cmp3_p);
    heap_add(&heap, cc, min_cmp3_p);

    while (!heap_full(&heap)) {
        if (!heap_pop(&heap, dd, min_cmp3_p)) {
            //return -1;
            break;
        }
        //printf("%p:%d ", d, *d);
        printf("%d ", *dd);
    }

    printf("\n");

    free_heap(&heap);
}


int get_int2(struct foo *p)
{
    return p->val;
}
#define min_cmp4(l, r)  (get_int2(l) > get_int2(r)) /* minimum heap */

struct foo {
    int val;
};

void test4()
{
    struct foo *a, *b, *c, *d = NULL;

    a = (struct foo *) calloc(1, sizeof(struct foo));
    b = (struct foo *) calloc(1, sizeof(struct foo));
    c = (struct foo *) calloc(1, sizeof(struct foo));
    a->val = 10;
    b->val = 3;
    c->val = 34;

    init_heap(&heap, 128, struct foo *);

    heap_add(&heap, a, min_cmp4);
    heap_add(&heap, b, min_cmp4);
    heap_add(&heap, c, min_cmp4);

    while (!heap_full(&heap)) {
        if (!heap_pop(&heap, d, min_cmp4)) {
            break;
        }
        printf("%d ", d->val);
    }

    printf("\n");

    free_heap(&heap);
    printf("\n");
}

int main()
{
    //test1();
    //test2();
    //test3();
    test4();
    return 0;
}
