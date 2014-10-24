AutomatedMakefile = am
CC = g++

FILES = RadixSortDriver.o
EXECUTABLE = RadixSort.exe

PROJECT_PATH = $(PROJECT_DIR)
INC_DIRS = -I$(PROJECT_PATH)/CSC2110/
LIB_DIRS = -L$(PROJECT_PATH)/CSC2110/
LIBS = -lCSC2110

COMPILE = $(CC) $(INC_DIRS) -c
LINK = $(CC) $(LIB_DIRS) -o

all: Project	

Project: 			$(FILES)
				$(LINK) $(EXECUTABLE) $(FILES) $(LIBS)


RadixSortDriver.o:		RadixSort.h RadixSortDriver.cpp
				$(COMPILE) RadixSortDriver.cpp

InventoryManager.o:		InventoryManager.h InventoryManager.cpp	Widget.h Widget.cpp DequeArray.h QueueDeque.h StackDeque.h
				$(COMPILE) InventoryManager.cpp

InventoryDriver.o:		InventoryDriver.cpp InventoryManager.h InventoryManager.cpp	Widget.h Widget.cpp DequeArray.h QueueDeque.h StackDeque.h
				$(COMPILE) InventoryDriver.cpp


