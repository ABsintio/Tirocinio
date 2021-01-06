
INCL_DIR = -I/home/yorunoomo/Scrivania/Tirocinio/util/Software/MPGOS/SourceCodes/
CMPL_OPT = -O3 --std=c++11 --ptxas-options=-v --gpu-architecture=sm_75 -lineinfo -w -maxrregcount=80

all: HeatingSystemExplicit_N_5.exe

HeatingSystemExplicit_N_5.exe: HeatingSystemExplicit_N_5.cu
	nvcc -o HeatingSystemExplicit_N_5.exe HeatingSystemExplicit_N_5.cu $(INCL_DIR) $(CMPL_OPT)

clean:
	rm -f HeatingSystemExplicit_N_5.exe
	rm -f *.txt
	rm -f *.csv
