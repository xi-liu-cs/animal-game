CC = gcc
CFLAGS = -g

all:	animals

animals.o:	animals.s
	$(CC) $(CFLAGS) -c animals.s

animals:	animals.o node_utils.o main.o c_animals.o 
	$(CC) $(CFLAGS) -o animals animals.o node_utils.o main.o c_animals.o

