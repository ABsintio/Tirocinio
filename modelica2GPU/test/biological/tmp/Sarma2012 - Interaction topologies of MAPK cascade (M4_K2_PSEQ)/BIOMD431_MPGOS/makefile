
INCL_DIR = -I/home/yorunoomo/Scrivania/Tirocinio/util/Software/MPGOS/SourceCodes/
CMPL_OPT = -O3 --std=c++11 --ptxas-options=-v --gpu-architecture=sm_75 -lineinfo -w -maxrregcount=80

all: BIOMD431.exe

BIOMD431.exe: BIOMD431.cu
	nvcc -o BIOMD431.exe BIOMD431.cu $(INCL_DIR) $(CMPL_OPT)

clean:
	rm -f BIOMD431.exe
	rm -f *.txt
	rm -f *.csv
