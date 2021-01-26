
#ifndef BIOMD541_PERTHREAD_SYSTEMDEFINITION_H
#define BIOMD541_PERTHREAD_SYSTEMDEFINITION_H

#include <fstream>
#include <iostream>
#include <string>
#include "Functions.cuh"


template<class Precision> __forceinline__ __device__ void PerThread_OdeFunction(
	int tid, int NT, \
	Precision*    F, Precision*    X, Precision     T, \
	Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi  		
) {
    ACC[0]=X[27];
    F[3]=0.0;
    F[1]=0.0;
    F[2]=0.0;
    F[4]=0.0;
    F[6]=0.0;
    F[0]=0.0;
    F[5]=0.0;
    F[36]=(0.00792717614041237 * X[22]);
    F[35]=(1.00277786609339e-05 * X[23]);
    F[34]=(0.09489603283856191 * X[24]);
    F[33]=((0.00105342379833469 * ((X[32] - X[33]) * X[29])) + (-0.00145811601430322 * X[33]));
    F[32]=0.0;
    F[31]=((0.00752464611370891 * ((X[30] - X[31]) * X[29])) + (-1.95497593092361 * (X[31] * X[33])));
    F[30]=0.0;
    F[29]=((0.419682384304397 * ((X[28] - X[29]) * X[26])) + (-0.124330492920416 * X[29]));
    F[28]=0.0;
    F[26]=((0.009195789113097741 * ((X[25] - X[26]) * X[22])) + (-7.70618517548016 * X[26]));
    F[25]=0.0;
    F[24]=((0.363030286526969 * X[23]) + ((-0.7874499201946759 * X[24]) + (3.88248960751442e-05 * (X[22] * X[29]))));
    F[23]=((9.93311225447353 * (X[20] * X[29])) + ((-0.3630503143056582 * X[23]) + (0.408127912886804 * X[24])));
    F[22]=((7.78160761103111 * X[20]) + ((-1.619402413931592 * X[22]) + ((0.28442597446931 * X[24]) + (-3.88248960751442e-05 * (X[22] * X[29])))));
    F[21]=0.0;
    F[20]=((0.0477985900779305 * (X[21] - X[20])) + ((1.00000000282413e-05 * X[23]) + ((-7.78160761103111 * X[20]) + ((1.61147523779118 * X[22]) + (-9.93311225447353 * (X[20] * X[29]))))));
    F[17]=(-(X[1]));
    F[19]=(-(X[3]));
    F[16]=(-(X[2]));
    F[15]=(-(X[4]));
    F[14]=(-(X[6]));
    F[13]=(-(X[0]));
    F[12]=(-(X[5]));
    F[11]=((26.8316707654711 * ((X[7] - X[11]) * X[31])) + (-0.0166525139097609 * X[11]));
    F[9]=(0.008187906 * X[37]);
    F[8]=X[1];
    F[42]=X[2];
    F[41]=X[5];
    F[40]=X[0];
    F[39]=X[4];
    F[38]=X[6];
    F[27]=X[3];
    F[7]=0.0;
    F[37]=((7639619404816908.0 * (X[42] * (X[11] * (ACC[0] / ((((((((0.014114844 + ACC[0]) * (9.544729149 + X[41])) * (41.30426029 + X[8])) * (24661.01154 + X[40])) * (1.282443082 + X[42])) * (0.633518366 + X[38])) * (1784.508205 + X[39])) * (6.283705757 + X[11])))))) + ((-173.9983358564925 * (X[8] * (X[37] / (((0.104089638 + X[37]) * (17.51744342 + X[42])) * (0.0211646 + X[8]))))) + (-0.008187906 * X[37])));
    F[10]=0.0;
    F[18]=0.0;

}

template<class Precision> __forceinline__ __device__ void PerThread_EventFunction(
	int tid, int NT, Precision*	  EF, \
	Precision     T, Precision    dT, Precision*    TD, Precision*	X, \
	Precision* cPAR, Precision* sPAR, int*       sPARi, Precision* ACC, int* ACCi  		
) {
    ACC[7]=T > 2.0;
    ACC[6]=T > 5.0;
    ACC[5]=T > 10.0;
    ACC[4]=T > 15.0;
    ACC[3]=T > 20.0;
    ACC[2]=T > 30.0;
    ACC[1]=T > 45.0;

    EF[0] = (! (ACC[7]));
    EF[1] = (! (ACC[6]));
    EF[6] = (! (ACC[1]));
    EF[5] = (! (ACC[2]));
    EF[2] = (! (ACC[5]));
    EF[4] = (! (ACC[3]));
    EF[3] = (! (ACC[4]));
}

template<class Precision> __forceinline__ __device__ void PerThread_ActionAfterEventDetection(
    int tid, int NT, int IDX, int& UDT, \
    Precision    &T, Precision   &dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR, int*       sPARi, Precision* ACC, int* ACCi
) {
    if (IDX == 0){
	    X[6]=7.54147813;
	    X[5]=-1.508295626;
	    X[2]=0.028924455;
	    X[4]=-0.038210156;
	    X[3]=1.357466063;
	    X[1]=0.351935646;
	    X[0]=-1.357466063;
}
    if (IDX == 1){
	    X[6]=-6.334841629;
	    X[5]=-0.9049773759999999;
	    X[2]=0.119075279;
	    X[4]=-0.038210156;
	    X[3]=0.271493213;
	    X[1]=-0.211161388;
	    X[0]=0.0;
}
    if (IDX == 2){
	    X[6]=9.049773756;
	    X[5]=3.921568627;
	    X[2]=-0.050207413;
	    X[4]=-0.038210156;
	    X[3]=-1.055806938;
	    X[1]=1.085972851;
	    X[0]=0.36199095;
}
    if (IDX == 3){
	    X[6]=-4.826546003;
	    X[5]=1.809954751;
	    X[2]=0.100115778;
	    X[4]=-0.018099548;
	    X[3]=-0.12066365;
	    X[1]=0.452488688;
	    X[0]=1.085972851;
}
    if (IDX == 4){
	    X[6]=-3.619909502;
	    X[5]=1.206636501;
	    X[2]=-0.032601514;
	    X[4]=0.031674208;
	    X[3]=-0.165912519;
	    X[1]=0.377073906;
	    X[0]=0.226244344;
}
    if (IDX == 5){
	    X[6]=-0.301659125;
	    X[5]=0.502765209;
	    X[2]=-0.003055632;
	    X[4]=0.031674208;
	    X[3]=0.07038712900000001;
	    X[1]=0.306686777;
	    X[0]=0.369532428;
}
    if (IDX == 6){
	    X[6]=-0.301659125;
	    X[5]=0.502765209;
	    X[2]=-0.003055632;
	    X[4]=0.031674208;
	    X[3]=0.07038712900000001;
	    X[1]=0.306686777;
	    X[0]=0.369532428;
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
    ACC[0]=0.0; //s22
    ACC[1]=0; //$whenCondition1
    ACC[2]=0; //$whenCondition2
    ACC[3]=0; //$whenCondition3
    ACC[4]=0; //$whenCondition4
    ACC[5]=0; //$whenCondition5
    ACC[6]=0; //$whenCondition6
    ACC[7]=0; //$whenCondition7
    X[0]=-3.544494721; //k_akg
    X[1]=-0.351935646; //k_cit
    X[2]=-0.08343033599999999; //k_f26bp
    X[3]=-0.930115636; //k_f6p
    X[4]=-0.038210156; //k_icit
    X[5]=1.005530417; //k_mal
    X[6]=43.99195576; //k_pep
    X[7]=1.235570941; //s1
    X[8]=17.7476118652; //s10
    X[9]=0.0; //s11
    X[10]=1.0; //s12
    X[11]=0.759332005; //s13
    X[12]=0.0; //s14
    X[13]=0.0; //s15
    X[14]=0.0; //s16
    X[15]=0.0; //s17
    X[16]=0.0; //s18
    X[17]=0.0; //s19
    X[18]=1.0; //s2
    X[19]=0.0; //s21
    X[20]=37.81914621; //s23
    X[21]=46.2222520609226; //s24
    X[22]=2.507671281; //s25
    X[23]=852.608418; //s26
    X[24]=3.930695895; //s27
    X[25]=4.33812187331668; //s28
    X[26]=0.012942682; //s29
    X[27]=14.0774258421; //s3
    X[28]=0.0959163701057347; //s30
    X[29]=0.004015031; //s31
    X[30]=2.7769943784158; //s32
    X[31]=0.0009888309999999999; //s33
    X[32]=14.9913345914433; //s34
    X[33]=0.043352951; //s35
    X[34]=0.0; //s36
    X[35]=0.0; //s37
    X[36]=0.0; //s38
    X[37]=104.07239819; //s4
    X[38]=108.094519859; //s5
    X[39]=1.79487179487; //s6
    X[40]=25.1885369533; //s7
    X[41]=68.8788335846; //s8
    X[42]=1.0; //s9

}

template <class Precision> __forceinline__ __device__ void PerThread_Finalization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
	
}


#endif
