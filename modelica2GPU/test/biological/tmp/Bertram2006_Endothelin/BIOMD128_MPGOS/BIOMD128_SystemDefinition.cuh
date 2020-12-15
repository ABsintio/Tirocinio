
#ifndef BIOMD128_PERTHREAD_SYSTEMDEFINITION_H
#define BIOMD128_PERTHREAD_SYSTEMDEFINITION_H

#include <fstream>
#include <iostream>
#include <string>


template<class Precision> __forceinline__ __device__ void PerThread_OdeFunction(
	int tid, int NT, \
	Precision*    F, Precision*    X, Precision     T, \
	Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi  		
) {
    ACC[0]=pow(2.718281828459045,((sPAR[25] - X[2]) / sPAR[17]));
    ACC[1]=pow(2.718281828459045,((sPAR[26] - X[2]) / sPAR[18]));
    ACC[2]=pow(2.718281828459045,((sPAR[23] - X[2]) / sPAR[15]));
    ACC[6]=pow(X[3],4.0);
    ACC[7]=pow(sPAR[11],4.0);
    ACC[23]=(X[8] * (X[4] * (ACC[6] / (ACC[7] + ACC[6]))));
    ACC[16]=(sPAR[14] * (X[5] - X[3]));
    ACC[9]=(X[1] / (X[1] + sPAR[5]));
    ACC[4]=pow(ACC[9],3.0);
    ACC[17]=(sPAR[12] * X[3]);
    ACC[11]=(1.0 / (1.0 + (X[3] / sPAR[4])));
    ACC[5]=pow(ACC[11],3.0);
    ACC[8]=(1.0 / (1.0 + (sPAR[3] / X[3])));
    ACC[3]=pow(ACC[8],3.0);
    ACC[22]=(ACC[3] * (ACC[4] * ACC[5]));
    ACC[15]=(ACC[22] * (X[5] - X[3]));
    ACC[18]=(ACC[16] + (ACC[15] - ACC[17]));
    ACC[14]=(sPAR[9] * (X[9] * (X[2] - sPAR[24])));
    ACC[13]=(X[6] * (X[7] * (X[2] - sPAR[24])));
    ACC[10]=(1.0 / (1.0 + ACC[2]));
    ACC[21]=(1.0 / (1.0 + ACC[1]));
    ACC[20]=(1.0 / (1.0 + ACC[0]));
    ACC[12]=(sPAR[8] * (ACC[20] * (X[2] - sPAR[22])));
    ACC[19]=(((-(sPAR[0])) * ACC[12]) - (sPAR[10] * X[3]));
    F[0]=0.0;
    F[1]=0.0;
    F[6]=0.0;
    F[4]=(X[0] * ((sPAR[1] - X[4]) / sPAR[19]));
    F[8]=(X[0] * ((0.2 - X[8]) / sPAR[19]));
    F[5]=((-(sPAR[7])) * (sPAR[16] * ACC[18]));
    F[7]=((ACC[10] - X[7]) / sPAR[20]);
    F[9]=(sPAR[13] * ((ACC[21] - X[9]) / sPAR[21]));
    F[3]=(sPAR[6] * (ACC[18] + ACC[19]));
    F[2]=((((-(ACC[14])) - ACC[13]) - ACC[12]) / sPAR[2]);

}

template<class Precision> __forceinline__ __device__ void PerThread_EventFunction(
	int tid, int NT, Precision*	  EF, \
	Precision     T, Precision    dT, Precision*    TD, Precision*	X, \
	Precision* cPAR, Precision* sPAR, int*       sPARi, Precision* ACC, int* ACCi  		
) {
    ACC[24]=T > 60000.0;

    EF[0] = (! (ACC[24]));
}

template<class Precision> __forceinline__ __device__ void PerThread_ActionAfterEventDetection(
    int tid, int NT, int IDX, int& UDT, \
    Precision    &T, Precision   &dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR, int*       sPARi, Precision* ACC, int* ACCi
) {
    if (IDX == 0){
	    X[0]=1.0;
    }
    if (IDX == 0){
	    X[6]=3000.0;
    }
    if (IDX == 0){
	    X[1]=0.3;
    }

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
    ACC[0]=0.0; //$cse1
    ACC[1]=0.0; //$cse2
    ACC[2]=0.0; //$cse3
    ACC[3]=0.0; //$cse4
    ACC[4]=0.0; //$cse5
    ACC[5]=0.0; //$cse6
    ACC[6]=0.0; //$cse7
    ACC[7]=0.0; //$cse8
    ACC[8]=0.0; //ainf
    ACC[9]=0.0; //binf
    ACC[10]=0.0; //hinf
    ACC[11]=0.0; //hinfer
    ACC[12]=0.0; //ica
    ACC[13]=0.0; //igirk
    ACC[14]=0.0; //ik
    ACC[15]=0.0; //jerip3
    ACC[16]=0.0; //jerleak
    ACC[17]=0.0; //jerp
    ACC[18]=0.0; //jertot
    ACC[19]=0.0; //jmemtot
    ACC[20]=0.0; //minf
    ACC[21]=0.0; //ninf
    ACC[22]=0.0; //o
    ACC[23]=0.0; //perl_inf
    ACC[24]=0; //$whenCondition1
    sPAR[0]=4.5e-06; //alpha
    sPAR[1]=0.2; //cAMPlow
    sPAR[2]=5300.0; //cm
    sPAR[3]=0.35; //dact
    sPAR[4]=0.4; //dinh
    sPAR[5]=0.5; //dip3
    sPAR[6]=0.01; //f
    sPAR[7]=0.01; //fer
    sPAR[8]=2000.0; //gca
    sPAR[9]=3500.0; //gk
    sPAR[10]=0.15; //kc
    sPAR[11]=0.5; //ki
    sPAR[12]=0.4; //kserca
    sPAR[13]=1.25; //lambda
    sPAR[14]=0.0005; //perl
    sPAR[15]=70.0; //sh
    sPAR[16]=10.0; //sigmav
    sPAR[17]=12.0; //sm
    sPAR[18]=5.0; //sn
    sPAR[19]=20000.0; //taudir
    sPAR[20]=20.0; //tauh
    sPAR[21]=20.0; //taun
    sPAR[22]=25.0; //vca
    sPAR[23]=-20.0; //vh
    sPAR[24]=-75.0; //vk
    sPAR[25]=-20.0; //vm
    sPAR[26]=-16.0; //vn
    X[0]=0.0; //ETswitch
    X[1]=0.0; //IP3
    X[2]=-60.0; //V
    X[3]=0.3; //c
    X[4]=1.0; //cAMP
    X[5]=260.0; //cer
    X[6]=1000.0; //girk
    X[7]=0.0; //h
    X[8]=1.0; //inh
    X[9]=0.0; //n

}

template <class Precision> __forceinline__ __device__ void PerThread_Finalization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
	
}


#endif
