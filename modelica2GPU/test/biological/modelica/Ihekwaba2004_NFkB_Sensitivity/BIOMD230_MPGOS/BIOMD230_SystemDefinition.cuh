
#ifndef BIOMD230_PERTHREAD_SYSTEMDEFINITION_H
#define BIOMD230_PERTHREAD_SYSTEMDEFINITION_H

#include <fstream>
#include <iostream>
#include <string>


template<class Precision> __forceinline__ __device__ void PerThread_OdeFunction(
	int tid, int NT, \
	Precision*    F, Precision*    X, Precision     T, \
	Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi  		
) {
    F[24]=0.0;
    F[21]=((sPAR[26] * X[25]) - (sPAR[27] * X[21]));
    F[20]=((sPAR[18] * (X[19] * X[23])) + (((-(sPAR[19])) - sPAR[57]) * X[20]));
    F[19]=((sPAR[19] * X[20]) + ((sPAR[46] * X[17]) + (X[19] * (((-(sPAR[18])) * X[23]) - sPAR[47]))));
    F[16]=((sPAR[24] * X[25]) - (sPAR[25] * X[16]));
    F[15]=((sPAR[16] * (X[14] * X[23])) + (((-(sPAR[17])) - sPAR[53]) * X[15]));
    F[14]=((sPAR[17] * X[15]) + ((sPAR[39] * X[12]) + (X[14] * (((-(sPAR[16])) * X[23]) - sPAR[40]))));
    F[10]=((sPAR[14] * (X[9] * X[23])) + (((-(sPAR[15])) - sPAR[50]) * X[10]));
    F[9]=((sPAR[15] * X[10]) + ((sPAR[32] * X[7]) + (X[9] * (((-(sPAR[14])) * X[23]) - sPAR[33]))));
    F[23]=((sPAR[15] * X[10]) + ((sPAR[17] * X[15]) + ((sPAR[19] * X[20]) + ((sPAR[11] * X[22]) + (((((-(sPAR[13])) * X[23]) - (sPAR[14] * (X[9] * X[23]))) - (sPAR[16] * (X[14] * X[23]))) - (sPAR[18] * (X[19] * X[23])))))));
    F[11]=((sPAR[21] * pow(X[23],2.0)) + ((sPAR[20] * X[25]) - (sPAR[22] * X[11])));
    F[25]=0.0;
    F[18]=((sPAR[55] * X[6]) + ((sPAR[45] * (X[17] * X[22])) + ((sPAR[57] * X[20]) + ((((-(sPAR[56])) - sPAR[10]) * X[18]) - (sPAR[54] * (X[0] * X[18]))))));
    F[13]=((sPAR[52] * X[4]) + ((sPAR[23] * (X[12] * X[22])) + ((sPAR[53] * X[15]) + ((((-(sPAR[34])) - sPAR[9]) * X[13]) - (sPAR[51] * (X[0] * X[13]))))));
    F[8]=((sPAR[49] * X[2]) + ((sPAR[1] * (X[7] * X[22])) + ((sPAR[50] * X[10]) + ((((-(sPAR[12])) - sPAR[8]) * X[8]) - (sPAR[48] * (X[0] * X[8]))))));
    F[17]=((sPAR[42] * X[5]) + ((sPAR[56] * X[18]) + ((sPAR[47] * X[19]) + ((sPAR[43] * X[21]) + ((X[17] * (((-(sPAR[45])) * X[22]) - sPAR[46])) + (((-(sPAR[41])) * (X[0] * X[17])) - (sPAR[44] * X[17])))))));
    F[6]=((sPAR[5] * (X[5] * X[22])) + ((sPAR[54] * (X[0] * X[18])) + ((((-(sPAR[55])) - sPAR[7]) - sPAR[6]) * X[6])));
    F[5]=((sPAR[6] * X[6]) + ((sPAR[41] * (X[0] * X[17])) + (X[5] * (((-(sPAR[42])) - (sPAR[5] * X[22])) - sPAR[61]))));
    F[12]=((sPAR[36] * X[3]) + ((sPAR[34] * X[13]) + ((sPAR[40] * X[14]) + ((sPAR[37] * X[16]) + ((X[12] * (((-(sPAR[23])) * X[22]) - sPAR[39])) + (((-(sPAR[35])) * (X[0] * X[12])) - (sPAR[38] * X[12])))))));
    F[4]=((sPAR[2] * (X[3] * X[22])) + ((sPAR[51] * (X[0] * X[13])) + ((((-(sPAR[52])) - sPAR[4]) - sPAR[3]) * X[4])));
    F[3]=((sPAR[3] * X[4]) + ((sPAR[35] * (X[0] * X[12])) + (X[3] * (((-(sPAR[36])) - (sPAR[2] * X[22])) - sPAR[60]))));
    F[7]=((sPAR[29] * X[1]) + ((sPAR[12] * X[8]) + ((sPAR[33] * X[9]) + ((sPAR[30] * X[11]) + ((X[7] * (((-(sPAR[1])) * X[22]) - sPAR[32])) + (((-(sPAR[28])) * (X[0] * X[7])) - (sPAR[31] * X[7])))))));
    F[0]=((sPAR[64] * X[2]) + ((X[1] * (sPAR[59] + sPAR[29])) + ((sPAR[4] * X[4]) + ((X[3] * (sPAR[60] + sPAR[36])) + ((sPAR[7] * X[6]) + ((X[5] * (sPAR[61] + sPAR[42])) + ((sPAR[49] * X[2]) + ((sPAR[52] * X[4]) + ((sPAR[55] * X[6]) + (X[0] * ((((((((-(sPAR[54])) * X[18]) - (sPAR[51] * X[13])) - (sPAR[41] * X[17])) - (sPAR[48] * X[8])) - (sPAR[28] * X[7])) - sPAR[58]) - (sPAR[35] * X[12]))))))))))));
    F[2]=((sPAR[62] * (X[1] * X[22])) + ((sPAR[48] * (X[0] * X[8])) + ((((-(sPAR[49])) - sPAR[64]) - sPAR[63]) * X[2])));
    F[1]=((sPAR[63] * X[2]) + ((sPAR[28] * (X[0] * X[7])) + (X[1] * (((-(sPAR[29])) - (sPAR[62] * X[22])) - sPAR[59]))));
    F[22]=((X[2] * (sPAR[64] + sPAR[63])) + ((X[4] * (sPAR[4] + sPAR[3])) + ((X[6] * (sPAR[7] + sPAR[6])) + ((X[8] * (sPAR[12] + sPAR[8])) + ((X[13] * (sPAR[34] + sPAR[9])) + ((X[18] * (sPAR[56] + sPAR[10])) + ((sPAR[13] * X[23]) + ((((((((-(sPAR[11])) * X[22]) - (sPAR[2] * (X[3] * X[22]))) - (sPAR[23] * (X[12] * X[22]))) - (sPAR[5] * (X[5] * X[22]))) - (sPAR[1] * (X[7] * X[22]))) - (sPAR[62] * (X[1] * X[22]))) - (sPAR[45] * (X[17] * X[22]))))))))));

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
    sPAR[0]=1.0; //compartment
    sPAR[1]=0.5; //k1
    sPAR[2]=0.5; //k10
    sPAR[3]=0.0005; //k11
    sPAR[4]=0.0075; //k12
    sPAR[5]=0.5; //k13
    sPAR[6]=0.0005; //k14
    sPAR[7]=0.011; //k15
    sPAR[8]=2.25e-05; //k16
    sPAR[9]=2.25e-05; //k17
    sPAR[10]=2.25e-05; //k18
    sPAR[11]=0.09; //k19
    sPAR[12]=0.0005; //k2
    sPAR[13]=8.000000000000001e-05; //k20
    sPAR[14]=0.5; //k21
    sPAR[15]=0.0005; //k22
    sPAR[16]=0.5; //k23
    sPAR[17]=0.0005; //k24
    sPAR[18]=0.5; //k25
    sPAR[19]=0.0005; //k26
    sPAR[20]=1.54e-06; //k27
    sPAR[21]=0.0165; //k28
    sPAR[22]=0.00028; //k29
    sPAR[23]=0.5; //k3
    sPAR[24]=1.78e-07; //k30
    sPAR[25]=0.00028; //k31
    sPAR[26]=1.27e-07; //k32
    sPAR[27]=0.00028; //k33
    sPAR[28]=0.0225; //k34
    sPAR[29]=0.00125; //k35
    sPAR[30]=0.00408; //k36
    sPAR[31]=0.000113; //k37
    sPAR[32]=0.0003; //k38
    sPAR[33]=0.0002; //k39
    sPAR[34]=0.0005; //k4
    sPAR[35]=0.006; //k40
    sPAR[36]=0.00175; //k41
    sPAR[37]=0.00408; //k42
    sPAR[38]=0.000113; //k43
    sPAR[39]=0.00015; //k44
    sPAR[40]=0.0001; //k45
    sPAR[41]=0.008999999999999999; //k46
    sPAR[42]=0.00175; //k47
    sPAR[43]=0.00408; //k48
    sPAR[44]=0.000113; //k49
    sPAR[45]=0.5; //k5
    sPAR[46]=0.00015; //k50
    sPAR[47]=0.0001; //k51
    sPAR[48]=0.185; //k52
    sPAR[49]=0.00125; //k53
    sPAR[50]=0.0138; //k54
    sPAR[51]=0.048; //k55
    sPAR[52]=0.00175; //k56
    sPAR[53]=0.0052; //k57
    sPAR[54]=0.07000000000000001; //k58
    sPAR[55]=0.00175; //k59
    sPAR[56]=0.0005; //k6
    sPAR[57]=0.0052; //k60
    sPAR[58]=0.00012; //k61
    sPAR[59]=0.00407; //k62
    sPAR[60]=0.0015; //k63
    sPAR[61]=0.0022; //k64
    sPAR[62]=0.5; //k7
    sPAR[63]=0.0005; //k8
    sPAR[64]=0.0204; //k9
    X[0]=0.1; //IKK
    X[1]=0.0; //IKKIkBa
    X[2]=0.0; //IKKIkBaNFkB
    X[3]=0.0; //IKKIkBb
    X[4]=0.0; //IKKIkBbNFkB
    X[5]=0.0; //IKKIkBe
    X[6]=0.0; //IKKIkBeNFkB
    X[7]=0.19028; //IkBa
    X[8]=0.082062; //IkBaNFkB
    X[9]=0.19326; //IkBan
    X[10]=0.0013739; //IkBanNFkBn
    X[11]=0.0054868; //IkBat
    X[12]=0.021428; //IkBb
    X[13]=0.0090963; //IkBbNFkB
    X[14]=0.021887; //IkBbn
    X[15]=0.00030061; //IkBbnNFkBn
    X[16]=0.00063696; //IkBbt
    X[17]=0.015307; //IkBe
    X[18]=0.0064977; //IkBeNFkB
    X[19]=0.015635; //IkBen
    X[20]=0.00021473; //IkBenNFkBn
    X[21]=0.000455; //IkBet
    X[22]=0.00025081; //NFkB
    X[23]=0.00020366; //NFkBn
    X[24]=0.0; //sink
    X[25]=1.0; //source

}

template <class Precision> __forceinline__ __device__ void PerThread_Finalization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
	
}


#endif
