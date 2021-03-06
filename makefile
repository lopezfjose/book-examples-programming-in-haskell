
vpath %.hs src

CC := ghc

CFLAGS := -g
LFLAGS :=

all: has.exe

has.exe: main.o
	$(CC) $(CFLAGS) $(LFLAGS) -o $@ $^

main.o: Main.hs
	$(CC) $(CFLAGS) -c -o $@ $^

clean:
	rm -rf *.o
