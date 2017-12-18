CC = g++
CFLAGS = -std=c++11 -g -Wall -D_DEBUG -Wshadow -Wno-sign-compare -w
INC = -I/usr/local/include/eigen3
INC += -I./include/third_party
INC += -I./include
INC += -I./include/nsync/public/
INC += -I./include/includes.h
LDFLAGS =  -lprotobuf -pthread -lpthread
LDFLAGS += -ltensorflow_cc -ltensorflow_framework

all: main

main:
	$(CC) $(CFLAGS) -o main src/main.cpp $(INC) $(LDFLAGS)
run:
	./main
clean:
	rm -f main

