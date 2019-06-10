#include "heap.h"


DECLARE_HEAP(int, heap);


#define max_cmp(l, r)    (l > r) /* minimum heap */
#define min_cmp(l, r)    (l < r) /* maximum heap */

int main() {
    init_heap(&heap, 128, int);

    int i;
    int a[] = {10, 3, 34, 23, 1, 10};
    /* int b = 4; */
    /* int a = 10; */
    /* int c = 20; */

    for (i = 0; i < 6; i++) {
        heap_add(&heap, a[i], min_cmp);
    }

    /* heap_add(&heap, a, max_cmp); */
    /* heap_add(&heap, b, max_cmp); */
    /* heap_add(&heap, c, max_cmp); */

    printf("%d\n", heap_peek(&heap));

    free_heap(&heap);

    return 0;
}
