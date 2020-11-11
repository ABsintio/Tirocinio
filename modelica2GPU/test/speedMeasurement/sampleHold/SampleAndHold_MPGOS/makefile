
INCL_DIR = -I/home/yorunoomo/Scrivania/Tirocinio/util/Software/MPGOS/SourceCodes/
CMPL_OPT = -O3 --std=c++11 --ptxas-options=-v --gpu-architecture=sm_75 -lineinfo -w -maxrregcount=80

all: SampleAndHold.exe

SampleAndHold.exe: SampleAndHold.cu
	nvcc -o SampleAndHold.exe SampleAndHold.cu $(INCL_DIR) $(CMPL_OPT)

clean:
	rm -f SampleAndHold.exe
	rm -f *.txt
