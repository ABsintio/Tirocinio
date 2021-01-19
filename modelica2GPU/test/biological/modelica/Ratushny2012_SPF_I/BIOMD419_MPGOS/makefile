
INCL_DIR = -I/home/yorunoomo/Scrivania/Tirocinio/util/Software/MPGOS/SourceCodes/
CMPL_OPT = -O3 --std=c++11 --ptxas-options=-v --gpu-architecture=sm_75 -lineinfo -w -maxrregcount=80

all: BIOMD419.exe

BIOMD419.exe: BIOMD419.cu
	nvcc -o BIOMD419.exe BIOMD419.cu $(INCL_DIR) $(CMPL_OPT)

clean:
	rm -f BIOMD419.exe
	rm -f *.txt
	rm -f *.csv
