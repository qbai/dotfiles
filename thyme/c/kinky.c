#include <stddef.h> // NULL definition
#include "util.h"

// multiple error messages returned 
  	const char *err;
	err = "Not a bcache superblock (bad offset)";
	if (sb->offset != SB_SECTOR)
		goto err;

	err = "Not a bcache superblock (bad magic)";
	if (memcmp(sb->magic, bcache_magic, 16))
		goto err;
err:
	put_page(page);
	return err;


// multiply function return 
done:
	kfree(sb);
	kfree(path);
	module_put(THIS_MODULE);
async_done:
	return size;

out_put_sb_page:
	put_page(virt_to_page(sb_disk));
out_blkdev_put:
	blkdev_put(bdev, FMODE_READ | FMODE_WRITE | FMODE_EXCL);
out:
	pr_info("error %s: %s\n", path?path:"", err);
	return ret;


// 2 funcs running together 
if (bch_request_init() ||
             sysfs_create_files(bcache_kobj, files))
		goto err;

// d is addr,  a is 2 to the power (generally cacheline size)
#define align(d, a)     (((d) + (a - 1)) & ~(a - 1))

// ptr aliagned, a is 2 to the power  (generally cacheline size)
#define align_ptr(p, a)                                                   \
    (u_char *) (((uintptr_t) (p) + ((uintptr_t) a - 1)) & ~((uintptr_t) a - 1))


// member offset position
#define offsetof(type, member) (size_t)&(((type*)0)->member)


// head addr based on member's addr
#define container_of(ptr, type, member) ({                              \
                        const typeof( ((type *)0)->member ) *__mptr = (ptr); \
                        (type *)( (char *)__mptr - offsetof(type,member) );}) 


// empty sentence, no compiling code
((void)0)
#define	DB_ASSERT(env, e)	((void)0)


// NULL definition
#ifndef NULL
#ifdef __cplusplus
#define NULL 0
#else 
#define NULL ((void*)0)
#endif
#endif


// function ptr, just like int (*a)();
(*(void(*)())a)()

// call fun at 0 addr
(*(void(*)())0)()

// init boolean as c type
enum boolean {FALSE = 0, TRUE = 1};


// range compare
if (x >= minx && x <= maxx)                              /* data 99% out of range */
if (((x - minx) | (maxx - x)) >= 0)                      /* best */
if ((unsigned)(x - minx) <= (unsigned)(maxx - minx))     /* middle */


// gcc -o3 support loop unrolling automatically
#define offsetof(type, member) (size_t)&(((type*)0)->member)


#define CPU_LOOP_UNROLL_4X(actionx1, actionx2, actionx4, width) do {    \
                unsigned long __width = (unsigned long)(width);         \
                unsigned long __increment = __width >> 2;               \
                for (; __increment > 0; __increment--) { actionx4; }    \
                if (__width & 2) { actionx2; }                          \
                if (__width & 1) { actionx1; }                          \
        }   while (0)

CPU_LOOP_UNROLL_4X(
                   {
                           *dst++ = (*src++) ^ 0x80;
                   },
                   {
                           *(uint16_t*)dst = (*(uint16_t*)src) ^ 0x8080;
                           dst += 2; src += 2;
                   },
                   {
                           *(uint32_t*)dst = (*(uint32_t*)src) ^ 0x80808080;
                           dst += 4; src += 4;
                   },
                   w);


// duff unrolling
void copy (char *to, char *from, int count)
{
        if (count <= 0)
                return;
        int n = (count + 7) / 8;
        switch (count % 8)
                {
                        do {
                                case 0: *to++ = *from++;
                                case 7: *to++ = *from++;
                                case 6: *to++ = *from++;
                                case 5: *to++ = *from++;
                                case 4: *to++ = *from++;
                                case 3: *to++ = *from++;
                                case 2: *to++ = *from++;
                                case 1: *to++ = *from++;
                        } while (--n > 0);
                }
}



// assert in the compiling time
#define BUILD_BUG_ON(condition) ((void)sizeof(char[1 - 2*!!(condition)]))


// embeded func, gnu c only
int main() {
        int swap (int *a, int *b) {
                int c;
                c = *a;
                *a = *b;
                *b = c;
                return 0;
        }
        int first = 12, second = 34;
        printf("f is %d and s is %d\n", first, second);
        swap(&first, &second);

        printf("f is %d and s is %d\n", first, second);

        return 0;
}


// for each
/*
#define in ,
#define foreach(e, a) for(int i = 0, elem* e = a->elems; i != a->size; i++, e++)
*/
#define in ,
#define foreach(...) foreach_ex(foreach_in, (__VA_ARGS__))
#define foreach_ex(m, wrapped_args) m wrapped_args
#define foreach_in(e, a) for(int i = 0, elem* e = a->elems; i != a->size; i++, e++)

foreach (e in a) {
        
}


// branch prediction, gnu c only
#ifndef __GNUC__
#define __builtin_expect(x, expected_value) (x)
#endif
#define LIKELY(x)    __builtin_expect(!!(x),1)
#define UNLIKELY(x)  __builtin_expect((x)!=0,0)


// tends to operation
int x = 10;
while (x --> 0) {
        printf("%d ", x);
} // 9 8 7 6 5 4 3 2 1 0

int x = 10;
while (0 <---- x) {
        printf("%d ", x);
 } // 8 6 4 2
return 0;



// typeof, gnu c only
#define max(a, b) ({                            \
              typeof(a) _a = (a);               \
              typeof(b) _b = (b);               \
              (void) (&_a == &_b);              \
              _a > _b ? _a : _b; })




// 0 length arr, gnu c only
struct line {
        int length;
        char contents[0];
};

int this_length = 10;
struct line *thisline = malloc(sizeof(struct line) + this_length);
thisline->length = this_length;
printf("%c", thisline->contents[thisline->length - 1]);



// switch case range, gnu c only, 2 blanks between ...
switch (i) {
case 'A' ... 'Z':
        break;
case 1 ... 3:
        break;
}



// variant macro, ## is to remove , when no any params
#define pr_debug(fmt, ...)                      \
        dynamic_pr_debug(fmt, ##__VA_ARGS__)



//Removing pointless variables with anonymous arrays
/* int yes=1;
   setsockopt(yourSocket, SOL_SOCKET, SO_REUSEADDR, &yes, sizeof(int));
 */
setsockopt(yourSocket, SOL_SOCKET, SO_REUSEADDR, (int[]){1}, sizeof(int));

void func(type* values) {
        while(*values) {
                x = *values++;
                /* do whatever with x */
        }
}

func((type[]){val1,val2,val3,val4,0});


// header structure
struct X {
        int len;
        char str[10];
};

//simplify stupid  printf
#define print_dec(var)  printf("%s=%d\n",#var,var);
print_dec(counter);


// func point array for state machine
int (* fsm[])(void) = { ... }


// compiler warning, or using #warning
#if TESTMODE == 1    
        debug=1;
        while(0);     // Get attention
#endif

//debug or release
#ifndef RELEASE
#  define D(x) do { x; } while (0)
#else
#  define D(x)
#endif

D(printf("Test statement\n"));


//0 bitfields
struct {
        int    a:3;
        int    b:2;
        int     :0;
        int    c:4;
        int    d:3;
};

/* layout is 000aaabb 0ccccddd, instead without :0 as
             0000aaab bccccddd
   The 0 width field tells that the following bitfields should be set
           on the next atomic entity (char)
 */


// initial by include
double normals[][] = {
#include "normals.txt"
};

{0, 0, 1},
{0, 1, 0},
{1, 0, 0}

//c99 arr initial
int arr[10] = {[1... 5] = 5};


//is_power_of_two
#define is_power_of_2(n) ((n) != 0 && ((n) & ((n) - 1)) == 0)


//static list
struct mylist {
        int a;
        struct mylist* next;
};
#define cons(x, y) (struct mylist[]){{x, y}}
struct mylist *list = cons(1, cons(2, cons(3, NULL)));


//0 as strlen
int len=10;
char a[len + 1];
a[0] = len;
for (int i = 1; i <= a[0]; i++) {
}


//enbeded sentence, gcc only
int sum = (
             {
                     int s = 0;        
                     for( int i = 0; i < 10; i++)
                             s = s + i;
                     s;
             }
          );



// check params, gcc only
#define CHECK_FMT(a, b)	__attribute__((format(printf, a, b)))
void TRACE(const char *fmt, ...) CHECK_FMT(1, 2);
void TRACE(const char *fmt, ...) CHECK_FMT(2, 3); // for c++, 1 is this


// round up
#define ROUNDUP(a, size) (((a) & ((size)-1)) ? (1+((a) | ((size)-1))) : (a))
#define VAL_ROUNDUP(size, val_size)     (((size)+val_size-1)/val_size*val_size)


// sizeof
struct
{
}a;
    
sizeof(void); // 1
sizeof(a);    // 0


//preposseor messages
#pragma message("message contents")


// ??! is |
!ErrorHasOccured() ??!??! HandleError();


// ignore param
void func(int n, int m) {
        (void)m; // ignore m
        printf("%d\n", n);
}


//array initial, gcc only
int array[] = { [0 ... 9] = 1, [10 ... 20] = 2, [30 ... 40] = 3};


// ?:
(x==0)?a:b = someValue;
(y>0)?(doSomething();):(doSomethingElse(););
int result = (a > b) ? ((a > c) ? a : c) : ((b > c) ? b : c);


// removing pointless variables, anonymous struct
int yes=1;
int[]{1}; // &yes

void myFunction(type* values) {
        while(*values) x=*values++;
}
myFunction((type[]){val1,val2,val3,val4,0});


// printf version
printf("counter=%d\n",counter);

#define print_dec(var)  printf("%s=%d\n",#var,var);
print_dec(counter);


// func pointer array
int (* fsm[])(void) = {}

// Get attesion, no effect but issue a warning by compiler
while(0);


// release or debug
#ifndef RELEASE
#  define D(x) do { x; } while (0)
#else
#  define D(x)
#endif

D(printf("Test statement\n"));



// string array initianlize
#define EINVAL 1
#define ENOMEM 2
#define EFAULT 3

char *err_strings[] = {
        err_strings[0] = "Success",
        err_strings [EINVAL] = "Invalid argument",
        err_strings[ENOMEM] = "Not enough memory",
        err_strings[EFAULT] = "Bad address"
}


// if add switch (1)
	if (DB_IS_PARTITIONED(dbp)) {
		DBC_PART_REFRESH(dbc);
	} else switch (dbtype) {
	case DB_BTREE:
	case DB_RECNO:
		if ((ret = __bamc_refresh(dbc)) != 0)
			goto err;
		break;
	case DB_HEAP:
		if ((ret = __heapc_refresh(dbc)) != 0)
			goto err;
		break;
	case DB_HASH:
	case DB_QUEUE:
		break;
	case DB_UNKNOWN:
	default:
		ret = __db_unknown_type(env, "DB->cursor", dbp->type);
		goto err;
	}


// if add switch (2)
#ifdef HAVE_PARTITION
		if (DB_IS_PARTITIONED(dbp)) {
			if ((ret = __partc_init(dbc)) != 0)
				goto err;
		} else
#endif
		switch (dbtype) {
		case DB_BTREE:
		case DB_RECNO:
			if ((ret = __bamc_init(dbc, dbtype)) != 0)
				goto err;
			break;
		case DB_HASH:
			if ((ret = __hamc_init(dbc)) != 0)
				goto err;
			break;
		case DB_HEAP:
			if ((ret = __heapc_init(dbc)) != 0)
				goto err;
			break;
		case DB_QUEUE:
			if ((ret = __qamc_init(dbc)) != 0)
				goto err;
			break;
		case DB_UNKNOWN:
		default:
			ret = __db_unknown_type(env, "DB->cursor", dbtype);
			goto err;
		}


		
