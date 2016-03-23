# 
# Liviu Caramida (carliv@xda), Carliv Image Kitchen source
# for the time being, the mkbootfs will only compile under cygwin for windows.
#
MAKEFLAGS += --silent
OUT = ../out
CC=gcc
ifeq ($(target),32)
CFLAGS = -m32
CFLAGS += -std=c99 -pipe
else
CFLAGS = -std=c99 -pipe
endif
RM = rm -f
CP = cp

all:mkbootfs

mkbootfs:
	$(CC) $@.c -o $@.exe
	strip $@.exe
	$(CP) $@.exe $(OUT)

clean:
	$(RM) mkbootfs.exe

.PHONY: all clean
