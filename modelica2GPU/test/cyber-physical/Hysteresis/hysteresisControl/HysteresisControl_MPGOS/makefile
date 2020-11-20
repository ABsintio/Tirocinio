
INCL_DIR = -I/home/yorunoomo/Scrivania/Tirocinio/util/Software/MPGOS/SourceCodes/
CMPL_OPT = -O3 --std=c++11 --ptxas-options=-v --gpu-architecture=sm_75 -lineinfo -w -maxrregcount=80

all: HysteresisControl.exe

HysteresisControl.exe: HysteresisControl.cu
	nvcc -o HysteresisControl.exe HysteresisControl.cu $(INCL_DIR) $(CMPL_OPT)

clean:
	rm -f HysteresisControl.exe
	rm -f *.txt
