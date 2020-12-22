
INCL_DIR = -I/home/yorunoomo/Scrivania/Tirocinio/util/Software/MPGOS/SourceCodes/
CMPL_OPT = -O3 --std=c++11 --ptxas-options=-v --gpu-architecture=sm_75 -lineinfo -w -maxrregcount=80

all: BIOMD232.exe

BIOMD232.exe: BIOMD232.cu
	nvcc -o BIOMD232.exe BIOMD232.cu $(INCL_DIR) $(CMPL_OPT)

clean:
	rm -f BIOMD232.exe
	rm -f *.txt
	rm -f *.csv
