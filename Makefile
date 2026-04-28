CC = gcc
CFLAGS = -Wall -O2 -I.
LDLIBS = -lnetfilter_queue

TARGET = netfilter-test
SRC = netfilter-test.c
HDR = my_struct.h

all: $(TARGET)

$(TARGET): $(SRC) $(HDR)
	$(CC) $(CFLAGS) -o $(TARGET) $(SRC) $(LDLIBS)

clean:
	rm -f $(TARGET)
