# Variables
CC=gcc
CCLINK=$(CC)
CFLAGS=-g -Wall -std=c99
OBJS=ransom.o
EXEC=prog.exe
RM=rm -rf *.o *.exe

# Default (first rule)
$(EXEC): $(OBJS)
	$(CCLINK) -g $(OBJS) -o $(EXEC)

ransom.o: ransom.c 
	$(CC) $(CFLAGS) -c ransom.c

# Clean .o and .exe files
clean:
	$(RM)