
INCL_DIR = -I/home/yorunoomo/Scrivania/Tirocinio/util/Software/MPGOS/SourceCodes/
CMPL_OPT = -O3 --std=c++11 --ptxas-options=-v --gpu-architecture=sm_75 -lineinfo -w -maxrregcount=80

all: OneDHeatTransferTT_Modelica_N_80.exe

OneDHeatTransferTT_Modelica_N_80.exe: OneDHeatTransferTT_Modelica_N_80.cu
	nvcc -o OneDHeatTransferTT_Modelica_N_80.exe OneDHeatTransferTT_Modelica_N_80.cu $(INCL_DIR) $(CMPL_OPT)

clean:
	rm -f OneDHeatTransferTT_Modelica_N_80.exe
	rm -f *.txt
	rm -f *.csv
