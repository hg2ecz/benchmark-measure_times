CC=gcc
CFLAGS=-Wall -Ofast -funroll-loops -fopt-info

CFLAGS+=-mcpu=cortex-a5 -mfpu=neon-fp16
#CFLAGS+=-mcpu=cortex-a7 -mfpu=neon-vfpv4
#CFLAGS+=-mcpu=cortex-a8 -mfpu=neon
#CFLAGS+=-mcpu=cortex-a9 -mfpu=neon-fp16
#CFLAGS+=-mcpu=cortex-a15 -mfpu=neon-vfpv4
#CFLAGS+=-mcpu=cortex-a53 -mfpu=neon-fp-armv8

LDFLAGS=-lm
OBJS=benchmark.o benchmark_timetest.o
#OBJS+=own_func

LDFLAGS=-lm
TARGET=benchmark-sample

all: $(OBJS)
	$(CC) $(OBJS) $(LDFLAGS) -o $(TARGET)

clean:
	rm -f $(OBJS) $(TARGET)
