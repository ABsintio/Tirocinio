
INCL_DIR = -I/home/yorunoomo/Scrivania/Tirocinio/util/Software/MPGOS/SourceCodes/
CMPL_OPT = -O3 --std=c++11 --ptxas-options=-v --gpu-architecture=sm_75 -lineinfo -w -maxrregcount=80

all: BIOMD103.exe

BIOMD103.exe: BIOMD103.cu
	nvcc -o BIOMD103.exe BIOMD103.cu $(INCL_DIR) $(CMPL_OPT)

clean:
	rm -f BIOMD103.exe
	rm -f *.txt
	rm -f *.csv
