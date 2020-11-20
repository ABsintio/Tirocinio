
INCL_DIR = -I/home/yorunoomo/Scrivania/Tirocinio/util/Software/MPGOS/SourceCodes/
CMPL_OPT = -O3 --std=c++11 --ptxas-options=-v --gpu-architecture=sm_75 -lineinfo -w -maxrregcount=80

all: HysteresisControlWithAlgorithms.exe

HysteresisControlWithAlgorithms.exe: HysteresisControlWithAlgorithms.cu
	nvcc -o HysteresisControlWithAlgorithms.exe HysteresisControlWithAlgorithms.cu $(INCL_DIR) $(CMPL_OPT)

clean:
	rm -f HysteresisControlWithAlgorithms.exe
	rm -f *.txt
