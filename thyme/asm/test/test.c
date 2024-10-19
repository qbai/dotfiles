// Type your code here, or load an example.
#include <stdio.h>

/*
#define max(a, b) ((a) < (b) ? (b) : (a))

int square(int num) {
    int a = num;
    return a;
}
static inline __attribute__((always_inline)) int add (int a, int b) {
    return a + b;
}
static inline int add2 (int a, int b) {
    return a + b;
}

typedef struct ana {
    int age;
    long id;
}an;

enum bnb {
    sunday,
    monday,
    tuesday
};

union cnc {
    int a;
    long b;
};

 struct ana a;
 //an aa;
 struct ana bb;
 enum bnb b;
 union cnc c;
char aaa[] = "hello";
char bbb[10];
static int d =350;
 const int f = 230;
unsigned int ff = 22;
void *p;
bool ac = false;
int ar[][3] = {1,23,45,3,5,34};
int br[] = {1,23,45,3,5,34};

int add4(int *p) {
    printf("%d\n", p);
    return *(p+2);
} 
 int add3(int **arr) {
    
    *((*arr)+ 1) += 12;
    return *((*arr)+ 1);
} 
extern int g;
*/
//int arr[] = {23,45,3,5};
//int *q = arr;

int test();
extern int ar[];
extern int *p;

int main(){
	printf("%p\n", &p);
	printf("%p\n", p);
	printf("%p\n", ar);
	printf("%x\n", *ar);

	int a = test();
	printf("%x\n",a);

	printf("%p\n", &p);
	printf("%p\n", p);	

	return 0;
    /* an a[10];
    printf("%d\n", a[4].age);  */
   /* int *p = ar[0];
   printf("%d\n", (*(p+1))); */
   //add3(ar);
    //add4(br);

   //int ar[][3] = {1,23,45,3,5,34};
   //int (*p)[3] = ar;
   //printf("%d\n", (*(p+1))+1); 

   // int a = -10000;
    /* int * restrict ptr = (int*) malloc(10);
    int *p = ptr;
    *p = 10; */
    /* int a =19;
    int b= 10;
    if(a > b)
        goto start;
    else
        goto end;
start:
    printf("hello\n"); */
    /* char *str=(char *)malloc(sizeof(char) * 6);
    strcpy(str, "world");
    printf("%s\n", str); */

    /* char *str="hello";
    printf("%s\n", str); */
    /* char bb[] = {"wo"};
    int len = sizeof(bb);
    for (int i = 0; i < len; i++)
        printf("%c\n",bb[i]); */
    
    /* int ar[] = {1,23,45,3,5,34};
    for (int i = 0; i < 2; i++)
            printf("%d\n", ar[i]); */

    /* int ar[][3] = {1,23,45,3,5,34};
    for (int i = 0; i < 2; i++)
        for (int j = 0 ; j <3; j++)
            printf("%d\n", ar[i][j]); */

    /* int a =2, b= 3;
    int c= add2(a, b); */
    //ac =true;
    /* int a = 10;
    while (a > 0) {
        a--;
        if (a > 2) continue;
        break;
    } */

    //auto a = 100;

    /* int a =1;
    int b =3;

    if (a > b)
        goto b;
    else 
        goto f;

b:    
    printf("hello");
f: */
    //int a = sizeof(int);
    /* volatile int fff= 21;
    fff +=1;
    printf("%d\n", fff); */

    /* register int g =10;
    g +=1;
    printf("%d\n", g); */
    /* int a = 2;
    switch (a) {
        case 1:
            a++;
            break;
        case 2:
            a +=2;
            break;
        default:
            a +=0;
    }
 */
    /* int a =1;
    int b = 2;
    int c; */

    /* if (a > b)
        c = 1;
    else
        c = 0;
 */
    //c = a > b ? 1:0;

    
    /* int a=10;
    while (a > 0) {
        a--;
    }  */
    //char a[]={"he"};
    //char a[]={'h','e'};
    //char *s="hello world";
    /* int a = 0;
    while(int i = 1) {
        a++;
        i--;
    } */
    /* for (int i = 0; i < 20; i++) {
        a++;
    } */
    
    /*
    int a = 10;
    int *p = &a;
    *p = 20;
    *(p+1) = 30;
    */
    /*
    int aaa[10];
    int *p = aaa;
    *(p+1) = 11;
    */
    //int f = a.age % 4;
    //for(;;);
    //while (1);
    //d = 20;
    //printf("%d\n", d);
    //const int ff = f;
    //printf("%d\n", f);
    //int *p = (int *)&f;
    //*p = 340;

    //bbbb =22;
    //int a = max(10, 20);
    //int a = add2(10,30);
    /*
    int f = a.age / 4;
    long *q = &a.id;
    
    int *p = (int *)malloc(sizeof(int));
   printf("*d\n", *p);
    a.age=23;
    a.id=300;
   bb.age = 12;
   bb.id = 100;
   int dd = square(a.age);
   */
//end:
    //return 1;

}
