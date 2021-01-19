
INCL_DIR = -I/home/yorunoomo/Scrivania/Tirocinio/util/Software/MPGOS/SourceCodes/
CMPL_OPT = -O3 --std=c++11 --ptxas-options=-v --gpu-architecture=sm_75 -lineinfo -w -maxrregcount=80

all: BIOMD415.exe

BIOMD415.exe: BIOMD415.cu
	nvcc -o BIOMD415.exe BIOMD415.cu $(INCL_DIR) $(CMPL_OPT)

clean:
	rm -f BIOMD415.exe
	rm -f *.txt
	rm -f *.csv
