
INCL_DIR = -I/home/yorunoomo/Scrivania/Tirocinio/util/Software/MPGOS/SourceCodes/
CMPL_OPT = -O3 --std=c++11 --ptxas-options=-v --gpu-architecture=sm_75 -lineinfo -w -maxrregcount=80

all: BIOMD218.exe

BIOMD218.exe: BIOMD218.cu
	nvcc -o BIOMD218.exe BIOMD218.cu $(INCL_DIR) $(CMPL_OPT)

clean:
	rm -f BIOMD218.exe
	rm -f *.txt
	rm -f *.csv
