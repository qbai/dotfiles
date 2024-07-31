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


