
INCL_DIR = -I/home/yorunoomo/Scrivania/Tirocinio/util/Software/MPGOS/SourceCodes/
CMPL_OPT = -O3 --std=c++11 --ptxas-options=-v --gpu-architecture=sm_75 -lineinfo -w -maxrregcount=80

all: LoktaVolterra.exe

LoktaVolterra.exe: LoktaVolterra.cu
	nvcc -o LoktaVolterra.exe LoktaVolterra.cu $(INCL_DIR) $(CMPL_OPT)

clean:
	rm -f LoktaVolterra.exe
	rm -f *.txt
