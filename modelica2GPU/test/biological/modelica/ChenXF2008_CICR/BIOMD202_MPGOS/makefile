
INCL_DIR = -I/home/yorunoomo/Scrivania/Tirocinio/util/Software/MPGOS/SourceCodes/
CMPL_OPT = -O3 --std=c++11 --ptxas-options=-v --gpu-architecture=sm_75 -lineinfo -w -maxrregcount=80

all: BIOMD202.exe

BIOMD202.exe: BIOMD202.cu
	nvcc -o BIOMD202.exe BIOMD202.cu $(INCL_DIR) $(CMPL_OPT)

clean:
	rm -f BIOMD202.exe
	rm -f *.txt
