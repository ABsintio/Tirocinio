
INCL_DIR = -I/home/yorunoomo/Scrivania/Tirocinio/util/Software/MPGOS/SourceCodes/
CMPL_OPT = -O3 --std=c++11 --ptxas-options=-v --gpu-architecture=sm_75 -lineinfo -w -maxrregcount=80

all: BIOMD500.exe

BIOMD500.exe: BIOMD500.cu
	nvcc -o BIOMD500.exe BIOMD500.cu $(INCL_DIR) $(CMPL_OPT)

clean:
	rm -f BIOMD500.exe
	rm -f *.txt
	rm -f *.csv
