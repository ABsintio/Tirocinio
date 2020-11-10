
INCL_DIR = -I/home/yorunoomo/Scrivania/Tirocinio/util/Software/MPGOS/SourceCodes/
CMPL_OPT = -O3 --std=c++11 --ptxas-options=-v --gpu-architecture=sm_75 -lineinfo -w -maxrregcount=80

all: NewtonCooling.exe

NewtonCooling.exe: NewtonCooling.cu
	nvcc -o NewtonCooling.exe NewtonCooling.cu $(INCL_DIR) $(CMPL_OPT)

clean:
	rm -f NewtonCooling.exe
	rm -f *.txt
