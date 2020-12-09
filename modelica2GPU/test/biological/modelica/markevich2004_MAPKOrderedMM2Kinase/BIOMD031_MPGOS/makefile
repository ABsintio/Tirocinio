
INCL_DIR = -I/home/yorunoomo/Scrivania/Tirocinio/util/Software/MPGOS/SourceCodes/
CMPL_OPT = -O3 --std=c++11 --ptxas-options=-v --gpu-architecture=sm_75 -lineinfo -w -maxrregcount=80

all: BIOMD031.exe

BIOMD031.exe: BIOMD031.cu
	nvcc -o BIOMD031.exe BIOMD031.cu $(INCL_DIR) $(CMPL_OPT)

clean:
	rm -f BIOMD031.exe
	rm -f *.txt
