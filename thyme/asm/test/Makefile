test: kinky.o
	gcc -g -o test test.c kinky.o -no-pie
kinky.o: kinky.S
	gcc -c kinky.S -o kinky.o -no-pie
clean:
	-rm -f kinky.o test



# by default gcc is PIE mode, need -no-pie to remove it.
# if need kinky.S as PIE, change mem access from p to p(%rip)
