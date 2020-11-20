
INCL_DIR = -I/home/yorunoomo/Scrivania/Tirocinio/util/Software/MPGOS/SourceCodes/
CMPL_OPT = -O3 --std=c++11 --ptxas-options=-v --gpu-architecture=sm_75 -lineinfo -w -maxrregcount=80

all: IntervalMeasurement.exe

IntervalMeasurement.exe: IntervalMeasurement.cu
	nvcc -o IntervalMeasurement.exe IntervalMeasurement.cu $(INCL_DIR) $(CMPL_OPT)

clean:
	rm -f IntervalMeasurement.exe
	rm -f *.txt
