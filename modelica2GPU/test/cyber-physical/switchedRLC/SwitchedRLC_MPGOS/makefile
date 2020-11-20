
INCL_DIR = -I/home/yorunoomo/Scrivania/Tirocinio/util/Software/MPGOS/SourceCodes/
CMPL_OPT = -O3 --std=c++11 --ptxas-options=-v --gpu-architecture=sm_75 -lineinfo -w -maxrregcount=80

all: SwitchedRLC.exe

SwitchedRLC.exe: SwitchedRLC.cu
	nvcc -o SwitchedRLC.exe SwitchedRLC.cu $(INCL_DIR) $(CMPL_OPT)

clean:
	rm -f SwitchedRLC.exe
	rm -f *.txt
