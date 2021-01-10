
INCL_DIR = -I/home/yorunoomo/Scrivania/Tirocinio/util/Software/MPGOS/SourceCodes/
CMPL_OPT = -O3 --std=c++11 --ptxas-options=-v --gpu-architecture=sm_75 -lineinfo -w -maxrregcount=80

all: PowerSystemStepLoad_N_8_M_8.exe

PowerSystemStepLoad_N_8_M_8.exe: PowerSystemStepLoad_N_8_M_8.cu
	nvcc -o PowerSystemStepLoad_N_8_M_8.exe PowerSystemStepLoad_N_8_M_8.cu $(INCL_DIR) $(CMPL_OPT)

clean:
	rm -f PowerSystemStepLoad_N_8_M_8.exe
	rm -f *.txt
	rm -f *.csv
