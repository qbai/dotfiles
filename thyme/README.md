gcc -w -g3 -gdwarf-2 -o /tmp/hlist_test ./tests/hlist_test.c -I./include && /tmp/hlist_test

gcc -w -g3 -gdwarf-2 -o /tmp/heap_test ./test/heap_test.c -I/home/c4dev/dotfiles/thyme
gcc -w -ggdb3 -gdwarf-2 -o /tmp/heap_test ./test/heap_test.c -I/home/c4dev/dotfiles/thyme
gcc -w -g3 -gdwarf-2 -o /tmp/fifo_test ./test/fifo_test.c -I/home/c4dev/dotfiles/thyme -DCONFIG_X86_64
gcc -w -g3 -gdwarf-2 -o /tmp/fifo_test ./test/fifo_test.c -I/home/c4dev/dotfiles/thyme -DCONFIG_X86_64 && /tmp/fifo_test


-g, -g2, -g3
	用 -g3 的,因为如果你用到了 inline 的 function, 用 -g 去 compile 就无法去 debug inline function了.这时候就用到 -g2, -g3	了,g後面的数字越大,也就是说可以 debug 的级别越高.最高级别就是 -g3.

gdb -q test       
	不显示详细头信息



