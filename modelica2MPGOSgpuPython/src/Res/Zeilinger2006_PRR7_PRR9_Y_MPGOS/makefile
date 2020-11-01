
INCL_DIR = -I$(HOME)/home/yorunoomo/Scrivania/Tirocinio/util/Software/MPGOS/SourceCodes/
CMPL_OPT = -03 --std=c++11 --ptxas-options=v --gpu-architecture=sm_75 -lineinfo -w -maxrregcount=80

all: Zeilinger2006_PRR7_PRR9_Y.exe

Zeilinger2006_PRR7_PRR9_Y.exe: Zeilinger2006_PRR7_PRR9_Y.cu
    nvcc -o Zeilinger2006_PRR7_PRR9_Y.exe Zeilinger2006_PRR7_PRR9_Y.cu $(INCL_DIR) $(CMPL_OPT)

clean:
    rm -f Zeilinger2006_PRR7_PRR9_Y.exe
    rm -f *.txt
