
INCL_DIR = -I/home/yorunoomo/Scrivania/Tirocinio/util/Software/MPGOS/SourceCodes/
CMPL_OPT = -O3 --std=c++11 --ptxas-options=-v --gpu-architecture=sm_75 -lineinfo -w -maxrregcount=80

all: HeatingSystem_N_10.exe

HeatingSystem_N_10.exe: HeatingSystem_N_10.cu
	nvcc -o HeatingSystem_N_10.exe HeatingSystem_N_10.cu $(INCL_DIR) $(CMPL_OPT)

clean:
	rm -f HeatingSystem_N_10.exe
	rm -f *.txt
	rm -f *.csv
