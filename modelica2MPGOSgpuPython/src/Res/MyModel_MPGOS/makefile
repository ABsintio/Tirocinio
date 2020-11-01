
INCL_DIR = -I$(HOME)/home/yorunoomo/Scrivania/Tirocinio/util/Software/MPGOS/SourceCodes/
CMPL_OPT = -03 --std=c++11 --ptxas-options=v --gpu-architecture=sm_75 -lineinfo -w -maxrregcount=80

all: MyModel.exe

MyModel.exe: MyModel.cu
    nvcc -o MyModel.exe MyModel.cu $(INCL_DIR) $(CMPL_OPT)

clean:
    rm -f MyModel.exe
    rm -f *.txt
