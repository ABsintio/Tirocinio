
#ifndef BIOMD201_PERTHREAD_SYSTEMDEFINITION_H
#define BIOMD201_PERTHREAD_SYSTEMDEFINITION_H

#include <fstream>
#include <iostream>
#include <string>


template<class Precision> __forceinline__ __device__ void PerThread_OdeFunction(
	int tid, int NT, \
	Precision*    F, Precision*    X, Precision     T, \
	Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi  		
) {
    ACC[3]=(X[21] - X[20]);
    ACC[1]=(X[7] - X[6]);
    ACC[2]=(X[19] - X[18]);
    ACC[0]=(X[11] - X[10]);
    ACC[4]=(sPAR[69] * (sPAR[5] / (sPAR[5] + X[10])));
    F[9]=0.0;
    F[11]=0.0;
    F[4]=0.0;
    F[21]=0.0;
    F[7]=0.0;
    F[19]=0.0;
    F[5]=(sPAR[40] * (sPAR[37] * ((sPAR[47] * X[13]) - (sPAR[63] * (X[5] / (sPAR[14] + X[5]))))));
    F[13]=(sPAR[40] * (sPAR[37] * ((sPAR[33] * (pow(X[20],sPAR[56]) / (pow(sPAR[9],sPAR[56]) + pow(X[20],sPAR[56])))) - (sPAR[30] * (X[13] / (sPAR[17] + X[13]))))));
    F[12]=(sPAR[58] * (sPAR[37] * (sPAR[59] + ((sPAR[60] * (pow(X[2],sPAR[54]) / (pow(sPAR[6],sPAR[54]) + pow(X[2],sPAR[54])))) + ((sPAR[61] * (pow(X[20],sPAR[53]) / (pow(sPAR[12],sPAR[53]) + pow(X[20],sPAR[53])))) - (sPAR[67] * (X[12] / (sPAR[24] + X[12]))))))));
    F[2]=((-(sPAR[58])) * (sPAR[37] * ((sPAR[52] * X[2]) - (sPAR[51] * X[1]))));
    F[8]=(sPAR[39] * (sPAR[37] * ((sPAR[48] * X[14]) - (sPAR[64] * (X[8] / (sPAR[16] + X[8]))))));
    F[17]=(sPAR[39] * (sPAR[37] * ((sPAR[49] * X[16]) - (X[17] * (sPAR[50] + (sPAR[35] / (sPAR[21] + X[17])))))));
    F[16]=(sPAR[39] * (sPAR[37] * ((sPAR[42] * (X[15] * (pow(sPAR[4],sPAR[41]) / (pow(sPAR[4],sPAR[41]) + pow(X[8],sPAR[41]))))) + ((sPAR[50] * X[17]) - (X[16] * (sPAR[49] + (sPAR[34] / (sPAR[20] + X[16]))))))));
    F[15]=(sPAR[39] * (sPAR[37] * (sPAR[70] + (X[15] * (((-(sPAR[65])) / (sPAR[19] + X[15])) - (sPAR[42] * (pow(sPAR[4],sPAR[41]) / (pow(sPAR[4],sPAR[41]) + pow(X[8],sPAR[41])))))))));
    F[20]=(sPAR[40] * (sPAR[37] * ((sPAR[29] * (X[6] * (ACC[3] / (X[7] * (sPAR[11] + ACC[3]))))) - (sPAR[32] * (X[20] / (sPAR[23] + X[20]))))));
    F[6]=(sPAR[40] * (sPAR[37] * ((sPAR[27] * (X[18] * (ACC[1] / (X[19] * (sPAR[7] + ACC[1]))))) - (sPAR[43] * (X[5] * (X[6] / (sPAR[15] + X[6])))))));
    F[18]=(sPAR[40] * (sPAR[37] * ((sPAR[28] * (pow(X[9],sPAR[57]) * (ACC[2] / ((pow(sPAR[8],sPAR[57]) + pow(X[9],sPAR[57])) * (sPAR[10] + ACC[2]))))) - (sPAR[31] * (X[18] / (sPAR[22] + X[18]))))));
    F[3]=(sPAR[58] * (sPAR[37] * ((sPAR[25] * (sPAR[3] * (X[1] * (ACC[0] / ((X[11] * (sPAR[0] + X[1])) * (sPAR[3] + X[4])))))) + (X[3] * (((-(sPAR[26])) / (sPAR[1] + X[3])) - sPAR[45])))));
    F[0]=(sPAR[58] * (sPAR[37] * ((sPAR[38] * ACC[0]) + ((sPAR[46] * X[12]) + (X[0] * (((-(sPAR[36])) * X[10]) - (sPAR[62] / (sPAR[13] + X[0]))))))));
    F[10]=(sPAR[58] * (sPAR[37] * ((sPAR[38] * ACC[0]) - (sPAR[36] * (X[0] * X[10])))));
    F[1]=(sPAR[58] * (sPAR[37] * (sPAR[68] + ((sPAR[26] * (X[3] / (sPAR[1] + X[3]))) + ((sPAR[52] * X[2]) + ((((-(sPAR[51])) - sPAR[44]) * X[1]) - (sPAR[25] * (sPAR[3] * (X[1] * (ACC[0] / (((sPAR[3] + X[4]) * (sPAR[0] + X[1])) * X[11])))))))))));
    F[14]=(sPAR[39] * (sPAR[37] * ((ACC[4] * (pow(X[17],sPAR[55]) / (pow(sPAR[2],sPAR[55]) + pow(X[17],sPAR[55])))) - (sPAR[66] * (X[14] / (sPAR[18] + X[14]))))));

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
    ACC[0]=0.0; //AK
    ACC[1]=0.0; //ERKi
    ACC[2]=0.0; //Rasi
    ACC[3]=0.0; //Xi
    ACC[4]=0.0; //vsFK
    sPAR[0]=0.28; //K1
    sPAR[1]=0.03; //K2
    sPAR[2]=0.05; //KA
    sPAR[3]=0.5; //KID
    sPAR[4]=0.5; //KIF
    sPAR[5]=2.5; //KIG1
    sPAR[6]=0.7; //KaB
    sPAR[7]=0.05; //KaErk
    sPAR[8]=0.5; //KaFgf
    sPAR[9]=0.5; //KaMDusp
    sPAR[10]=0.103; //KaRas
    sPAR[11]=0.05; //KaX
    sPAR[12]=0.05; //KaXa
    sPAR[13]=0.63; //KdAx
    sPAR[14]=0.5; //KdDusp
    sPAR[15]=0.05; //KdErk
    sPAR[16]=0.37; //KdF
    sPAR[17]=0.5; //KdMDusp
    sPAR[18]=0.768; //KdMF
    sPAR[19]=1.4; //KdN
    sPAR[20]=0.001; //KdNa
    sPAR[21]=0.001; //KdNan
    sPAR[22]=0.1; //KdRas
    sPAR[23]=0.05; //KdX
    sPAR[24]=0.48; //Kmd
    sPAR[25]=5.08; //VMK
    sPAR[26]=1.0; //VMP
    sPAR[27]=3.3; //VMaErk
    sPAR[28]=4.968; //VMaRas
    sPAR[29]=1.6; //VMaX
    sPAR[30]=0.5; //VMdMDusp
    sPAR[31]=0.41; //VMdRas
    sPAR[32]=0.5; //VMdX
    sPAR[33]=0.9; //VMsMDusp
    sPAR[34]=0.01; //VdNa
    sPAR[35]=0.1; //VdNan
    sPAR[36]=1.8; //a1
    sPAR[37]=1.0; //cytosol
    sPAR[38]=0.1; //d1
    sPAR[39]=0.3; //epsilon
    sPAR[40]=0.3; //eta
    sPAR[41]=2.0; //j
    sPAR[42]=3.45; //kc
    sPAR[43]=1.35; //kcDusp
    sPAR[44]=0.0; //kd1
    sPAR[45]=7.062; //kd2
    sPAR[46]=0.02; //ksAx
    sPAR[47]=0.5; //ksDusp
    sPAR[48]=0.3; //ksF
    sPAR[49]=0.1; //kt1
    sPAR[50]=0.1; //kt2
    sPAR[51]=0.7; //kt3
    sPAR[52]=1.5; //kt4
    sPAR[53]=2.0; //m
    sPAR[54]=2.0; //n
    sPAR[55]=2.0; //p
    sPAR[56]=2.0; //q
    sPAR[57]=2.0; //r
    sPAR[58]=1.5; //theta
    sPAR[59]=0.06; //v0
    sPAR[60]=1.64; //vMB
    sPAR[61]=0.5; //vMXa
    sPAR[62]=0.6; //vdAx
    sPAR[63]=2.0; //vdDusp
    sPAR[64]=0.39; //vdF
    sPAR[65]=2.82; //vdN
    sPAR[66]=1.92; //vmF
    sPAR[67]=0.8; //vmd
    sPAR[68]=0.08699999999999999; //vsB
    sPAR[69]=3.0; //vsF
    sPAR[70]=0.23; //vsN
    X[0]=0.1; //A
    X[1]=0.1; //B
    X[2]=0.001; //BN
    X[3]=0.1; //Bp
    X[4]=2.0; //D
    X[5]=0.1; //Dusp
    X[6]=0.2; //ERKa
    X[7]=2.0; //ERKt
    X[8]=0.001; //F
    X[9]=1.0; //Fgf
    X[10]=3.0; //K
    X[11]=3.0; //Kt
    X[12]=0.1; //MAx
    X[13]=0.1; //MDusp
    X[14]=0.1; //MF
    X[15]=0.5; //N
    X[16]=0.2; //Na
    X[17]=0.0; //Nan
    X[18]=0.5; //Rasa
    X[19]=2.0; //Rast
    X[20]=0.1; //Xa
    X[21]=2.0; //Xt

}

template <class Precision> __forceinline__ __device__ void PerThread_Finalization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
	
}


#endif
