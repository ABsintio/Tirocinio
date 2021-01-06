
INCL_DIR = -I/home/yorunoomo/Scrivania/Tirocinio/util/Software/MPGOS/SourceCodes/
CMPL_OPT = -O3 --std=c++11 --ptxas-options=-v --gpu-architecture=sm_75 -lineinfo -w -maxrregcount=80

all: SimpleAdvection_N_100.exe

SimpleAdvection_N_100.exe: SimpleAdvection_N_100.cu
	nvcc -o SimpleAdvection_N_100.exe SimpleAdvection_N_100.cu $(INCL_DIR) $(CMPL_OPT)

clean:
	rm -f SimpleAdvection_N_100.exe
	rm -f *.txt
	rm -f *.csv
