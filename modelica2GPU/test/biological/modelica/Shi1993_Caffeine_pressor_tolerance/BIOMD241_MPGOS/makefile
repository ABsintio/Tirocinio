
INCL_DIR = -I/home/yorunoomo/Scrivania/Tirocinio/util/Software/MPGOS/SourceCodes/
CMPL_OPT = -O3 --std=c++11 --ptxas-options=-v --gpu-architecture=sm_75 -lineinfo -w -maxrregcount=80

all: BIOMD241.exe

BIOMD241.exe: BIOMD241.cu
	nvcc -o BIOMD241.exe BIOMD241.cu $(INCL_DIR) $(CMPL_OPT)

clean:
	rm -f BIOMD241.exe
	rm -f *.txt
	rm -f *.csv
