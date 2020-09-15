INCL_DIR = -I$(HOME)/Scrivania/Tirocinio/Massively-Parallel-GPU-ODE-Solver/SourceCodes

# --gpu-architecture=sm_75 dal momento che la mia GPU ha CC = 7.5
CMPL_OPT = -O3 --std=c++11 --ptxas-options=-v --gpu-architecture=sm_75 -lineinfo -w -maxrregcount=80

all: Reference.exe

Reference.exe: Reference.cu
	nvcc -o	Reference.exe Reference.cu $(INCL_DIR) $(CMPL_OPT)

clean:
	rm -f Reference.exe
	rm -f *.txt
