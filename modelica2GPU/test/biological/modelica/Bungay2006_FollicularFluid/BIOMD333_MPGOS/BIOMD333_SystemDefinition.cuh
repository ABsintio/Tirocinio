
#ifndef BIOMD333_PERTHREAD_SYSTEMDEFINITION_H
#define BIOMD333_PERTHREAD_SYSTEMDEFINITION_H

#include <fstream>
#include <iostream>
#include <string>


template<class Precision> __forceinline__ __device__ void PerThread_OdeFunction(
	int tid, int NT, \
	Precision*    F, Precision*    X, Precision     T, \
	Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi  		
) {
    F[49]=(sPAR[0] * (sPAR[48] * (X[50] * X[46])));
    F[48]=(sPAR[0] * (sPAR[47] * (X[50] * X[10])));
    F[50]=((-(sPAR[0])) * (X[50] * ((sPAR[47] * X[10]) + (sPAR[48] * X[46]))));
    F[11]=((100.0 * (sPAR[0] * ((sPAR[21] * X[45]) + ((sPAR[52] * X[6]) + ((sPAR[62] * X[53]) + ((sPAR[55] * X[34]) + ((sPAR[58] * X[37]) + ((sPAR[56] * X[28]) + ((sPAR[57] * X[30]) + ((sPAR[60] * X[41]) + ((((((((-(sPAR[69])) * (X[29] * (X[11] / sPAR[75]))) - (sPAR[70] * (X[36] * (X[11] / sPAR[75])))) - (sPAR[74] * (X[52] * (X[11] / sPAR[75])))) - (sPAR[64] * (X[5] * (X[11] / sPAR[75])))) - (sPAR[67] * (X[33] * (X[11] / sPAR[75])))) - (sPAR[72] * (X[40] * (X[11] / sPAR[75])))) - (sPAR[68] * (X[27] * (X[11] / sPAR[75])))))))))))))) + ((-100.0 * (sPAR[73] * (X[46] * (X[11] / sPAR[75])))) + ((sPAR[61] * X[47]) + (-100.0 * (sPAR[0] * ((sPAR[63] * (X[2] * (X[11] / sPAR[75]))) + ((sPAR[66] * (X[14] * (X[11] / sPAR[75]))) + ((sPAR[71] * (X[38] * (X[11] / sPAR[75]))) + ((sPAR[65] * (X[12] * (X[11] / sPAR[75]))) + (((((-(sPAR[51])) * X[3]) - (sPAR[59] * X[39])) - (sPAR[54] * X[15])) - (sPAR[53] * X[13])))))))))));
    F[51]=(sPAR[0] * (sPAR[43] * (X[52] * X[4])));
    F[8]=(sPAR[0] * ((sPAR[40] * (X[9] * X[13])) + (((-(sPAR[41])) - sPAR[42]) * X[8])));
    F[9]=(sPAR[0] * ((sPAR[38] * (X[10] * X[25])) + ((sPAR[42] * X[8]) + ((sPAR[41] * X[8]) + (X[9] * (((-(sPAR[40])) * X[13]) - sPAR[39]))))));
    F[25]=(sPAR[0] * ((sPAR[39] * X[9]) - (sPAR[38] * (X[10] * X[25]))));
    F[35]=(sPAR[0] * ((sPAR[35] * (X[34] * X[53])) + (((-(sPAR[36])) - sPAR[37]) * X[35])));
    F[26]=(sPAR[0] * ((sPAR[22] * (X[28] * X[47])) + (((-(sPAR[24])) - sPAR[25]) * X[26])));
    F[42]=(sPAR[0] * (sPAR[33] * (X[46] * X[4])));
    F[0]=(sPAR[0] * ((sPAR[26] * (X[1] * X[37])) + (((-(sPAR[27])) - sPAR[28]) * X[0])));
    F[16]=(sPAR[0] * ((sPAR[31] * (X[17] * X[23])) - (sPAR[32] * X[16])));
    F[17]=(sPAR[0] * ((sPAR[29] * (X[18] * X[46])) + ((sPAR[32] * X[16]) + (X[17] * (((-(sPAR[31])) * X[23]) - sPAR[30])))));
    F[7]=(sPAR[0] * (sPAR[34] * (X[10] * X[4])));
    F[4]=((-(sPAR[0])) * ((sPAR[33] * (X[46] * X[4])) + ((sPAR[34] * (X[10] * X[4])) + (sPAR[43] * (X[52] * X[4])))));
    F[18]=(sPAR[0] * ((sPAR[30] * X[17]) - (sPAR[29] * (X[18] * X[46]))));
    F[1]=(sPAR[0] * ((sPAR[28] * X[0]) + ((sPAR[44] * (X[3] * X[15])) + ((sPAR[27] * X[0]) + (X[1] * (((-(sPAR[26])) * X[37]) - sPAR[45]))))));
    F[45]=(sPAR[0] * ((sPAR[18] * (X[44] * X[53])) + ((sPAR[20] * X[43]) + (((-(sPAR[19])) - sPAR[21]) * X[45]))));
    F[43]=(sPAR[0] * ((sPAR[16] * (X[44] * X[6])) + (((-(sPAR[17])) - sPAR[20]) * X[43])));
    F[31]=(sPAR[0] * ((sPAR[12] * (X[34] * X[10])) + (((-(sPAR[13])) - sPAR[14]) * X[31])));
    F[10]=(sPAR[0] * ((sPAR[14] * X[31]) + ((sPAR[21] * X[45]) + ((sPAR[13] * X[31]) + ((sPAR[39] * X[9]) + ((X[10] * (((-(sPAR[34])) * X[4]) - (sPAR[38] * X[25]))) + (((-(sPAR[47])) * (X[50] * X[10])) - (sPAR[12] * (X[34] * X[10])))))))));
    F[32]=(sPAR[0] * ((sPAR[9] * (X[34] * X[47])) + (((-(sPAR[10])) - sPAR[11]) * X[32])));
    F[44]=(sPAR[0] * ((sPAR[6] * (X[47] * X[37])) + ((sPAR[21] * X[45]) + ((sPAR[17] * X[43]) + ((sPAR[19] * X[45]) + (((-(X[44])) * (sPAR[7] + (sPAR[16] * X[6]))) - (sPAR[18] * (X[44] * X[53]))))))));
    F[19]=(sPAR[0] * ((sPAR[3] * (X[20] * X[47])) + (((-(sPAR[4])) - sPAR[5]) * X[19])));
    F[22]=(sPAR[0] * ((sPAR[2] * X[21]) - (sPAR[46] * X[22])));
    F[21]=(sPAR[0] * ((sPAR[49] * (X[23] * X[41])) + (((-(sPAR[50])) - sPAR[2]) * X[21])));
    F[20]=(sPAR[0] * ((sPAR[15] * (X[24] * X[28])) + ((sPAR[4] * X[19]) + (X[20] * (((-(sPAR[3])) * X[47]) - sPAR[23])))));
    F[23]=(sPAR[0] * ((sPAR[1] * (X[24] * X[30])) + ((sPAR[46] * X[22]) + ((sPAR[5] * X[19]) + ((sPAR[50] * X[21]) + ((sPAR[32] * X[16]) + (((-(X[23])) * (sPAR[8] + (sPAR[49] * X[41]))) - (sPAR[31] * (X[17] * X[23])))))))));
    F[24]=((-(sPAR[0])) * ((sPAR[1] * (X[24] * X[30])) + ((sPAR[15] * (X[24] * X[28])) + (((-(sPAR[23])) * X[20]) - (sPAR[8] * X[23])))));
    F[13]=(sPAR[0] * ((sPAR[65] * (X[12] * (X[11] / sPAR[75]))) + ((sPAR[41] * X[8]) + (((-(sPAR[40])) * (X[9] * X[13])) - (sPAR[53] * X[13])))));
    F[12]=(sPAR[0] * ((sPAR[53] * X[13]) - (sPAR[65] * (X[12] * (X[11] / sPAR[75])))));
    F[39]=(sPAR[0] * ((sPAR[71] * (X[38] * (X[11] / sPAR[75]))) + ((sPAR[28] * X[0]) - (sPAR[59] * X[39]))));
    F[38]=(sPAR[0] * ((sPAR[59] * X[39]) - (sPAR[71] * (X[38] * (X[11] / sPAR[75])))));
    F[15]=(sPAR[0] * ((sPAR[66] * (X[14] * (X[11] / sPAR[75]))) + ((sPAR[45] * X[1]) + (((-(sPAR[44])) * (X[3] * X[15])) - (sPAR[54] * X[15])))));
    F[14]=(sPAR[0] * ((sPAR[54] * X[15]) - (sPAR[66] * (X[14] * (X[11] / sPAR[75])))));
    F[3]=(sPAR[0] * ((sPAR[63] * (X[2] * (X[11] / sPAR[75]))) + ((sPAR[42] * X[8]) + ((sPAR[45] * X[1]) + (X[3] * (((-(sPAR[44])) * X[15]) - sPAR[51]))))));
    F[2]=(sPAR[0] * ((sPAR[51] * X[3]) - (sPAR[63] * (X[2] * (X[11] / sPAR[75])))));
    F[47]=((sPAR[73] * (X[46] * (X[11] / sPAR[75]))) + ((sPAR[0] * (sPAR[46] * X[22])) + ((sPAR[0] * (sPAR[5] * X[19])) + ((sPAR[0] * (sPAR[11] * X[32])) + ((sPAR[0] * (sPAR[25] * X[26])) + ((sPAR[0] * ((sPAR[4] * X[19]) - (sPAR[3] * (X[20] * X[47])))) + ((sPAR[0] * ((sPAR[7] * X[44]) - (sPAR[6] * (X[47] * X[37])))) + ((sPAR[0] * ((sPAR[10] * X[32]) - (sPAR[9] * (X[34] * X[47])))) + ((sPAR[0] * ((sPAR[24] * X[26]) - (sPAR[22] * (X[28] * X[47])))) - (sPAR[61] * X[47]))))))))));
    F[46]=((sPAR[61] * X[47]) + ((sPAR[0] * ((sPAR[30] * X[17]) - (sPAR[29] * (X[18] * X[46])))) + (((-(sPAR[0])) * ((sPAR[33] * (X[46] * X[4])) + (sPAR[48] * (X[50] * X[46])))) - (sPAR[73] * (X[46] * (X[11] / sPAR[75]))))));
    F[41]=(sPAR[0] * ((sPAR[72] * (X[40] * (X[11] / sPAR[75]))) + ((sPAR[50] * X[21]) + (((-(sPAR[49])) * (X[23] * X[41])) - (sPAR[60] * X[41])))));
    F[40]=(sPAR[0] * ((sPAR[60] * X[41]) - (sPAR[72] * (X[40] * (X[11] / sPAR[75])))));
    F[30]=(sPAR[0] * ((sPAR[69] * (X[29] * (X[11] / sPAR[75]))) + ((sPAR[25] * X[26]) + ((sPAR[8] * X[23]) + (((-(sPAR[1])) * (X[24] * X[30])) - (sPAR[57] * X[30]))))));
    F[29]=(sPAR[0] * ((sPAR[57] * X[30]) - (sPAR[69] * (X[29] * (X[11] / sPAR[75])))));
    F[28]=(sPAR[0] * ((sPAR[68] * (X[27] * (X[11] / sPAR[75]))) + ((sPAR[23] * X[20]) + ((sPAR[24] * X[26]) + ((((-(sPAR[15])) * (X[24] * X[28])) - (sPAR[22] * (X[28] * X[47]))) - (sPAR[56] * X[28]))))));
    F[27]=(sPAR[0] * ((sPAR[56] * X[28]) - (sPAR[68] * (X[27] * (X[11] / sPAR[75])))));
    F[37]=(sPAR[0] * ((sPAR[70] * (X[36] * (X[11] / sPAR[75]))) + ((sPAR[11] * X[32]) + ((sPAR[14] * X[31]) + ((sPAR[37] * X[35]) + ((sPAR[7] * X[44]) + ((sPAR[27] * X[0]) + ((((-(sPAR[6])) * (X[47] * X[37])) - (sPAR[26] * (X[1] * X[37]))) - (sPAR[58] * X[37])))))))));
    F[36]=(sPAR[0] * ((sPAR[58] * X[37]) - (sPAR[70] * (X[36] * (X[11] / sPAR[75])))));
    F[34]=(sPAR[0] * ((sPAR[67] * (X[33] * (X[11] / sPAR[75]))) + ((sPAR[10] * X[32]) + ((sPAR[13] * X[31]) + ((sPAR[36] * X[35]) + (X[34] * ((((-(sPAR[9])) * X[47]) - (sPAR[35] * X[53])) - (sPAR[55] + (sPAR[12] * X[10])))))))));
    F[33]=(sPAR[0] * ((sPAR[55] * X[34]) - (sPAR[67] * (X[33] * (X[11] / sPAR[75])))));
    F[53]=(sPAR[0] * ((sPAR[74] * (X[52] * (X[11] / sPAR[75]))) + ((sPAR[37] * X[35]) + ((sPAR[19] * X[45]) + ((sPAR[36] * X[35]) + ((((-(sPAR[18])) * (X[44] * X[53])) - (sPAR[35] * (X[34] * X[53]))) - (sPAR[62] * X[53])))))));
    F[52]=((-(sPAR[0])) * ((sPAR[74] * (X[52] * (X[11] / sPAR[75]))) + ((sPAR[43] * (X[52] * X[4])) - (sPAR[62] * X[53]))));
    F[6]=(sPAR[0] * ((sPAR[64] * (X[5] * (X[11] / sPAR[75]))) + ((sPAR[17] * X[43]) + (((-(sPAR[16])) * (X[44] * X[6])) - (sPAR[52] * X[6])))));
    F[5]=(sPAR[0] * ((sPAR[52] * X[6]) - (sPAR[64] * (X[5] * (X[11] / sPAR[75])))));

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
    sPAR[2]=1.5; //k10
    sPAR[3]=0.05; //k11
    sPAR[4]=44.8; //k12
    sPAR[5]=15.2; //k13
    sPAR[6]=1.0; //k16
    sPAR[7]=1.0; //k17
    sPAR[8]=0.005; //k2
    sPAR[9]=0.1; //k21
    sPAR[10]=1.0; //k22
    sPAR[11]=0.043; //k23
    sPAR[12]=0.1; //k27
    sPAR[13]=6.94; //k28
    sPAR[14]=0.23; //k29
    sPAR[15]=0.005; //k3
    sPAR[16]=0.1; //k33
    sPAR[17]=100.0; //k34
    sPAR[18]=0.1; //k35
    sPAR[19]=66.0; //k36
    sPAR[20]=13.0; //k37
    sPAR[21]=15.0; //k38
    sPAR[22]=0.05; //k39
    sPAR[23]=0.005; //k4
    sPAR[24]=44.8; //k40
    sPAR[25]=15.2; //k41
    sPAR[26]=0.1; //k48
    sPAR[27]=1.6; //k49
    sPAR[28]=0.4; //k50
    sPAR[29]=0.016; //k51
    sPAR[30]=0.00033; //k52
    sPAR[31]=0.01; //k53
    sPAR[32]=0.0011; //k54
    sPAR[33]=2.3e-06; //k56
    sPAR[34]=6.83e-06; //k57
    sPAR[35]=0.1; //k58
    sPAR[36]=6.94; //k59
    sPAR[37]=1.035; //k60
    sPAR[38]=1.0; //k64
    sPAR[39]=0.5; //k65
    sPAR[40]=0.1; //k66
    sPAR[41]=6.4; //k67
    sPAR[42]=3.6; //k68
    sPAR[43]=6.83e-06; //k69
    sPAR[44]=0.1; //k70
    sPAR[45]=0.5; //k71
    sPAR[46]=1.0; //k75
    sPAR[47]=2.5e-06; //k77
    sPAR[48]=1.4e-06; //k78
    sPAR[49]=0.1; //k8
    sPAR[50]=32.5; //k9
    sPAR[51]=3.5; //koffAPC
    sPAR[52]=1.0; //koffII
    sPAR[53]=11.5; //koffPC
    sPAR[54]=0.2; //koffPS
    sPAR[55]=0.145; //koffV
    sPAR[56]=0.66; //koffVII
    sPAR[57]=0.227; //koffVIIa
    sPAR[58]=0.17; //koffVa
    sPAR[59]=0.17; //koffVai
    sPAR[60]=1.9; //koffX
    sPAR[61]=3.3; //koffXa
    sPAR[62]=0.475; //koffmIIa
    sPAR[63]=0.05; //konAPC
    sPAR[64]=0.0043; //konII
    sPAR[65]=0.05; //konPC
    sPAR[66]=0.05; //konPS
    sPAR[67]=0.05; //konV
    sPAR[68]=0.05; //konVII
    sPAR[69]=0.05; //konVIIa
    sPAR[70]=0.057; //konVa
    sPAR[71]=0.057; //konVai
    sPAR[72]=0.01; //konX
    sPAR[73]=0.029; //konXa
    sPAR[74]=0.05; //konmIIa
    sPAR[75]=100.0; //nva
    X[0]=0.0; //APC_PS_Va_l
    X[1]=0.0; //APC_PS_l
    X[2]=0.0; //APC_f
    X[3]=0.0; //APC_l
    X[4]=4721.0; //AT_f
    X[5]=1174.5; //II_f
    X[6]=0.0; //II_l
    X[7]=0.0; //IIa_AT_f
    X[8]=0.0; //IIa_TM_PC_l
    X[9]=0.0; //IIa_TM_l
    X[10]=0.0; //IIa_f
    X[11]=170000.0; //LIPID
    X[12]=66.0; //PC_f
    X[13]=0.0; //PC_l
    X[14]=116.0; //PS_f
    X[15]=0.0; //PS_l
    X[16]=0.0; //TFPI_Xa_TF_VIIa_l
    X[17]=0.0; //TFPI_Xa_l
    X[18]=12.3; //TFPI_f
    X[19]=0.0; //TF_VII_Xa_l
    X[20]=0.0; //TF_VII_l
    X[21]=0.0; //TF_VIIa_X_l
    X[22]=0.0; //TF_VIIa_Xa_l
    X[23]=0.0; //TF_VIIa_l
    X[24]=0.0182; //TF_l
    X[25]=1.0; //TM_l
    X[26]=0.0; //VII_Xa_l
    X[27]=7.6; //VII_f
    X[28]=0.0; //VII_l
    X[29]=0.1; //VIIa_f
    X[30]=0.0; //VIIa_l
    X[31]=0.0; //V_IIa_l
    X[32]=0.0; //V_Xa_l
    X[33]=1.75; //V_f
    X[34]=0.0; //V_l
    X[35]=0.0; //V_mIIa_l
    X[36]=0.0; //Va_f
    X[37]=0.0; //Va_l
    X[38]=0.0; //Vai_f
    X[39]=0.0; //Vai_l
    X[40]=142.85; //X_f
    X[41]=0.0; //X_l
    X[42]=0.0; //Xa_AT_f
    X[43]=0.0; //Xa_Va_II_l
    X[44]=0.0; //Xa_Va_l
    X[45]=0.0; //Xa_Va_mIIa_l
    X[46]=0.0; //Xa_f
    X[47]=0.0; //Xa_l
    X[48]=0.0; //alpha2M_IIa_l
    X[49]=0.0; //alpha2M_Xa_l
    X[50]=364.0; //alpha2M_l
    X[51]=0.0; //mIIa_AT_l
    X[52]=0.0; //mIIa_f
    X[53]=0.0; //mIIa_l

}

template <class Precision> __forceinline__ __device__ void PerThread_Finalization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
	
}


#endif
