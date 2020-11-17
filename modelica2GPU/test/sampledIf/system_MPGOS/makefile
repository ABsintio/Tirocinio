
INCL_DIR = -I/home/yorunoomo/Scrivania/Tirocinio/util/Software/MPGOS/SourceCodes/
CMPL_OPT = -O3 --std=c++11 --ptxas-options=-v --gpu-architecture=sm_75 -lineinfo -w -maxrregcount=80

all: system.exe

system.exe: system.cu
	nvcc -o system.exe system.cu $(INCL_DIR) $(CMPL_OPT)

clean:
	rm -f system.exe
	rm -f *.txt
