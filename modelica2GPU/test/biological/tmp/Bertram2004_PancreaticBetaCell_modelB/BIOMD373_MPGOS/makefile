
INCL_DIR = -I/home/yorunoomo/Scrivania/Tirocinio/util/Software/MPGOS/SourceCodes/
CMPL_OPT = -O3 --std=c++11 --ptxas-options=-v --gpu-architecture=sm_75 -lineinfo -w -maxrregcount=80

all: BIOMD373.exe

BIOMD373.exe: BIOMD373.cu
	nvcc -o BIOMD373.exe BIOMD373.cu $(INCL_DIR) $(CMPL_OPT)

clean:
	rm -f BIOMD373.exe
	rm -f *.txt
	rm -f *.csv
