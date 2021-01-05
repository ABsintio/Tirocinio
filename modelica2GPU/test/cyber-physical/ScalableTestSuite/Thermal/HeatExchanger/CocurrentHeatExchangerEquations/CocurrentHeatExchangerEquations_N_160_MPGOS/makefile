
INCL_DIR = -I/home/yorunoomo/Scrivania/Tirocinio/util/Software/MPGOS/SourceCodes/
CMPL_OPT = -O3 --std=c++11 --ptxas-options=-v --gpu-architecture=sm_75 -lineinfo -w -maxrregcount=80

all: CocurrentHeatExchangerEquations_N_160.exe

CocurrentHeatExchangerEquations_N_160.exe: CocurrentHeatExchangerEquations_N_160.cu
	nvcc -o CocurrentHeatExchangerEquations_N_160.exe CocurrentHeatExchangerEquations_N_160.cu $(INCL_DIR) $(CMPL_OPT)

clean:
	rm -f CocurrentHeatExchangerEquations_N_160.exe
	rm -f *.txt
	rm -f *.csv
