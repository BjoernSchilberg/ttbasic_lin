CC=gcc

ttbasic: ttbasic.o basic.o
	     $(CC) -o ttbasic ttbasic.o basic.o

.PHONY: clean

clean:
		rm -f ttbasic.o basic.o ttbasic
