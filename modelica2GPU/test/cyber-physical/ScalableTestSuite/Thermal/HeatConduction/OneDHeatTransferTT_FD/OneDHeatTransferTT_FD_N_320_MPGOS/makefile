
INCL_DIR = -I/home/yorunoomo/Scrivania/Tirocinio/util/Software/MPGOS/SourceCodes/
CMPL_OPT = -O3 --std=c++11 --ptxas-options=-v --gpu-architecture=sm_75 -lineinfo -w -maxrregcount=80

all: OneDHeatTransferTT_FD_N_320.exe

OneDHeatTransferTT_FD_N_320.exe: OneDHeatTransferTT_FD_N_320.cu
	nvcc -o OneDHeatTransferTT_FD_N_320.exe OneDHeatTransferTT_FD_N_320.cu $(INCL_DIR) $(CMPL_OPT)

clean:
	rm -f OneDHeatTransferTT_FD_N_320.exe
	rm -f *.txt
	rm -f *.csv
