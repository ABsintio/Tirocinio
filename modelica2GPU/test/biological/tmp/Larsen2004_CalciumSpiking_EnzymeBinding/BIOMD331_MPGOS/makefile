
INCL_DIR = -I/home/yorunoomo/Scrivania/Tirocinio/util/Software/MPGOS/SourceCodes/
CMPL_OPT = -O3 --std=c++11 --ptxas-options=-v --gpu-architecture=sm_75 -lineinfo -w -maxrregcount=80

all: BIOMD331.exe

BIOMD331.exe: BIOMD331.cu
	nvcc -o BIOMD331.exe BIOMD331.cu $(INCL_DIR) $(CMPL_OPT)

clean:
	rm -f BIOMD331.exe
	rm -f *.txt
	rm -f *.csv
