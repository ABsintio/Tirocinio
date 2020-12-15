
#ifndef BIOMD200_PERTHREAD_SYSTEMDEFINITION_H
#define BIOMD200_PERTHREAD_SYSTEMDEFINITION_H

#include <fstream>
#include <iostream>
#include <string>


template<class Precision> __forceinline__ __device__ void PerThread_OdeFunction(
	int tid, int NT, \
	Precision*    F, Precision*    X, Precision     T, \
	Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi  		
) {
    ACC[0]=pow(X[20],sPAR[0]);
    ACC[1]=pow(X[4],sPAR[0]);
    ACC[2]=(1.0 - (ACC[0] / ((2.333 * ACC[1]) + ACC[0])));
    F[4]=0.0;
    F[3]=(sPAR[1] * ((X[2] * ((sPAR[24] * X[1]) + ((sPAR[28] * X[16]) + ((sPAR[29] * X[18]) + ((sPAR[30] * X[7]) + ((sPAR[31] * X[10]) + (sPAR[32] * X[13]))))))) - (sPAR[15] * X[3])));
    F[2]=(sPAR[1] * ((sPAR[15] * X[3]) + (X[2] * (((((((-(sPAR[24])) * X[1]) - (sPAR[28] * X[16])) - (sPAR[30] * X[7])) - (sPAR[29] * X[18])) - (sPAR[32] * X[13])) - (sPAR[31] * X[10])))));
    F[21]=0.0;
    F[20]=(sPAR[1] * ((X[19] * (sPAR[21] + ((sPAR[33] * X[1]) + ((sPAR[34] * X[16]) + ((sPAR[35] * X[18]) + ((sPAR[25] * X[7]) + (sPAR[26] * X[10]))))))) + ((sPAR[27] * (X[19] * X[13])) - (X[20] * (sPAR[22] + (sPAR[23] * X[21]))))));
    F[19]=(sPAR[1] * ((X[20] * (sPAR[22] + (sPAR[23] * X[21]))) + ((X[19] * (((((((-(sPAR[26])) * X[10]) - (sPAR[25] * X[7])) - sPAR[21]) - (sPAR[33] * X[1])) - (sPAR[35] * X[18])) - (sPAR[34] * X[16]))) - (sPAR[27] * (X[19] * X[13])))));
    F[13]=(sPAR[1] * ((sPAR[14] * X[12]) + (((-(sPAR[32])) * (X[2] * X[13])) - (sPAR[27] * (X[19] * X[13])))));
    F[12]=(sPAR[1] * ((sPAR[32] * (X[2] * X[13])) + ((sPAR[27] * (X[19] * X[13])) + ((sPAR[42] * (X[8] * X[15])) + ((sPAR[43] * (X[11] * X[0])) + ((sPAR[44] * (X[5] * X[17])) + ((sPAR[47] * (X[9] * X[14])) + ((((((-(sPAR[14])) - sPAR[10]) - sPAR[8]) - sPAR[13]) - sPAR[9]) * X[12]))))))));
    F[7]=(sPAR[1] * ((sPAR[19] * X[6]) + (((-(sPAR[30])) * (X[2] * X[7])) - (sPAR[25] * (X[19] * X[7])))));
    F[6]=(sPAR[1] * ((sPAR[5] * X[9]) + ((sPAR[30] * (X[2] * X[7])) + ((sPAR[25] * (X[19] * X[7])) + ((sPAR[45] * (X[5] * X[0])) + (X[6] * (((-(sPAR[11])) - (sPAR[39] * X[14])) - sPAR[19])))))));
    F[10]=(sPAR[1] * ((sPAR[20] * X[9]) + (((-(sPAR[31])) * (X[2] * X[10])) - (sPAR[26] * (X[19] * X[10])))));
    F[9]=(sPAR[1] * ((sPAR[13] * X[12]) + ((sPAR[31] * (X[2] * X[10])) + ((sPAR[26] * (X[19] * X[10])) + ((sPAR[41] * (X[5] * X[15])) + ((sPAR[46] * (X[8] * X[0])) + ((sPAR[39] * (X[6] * X[14])) + (X[9] * (((((-(sPAR[20])) - sPAR[12]) - (sPAR[47] * X[14])) - sPAR[5]) - sPAR[7])))))))));
    F[11]=(sPAR[1] * ((sPAR[9] * X[12]) + ((sPAR[37] * (X[8] * X[14])) - (X[11] * (sPAR[3] + (sPAR[43] * X[0]))))));
    F[8]=(sPAR[1] * ((sPAR[8] * X[12]) + ((sPAR[12] * X[9]) + ((sPAR[3] * X[11]) + ((sPAR[36] * (X[5] * X[14])) + (X[8] * ((((-(sPAR[42])) * X[15]) - (sPAR[37] * X[14])) + (((-(sPAR[46])) * X[0]) - sPAR[2]))))))));
    F[5]=(sPAR[1] * ((sPAR[2] * X[8]) + ((sPAR[7] * X[9]) + ((sPAR[10] * X[12]) + ((sPAR[11] * X[6]) + (X[5] * ((((-(sPAR[36])) * X[14]) - (sPAR[44] * X[17])) + (((-(sPAR[41])) * X[15]) - (sPAR[45] * X[0])))))))));
    F[18]=(sPAR[1] * ((sPAR[18] * X[17]) + (((-(sPAR[29])) * (X[2] * X[18])) - (sPAR[35] * (X[19] * X[18])))));
    F[17]=(sPAR[1] * ((sPAR[10] * X[12]) + ((sPAR[29] * (X[2] * X[18])) + ((sPAR[35] * (X[19] * X[18])) + ((sPAR[38] * (X[14] * X[15])) + ((((-(sPAR[18])) - sPAR[4]) * X[17]) - (sPAR[44] * (X[5] * X[17]))))))));
    F[16]=(sPAR[1] * ((sPAR[17] * X[15]) + (((-(sPAR[28])) * (X[2] * X[16])) - (sPAR[34] * (X[19] * X[16])))));
    F[15]=(sPAR[1] * ((sPAR[7] * X[9]) + ((sPAR[8] * X[12]) + ((sPAR[4] * X[17]) + ((sPAR[28] * (X[2] * X[16])) + ((sPAR[34] * (X[19] * X[16])) + ((sPAR[40] * (X[14] * X[0])) + ((((((-(sPAR[17])) * X[15]) - (sPAR[38] * (X[14] * X[15]))) - (sPAR[41] * (X[5] * X[15]))) - (sPAR[6] * X[15])) - (sPAR[42] * (X[8] * X[15]))))))))));
    F[14]=(sPAR[1] * ((sPAR[2] * X[8]) + ((sPAR[6] * X[15]) + ((sPAR[13] * X[12]) + ((sPAR[3] * X[11]) + ((sPAR[4] * X[17]) + ((sPAR[5] * X[9]) + (((((((-(sPAR[37])) * (X[8] * X[14])) - (sPAR[39] * (X[6] * X[14]))) - (sPAR[40] * (X[14] * X[0]))) - (sPAR[36] * (X[5] * X[14]))) - (sPAR[38] * (X[14] * X[15]))) - (sPAR[47] * (X[9] * X[14]))))))))));
    F[1]=(sPAR[1] * ((sPAR[16] * X[0]) + (((-(sPAR[24])) * (X[2] * X[1])) - (sPAR[33] * (X[19] * X[1])))));
    F[0]=(sPAR[1] * ((sPAR[6] * X[15]) + ((sPAR[9] * X[12]) + ((sPAR[11] * X[6]) + ((sPAR[12] * X[9]) + ((sPAR[24] * (X[2] * X[1])) + ((sPAR[33] * (X[19] * X[1])) + ((((((-(sPAR[16])) * X[0]) - (sPAR[45] * (X[5] * X[0]))) - (sPAR[40] * (X[14] * X[0]))) - (sPAR[46] * (X[8] * X[0]))) - (sPAR[43] * (X[11] * X[0]))))))))));

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
    ACC[0]=pow(X[20],sPAR[0]); //$cse1
    ACC[1]=pow(X[4],sPAR[0]); //$cse2
    ACC[2]=(1.0 - (ACC[0] / ((2.333 * ACC[1]) + ACC[0]))); //Bias
    sPAR[0]=4.0; //Hill
    sPAR[1]=1.0; //cell
    sPAR[2]=0.00365; //k1_complex_r1
    sPAR[3]=0.0511; //k1_complex_r10
    sPAR[4]=0.102; //k1_complex_r11
    sPAR[5]=0.06759999999999999; //k1_complex_r12
    sPAR[6]=0.00894; //k1_complex_r2
    sPAR[7]=297.0; //k1_complex_r3
    sPAR[8]=0.64; //k1_complex_r4
    sPAR[9]=0.112; //k1_complex_r5
    sPAR[10]=0.0229; //k1_complex_r6
    sPAR[11]=39.3; //k1_complex_r7
    sPAR[12]=727.0; //k1_complex_r8
    sPAR[13]=7.869999999999999e-06; //k1_complex_r9
    sPAR[14]=15.5; //k1_phosphorylation_r1
    sPAR[15]=0.35; //k1_phosphorylation_r10
    sPAR[16]=0.0227; //k1_phosphorylation_r2
    sPAR[17]=0.0227; //k1_phosphorylation_r3
    sPAR[18]=0.0227; //k1_phosphorylation_r4
    sPAR[19]=0.0227; //k1_phosphorylation_r5
    sPAR[20]=0.0227; //k1_phosphorylation_r6
    sPAR[21]=0.00124; //k1_phosphorylation_r7
    sPAR[22]=0.037; //k1_phosphorylation_r8
    sPAR[23]=500000.0; //k1_phosphorylation_r9
    sPAR[24]=6000000.0; //k1_phosphotransfer_r1
    sPAR[25]=30000000.0; //k1_phosphotransfer_r10
    sPAR[26]=30000000.0; //k1_phosphotransfer_r11
    sPAR[27]=30000000.0; //k1_phosphotransfer_r12
    sPAR[28]=6000000.0; //k1_phosphotransfer_r2
    sPAR[29]=6000000.0; //k1_phosphotransfer_r3
    sPAR[30]=6000000.0; //k1_phosphotransfer_r4
    sPAR[31]=6000000.0; //k1_phosphotransfer_r5
    sPAR[32]=6000000.0; //k1_phosphotransfer_r6
    sPAR[33]=30000000.0; //k1_phosphotransfer_r7
    sPAR[34]=30000000.0; //k1_phosphotransfer_r8
    sPAR[35]=30000000.0; //k1_phosphotransfer_r9
    sPAR[36]=1000000.0; //k2_complex_r1
    sPAR[37]=1000000.0; //k2_complex_r10
    sPAR[38]=1000000.0; //k2_complex_r11
    sPAR[39]=1000000.0; //k2_complex_r12
    sPAR[40]=1000000.0; //k2_complex_r2
    sPAR[41]=1000000.0; //k2_complex_r3
    sPAR[42]=1000000.0; //k2_complex_r4
    sPAR[43]=1000000.0; //k2_complex_r5
    sPAR[44]=1000000.0; //k2_complex_r6
    sPAR[45]=1000000.0; //k2_complex_r7
    sPAR[46]=1000000.0; //k2_complex_r8
    sPAR[47]=1000000.0; //k2_complex_r9
    X[0]=2.5e-06; //AA
    X[1]=0.0; //AAp
    X[2]=2e-06; //B
    X[3]=0.0; //Bp
    X[4]=1.63e-06; //SetYp
    X[5]=2.5e-06; //TT
    X[6]=0.0; //TTAA
    X[7]=0.0; //TTAAp
    X[8]=0.0; //TTW
    X[9]=0.0; //TTWAA
    X[10]=0.0; //TTWAAp
    X[11]=0.0; //TTWW
    X[12]=0.0; //TTWWAA
    X[13]=0.0; //TTWWAAp
    X[14]=5e-06; //W
    X[15]=0.0; //WAA
    X[16]=0.0; //WAAp
    X[17]=0.0; //WWAA
    X[18]=0.0; //WWAAp
    X[19]=1e-05; //Y
    X[20]=0.0; //Yp
    X[21]=2e-05; //Z

}

template <class Precision> __forceinline__ __device__ void PerThread_Finalization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
	
}


#endif
