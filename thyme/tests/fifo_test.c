#include "fifo.h"


void test1()
{
    int i, ret;
    DECLARE_FIFO(int, fifo);
    int a[] = {10, 3, 34, 23, 1, 11, 84, 15, 38, 48};
    int len = sizeof(a) / sizeof(int);

    init_fifo_exact(&fifo, len, int);

    for (i = 0; i < len; i++) {
        printf("%d ", a[i]);
        fifo_push(&fifo, a[i]);
    }
    printf("\n");

    while (!fifo_empty(&fifo)) {
        fifo_pop(&fifo, ret);
        printf("%d ", ret);
    }

    printf("\n");

    free_fifo(&fifo);
}

void test_power_two()
{
    printf("%d\n", roundup_pow_of_two(12300232));
    //printf("%d\n", ilog2(128));
    printf("%d\n", order_base_2(16777216));
    printf("%d\n", is_power_of_2(16777216));
}

void test2()
{
    int i, ret;
    DECLARE_FIFO(int, fifo);
    int a[] = {10, 3, 34, 23, 1, 11, 84, 15, 38, 48};
    int len = sizeof(a) / sizeof(int);

    init_fifo(&fifo, len, int);

    for (i = 0; i < len; i++) {
        printf("%d ", a[i]);
        fifo_push(&fifo, a[i]);
    }

    printf("\n");
    while (!fifo_empty(&fifo)) {
        fifo_pop(&fifo, ret);
        printf("%d ", ret);
    }

    printf("\n");

    free_fifo(&fifo);

}

void test3()
{
    int i, ret;
    DECLARE_FIFO(int, fifo);
    int a[] = {10, 3, 34, 23, 1, 11, 84, 15, 38, 48};
    int len = sizeof(a) / sizeof(int);

    init_fifo_typeof(&fifo, len);

    for (i = 0; i < len; i++) {
        printf("%d ", a[i]);
        fifo_push(&fifo, a[i]);
    }

    printf("\n");
    while (!fifo_empty(&fifo)) {
        fifo_pop(&fifo, ret);
        printf("%d ", ret);
    }

    printf("\n");

    printf("fifo_used: %d\n", fifo_used(&fifo));
    printf("fifo_free: %d\n", fifo_free(&fifo));
    printf("34's idx: %d\n", fifo_idx(&fifo, ((&fifo)->data + 2)));

    free_fifo(&fifo);

}

int main()
{
    //test1();
    //test_power_two();
    //test2();
    test3();
}
