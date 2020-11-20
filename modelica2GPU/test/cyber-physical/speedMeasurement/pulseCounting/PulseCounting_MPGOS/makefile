
INCL_DIR = -I/home/yorunoomo/Scrivania/Tirocinio/util/Software/MPGOS/SourceCodes/
CMPL_OPT = -O3 --std=c++11 --ptxas-options=-v --gpu-architecture=sm_75 -lineinfo -w -maxrregcount=80

all: PulseCounting.exe

PulseCounting.exe: PulseCounting.cu
	nvcc -o PulseCounting.exe PulseCounting.cu $(INCL_DIR) $(CMPL_OPT)

clean:
	rm -f PulseCounting.exe
	rm -f *.txt
