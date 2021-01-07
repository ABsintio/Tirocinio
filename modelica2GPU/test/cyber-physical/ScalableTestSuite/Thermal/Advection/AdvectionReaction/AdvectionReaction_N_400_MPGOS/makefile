
INCL_DIR = -I/home/yorunoomo/Scrivania/Tirocinio/util/Software/MPGOS/SourceCodes/
CMPL_OPT = -O3 --std=c++11 --ptxas-options=-v --gpu-architecture=sm_75 -lineinfo -w -maxrregcount=80

all: AdvectionReaction_N_400.exe

AdvectionReaction_N_400.exe: AdvectionReaction_N_400.cu
	nvcc -o AdvectionReaction_N_400.exe AdvectionReaction_N_400.cu $(INCL_DIR) $(CMPL_OPT)

clean:
	rm -f AdvectionReaction_N_400.exe
	rm -f *.txt
	rm -f *.csv
