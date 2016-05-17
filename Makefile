##############################################################
# PUFlib Makefile
# Description: Compiles PUFlic
#
# Author: Jacob I. Torrey
# Date: 5/17/2016
##############################################################
SHELL:=/bin/bash

# Variables used by the Makefile
CC = colorgcc
LINKER = ld

CFLAGS = -O2

# List all the objects needed here
OBJECTS = puflib.o

puflib: $(OBJECTS)
	$(CC) -shared -Wl,-soname,libpuf.so.1 -o libpuf.so.1.0.1 $(OBJECTS)

clean:
	-rm libpuf.so.1*
