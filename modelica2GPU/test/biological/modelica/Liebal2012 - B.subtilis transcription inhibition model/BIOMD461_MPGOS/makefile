
INCL_DIR = -I/home/yorunoomo/Scrivania/Tirocinio/util/Software/MPGOS/SourceCodes/
CMPL_OPT = -O3 --std=c++11 --ptxas-options=-v --gpu-architecture=sm_75 -lineinfo -w -maxrregcount=80

all: BIOMD461.exe

BIOMD461.exe: BIOMD461.cu
	nvcc -o BIOMD461.exe BIOMD461.cu $(INCL_DIR) $(CMPL_OPT)

clean:
	rm -f BIOMD461.exe
	rm -f *.txt
	rm -f *.csv
