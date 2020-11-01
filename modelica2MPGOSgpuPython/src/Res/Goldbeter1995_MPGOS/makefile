
INCL_DIR = -I$(HOME)/home/yorunoomo/Scrivania/Tirocinio/util/Software/MPGOS/SourceCodes/
CMPL_OPT = -03 --std=c++11 --ptxas-options=v --gpu-architecture=sm_75 -lineinfo -w -maxrregcount=80

all: Goldbeter1995.exe

Goldbeter1995.exe: Goldbeter1995.cu
    nvcc -o Goldbeter1995.exe Goldbeter1995.cu $(INCL_DIR) $(CMPL_OPT)

clean:
    rm -f Goldbeter1995.exe
    rm -f *.txt
