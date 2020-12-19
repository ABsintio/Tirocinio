
#ifndef BIOMD320_PERTHREAD_SYSTEMDEFINITION_H
#define BIOMD320_PERTHREAD_SYSTEMDEFINITION_H

#include <fstream>
#include <iostream>
#include <string>


template<class Precision> __forceinline__ __device__ void PerThread_OdeFunction(
	int tid, int NT, \
	Precision*    F, Precision*    X, Precision     T, \
	Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi  		
) {
    ACC[1]=(sPAR[8] * sPAR[19]);
    ACC[2]=(sPAR[8] * sPAR[20]);
    ACC[8]=(1.0 - (sPAR[19] + sPAR[20]));
    ACC[5]=(sPAR[8] * ACC[8]);
    ACC[0]=(ACC[1] / (1.0 + (X[4] / sPAR[27])));
    ACC[4]=(ACC[0] + (ACC[5] + ACC[2]));
    ACC[3]=(sPAR[21] * ACC[4]);
    ACC[6]=(1.0 - (ACC[3] / sPAR[12]));
    ACC[7]=(ACC[6] * sPAR[10]);
    F[8]=((sPAR[26] * (X[2] * ACC[7])) + ((((-(ACC[5])) - ACC[0]) - ACC[2]) * X[8]));
    F[7]=((ACC[2] * X[8]) - (sPAR[5] * X[7]));
    F[2]=((-(sPAR[26])) * X[2]);
    F[0]=((-(sPAR[24])) * X[0]);
    F[1]=((-(sPAR[25])) * X[1]);
    F[4]=((sPAR[25] * X[1]) + ((sPAR[22] * (sPAR[3] * (X[3] / (1.0 - sPAR[22])))) + ((sPAR[7] * (X[6] - X[4])) - (sPAR[4] * X[4]))));
    F[6]=(sPAR[7] * (X[4] - X[6]));
    F[3]=((sPAR[24] * (X[0] * sPAR[9])) + ((sPAR[6] * (X[5] - X[3])) + (sPAR[3] * (((-(sPAR[22])) * (X[3] / (1.0 - sPAR[22]))) - X[3]))));
    F[5]=(sPAR[6] * (X[3] - X[5]));

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
    ACC[0]=0.0; //CL_AADC
    ACC[1]=0.0; //CL_AADC0
    ACC[2]=0.0; //CL_COMT
    ACC[3]=0.0; //CL_H
    ACC[4]=0.0; //CL_dopa
    ACC[5]=0.0; //CL_rest
    ACC[6]=0.0; //F_H
    ACC[7]=0.0; //F_c
    ACC[8]=0.0; //f_rest
    sPAR[2]=78.0; //Benserazide_per_kg_rat
    sPAR[28]=0.25; //rat_body_mass
    sPAR[0]=sPAR[2]*sPAR[28]; //A_bens_tot, aggiunto a mano non presenta nell'XML
    sPAR[1]=0.07000000000000001; //B_M_frac
    sPAR[3]=1.67; //CL_B
    sPAR[4]=4.29; //CL_M
    sPAR[5]=0.00895; //CL_OMD
    sPAR[6]=0.07199999999999999; //CL_dB
    sPAR[7]=1.06; //CL_dM
    sPAR[8]=0.823; //CL_dopa0
    sPAR[9]=0.022; //F_B
    sPAR[10]=1.0; //F_G
    sPAR[11]=404.0; //L_Dopa_per_kg_rat
    sPAR[12]=0.828; //Q
    sPAR[13]=1.0; //V1_B
    sPAR[14]=1.0; //V1_M
    sPAR[15]=1.0; //V2_B
    sPAR[16]=1.0; //V2_M
    sPAR[17]=1.0; //V_3_OMD
    sPAR[18]=1.0; //Vdopa
    sPAR[19]=0.6899999999999999; //f_AADC
    sPAR[20]=0.1; //f_COMT
    sPAR[21]=0.13; //f_H
    sPAR[22]=0.15; //fm
    sPAR[23]=1.0; //gut
    sPAR[24]=0.9399999999999999; //ka_B
    sPAR[25]=2.47; //ka_M
    sPAR[26]=1.29; //ka_c
    sPAR[27]=0.00246; //ki
    X[0]=(sPAR[0] * (1.0 - sPAR[1])); //A_B
    X[1]=(sPAR[0] * sPAR[1]); //A_M
    X[2]=(sPAR[11] * sPAR[28]); //A_dopa
    X[3]=0.0; //C1_B
    X[4]=0.0; //C1_M
    X[5]=0.0; //C2_B
    X[6]=0.0; //C2_M
    X[7]=0.0; //C_OMD
    X[8]=0.0; //C_dopa

}

template <class Precision> __forceinline__ __device__ void PerThread_Finalization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
	
}


#endif
