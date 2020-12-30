
INCL_DIR = -I/home/yorunoomo/Scrivania/Tirocinio/util/Software/MPGOS/SourceCodes/
CMPL_OPT = -O3 --std=c++11 --ptxas-options=-v --gpu-architecture=sm_75 -lineinfo -w -maxrregcount=80

all: BIOMD351.exe

BIOMD351.exe: BIOMD351.cu
	nvcc -o BIOMD351.exe BIOMD351.cu $(INCL_DIR) $(CMPL_OPT)

clean:
	rm -f BIOMD351.exe
	rm -f *.txt
	rm -f *.csv
