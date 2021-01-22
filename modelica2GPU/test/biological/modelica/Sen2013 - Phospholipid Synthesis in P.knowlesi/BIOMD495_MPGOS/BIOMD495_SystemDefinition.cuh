
#ifndef BIOMD495_PERTHREAD_SYSTEMDEFINITION_H
#define BIOMD495_PERTHREAD_SYSTEMDEFINITION_H

#include <fstream>
#include <iostream>
#include <string>
#include "Functions.cuh"


template<class Precision> __forceinline__ __device__ void PerThread_OdeFunction(
	int tid, int NT, \
	Precision*    F, Precision*    X, Precision     T, \
	Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi  		
) {
    F[0]=0.0;
    F[3]=((2.32432741134546e-07 * (X[6] / (0.000102326862282225 + X[6]))) + (-5.55658410000431e-07 * (X[3] / (3.04072645117622e-05 + X[3]))));
    F[6]=0.0;
    F[8]=((4.12788404046025e-07 * (X[7] / (3.10498877738431e-05 + X[7]))) + ((0.00141678261342411 * (X[9] / (0.321125432799976 + X[9]))) + (X[8] * ((-6.97333029651601e-07 / (3.76085190209901e-06 + X[8])) + (-1.5662833197895e-06 / (2.41308392167819e-05 + X[8]))))));
    F[9]=((2.24518521682572e-06 * (X[10] / (0.000203868171233541 + X[10]))) + ((5.61352652271706e-06 * (X[4] / (0.000227368268903121 + X[4]))) + ((X[9] * ((-0.00141678261342411 / (0.321125432799976 + X[9])) + (-8.99054709659885e-05 / (0.171122974053956 + X[9])))) + (-0.00077375270429582 * (X[10] / (0.155164586398126 + X[10]))))));
    F[7]=((1.0780611108133e-06 * (X[4] / (0.000122223738254533 + X[4]))) + ((5.55658410000431e-07 * (X[3] / (3.04072645117622e-05 + X[3]))) + (-4.12788404046025e-07 * (X[7] / (3.10498877738431e-05 + X[7])))));
    F[4]=((8.620830152940421e-06 * (X[5] / (0.000108608492867695 + X[5]))) + (X[4] * ((-1.0780611108133e-06 / (0.000122223738254533 + X[4])) + (-5.61352652271706e-06 / (0.000227368268903121 + X[4])))));
    F[5]=((2.620389955953e-06 * (X[1] / (2.39591245105385e-05 + X[1]))) + ((0.0005 * X[0]) + (X[5] * (-0.000132810241970949 + (-8.620830152940421e-06 / (0.000108608492867695 + X[5]))))));
    F[10]=((1.30568052867489e-06 * (X[1] / (0.000796722533770371 + X[1]))) + ((6.97333029651601e-07 * (X[8] / (3.76085190209901e-06 + X[8]))) + ((8.99054709659885e-05 * (X[9] / (0.171122974053956 + X[9]))) + (X[10] * ((-2.24518521682572e-06 / (0.000203868171233541 + X[10])) + (-1.53754224136353e-06 / (0.000203777063277265 + X[10])))))));
    F[1]=((3.40936490738966e-06 * (X[2] / (0.000362894258752347 + X[2]))) + (X[1] * ((-1.30568052867489e-06 / (0.000796722533770371 + X[1])) + (-2.620389955953e-06 / (2.39591245105385e-05 + X[1])))));
    F[2]=0.0;

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
    X[0]=0.0; //mw08818dfe_fb12_45cc_8c1d_d965f142d0ce
    X[1]=0.0; //mw15abaa48_d7d0_4845_ae04_c573d289d495
    X[2]=0.0001; //mw73259e20_240e_4f3a_b2e0_9ca248658898
    X[3]=0.0; //mw812f63db_4cb0_40ad_b92b_9874be969dfe
    X[4]=0.0; //mw849ed3fd_87d9_44d2_9f3e_4d631b900d41
    X[5]=0.0; //mw8796c919_9251_4970_8f87_0bca9ecfeb5c
    X[6]=5e-05; //mw919f8a86_e702_4b24_9cd7_adad694fcf9b
    X[7]=0.0; //mwcb834e43_dc57_45ae_9452_f4c10955caf1
    X[8]=0.0; //mwee54b5b4_b8c0_41df_8dda_5b160c5e10a5
    X[9]=0.0; //mwf166ad55_4ff0_49fb_95d2_b657ad7653d5
    X[10]=0.0; //mwfcfaf604_14d4_47a6_b021_226d1fb5497c

}

template <class Precision> __forceinline__ __device__ void PerThread_Finalization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
	
}


#endif
