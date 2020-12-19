
#ifndef BIOMD345_PERTHREAD_SYSTEMDEFINITION_H
#define BIOMD345_PERTHREAD_SYSTEMDEFINITION_H

#include <fstream>
#include <iostream>
#include <string>


template<class Precision> __forceinline__ __device__ void PerThread_OdeFunction(
	int tid, int NT, \
	Precision*    F, Precision*    X, Precision     T, \
	Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi  		
) {
    ACC[40]=(3.375e-05 * sPAR[2]);
    ACC[16]=(0.05 * sPAR[2]);
    ACC[39]=(0.78 * (ACC[16] / sPAR[18]));
    ACC[38]=(0.0002720000000000001 * (ACC[39] * sPAR[18]));
    ACC[15]=(0.007391304347826087 * sPAR[2]);
    ACC[1]=(2.25e-05 * ACC[15]);
    ACC[23]=(ACC[1] * (X[11] / ACC[40]));
    ACC[28]=(6000.0 * (ACC[23] * (ACC[40] / X[11])));
    ACC[0]=(sPAR[1] + (((((((((((-(X[4])) - X[3]) - X[1]) - X[9]) - X[6]) - X[0]) - X[10]) - X[2]) - X[5]) - X[7]) - X[8]));
    ACC[11]=(sPAR[12] * ACC[0]);
    ACC[14]=((sPAR[15] * X[1]) - (sPAR[14] * ACC[0]));
    ACC[18]=((X[0] + (X[1] + (X[2] + ACC[0]))) / sPAR[1]);
    ACC[31]=((sPAR[8] * (X[7] * X[11])) - (sPAR[9] * X[3]));
    ACC[32]=((sPAR[8] * (X[10] * X[11])) - (sPAR[9] * X[6]));
    ACC[33]=((sPAR[8] * (X[3] * X[11])) - (sPAR[11] * X[0]));
    ACC[34]=((sPAR[8] * (X[6] * X[11])) - (sPAR[11] * X[2]));
    ACC[17]=((ACC[33] + (ACC[34] + (ACC[31] + ACC[32]))) * (ACC[39] / ACC[40]));
    ACC[27]=(6000.0 * (ACC[17] * (ACC[40] / X[11])));
    ACC[29]=(ACC[28] + ACC[27]);
    ACC[24]=(ACC[23] + ACC[17]);
    ACC[26]=(100.0 * (ACC[23] / ACC[24]));
    ACC[25]=(100.0 * (ACC[17] / (ACC[17] + ACC[23])));
    ACC[35]=(sPAR[13] * X[10]);
    ACC[36]=((sPAR[15] * X[3]) - (sPAR[13] * X[6]));
    ACC[37]=((sPAR[15] * X[0]) - (sPAR[13] * X[2]));
    ACC[8]=(sPAR[10] * X[5]);
    ACC[9]=(sPAR[10] * X[4]);
    ACC[10]=(sPAR[12] * X[1]);
    ACC[12]=(sPAR[14] * X[8]);
    ACC[13]=((sPAR[15] * X[5]) - (sPAR[14] * X[4]));
    ACC[2]=((sPAR[5] * X[7]) - (sPAR[17] * X[9]));
    ACC[3]=(sPAR[5] * X[3]);
    ACC[4]=(sPAR[5] * X[0]);
    ACC[5]=((sPAR[4] * X[10]) - (sPAR[17] * X[8]));
    ACC[6]=(sPAR[4] * X[6]);
    ACC[7]=(sPAR[4] * X[2]);
    ACC[30]=((sPAR[1] + ((((-(X[10])) - X[9]) - X[7]) - X[8])) / sPAR[1]);
    ACC[19]=((X[3] + (X[0] + (X[6] + X[2]))) / sPAR[1]);
    ACC[21]=(ACC[30] - ACC[19]);
    ACC[20]=((X[0] + X[2]) / sPAR[1]);
    ACC[22]=(ACC[18] - ACC[20]);
    F[9]=(ACC[8] + (ACC[12] + ACC[2]));
    F[7]=(ACC[35] + ((-(ACC[31])) - ACC[2]));
    F[5]=(ACC[10] + (ACC[3] + ((-(ACC[13])) - ACC[8])));
    F[3]=(ACC[31] + (((-(ACC[33])) - ACC[36]) - ACC[3]));
    F[0]=(ACC[33] + ((-(ACC[37])) - ACC[4]));
    F[1]=(ACC[4] + ((-(ACC[14])) - ACC[10]));
    F[8]=(ACC[9] + (ACC[5] - ACC[12]));
    F[10]=(((-(ACC[32])) - ACC[35]) - ACC[5]);
    F[6]=(ACC[32] + (ACC[36] + ((-(ACC[34])) - ACC[6])));
    F[4]=(ACC[11] + (ACC[13] + (ACC[6] - ACC[9])));
    F[2]=(ACC[34] + (ACC[37] - ACC[7]));
    F[11]=0.0;

}

template<class Precision> __forceinline__ __device__ void PerThread_EventFunction(
	int tid, int NT, Precision*	  EF, \
	Precision     T, Precision    dT, Precision*    TD, Precision*	X, \
	Precision* cPAR, Precision* sPAR, int*       sPARi, Precision* ACC, int* ACCi  		
) {
    

}

template<class Precision> __forceinline__ __device__ void PerThread_ActionAfterEventDetection(
    int tid, int NT, int IDX, int& UDT, \
    Precision    &T, Precision   &dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR, int*       sPARi, Precision* ACC, int* ACCi
) {
    
}

template<class Precision> __forceinline__ __device__ void PerThread_ActionAfterSuccessfulTimeStep(
    int tid, int NT, int& UDT, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR, int*       sPARi, Precision* ACC, int* ACCi
) {
    
}

template<class Precision> __forceinline__ __device__ void PerThread_Initialization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
    T     = TD[0];
    DOIDX = 0;
    ACC[0]=-4.440892098500624e-15; //I2RPen
    ACC[1]=3.32608695652174e-05; //Kkidney
    ACC[2]=-4.78999999985533e-08; //f1
    ACC[3]=0.0; //f2
    ACC[4]=0.0; //f3
    ACC[5]=0.0; //f4
    ACC[6]=0.0; //f5
    ACC[7]=0.0; //f6
    ACC[8]=0.0; //i1
    ACC[9]=0.0; //i2
    ACC[10]=0.0; //i3
    ACC[11]=-1.70974345792274e-17; //i4
    ACC[12]=0.0; //i5
    ACC[13]=0.0; //i6
    ACC[14]=3.20632409511745e-17; //i7
    ACC[15]=1.47826086956522; //mkidney
    ACC[16]=10.0; //mliver
    ACC[17]=3.89037403531029; //parameter_1
    ACC[18]=-1.11022302462516e-16; //parameter_10
    ACC[19]=0.0; //parameter_11
    ACC[20]=0.0; //parameter_12
    ACC[21]=-1.11022302462516e-16; //parameter_13
    ACC[22]=-1.11022302462516e-16; //parameter_14
    ACC[23]=0.492753623188406; //parameter_2
    ACC[24]=4.38312765849869; //parameter_3
    ACC[25]=88.75794497490899; //parameter_4
    ACC[26]=11.242055025091; //parameter_5
    ACC[27]=1.57560148430067; //parameter_6
    ACC[28]=0.199565217391304; //parameter_7
    ACC[29]=1.77516670169197; //parameter_8
    ACC[30]=-1.11022302462516e-16; //parameter_9
    ACC[31]=3.53837; //r1
    ACC[32]=0.0; //r2
    ACC[33]=0.0; //r3
    ACC[34]=0.0; //r4
    ACC[35]=0.0; //r5
    ACC[36]=0.0; //r6
    ACC[37]=0.0; //r7
    ACC[38]=0.0021216; //vd
    ACC[39]=0.00742150333016175; //vhep
    ACC[40]=0.00675; //vp
    sPAR[0]=0.5; //Kpan
    sPAR[1]=40.0; //Rtotal
    sPAR[2]=200.0; //bw
    sPAR[3]=1.0; //compartment1
    sPAR[4]=0.00055; //intk1
    sPAR[5]=0.0002; //intk2
    sPAR[6]=0.35; //k1ub
    sPAR[7]=0.2; //k2ub
    sPAR[8]=0.001; //kins
    sPAR[9]=0.0004; //kins1d
    sPAR[10]=0.001925; //kins1den
    sPAR[11]=0.04; //kins2d
    sPAR[12]=0.00385; //kins2den
    sPAR[13]=0.00385; //kyd
    sPAR[14]=0.00722; //kyden
    sPAR[15]=0.0231; //kyp
    sPAR[16]=0.0016976; //pansec
    sPAR[17]=0.001533; //reck1
    sPAR[18]=1051.0; //rholiver
    X[0]=0.0; //I2R
    X[1]=0.0; //I2Ren
    X[2]=0.0; //I2Rp
    X[3]=0.0; //IR
    X[4]=0.0; //IRPen
    X[5]=0.0; //IRen
    X[6]=0.0; //IRp
    X[7]=35.3837; //R
    X[8]=0.0; //RPen
    X[9]=4.6163; //Ren
    X[10]=0.0; //Rp
    X[11]=100.0; //ins

}

template <class Precision> __forceinline__ __device__ void PerThread_Finalization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
	
}


#endif
