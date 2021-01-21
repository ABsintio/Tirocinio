
INCL_DIR = -I/home/yorunoomo/Scrivania/Tirocinio/util/Software/MPGOS/SourceCodes/
CMPL_OPT = -O3 --std=c++11 --ptxas-options=-v --gpu-architecture=sm_75 -lineinfo -w -maxrregcount=80

all: BIOMD442.exe

BIOMD442.exe: BIOMD442.cu
	nvcc -o BIOMD442.exe BIOMD442.cu $(INCL_DIR) $(CMPL_OPT)

clean:
	rm -f BIOMD442.exe
	rm -f *.txt
	rm -f *.csv
