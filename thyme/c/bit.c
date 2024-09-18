#include <stddef.h> // NULL definition
#include "util.h"

// conver to lowcase by blank 
('a' | ' ') = 'a'
('A' | ' ') = 'a'

// convert to uppercase by _
('b' & '_') = 'B'
('B' & '_') = 'B'

// convert uppercase & lowercase by xor
('d' ^ ' ') = 'D'
('D' ^ ' ') = 'd'

// true is oppse sign, false is same sign
int x= -1, y= 1;
bool f = ((x ^ y) < 0);

// remove last bit of 1
n & (n−1)

// is 2 power
n & (n−1) = 0

// abs, CHAR_BIT is 8
int const mask = v >> sizeof(int) * CHAR_BIT - 1;
r = (v + mask) ^ mask;
r = (v ^ mask) - mask;


// min(x, y), not using if
r = y ^ ((x ^ y) & -(x < y));

// max(x, y), not using if
r = x ^ ((x ^ y) & -(x < y));


// opposite number
i = ~i + 1;

// mod if b is power of 2
x = a&(b - 1)

// abs
x ^ (x >> 31) - (x >> 31);

// bit reverse
a = ((a & 0xAAAA) >> 1) | ((a & 0x5555) << 1);  // 2bits: 10 & 01
a = ((a & 0xCCCC) >> 2) | ((a & 0x3333) << 2);  // 4bits: 1100 & 0011
a = ((a & 0xF0F0) >> 4) | ((a & 0x0F0F) << 4);  // 8bits: 11110000 &
                                                          00001111
a = ((a & 0xFF00) >> 8) | ((a & 0x00FF) << 8);  // 16bits:
                                                         1111111100000000 &
                                                         0000000011111111




// get [n:m] value
#define BIT_M_TO_N(x, m, n) ((unsigned int)(x << (31-(n))) >> ((31 - (n)) + (m)))



// sum
a + b = (a ^ b) + ((a & b) << 1)

// lst k bits
x&((1<<k)−1)

// 0111−>0000 
x&(x+1)
// 1000−>1111
x∣(x−1)
// 1011−>0011
(x∧(x+1))>>1

// is -1, (~11111) == 0 
~i == 0

// lowest 1
x & (-x)

