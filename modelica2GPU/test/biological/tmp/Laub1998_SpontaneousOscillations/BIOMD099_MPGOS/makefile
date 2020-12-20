
INCL_DIR = -I/home/yorunoomo/Scrivania/Tirocinio/util/Software/MPGOS/SourceCodes/
CMPL_OPT = -O3 --std=c++11 --ptxas-options=-v --gpu-architecture=sm_75 -lineinfo -w -maxrregcount=80

all: BIOMD099.exe

BIOMD099.exe: BIOMD099.cu
	nvcc -o BIOMD099.exe BIOMD099.cu $(INCL_DIR) $(CMPL_OPT)

clean:
	rm -f BIOMD099.exe
	rm -f *.txt
	rm -f *.csv
