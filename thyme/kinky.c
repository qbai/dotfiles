#ifndef _KINKY_H
#define _KINKY_H

/* contracted style by one line */
void test3()
{
    long a[] = {10, 3, 34, 23, 1, 11, 84, 0x7FFFFFFE};
    int len = sizeof(a) / sizeof(long);
    int count = 0;

    printf("len: %d\n", len);
    while (a[++count] != 458 && (count- 1) <= len);

    printf("count: %d\n", count);
    printf("a[count]: %d\n", a[count]);

    count = 0;
    bool retry = false;
    while (1) {
        if (!(retry = !retry)) break;
        count++;
    }

    printf("count: %d\n", count);
}





#endif /* _KINKY_H */
