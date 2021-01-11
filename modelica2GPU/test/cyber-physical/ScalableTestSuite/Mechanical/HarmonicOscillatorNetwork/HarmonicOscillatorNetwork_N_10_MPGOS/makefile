
INCL_DIR = -I/home/yorunoomo/Scrivania/Tirocinio/util/Software/MPGOS/SourceCodes/
CMPL_OPT = -O3 --std=c++11 --ptxas-options=-v --gpu-architecture=sm_75 -lineinfo -w -maxrregcount=80

all: HarmonicOscillatorNetwork_N_10.exe

HarmonicOscillatorNetwork_N_10.exe: HarmonicOscillatorNetwork_N_10.cu
	nvcc -o HarmonicOscillatorNetwork_N_10.exe HarmonicOscillatorNetwork_N_10.cu $(INCL_DIR) $(CMPL_OPT)

clean:
	rm -f HarmonicOscillatorNetwork_N_10.exe
	rm -f *.txt
	rm -f *.csv
