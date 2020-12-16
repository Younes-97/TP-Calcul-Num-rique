CC=gcc
Fprog=-std=c99 -O3 -o
LIBS=-llapacke -lcblas -lm

all:exec_lu
exec_lu:dgbmv.o
	$(CC)  -o exe dgbmv.o $(OPTC)  $(LIBS)
dgbmv.o: dgbmv.c
	$(CC) $(Fprog) dgbmv.o -c dgbmv.c -Wall -O
run:
	./exe
