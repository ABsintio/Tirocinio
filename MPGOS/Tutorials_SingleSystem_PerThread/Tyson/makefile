INCL_DIR = -I$(HOME)/Scrivania/Tirocinio/MPGOS/SourceCodes

# --gpu-architecture=sm_75 dal momento che la mia GPU ha CC = 7.5
CMPL_OPT = -O3 --std=c++11 --ptxas-options=-v --gpu-architecture=sm_61 -lineinfo -w -maxrregcount=80

all: TysonModel.exe

TysonModel.exe: TysonModel.cu
	nvcc -o	TysonModel.exe TysonModel.cu $(INCL_DIR) $(CMPL_OPT)

clean:
	rm -f TysonModel.exe
	rm -f *.txt
