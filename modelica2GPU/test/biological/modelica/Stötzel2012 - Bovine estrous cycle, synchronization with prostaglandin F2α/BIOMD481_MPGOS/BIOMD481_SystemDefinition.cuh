
#ifndef BIOMD481_PERTHREAD_SYSTEMDEFINITION_H
#define BIOMD481_PERTHREAD_SYSTEMDEFINITION_H

#include <fstream>
#include <iostream>
#include <string>
#include "Functions.cuh"


template<class Precision> __forceinline__ __device__ void PerThread_OdeFunction(
	int tid, int NT, \
	Precision*    F, Precision*    X, Precision     T, \
	Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi  		
) {
    ACC[1]=(X[14] + X[28]);
    ACC[0]=piecewise(T,gt(T,0.0),0.0);
    F[8]=(function_28(X[0],X[14],1.0,39.68,1.22,0.6) - function_21(X[8],1.0,0.298));
    F[14]=(function_11(X[2],X[12],1.0,53.91,1.43,1.087) - function_20(X[14],1.0,1.23));
    F[2]=(function_10(X[13],1.0,3.58,0.77) - function_19(X[2],1.0,2.98));
    F[12]=(function_9(X[0],X[1],1.0,1.59,0.143) - function_18(X[12],1.0,0.644));
    F[9]=(function_8(X[5],1.0,1.41) - function_17(X[9],1.0,0.475));
    F[13]=(function_7(X[0],1.0,2.25) - function_15(X[13],1.0,1.41));
    F[1]=(function_6(X[5],1.0,2.19) - function_16(X[1],1.0,1.23));
    F[0]=(function_4(X[0],X[5],X[10],1.0,3.49,0.171,0.2,0.0353,0.1) - function_23(X[0],X[8],1.0,41.39,1.32));
    F[5]=(function_27(X[3],X[5],1.0,0.5620000000000001,0.57,0.22) - function_22(X[5],X[10],X[13],1.0,1.1,0.126,3.49,0.171));
    F[3]=(function_2(X[1],X[4],X[7],X[13],1.0,0.293,0.152,0.396,0.312,1.23,0.0708,0.948) - function_14(X[3],1.0,2.73));
    F[4]=(function_25(X[9],1.0,4.21,0.118) - function_2(X[1],X[4],X[7],X[13],1.0,0.293,0.152,0.396,0.312,1.23,0.0708,0.948));
    F[6]=(function_5(X[6],1.0,16.0,2.75) - function_3(X[1],X[6],X[13],1.0,2.05,0.09719999999999999,0.35,1.91,0.252));
    F[10]=(function_1(X[7],X[11],1.0,2.22,0.6899999999999999,0.0141) - function_13(X[10],1.0,12.0));
    F[11]=(function_24(X[1],X[13],1.0,0.376,0.243,2.71,0.0269) - function_1(X[7],X[11],1.0,2.22,0.6899999999999999,0.0141));
    F[7]=(function_26(X[1],X[6],X[13],1.0,2.05,0.09719999999999999,0.35,1.91,0.252,0.99,0.648) - function_12(X[7],1.0,1.63));
    F[28]=((37000.0 * (ACC[0] * pow(2.718281828459045,(-100.0 * ACC[0])))) + (-5.5 * X[28]));
    F[34]=0.0;
    F[30]=0.0;
    F[40]=0.0;
    F[37]=0.0;
    F[39]=0.0;
    F[31]=0.0;
    F[41]=0.0;
    F[38]=0.0;
    F[32]=0.0;
    F[20]=0.0;
    F[35]=0.0;
    F[33]=0.0;
    F[36]=0.0;
    F[29]=0.0;
    F[23]=0.0;
    F[26]=0.0;
    F[16]=0.0;
    F[21]=0.0;
    F[24]=0.0;
    F[18]=0.0;
    F[22]=0.0;
    F[15]=0.0;
    F[17]=0.0;
    F[25]=0.0;
    F[27]=0.0;
    F[19]=0.0;

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
    ACC[0]=150.0; //parameter_4
    ACC[1]=0.000362064120302475; //parameter_6
    X[0]=0.314393628471893; //CL
    X[1]=0.163690728507925; //E2
    X[2]=5.83626691122778e-05; //Enz
    X[3]=0.0168604631992291; //FSH_Bld
    X[4]=0.00579108659591004; //FSH_Pit
    X[5]=0.0286570978235457; //Foll
    X[6]=0.740638780629751; //GnRH_Hyp
    X[7]=0.219992404098564; //GnRH_Pit
    X[8]=0.133415086647186; //IOF
    X[9]=0.493710210684922; //Inh
    X[10]=0.00633682772990623; //LH_Bld
    X[11]=2.25000957482152; //LH_Pit
    X[12]=0.111730059223483; //OT
    X[13]=0.120192549532403; //P4
    X[14]=0.000362064120302475; //PGF
    X[15]=0.0; //snk_CL
    X[16]=0.0; //snk_E2
    X[17]=0.0; //snk_Enz
    X[18]=0.0; //snk_FSH
    X[19]=0.0; //snk_Foll
    X[20]=0.0; //snk_GnRH_Hyp
    X[21]=0.0; //snk_GnRH_Pit
    X[22]=0.0; //snk_IOF
    X[23]=0.0; //snk_Inh
    X[24]=0.0; //snk_LH
    X[25]=0.0; //snk_OT
    X[26]=0.0; //snk_P4
    X[27]=0.0; //snk_PGF
    X[28]=0.0; //species_1
    X[29]=0.0; //src_CL
    X[30]=0.0; //src_E2
    X[31]=0.0; //src_Enz
    X[32]=0.0; //src_FSH
    X[33]=0.0; //src_Foll
    X[34]=0.0; //src_GnRH
    X[35]=0.0; //src_GnRH_Pit
    X[36]=0.0; //src_IOF
    X[37]=0.0; //src_Inh
    X[38]=0.0; //src_LH
    X[39]=0.0; //src_OT
    X[40]=0.0; //src_P4
    X[41]=0.0; //src_PGF

}

template <class Precision> __forceinline__ __device__ void PerThread_Finalization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
	
}


#endif
