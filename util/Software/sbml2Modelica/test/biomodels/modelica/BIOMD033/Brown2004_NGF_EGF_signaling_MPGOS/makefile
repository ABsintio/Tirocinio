
INCL_DIR = -I/home/yorunoomo/Scrivania/Tirocinio/util/Software/MPGOS/SourceCodes/
CMPL_OPT = -O3 --std=c++11 --ptxas-options=-v --gpu-architecture=sm_75 -lineinfo -w -maxrregcount=80

all: Brown2004_NGF_EGF_signaling.exe

Brown2004_NGF_EGF_signaling.exe: Brown2004_NGF_EGF_signaling.cu
	nvcc -o Brown2004_NGF_EGF_signaling.exe Brown2004_NGF_EGF_signaling.cu $(INCL_DIR) $(CMPL_OPT)

clean:
	rm -f Brown2004_NGF_EGF_signaling.exe
	rm -f *.txt
