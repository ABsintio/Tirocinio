
INCL_DIR = -I/home/yorunoomo/Scrivania/Tirocinio/util/Software/MPGOS/SourceCodes/
CMPL_OPT = -O3 --std=c++11 --ptxas-options=-v --gpu-architecture=sm_75 -lineinfo -w -maxrregcount=80

all: CascadedFirstOrder_N_200.exe

CascadedFirstOrder_N_200.exe: CascadedFirstOrder_N_200.cu
	nvcc -o CascadedFirstOrder_N_200.exe CascadedFirstOrder_N_200.cu $(INCL_DIR) $(CMPL_OPT)

clean:
	rm -f CascadedFirstOrder_N_200.exe
	rm -f *.txt
	rm -f *.csv
