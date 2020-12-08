
#ifndef BIOMD063_PERTHREAD_SYSTEMDEFINITION_H
#define BIOMD063_PERTHREAD_SYSTEMDEFINITION_H

#include <fstream>
#include <iostream>
#include <string>


template<class Precision> __forceinline__ __device__ void PerThread_OdeFunction(
	int tid, int NT, \
	Precision*    F, Precision*    X, Precision     T, \
	Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi  		
) {
    ACC[1]=(sPAR[24] / (sPAR[46] * (1.0 + ((sPAR[15] / X[5]) + ((sPAR[14] / X[0]) + (sPAR[18] * (sPAR[14] / (X[5] * X[0]))))))));
    ACC[0]=(sPAR[43] * (pow(X[4],sPAR[44]) / (pow(sPAR[45],sPAR[44]) + pow(X[4],sPAR[44]))));
    F[8]=((2.0 * (sPAR[27] / (1.0 + ((100.0 * (sPAR[7] / X[3])) + (((sPAR[8] / sPAR[21]) + (100.0 * (sPAR[7] * (((1.0 / (sPAR[21] * X[3])) + (sPAR[22] / ((sPAR[9] * X[3]) * sPAR[21]))) * sPAR[8])))) * (1.0 + ((0.5 * ((pow(((12.0 * X[0]) + (-3.0 * pow(X[0],2.0))),0.5) - X[0]) / sPAR[4])) + (((3.0 + ((-0.5 * (pow(((12.0 * X[0]) + (-3.0 * pow(X[0],2.0))),0.5) - X[0])) - X[0])) / sPAR[5]) + (X[0] / sPAR[6]))))))))) + (-0.5 * (sPAR[28] * (X[8] * ((pow(((12.0 * X[0]) + (-3.0 * pow(X[0],2.0))),0.5) - X[0]) * (((sPAR[38] * (1.0 + ((X[8] / sPAR[12]) + (0.5 * (((pow(((12.0 * X[0]) + (-3.0 * pow(X[0],2.0))),0.5) - X[0]) / sPAR[10]) + (sPAR[38] * (X[8] * ((pow(((12.0 * X[0]) + (-3.0 * pow(X[0],2.0))),0.5) - X[0]) / (sPAR[10] * sPAR[12]))))))))) + (0.5 * (sPAR[47] * (sPAR[20] * (pow(((1.0 + (sPAR[35] * (X[3] / sPAR[11]))) / (1.0 + (X[3] / sPAR[11]))),2.0) * (sPAR[39] * (sPAR[36] * (X[8] * (sPAR[34] * ((pow(((12.0 * X[0]) + (-3.0 * pow(X[0],2.0))),0.5) - X[0]) * ((1.0 + ((sPAR[36] * (X[8] / sPAR[12])) + (0.5 * ((sPAR[34] * ((pow(((12.0 * X[0]) + (-3.0 * pow(X[0],2.0))),0.5) - X[0]) / sPAR[10])) + (sPAR[39] * (sPAR[36] * (X[8] * (sPAR[34] * ((pow(((12.0 * X[0]) + (-3.0 * pow(X[0],2.0))),0.5) - X[0]) / (sPAR[10] * sPAR[12])))))))))) / (sPAR[12] * sPAR[10])))))))))))) / (((sPAR[12] * sPAR[10]) * (1.0 + (9.550000000000001e-09 / sPAR[41]))) * (pow((1.0 + ((X[8] / sPAR[12]) + (0.5 * (((pow(((12.0 * X[0]) + (-3.0 * pow(X[0],2.0))),0.5) - X[0]) / sPAR[10]) + (sPAR[38] * (X[8] * ((pow(((12.0 * X[0]) + (-3.0 * pow(X[0],2.0))),0.5) - X[0]) / (sPAR[10] * sPAR[12])))))))),2.0) + (sPAR[20] * pow(((1.0 + (sPAR[35] * (X[3] / sPAR[11]))) * ((1.0 + ((sPAR[36] * (X[8] / sPAR[12])) + (0.5 * ((sPAR[34] * ((pow(((12.0 * X[0]) + (-3.0 * pow(X[0],2.0))),0.5) - X[0]) / sPAR[10])) + (sPAR[39] * (sPAR[36] * (X[8] * (sPAR[34] * ((pow(((12.0 * X[0]) + (-3.0 * pow(X[0],2.0))),0.5) - X[0]) / (sPAR[12] * sPAR[10])))))))))) / (1.0 + (X[3] / sPAR[11])))),2.0))))))))));
    F[3]=((0.3 * (sPAR[26] * (sPAR[37] * (X[4] * (X[0] * ((1.0 + ((0.3 * (X[4] / sPAR[3])) + ((X[0] / sPAR[2]) + (0.3 * (sPAR[37] * (X[4] * (X[0] / (sPAR[3] * sPAR[2])))))))) / (((pow((1.0 + ((0.3 * (X[4] / sPAR[3])) + ((X[0] / sPAR[2]) + (0.3 * (sPAR[37] * (X[4] * (X[0] / (sPAR[2] * sPAR[3])))))))),2.0) + (sPAR[19] * pow(((1.0 + (sPAR[31] * ((3.0 + ((-0.5 * (pow(((12.0 * X[0]) + (-3.0 * pow(X[0],2.0))),0.5) - X[0])) - X[0])) / sPAR[1]))) * ((1.0 + ((0.3 * (sPAR[33] * (X[4] / sPAR[3]))) + ((sPAR[32] * (X[0] / sPAR[2])) + (0.3 * (sPAR[40] * (sPAR[33] * (X[4] * (sPAR[32] * (X[0] / (sPAR[3] * sPAR[2])))))))))) / (1.0 + ((3.0 + ((-0.5 * (pow(((12.0 * X[0]) + (-3.0 * pow(X[0],2.0))),0.5) - X[0])) - X[0])) / sPAR[1])))),2.0))) * sPAR[2]) * sPAR[3]))))))) + ((-0.25 * (sPAR[29] * (X[8] * ((pow(((12.0 * X[0]) + (-3.0 * pow(X[0],2.0))),0.5) - X[0]) * (((sPAR[38] * (1.0 + ((X[8] / sPAR[12]) + (0.5 * (((pow(((12.0 * X[0]) + (-3.0 * pow(X[0],2.0))),0.5) - X[0]) / sPAR[10]) + (sPAR[38] * (X[8] * ((pow(((12.0 * X[0]) + (-3.0 * pow(X[0],2.0))),0.5) - X[0]) / (sPAR[12] * sPAR[10]))))))))) + (0.5 * (sPAR[47] * (sPAR[20] * (pow(((1.0 + (sPAR[35] * (X[3] / sPAR[11]))) / (1.0 + (X[3] / sPAR[11]))),2.0) * (sPAR[39] * (sPAR[36] * (X[8] * (sPAR[34] * ((pow(((12.0 * X[0]) + (-3.0 * pow(X[0],2.0))),0.5) - X[0]) * ((1.0 + ((sPAR[36] * (X[8] / sPAR[12])) + (0.5 * ((sPAR[34] * ((pow(((12.0 * X[0]) + (-3.0 * pow(X[0],2.0))),0.5) - X[0]) / sPAR[10])) + (sPAR[39] * (sPAR[36] * (X[8] * (sPAR[34] * ((pow(((12.0 * X[0]) + (-3.0 * pow(X[0],2.0))),0.5) - X[0]) / (sPAR[12] * sPAR[10])))))))))) / (sPAR[10] * sPAR[12])))))))))))) / ((((pow((1.0 + ((X[8] / sPAR[12]) + (0.5 * (((pow(((12.0 * X[0]) + (-3.0 * pow(X[0],2.0))),0.5) - X[0]) / sPAR[10]) + (sPAR[38] * (X[8] * ((pow(((12.0 * X[0]) + (-3.0 * pow(X[0],2.0))),0.5) - X[0]) / (sPAR[12] * sPAR[10])))))))),2.0) + (sPAR[20] * pow(((1.0 + (sPAR[35] * (X[3] / sPAR[11]))) * ((1.0 + ((sPAR[36] * (X[8] / sPAR[12])) + (0.5 * ((sPAR[34] * ((pow(((12.0 * X[0]) + (-3.0 * pow(X[0],2.0))),0.5) - X[0]) / sPAR[10])) + (sPAR[39] * (sPAR[36] * (X[8] * (sPAR[34] * ((pow(((12.0 * X[0]) + (-3.0 * pow(X[0],2.0))),0.5) - X[0]) / (sPAR[10] * sPAR[12])))))))))) / (1.0 + (X[3] / sPAR[11])))),2.0))) * (1.0 + (9.550000000000001e-09 / sPAR[41]))) * sPAR[10]) * sPAR[12])))))) - (sPAR[27] / (1.0 + ((100.0 * (sPAR[7] / X[3])) + (((sPAR[8] / sPAR[21]) + (100.0 * (sPAR[7] * (((1.0 / (sPAR[21] * X[3])) + (sPAR[22] / ((sPAR[9] * X[3]) * sPAR[21]))) * sPAR[8])))) * (1.0 + ((0.5 * ((pow(((12.0 * X[0]) + (-3.0 * pow(X[0],2.0))),0.5) - X[0]) / sPAR[4])) + (((3.0 + ((-0.5 * (pow(((12.0 * X[0]) + (-3.0 * pow(X[0],2.0))),0.5) - X[0])) - X[0])) / sPAR[5]) + (X[0] / sPAR[6]))))))))));
    F[4]=((sPAR[24] / (1.0 + ((sPAR[15] / X[5]) + ((sPAR[14] / X[0]) + (sPAR[18] * (sPAR[14] / (X[0] * X[5]))))))) + ((-0.3 * (sPAR[26] * (sPAR[37] * (X[4] * (X[0] * ((1.0 + ((0.3 * (X[4] / sPAR[3])) + ((X[0] / sPAR[2]) + (0.3 * (sPAR[37] * (X[4] * (X[0] / (sPAR[2] * sPAR[3])))))))) / ((sPAR[3] * sPAR[2]) * (pow((1.0 + ((0.3 * (X[4] / sPAR[3])) + ((X[0] / sPAR[2]) + (0.3 * (sPAR[37] * (X[4] * (X[0] / (sPAR[3] * sPAR[2])))))))),2.0) + (sPAR[19] * pow(((1.0 + (sPAR[31] * ((3.0 + ((-0.5 * (pow(((12.0 * X[0]) + (-3.0 * pow(X[0],2.0))),0.5) - X[0])) - X[0])) / sPAR[1]))) * ((1.0 + ((0.3 * (sPAR[33] * (X[4] / sPAR[3]))) + ((sPAR[32] * (X[0] / sPAR[2])) + (0.3 * (sPAR[40] * (sPAR[33] * (X[4] * (sPAR[32] * (X[0] / (sPAR[2] * sPAR[3])))))))))) / (1.0 + ((3.0 + ((-0.5 * (pow(((12.0 * X[0]) + (-3.0 * pow(X[0],2.0))),0.5) - X[0])) - X[0])) / sPAR[1])))),2.0)))))))))) - (sPAR[25] * (pow(X[4],sPAR[42]) / ((1.0 + (1.428571428571429 * (sPAR[16] * (1.0 + (sPAR[17] / X[4]))))) * (pow(sPAR[0],sPAR[42]) + pow(X[4],sPAR[42])))))));
    F[0]=((2.0 * (sPAR[27] / (1.0 + ((100.0 * (sPAR[7] / X[3])) + (((sPAR[8] / sPAR[21]) + (100.0 * (sPAR[7] * (((1.0 / (sPAR[21] * X[3])) + (sPAR[22] / ((sPAR[9] * X[3]) * sPAR[21]))) * sPAR[8])))) * (1.0 + ((0.5 * ((pow(((12.0 * X[0]) + (-3.0 * pow(X[0],2.0))),0.5) - X[0]) / sPAR[4])) + (((3.0 + ((-0.5 * (pow(((12.0 * X[0]) + (-3.0 * pow(X[0],2.0))),0.5) - X[0])) - X[0])) / sPAR[5]) + (X[0] / sPAR[6]))))))))) + ((0.5 * (sPAR[28] * (X[8] * ((pow(((12.0 * X[0]) + (-3.0 * pow(X[0],2.0))),0.5) - X[0]) * (((sPAR[38] * (1.0 + ((X[8] / sPAR[12]) + (0.5 * (((pow(((12.0 * X[0]) + (-3.0 * pow(X[0],2.0))),0.5) - X[0]) / sPAR[10]) + (sPAR[38] * (X[8] * ((pow(((12.0 * X[0]) + (-3.0 * pow(X[0],2.0))),0.5) - X[0]) / (sPAR[10] * sPAR[12]))))))))) + (0.5 * (sPAR[47] * (sPAR[20] * (pow(((1.0 + (sPAR[35] * (X[3] / sPAR[11]))) / (1.0 + (X[3] / sPAR[11]))),2.0) * (sPAR[39] * (sPAR[36] * (X[8] * (sPAR[34] * ((pow(((12.0 * X[0]) + (-3.0 * pow(X[0],2.0))),0.5) - X[0]) * ((1.0 + ((sPAR[36] * (X[8] / sPAR[12])) + (0.5 * ((sPAR[34] * ((pow(((12.0 * X[0]) + (-3.0 * pow(X[0],2.0))),0.5) - X[0]) / sPAR[10])) + (sPAR[39] * (sPAR[36] * (X[8] * (sPAR[34] * ((pow(((12.0 * X[0]) + (-3.0 * pow(X[0],2.0))),0.5) - X[0]) / (sPAR[10] * sPAR[12])))))))))) / (sPAR[12] * sPAR[10])))))))))))) / (((sPAR[12] * sPAR[10]) * (1.0 + (9.550000000000001e-09 / sPAR[41]))) * (pow((1.0 + ((X[8] / sPAR[12]) + (0.5 * (((pow(((12.0 * X[0]) + (-3.0 * pow(X[0],2.0))),0.5) - X[0]) / sPAR[10]) + (sPAR[38] * (X[8] * ((pow(((12.0 * X[0]) + (-3.0 * pow(X[0],2.0))),0.5) - X[0]) / (sPAR[10] * sPAR[12])))))))),2.0) + (sPAR[20] * pow(((1.0 + (sPAR[35] * (X[3] / sPAR[11]))) * ((1.0 + ((sPAR[36] * (X[8] / sPAR[12])) + (0.5 * ((sPAR[34] * ((pow(((12.0 * X[0]) + (-3.0 * pow(X[0],2.0))),0.5) - X[0]) / sPAR[10])) + (sPAR[39] * (sPAR[36] * (X[8] * (sPAR[34] * ((pow(((12.0 * X[0]) + (-3.0 * pow(X[0],2.0))),0.5) - X[0]) / (sPAR[12] * sPAR[10])))))))))) / (1.0 + (X[3] / sPAR[11])))),2.0))))))))) + ((-0.3 * (sPAR[26] * (sPAR[37] * (X[4] * (X[0] * ((1.0 + ((0.3 * (X[4] / sPAR[3])) + ((X[0] / sPAR[2]) + (0.3 * (sPAR[37] * (X[4] * (X[0] / (sPAR[3] * sPAR[2])))))))) / (((pow((1.0 + ((0.3 * (X[4] / sPAR[3])) + ((X[0] / sPAR[2]) + (0.3 * (sPAR[37] * (X[4] * (X[0] / (sPAR[2] * sPAR[3])))))))),2.0) + (sPAR[19] * pow(((1.0 + (sPAR[31] * ((3.0 + ((-0.5 * (pow(((12.0 * X[0]) + (-3.0 * pow(X[0],2.0))),0.5) - X[0])) - X[0])) / sPAR[1]))) * ((1.0 + ((0.3 * (sPAR[33] * (X[4] / sPAR[3]))) + ((sPAR[32] * (X[0] / sPAR[2])) + (0.3 * (sPAR[40] * (sPAR[33] * (X[4] * (sPAR[32] * (X[0] / (sPAR[3] * sPAR[2])))))))))) / (1.0 + ((3.0 + ((-0.5 * (pow(((12.0 * X[0]) + (-3.0 * pow(X[0],2.0))),0.5) - X[0])) - X[0])) / sPAR[1])))),2.0))) * sPAR[2]) * sPAR[3]))))))) + ((((-(sPAR[25])) * (pow(X[4],sPAR[42]) / ((pow(sPAR[0],sPAR[42]) + pow(X[4],sPAR[42])) * (1.0 + (1.428571428571429 * (sPAR[16] * (1.0 + (sPAR[17] / X[4])))))))) - (sPAR[24] / (1.0 + ((sPAR[15] / X[5]) + ((sPAR[14] / X[0]) + (sPAR[18] * (sPAR[14] / (X[0] * X[5])))))))) - (sPAR[30] * X[0])))));
    F[5]=(sPAR[23] + (((-(sPAR[13])) * X[4]) - (sPAR[24] / (1.0 + ((sPAR[15] / X[5]) + ((sPAR[14] / X[0]) + (sPAR[18] * (sPAR[14] / (X[5] * X[0])))))))));
    F[7]=0.0;
    F[2]=0.0;
    F[1]=0.0;
    F[6]=0.0;

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
    ACC[0]=0.0; //VappGly
    ACC[1]=0.0; //VratioVmax
    sPAR[0]=2.0; //K3Gly
    sPAR[1]=0.025; //K4AMP
    sPAR[2]=0.06; //K4ATP
    sPAR[3]=1.0; //K4F6P
    sPAR[4]=1.5; //K5ADP
    sPAR[5]=1.1; //K5AMP
    sPAR[6]=2.5; //K5ATP
    sPAR[7]=0.003; //K5G3P
    sPAR[8]=0.18; //K5NAD
    sPAR[9]=0.0003; //K5NADH
    sPAR[10]=5.0; //K6ADP
    sPAR[11]=0.2; //K6FDP
    sPAR[12]=0.008; //K6PEP
    sPAR[13]=3.7; //Ki1G6P
    sPAR[14]=0.1; //Km2ATP
    sPAR[15]=0.11; //Km2Glc
    sPAR[16]=1.0; //Km30
    sPAR[17]=1.1; //Km3G6P
    sPAR[18]=0.006; //Ks2Glc
    sPAR[19]=3342.0; //L40
    sPAR[20]=164.084; //L60
    sPAR[21]=1.919; //NAD
    sPAR[22]=0.081; //NADH
    sPAR[23]=19.7; //Vm1
    sPAR[24]=68.5; //Vm2
    sPAR[25]=14.31; //Vm3
    sPAR[26]=31.7; //Vm4
    sPAR[27]=49.9; //Vm5
    sPAR[28]=3440.0; //Vm6
    sPAR[29]=203.0; //Vm7
    sPAR[30]=25.1; //Vm8
    sPAR[31]=0.019; //c4AMP
    sPAR[32]=1.0; //c4ATP
    sPAR[33]=0.0005; //c4F6P
    sPAR[34]=1.0; //c6ADP
    sPAR[35]=0.01; //c6FDP
    sPAR[36]=0.000158793; //c6PEP
    sPAR[37]=10.0; //g4R
    sPAR[38]=0.1; //g6R
    sPAR[39]=1.0; //g6T
    sPAR[40]=1.0; //gT
    sPAR[41]=1.14815e-07; //h6
    sPAR[42]=8.25; //n3
    sPAR[43]=14.31; //parameter_4
    sPAR[44]=8.25; //parameter_5
    sPAR[45]=2.0; //parameter_6
    sPAR[46]=68.5; //parameter_7
    sPAR[47]=1.0; //q6
    X[0]=1.19; //ATP
    X[1]=0.0; //Carbo
    X[2]=0.0; //EtOH
    X[3]=9.144; //FDP
    X[4]=0.0; //G6P
    X[5]=0.0345; //Glci
    X[6]=1.0; //Glco
    X[7]=0.0; //Gly
    X[8]=0.0095; //PEP

}

template <class Precision> __forceinline__ __device__ void PerThread_Finalization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
	
}


#endif
