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
    /* while (!fifo_empty(&fifo)) { */
    /*     fifo_pop(&fifo, ret); */
    /*     printf("%d ", ret); */
    /* } */

    /* printf("\n"); */

    printf("fifo_used: %d\n", fifo_used(&fifo));
    printf("fifo_free: %d\n", fifo_free(&fifo));
    printf("34's idx: %d\n", fifo_idx(&fifo, (int *)fifo->data[2]));

    free_fifo(&fifo);

}

/* void test3() */
/* { */
/*     long a[] = {10, 3, 34, 23, 1, 11, 84, 0x7FFFFFFE}; */
/*     int len = sizeof(a) / sizeof(long); */
/*     int count = 0; */

/*     printf("len: %d\n", len); */
/*     while (a[++count] != 458 && (count- 1) <= len); */

/*     printf("count: %d\n", count); */
/*     printf("a[count]: %d\n", a[count]); */

/*     count = 0; */
/*     bool retry = false; */
/*     while (1) { */
/*         if (!(retry = !retry)) break; */
/*         count++; */
/*     } */

/*     printf("count: %d\n", count); */
/* } */

int main(){
    //test1();
    //test_power_two();
    test2();
    //test3();
}
