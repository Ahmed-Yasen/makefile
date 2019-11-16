
VPATH = Src Inc

CC = gcc_S

LINK_Targets = app.exe

INCLUDE_PATH = ./Inc/
#Obj_Files := $(wildcard *.o)
#Obj_Files = main.o
objects := $(patsubst %.c,%.o,$(wildcard *.c))

DEPENDENCIES_DIR = ./Dependencies/

ALL_OBJ = *.o
ALL_EXE = *.exe

all: app.exe

compile: $(objects)

link: app.exe

app.exe: $(objects)
	$(CC) $(DEPENDENCIES_DIR)$^ -o $@

%.o: %.c
	$(CC) -c -I$(INCLUDE_PATH) $< -o $(DEPENDENCIES_DIR)$@

#dependencies
%.o: %.h

clean:  
	del Dependencies\$(ALL_OBJ) $(ALL_EXE)
	
	
	