
INCL_DIR = -I/home/yorunoomo/Scrivania/Tirocinio/util/Software/MPGOS/SourceCodes/
CMPL_OPT = -O3 --std=c++11 --ptxas-options=-v --gpu-architecture=sm_75 -lineinfo -w -maxrregcount=80

all: OneDHeatTransferTI_FD_N_320.exe

OneDHeatTransferTI_FD_N_320.exe: OneDHeatTransferTI_FD_N_320.cu
	nvcc -o OneDHeatTransferTI_FD_N_320.exe OneDHeatTransferTI_FD_N_320.cu $(INCL_DIR) $(CMPL_OPT)

clean:
	rm -f OneDHeatTransferTI_FD_N_320.exe
	rm -f *.txt
	rm -f *.csv
