#TARGET = mem_cpy_avx_test

#SRC = $(wildcard *.c)
#NOTDIR_SRC  = $(notdir $(SRC))
#TARGET_LIST = $(patsubst %.c, %, $(wildcard *.c))
TARGET_LIST = mem_cpy_avx_test mem_cmp_avx2_test
#@echo $(TARGET_LIST)

#LIBS = -lSDL2
#CC = gcc
#AS = as
CFLAGS = -Wall -Werror -g
AS_FLAGS =
#TGTDIR = build


.PHONY: default all clean

#default: $(TARGET)
default: $(TARGET_LIST)
all: default

SRC = $(filter-out mem_cpy_avx_test.c mem_cmp_avx2_test.c, $(wildcard *.c *.S))
#SRC += $(wildcard *.S)
#$(info $(SRC))
OBJECTS = $(patsubst %.S, %.o, $(patsubst %.c, %.o, $(SRC)))
#OBJECTS += %.o
#$(info $(OBJECTS))
HEADERS = $(wildcard *.h)
#$(info $(HEADERS))

%.o: %.S $(HEADERS)
	@echo compile asm file
	@$(CC) $(CFLAGS) -c $< -o $@
	
%.o: %.c $(HEADERS)
	@echo compile c file
	@$(CC) $(CFLAGS) -c $< -o $@


#.PRECIOUS: $(TARGET) $(OBJECTS)

#$(TARGET): $(OBJECTS)
#	@echo building executtable
#	@$(CC) $(OBJECTS) $(CFLAGS) $(LIBS) -o $(TARGET)

#$(TARGET_LIST):$(OBJECTS)
#	@echo $@
#	$(CC) $@.o $(OBJECTS) $(CFLAGS) $(LIBS) -o $@

#%: %.o
#	$(CC) $(CFLAGS) $(LIBS) -o $@ $^

mem_cpy_avx_test: mem_cpy_avx_test.o $(OBJECTS)
	@echo building mem_cpy_avx_test
	@$(CC) $(CFLAGS) $(LIBS) -o $@ $^

mem_cmp_avx2_test: mem_cmp_avx2_test.o $(OBJECTS)
	@echo building mem_cmp_avx2_test
	@$(CC) $(CFLAGS) $(LIBS) -o $@ $^

clean:
	@echo remove all files
	@-rm -f *.o
	@-rm -f $(TARGET_LIST)


#SRC_FILES := $(wildcard *.c) $(wildcard *.cpp)
#OBJ_FILES := $(foreach file,$(SRC_FILES),$(patsubst %.c,%.o,$(patsubst %.cpp,%.o,$(file))))
#@echo $(OBJECTS)
#nasm $(NASM_FLAGS) $< -o $@
#nasm -f elf64 -g -F dwarf mem_cpy_avx.asm -l mem_cpy_avx.asm.lst

## simply
#mem_cpy_avx_test: mem_cpy_avx_test.c kinky.o
#	gcc -g -o mem_cpy_avx_test mem_cpy_avx_test.c kinky.o
#kinky.o: kinky.S
#	gcc -c kinky.S -o kinky.o
#	or
#	cpp -P kinky.S -o kinky.i
#	as kinky.i -o kinky.o

## manually
#	nasm -f elf64 -g -F dwarf mem_cpy_avx.asm -l mem_cpy_avx.asm.lst -i ../include
#	gcc -g -o mem_cpy_avx_test mem_cpy_avx_test.c mem_cpy_avx.o -I../include


# automatically search foreach folder
#dirs = lcd usb media keyboard
#srcs = $(foreach dir, $(dirs), $(wildcard $(dir)/*.c))
#objs = $(foreach src, $(srcs), $(patsubst %.c, %.o, $(src)))
#all:
#    @echo "srcs = $(srcs)"
#    @echo "objs = $(objs)"


# cpp -> ccl -> as -> ld or ar
# gcc -E
# 		 gcc -S
# 				gcc -c -o
# 					  gcc -o

# gdb debug
# b 11 if i ==8129
# condition 1 i == 8129
