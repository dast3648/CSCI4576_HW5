# Daniel Strawn
# CSCI-4576
# Makefile

CC			=	mpicc
CXX			=	mpicxx

CFLAGS		=	-g -Wall -std=c99
CXXFLAGS	=	-DMPICH_IGNORE_CXX_SEEK

C_FILES		=	StrawnDaniel_HW5-1.c
O_FILES		=	StrawnDaniel_HW5-1.o

all:			StrawnDaniel_HW5-1

StrawnDaniel_HW5-1: $(O_FILES)
	$(CC) -o StrawnDaniel_HW5-1 $(O_FILES) -lm

.PHONY:	clean
clean:
	/bin/rm -f core $(O_FILES) StrawnDaniel_HW5-1
