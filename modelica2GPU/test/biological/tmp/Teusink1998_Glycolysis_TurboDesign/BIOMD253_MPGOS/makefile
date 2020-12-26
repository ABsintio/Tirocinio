
INCL_DIR = -I/home/yorunoomo/Scrivania/Tirocinio/util/Software/MPGOS/SourceCodes/
CMPL_OPT = -O3 --std=c++11 --ptxas-options=-v --gpu-architecture=sm_75 -lineinfo -w -maxrregcount=80

all: BIOMD253.exe

BIOMD253.exe: BIOMD253.cu
	nvcc -o BIOMD253.exe BIOMD253.cu $(INCL_DIR) $(CMPL_OPT)

clean:
	rm -f BIOMD253.exe
	rm -f *.txt
	rm -f *.csv
