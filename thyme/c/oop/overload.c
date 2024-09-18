#include <stdio.h>



// 1
void print_int(int x) {
        printf("Integer: %d\n", x);
}

void print_float(float x) {
        printf("Float: %f\n", x);
}


// 2
typedef enum {
        INT,
        FLOAT
} Type;

void print(void* value, Type type) {
        switch (type) {
        case INT:
                printf("Integer: %d\n", *(int*)value);
                break;
        case FLOAT:
                printf("Float: %f\n", *(float*)value);
                break;
        default:
                printf("Unknown type\n");
        }
}

// 3: _Generic keyword for c11
void print_int(int x) {
        printf("Integer: %d\n", x);
}

void print_float(float x) {
        printf("Float: %f\n", x);
}

#define print(x) _Generic((x),                  \
                          int: print_int,       \
                          float: print_float    \
                          )(x)
