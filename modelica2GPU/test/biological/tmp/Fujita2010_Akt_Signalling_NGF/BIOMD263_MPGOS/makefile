
INCL_DIR = -I/home/yorunoomo/Scrivania/Tirocinio/util/Software/MPGOS/SourceCodes/
CMPL_OPT = -O3 --std=c++11 --ptxas-options=-v --gpu-architecture=sm_75 -lineinfo -w -maxrregcount=80

all: BIOMD263.exe

BIOMD263.exe: BIOMD263.cu
	nvcc -o BIOMD263.exe BIOMD263.cu $(INCL_DIR) $(CMPL_OPT)

clean:
	rm -f BIOMD263.exe
	rm -f *.txt
	rm -f *.csv
