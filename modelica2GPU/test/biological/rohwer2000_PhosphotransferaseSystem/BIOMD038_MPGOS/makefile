
INCL_DIR = -I/home/yorunoomo/Scrivania/Tirocinio/util/Software/MPGOS/SourceCodes/
CMPL_OPT = -O3 --std=c++11 --ptxas-options=-v --gpu-architecture=sm_75 -lineinfo -w -maxrregcount=80

all: BIOMD038.exe

BIOMD038.exe: BIOMD038.cu
	nvcc -o BIOMD038.exe BIOMD038.cu $(INCL_DIR) $(CMPL_OPT)

clean:
	rm -f BIOMD038.exe
	rm -f *.txt
