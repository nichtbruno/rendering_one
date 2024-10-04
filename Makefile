CC := gcc

# SRC := main.c
SRC := $(shell find . -name '*.c')
HEADERS := $(shell find . -name '*.h')
OBJ := $(SRC:.c=.o)

TARGET := main

CFLAGS := -std=c17 -Wall
LDFLAGS := -lSDL2main -lSDL2

all: $(TARGET)
	@echo "Build complete 😎"

-include $(OBJ:.o=.d)

$(TARGET): $(OBJ)
	$(CC) $(OBJ) $(CFLAGS) $(LDFLAGS) -o $(TARGET)

%.d: %.c
	$(CC) $(CFLAGS) -MM -MT $(@:.d=.o) $< > $@

%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

clean:
	rm -f $(OBJ) $(TARGET) $(OBJ:.o=.d)

run:
	./$(TARGET)

.PHONY: all clean
