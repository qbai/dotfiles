#include <stddef.h> // NULL definition
#include "util.h"

// basically macro use
#define SWAP(a, b) do {                         \
                typeof(a) _tmp = (a);           \
                (a) = (b);                      \
                (b) = _tmp;                     \
        } while (0)


// char type: a = toChar(b) is a = 'b'; only on MS, not gcc
#define toChar(x)  #@x


// produce duplicate code
#define LOOP_0 CMD(0)
#define LOOP_1 LOOP_0 CMD(1)
#define LOOP_2 LOOP_1 CMD(2)
#define LOOP_3 LOOP_2 CMD(3)

#define LOOP_HELPER(n) LOOP_##n
#define LOOP(n) LOOP_HELPER(n)

#define DECLARE(n) int sqr_##n=n*n;

#define CMD(n) DECLARE(n)

#define LOOP_END 3

LOOP(LOOP_END)

// block repeat definition
#ifndef MACRO_NAME
#define MACRO_NAME value
#endif

#ifdef MACRO_NAME
#undef MACRO_NAME
#define MACRO_NAME value
#endif


// redefined macro for gcc
/* gcc -dM -E - < /dev/null or clang -dM -E - < /dev/null */

// macro expand
/* gcc -E -dM -I /path/a -I /path/b test.c */

// expand one time: 4 + foo
#define foo (4 + foo)

// round up
#define roundup(x, y) (                                         \
                {                                               \
                        const typeof(y) __y = y;                \
                        (((x) + (__y - 1)) / __y) * __y;        \
                }                                               \
                )

// round down
#define roundown(x, y) (((x) / (y)) * (y))

// dive round up
#define DIV_ROUND_UP(n, d)  (((n) + (d) - 1) / (d))

// clamp
#define clamp(val, lo, hi) min((typeof(val))max(val, lo), hi)


// complex statement for gcc
#define min(x, y) ({                                            \
                        typeof(x) _min1 = (x);                  \
                        typeof(y) _min2 = (y);                  \
                        (void) (&_min1 == &_min2);              \
                        _min1 < _min2 ? _min1 : _min2; })


// template func
#define DECLARE_FUNC(n)                                         \
        static void func_##n(int##n##_t *p, int len, float k)   \
        {                                                       \
                int i;                                          \
                                                                \
                for (i = 0; i < len; i++)                       \
                        p[i] *= k;                              \
        }

DECLARE_FUNC(8)      //func_8()
DECLARE_FUNC(16)     //func_16()
DECLARE_FUNC(32)     //func_32()



// macro list
#define FLAG_LIST(_)              \
_(InWorklist)                     \
_(EmittedAtUses)                  \
_(LoopInvariant)                  \
_(Commutative)                    \
_(Movable)                        \
_(Lowered)                        \
_(Guard)

#define DEFINE_FLAG(flag) flag,
enum Flag {
        None = 0,
        FLAG_LIST(DEFINE_FLAG)
        Total
};

#define FLAG_ACCESSOR(flag)                     \
bool is##flag() const {                         \
        return hasFlags(1 << flag);             \
}                                               \

void set##flag() {                              \
        JS_ASSERT(!hasFlags(1 << flag));        \
        setFlags(1 << flag);                    \
}                                               \

void setNot##flag() {                           \
        JS_ASSERT(hasFlags(1 << flag));         \
        removeFlags(1 << flag);                 \
}

FLAG_LIST(FLAG_ACCESSOR)


#define COMMANDS(X)                             \
        X(SetStudentName, 0x01)                 \
        X(GetStudentName, 0x11)                 \
        X(SetStudentID, 0x02)                   \
        X(GetStudentID, 0x12)                   \
 
#define GENERATE_COMMAND_INDEX(command,commandID)       \
        COMMAND_ID_##command,
        enum
             {
                     COMMANDS(GENERATE_COMMAND_INDEX)
                     COMMAND_COUNT
             };

#define __weak __attribute__((weak))
#define GENERATE_COMMAND_FUNC(command,commandID)        \
        __weak void command(void){}

COMMANDS(GENERATE_COMMAND_FUNC)

typedef struct
{
        void (*func)(void);
        int commandId;
}Command;

#define GENERATE_COMMAND_DATAS(command,commandID) {command,commandID},
static const Command commands[] = {COMMANDS(GENERATE_COMMAND_DATAS)};

// macro concatination
#define COMMAND(NAME)  { #NAME, NAME ## _command }
struct command
{
        char *name;
        void (*function) (void);
};
struct command commands[] =
{
        COMMAND (quit),
        COMMAND (help)
};

