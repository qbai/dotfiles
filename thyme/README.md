gcc -w -g3 -gdwarf-2 -o /tmp/hlist_test ./tests/hlist_test.c -I./include && /tmp/hlist_test

gcc -w -g3 -gdwarf-2 -o /tmp/heap_test ./test/heap_test.c -I/home/c4dev/dotfiles/thyme
gcc -w -ggdb3 -gdwarf-2 -o /tmp/heap_test ./test/heap_test.c -I/home/c4dev/dotfiles/thyme
gcc -w -g3 -gdwarf-2 -o /tmp/fifo_test ./test/fifo_test.c -I/home/c4dev/dotfiles/thyme -DCONFIG_X86_64
gcc -w -g3 -gdwarf-2 -o /tmp/fifo_test ./test/fifo_test.c -I/home/c4dev/dotfiles/thyme -DCONFIG_X86_64 && /tmp/fifo_test

