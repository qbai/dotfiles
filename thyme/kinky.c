#ifndef _KINKY_H
#define _KINKY_H

#include <stddef.h> // NULL definition

/* contracted style by one line */
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

/* void test3_1() */
/* { */
/*     long a[] = {10, 3, 34, 23, 1, 11, 84, 111}; */
/*     int len = sizeof(a) / sizeof(long); */
/*     int count = 0; */

/*     //printf("len: %d\n", len); */
/*     while (count < len && a[count] != 1111) ++count; */
/*     //printf("count: %d\n", count); */

/*     printf("\n"); */
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

typedef struct
{
    int x;
    char y;
}astruct;

void test4()
{
    typeof(((astruct *)0)->y) m = 'c';
    printf("%c\n", m);
    int a = 5;
    typeof(&a) b = NULL;
    b = &a;
    *b = 4;
    printf("%d\n", *b);

    printf("void * : %d\n", sizeof(void *));
    printf("void : %d\n", sizeof(void));
}


int main()
{
    test4();
}
#endif /* _KINKY_H */
