
#ifndef BIOMD576_PERTHREAD_SYSTEMDEFINITION_H
#define BIOMD576_PERTHREAD_SYSTEMDEFINITION_H

#include <fstream>
#include <iostream>
#include <string>
#include "Functions.cuh"


template<class Precision> __forceinline__ __device__ void PerThread_OdeFunction(
	int tid, int NT, \
	Precision*    F, Precision*    X, Precision     T, \
	Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi  		
) {
    ACC[1]=(X[38] + (X[24] + (X[22] + (X[16] + (X[5] + (X[15] + X[4]))))));
    ACC[0]=(X[36] + (X[40] + (X[20] + (X[41] + (X[28] + (X[12] + (X[14] + (X[11] + X[18]))))))));
    F[32]=0.0;
    F[19]=0.0;
    F[9]=0.0;
    F[6]=0.0;
    F[1]=((60.0 * (X[0] * X[30])) + (-900000.0 * X[1]));
    F[0]=((-60.0 * (X[0] * X[30])) + (900000.0 * X[1]));
    F[3]=((60.0 * (X[30] * X[2])) + (-270.0 * X[3]));
    F[2]=((-60.0 * (X[30] * X[2])) + (270.0 * X[3]));
    F[10]=0.0;
    F[30]=((1000.0 * (X[6] + (X[21] - X[30]))) + ((-60.0 * (X[30] * X[2])) + ((270.0 * X[3]) + ((-60.0 * (X[0] * X[30])) + (900000.0 * X[1])))));
    F[18]=((60.0 * (X[12] * X[27])) + (-300.0 * X[18]));
    F[11]=(60.0 * ((X[12] * X[37]) - X[11]));
    F[14]=((60.0 * (X[12] * X[39])) + (-200.0 * X[14]));
    F[4]=((60.0 * (X[23] * X[15])) - X[4]);
    F[15]=((60.0 * (X[38] * X[8])) + ((-60000.0015 * X[15]) + ((-60.0 * (X[23] * X[15])) + X[4])));
    F[12]=((60.0 * ((X[36] * X[8]) - X[12])) + ((-0.001 * X[12]) + ((-60.0 * (X[12] * X[39])) + ((200.0 * X[14]) + ((-60.0 * ((X[12] * X[37]) - X[11])) + ((-60.0 * (X[12] * X[27])) + (300.0 * X[18])))))));
    F[8]=((0.001 * X[12]) + ((60000.0015 * X[15]) + ((100.0 * (X[10] - X[8])) + ((-60.0 * ((X[36] * X[8]) + ((X[38] * X[8]) - X[12]))) - LigandDegrOld(X[25],0.00425,X[8],23000.0,X[13],15000.0,X[21],15000.0)))));
    F[5]=((60.0 * (X[23] * X[16])) - X[5]);
    F[16]=((60.0 * (X[38] * X[13])) + ((-600000.0015 * X[16]) + ((-60.0 * (X[23] * X[16])) + X[5])));
    F[13]=((600000.0015 * X[16]) + (-60.0 * (X[38] * X[13])));
    F[17]=(ptotein(0.5,X[35],X[29]) + (-0.012 * X[17]));
    F[7]=0.0;
    F[27]=((-60.0 * (X[27] * X[41])) + ((300.0 * X[28]) + ((-60.0 * (X[12] * X[27])) + (300.0 * X[18]))));
    F[28]=((60.0 * (X[27] * X[41])) + (-300.0 * X[28]));
    F[22]=((60.0 * (X[38] * X[21])) + ((-600000.0015 * X[22]) + ((-60.0 * (X[23] * X[22])) + X[24])));
    F[41]=((60.0 * (X[21] * X[36])) + ((-600.001 * X[41]) + ((-60.0 * (X[39] * X[41])) + ((200.0 * X[20]) + ((-60.0 * ((X[37] * X[41]) - X[40])) + ((-60.0 * (X[27] * X[41])) + (300.0 * X[28])))))));
    F[20]=((60.0 * (X[39] * X[41])) + (-200.0 * X[20]));
    F[24]=((60.0 * (X[23] * X[22])) - X[24]);
    F[40]=(60.0 * ((X[37] * X[41]) - X[40]));
    F[29]=(mRNA(X[31],X[27],0.000855) + (mRNA(X[31],X[28],0.005) + (mRNA(X[31],X[18],0.005) + (-0.064 * X[29]))));
    F[26]=(mRNA(X[31],X[23],0.00321) + (mRNA(X[31],X[24],0.05) + (mRNA(X[31],X[5],0.05) + (mRNA(X[31],X[4],0.05) + (-0.04 * X[26])))));
    F[25]=(ptotein(2.5,X[35],X[26]) + (-0.0015 * X[25]));
    F[23]=(X[24] + ((-60.0 * (X[23] * X[22])) + ((-60.0 * (X[23] * X[16])) + (X[5] + ((-60.0 * (X[23] * X[15])) + X[4])))));
    F[21]=((600.001 * X[41]) + ((600000.0015 * X[22]) + ((0.016 * (X[7] - X[21])) + ((1000.0 * (X[30] - X[21])) + ((-60.0 * (X[21] * (X[36] + X[38]))) - LigandDegrOld(X[25],0.083,X[21],15000.0,X[13],15000.0,X[8],23000.0))))));
    F[36]=(ptotein(19.98,X[35],X[34]) + ((-0.001 * X[36]) + ((-60.0 * (X[21] * X[36])) + ((600.0 * X[41]) + (-60.0 * ((X[36] * X[8]) - X[12]))))));
    F[34]=(mRNA(X[31],X[37],3.2e-06) + (mRNA(X[31],X[40],1.2e-06) + (mRNA(X[31],X[11],1.2e-06) + (-0.003 * X[34]))));
    F[37]=(-60.0 * ((X[37] * X[41]) + ((X[12] * X[37]) + ((-(X[11])) - X[40]))));
    F[38]=(ptotein(10.0,X[35],X[33]) + ((-0.003 * X[38]) + ((-60.0 * (X[38] * X[21])) + ((600000.0 * X[22]) + ((-60.0 * (X[38] * X[13])) + ((600000.0 * X[16]) + ((-60.0 * (X[38] * X[8])) + (60000.0 * X[15]))))))));
    F[33]=(mRNA(X[31],X[39],5.52e-05) + (mRNA(X[31],X[20],0.00011) + (mRNA(X[31],X[14],0.00011) + (-0.006 * X[33]))));
    F[39]=((-60.0 * (X[39] * X[41])) + ((200.0 * X[20]) + ((-60.0 * (X[12] * X[39])) + (200.0 * X[14]))));
    F[35]=0.0;
    F[31]=0.0;

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
    ACC[0]=80.0000237789225; //GRprotein
    ACC[1]=99.9112936972775; //PXRprotein
    X[0]=60000.0178341918; //Alb
    X[1]=0.0; //Alb_CortOUT
    X[2]=550.0001634800921; //CBG
    X[3]=0.0; //CBG_CortOUT
    X[4]=0.0; //CYPgene_PXRprot_DEX
    X[5]=2.40000071336767e-05; //CYPgene_PXRprot_Ligand2
    X[6]=0.0; //CortAdded
    X[7]=24.0000071336767; //Cortisone
    X[8]=0.0; //DEX
    X[9]=0.0; //DEX_degr
    X[10]=0.0; //DEXout
    X[11]=0.0; //GRgene_GRprot_DEX
    X[12]=0.0; //GRprot_DEX
    X[13]=100.000029723653; //Ligand2
    X[14]=0.0; //PXRgene_GRprot_DEX
    X[15]=0.0; //PXRprot_DEX
    X[16]=0.00100000029723653; //PXRprot_Ligand2
    X[17]=0.46202810387596; //TAT_PROT
    X[18]=0.0; //TATgene_GRprot_DEX
    X[19]=0.0; //s10
    X[20]=0.0500000148618265; //s109
    X[21]=1.14000033884965; //s114
    X[22]=0.0100000029723653; //s119
    X[23]=0.829760246634984; //s155
    X[24]=0.000240000071336767; //s165
    X[25]=104.000030912599; //s172
    X[26]=0.0750000222927398; //s173
    X[27]=0.8100002407615901; //s178
    X[28]=0.0200000059447306; //s183
    X[29]=0.100000029723653; //s185
    X[30]=0.0; //s2
    X[31]=1.00000029723653; //s28
    X[32]=0.0; //s30
    X[33]=0.00700000208065571; //s32
    X[34]=0.000800000237789224; //s33
    X[35]=1.00000029723653; //s36
    X[36]=47.2400140414537; //s39
    X[37]=0.500000148618265; //s40
    X[38]=99.9000296939294; //s42
    X[39]=0.780000231844494; //s46
    X[40]=0.330000098088055; //s84
    X[41]=32.3600096185741; //s87

}

template <class Precision> __forceinline__ __device__ void PerThread_Finalization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
	
}


#endif
