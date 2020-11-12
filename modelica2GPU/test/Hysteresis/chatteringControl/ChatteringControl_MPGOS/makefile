
INCL_DIR = -I/home/yorunoomo/Scrivania/Tirocinio/util/Software/MPGOS/SourceCodes/
CMPL_OPT = -O3 --std=c++11 --ptxas-options=-v --gpu-architecture=sm_61 -lineinfo -w -maxrregcount=80

all: ChatteringControl.exe

ChatteringControl.exe: ChatteringControl.cu
	nvcc -o ChatteringControl.exe ChatteringControl.cu $(INCL_DIR) $(CMPL_OPT)

clean:
	rm -f ChatteringControl.exe
	rm -f *.txt
