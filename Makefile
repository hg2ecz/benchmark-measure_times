CC=gcc
CFLAGS=-O2 -Wall
LDFLAGS=-lm
OBJS=benchmark-measure_time.o
TARGET=benchmark-measure_time

all: $(OBJS)
	$(CC) $(OBJS) $(LDFLAGS) -o $(TARGET)

clean:
	rm -f $(OBJS) $(TARGET)
