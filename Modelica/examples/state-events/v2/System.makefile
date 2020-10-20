# Makefile generated by OpenModelica

# Simulations use -O3 by default
CC=gcc
CXX=g++
LINK=gcc -shared
EXEEXT=
DLLEXT=.so
CFLAGS_BASED_ON_INIT_FILE=
DEBUG_FLAGS=
CFLAGS=$(CFLAGS_BASED_ON_INIT_FILE) $(DEBUG_FLAGS) -fPIC -O0 -falign-functions -march=native ${MODELICAUSERCFLAGS}   
CPPFLAGS= -I"/usr/include/omc/c" -I. -DOPENMODELICA_XML_FROM_FILE_AT_RUNTIME
LDFLAGS=-L"/home/enrico/Dropbox/teaching/2017/verifica-validazione-sistemi/modelica/examples/state-events/v2" -L"/usr/lib/omc" -L"/usr/lib" -Wl,-rpath,"/usr/lib/omc" -Wl,-rpath,"/usr/lib"    -Wl,-Bsymbolic-functions -Wl,-z,relro -lSimulationRuntimeC -llapack -lblas -lm -lgc -lpthread -rdynamic 
MAINFILE=System.c
MAINOBJ=System.o
CFILES=System_functions.c System_records.c \
System_01exo.c System_02nls.c System_03lsy.c System_04set.c System_05evt.c System_06inz.c System_07dly.c \
System_08bnd.c System_09alg.c System_10asr.c System_11mix.c System_12jac.c System_13opt.c System_14lnz.c
OFILES=$(CFILES:.c=.o)
GENERATEDFILES=$(MAINFILE) System.makefile System_literals.h System_functions.h $(CFILES)

.PHONY: omc_main_target clean bundle

# This is to make sure that System_*.c are always compiled.
.PHONY: $(CFILES)

omc_main_target: $(MAINOBJ) System_functions.h System_literals.h $(OFILES)
	$(CC) -I. -o System$(EXEEXT) $(MAINOBJ) $(OFILES) $(CPPFLAGS) -L"/home/enrico/Dropbox/teaching/2017/verifica-validazione-sistemi/modelica/examples/state-events/v2"   $(CFLAGS) $(LDFLAGS)
clean:
	@rm -f System_records.o $(MAINOBJ)

bundle:
	@tar -cvf System_Files.tar $(GENERATEDFILES)