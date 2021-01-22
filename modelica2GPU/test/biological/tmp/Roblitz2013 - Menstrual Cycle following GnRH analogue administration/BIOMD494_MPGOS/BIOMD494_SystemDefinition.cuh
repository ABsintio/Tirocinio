
#ifndef BIOMD494_PERTHREAD_SYSTEMDEFINITION_H
#define BIOMD494_PERTHREAD_SYSTEMDEFINITION_H

#include <fstream>
#include <iostream>
#include <string>
#include "Functions.cuh"


template<class Precision> __forceinline__ __device__ void PerThread_OdeFunction(
	int tid, int NT, \
	Precision*    F, Precision*    X, Precision     T, \
	Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi  		
) {
    ACC[1]=(0.005593 * ((pow((0.004545454545454545 * X[12]),2.0) / (1.0 + pow((0.004545454545454545 * X[12]),2.0))) + (1.0 / (1.0 + pow((0.1041666666666667 * X[12]),1.0)))));
    ACC[0]=(16.0 * ((1.0 + (pow((0.004545454545454545 * X[12]),10.0) / (1.0 + pow((0.004545454545454545 * X[12]),10.0)))) / (1.0 + pow((0.8333333333333334 * X[30]),2.0))));
    F[49]=function_69(X[8],1.0,0.008999999999999999);
    F[48]=function_66(X[9],1.0,5.0);
    F[47]=(-(function_65(X[10],1.0,34.9,45.56)));
    F[46]=function_64(X[10],1.0,45.56);
    F[8]=(function_68(X[9],X[35],1.0,322.18) + ((-(function_67(X[8],1.0,644.35))) - function_69(X[8],1.0,0.008999999999999999)));
    F[11]=(function_70(X[9],1.0,3.216) - function_71(X[11],1.0,4.76));
    F[9]=(function_65(X[10],1.0,34.9,45.56) + (function_67(X[8],1.0,644.35) + (function_71(X[11],1.0,4.76) + (((-(function_66(X[9],1.0,5.0))) - function_68(X[9],X[35],1.0,322.18)) - function_70(X[9],1.0,3.216)))));
    F[10]=(-(function_64(X[10],1.0,45.56)));
    F[4]=(function_57(X[5],1.0,3.22) + (function_59(X[6],X[35],1.0,322.18) + ((-(function_56(X[4],1.0,32.22))) - function_60(X[4],1.0,644.35))));
    F[5]=(function_56(X[4],1.0,32.22) + (((-(function_57(X[5],1.0,3.22))) - function_58(X[5],1.0,0.008999999999999999)) - function_61(X[5],1.0,32.22)));
    F[7]=(-(function_62(X[7],1.0,54.2)));
    F[6]=(function_60(X[4],1.0,644.35) + (function_63(X[7],1.0,38.12,54.2) + ((-(function_55(X[6],1.0,2.65))) - function_59(X[6],X[35],1.0,322.18))));
    F[3]=(function_23(X[2],X[23],X[34],1.0,122.060139609808,5.0,2.7262) + (function_33(X[3],X[23],1.0,12.2060139609808,2.0,2.7262,10.0) - function_24(X[3],X[23],X[34],1.0,332.754608913549,2.7262)));
    F[2]=(function_22(X[1],X[23],X[34],1.0,3.68896,4.88231609092536,2.7262) + (function_32(X[2],X[13],1.0,0.122060139609808,10.0) - function_23(X[2],X[23],X[34],1.0,122.060139609808,5.0,2.7262)));
    F[40]=(function_25(X[39],1.0,1.22060139609808) - function_26(X[40],1.0,0.958117057454806));
    F[39]=(function_37(X[29],1.0,1.20834079112225,0.02,10.0) - function_25(X[39],1.0,1.22060139609808));
    F[38]=(function_15(X[23],1.0,183.363164488992) - function_16(X[38],1.0,68.9493466976911));
    F[37]=(function_16(X[38],1.0,68.9493466976911) - function_14(X[24],X[37],1.0,1.0,2.1430105602291));
    F[36]=(8.94934669769107e-05 + (function_4(X[35],1.0,3.22176481116878) + (function_5(X[18],1.0,32.2176481116879) + (function_61(X[5],1.0,32.22) + ((-(function_3(X[36],1.0,32.2176481116879))) - function_7(X[36],1.0,0.0894934669769107))))));
    F[35]=(function_3(X[36],1.0,32.2176481116879) + (function_8(X[17],1.0,644.352962233757) + (function_60(X[4],1.0,644.35) + (function_67(X[8],1.0,644.35) + ((((-(function_68(X[9],X[35],1.0,322.18))) - function_4(X[35],1.0,3.22176481116878)) - function_6(X[16],X[35],1.0,322.176481116879)) - function_59(X[6],X[35],1.0,322.18))))));
    F[34]=(function_30(X[14],1.0,3.0,5.0,0.2186056917845) - function_31(X[30],X[34],1.0,1.0,1.2348,5.0,1.34267048505459));
    F[33]=(function_18(X[13],1.0,138.303203866118) - function_19(X[33],1.0,61.0291748702345));
    F[32]=(function_19(X[33],1.0,61.0291748702345) - function_53(X[14],X[32],1.0,1.0,3.52890638983354));
    F[31]=(function_24(X[3],X[23],X[34],1.0,332.754608913549,2.7262) - function_34(X[23],X[31],X[34],1.0,122.060139609808,6.0,2.7262));
    F[30]=(function_41(X[28],1.0,1.0,0.9426346876678,761.643100053696) - function_43(X[30],1.0,5.12958654018257));
    F[29]=(function_35(X[23],X[31],X[34],1.0,7.98433864327904,6.0,2.7262,3.0,10.0) - function_36(X[29],1.0,12.2060139609808));
    F[28]=(function_29(X[4],X[17],X[27],1.0,0.610291748702345,20.0,0.0008,5.0) - function_38(X[4],X[17],X[28],1.0,0.542840522641847,20.0,0.0008,5.0));
    F[27]=(function_28(X[4],X[17],X[26],1.0,0.7567657061034549,20.0,0.0008,5.0) - function_29(X[4],X[17],X[27],1.0,0.610291748702345,20.0,0.0008,5.0));
    F[26]=(function_27(X[4],X[17],X[25],1.0,0.924735994272418,20.0,0.0008,5.0) - function_28(X[4],X[17],X[26],1.0,0.7567657061034549,20.0,0.0008,5.0));
    F[25]=(function_26(X[40],1.0,0.958117057454806) - function_27(X[4],X[17],X[25],1.0,0.924735994272418,20.0,0.0008,5.0));
    F[24]=(function_51(X[4],X[17],X[22],1.0,1.0,5.0,0.00476024700196886,0.190415249686773,0.0003,5.0) + ((-(function_14(X[24],X[37],1.0,1.0,2.1430105602291))) - function_17(X[24],1.0,74.8505459101486)));
    F[23]=(function_14(X[24],X[37],1.0,1.0,2.1430105602291) - function_15(X[23],1.0,183.363164488992));
    F[22]=(function_10(X[12],X[30],1.0,1.0,1.0,7309.91587614104,7309.91587614104,192.2041,2.3708,10.0,1.0) - function_12(X[4],X[17],X[22],1.0,0.00476024700196886,0.190415249686773,0.0003,5.0));
    F[21]=(function_44(X[1],X[40],1.0,89.4934669769107,447.467334884553,134240.200465366) - function_45(X[21],1.0,172.453910864507));
    F[20]=(function_54(X[19],1.0,4.28718453552891) - function_46(X[20],1.0,0.1989));
    F[19]=(function_42(X[25],X[26],X[27],X[28],X[31],X[39],1.0,1.44522999821013,2.28494719885448,28.2110255951316,216.85,114.247359942724,60.0,180.0) - function_54(X[19],1.0,4.28718453552891));
    F[18]=(function_1(X[17],1.0,32.2176481116879) + (((-(function_2(X[18],1.0,3.222))) - function_5(X[18],1.0,32.2176481116879)) - function_48(X[18],1.0,0.00894934669769107)));
    F[17]=(function_2(X[18],1.0,3.222) + (function_6(X[16],X[35],1.0,322.176481116879) + ((-(function_1(X[17],1.0,32.2176481116879))) - function_8(X[17],1.0,644.352962233757))));
    F[14]=(function_52(X[4],X[15],X[17],1.0,1.0,5.0,0.0569894397708967,0.0003,2.0,0.27201539287632) + ((-(function_50(X[14],1.0,114.247359942724))) - function_53(X[14],X[32],1.0,1.0,3.52890638983354)));
    F[13]=(function_53(X[14],X[32],1.0,1.0,3.52890638983354) - function_18(X[13],1.0,138.303203866118));
    F[12]=(function_39(X[1],X[2],X[3],X[24],X[25],X[28],X[31],1.0,1.0,2.09450510112762,51.558081260068,9.279999999999999,3480.27,0.972,1713.71039914086,8675.138714873819) - function_40(X[12],1.0,5.23500984428137));
    F[1]=(function_20(X[0],X[13],1.0,1.22060139609808) - function_22(X[1],X[23],X[34],1.0,3.68896,4.88231609092536,2.7262));
    F[0]=(function_21(X[13],1.0,3.0,0.608121,3.66180418829425) - function_20(X[0],X[13],1.0,1.22060139609808));
    F[15]=(function_11(X[20],X[21],1.0,ACC[0],10.0,3.0,22129.0495793807,95.81,70.0,5.0,2.0) - function_13(X[4],X[15],X[17],1.0,0.0569894397708967,0.0003,2.0,0.27201539287632));
    F[16]=(function_8(X[17],1.0,644.352962233757) + (function_49(1.0,ACC[0],ACC[1]) + ((-(function_6(X[16],X[35],1.0,322.176481116879))) - function_9(X[16],1.0,0.447467334884553))));
    F[44]=0.0;
    F[45]=0.0;
    F[43]=0.0;
    F[42]=0.0;
    F[79]=0.0;
    F[78]=0.0;
    F[77]=0.0;
    F[76]=0.0;
    F[75]=0.0;
    F[74]=0.0;
    F[73]=0.0;
    F[72]=0.0;
    F[71]=0.0;
    F[70]=0.0;
    F[69]=0.0;
    F[68]=0.0;
    F[67]=0.0;
    F[66]=0.0;
    F[65]=0.0;
    F[64]=0.0;
    F[63]=0.0;
    F[62]=0.0;
    F[61]=0.0;
    F[60]=0.0;
    F[59]=0.0;
    F[58]=0.0;
    F[57]=0.0;
    F[56]=0.0;
    F[55]=0.0;
    F[54]=0.0;
    F[53]=0.0;
    F[52]=0.0;
    F[51]=0.0;
    F[50]=0.0;
    F[41]=0.0;

}

template<class Precision> __forceinline__ __device__ void PerThread_EventFunction(
	int tid, int NT, Precision*	  EF, \
	Precision     T, Precision    dT, Precision*    TD, Precision*	X, \
	Precision* cPAR, Precision* sPAR, int*       sPARi, Precision* ACC, int* ACCi  		
) {
    ACC[3]=T >= 91.0;
    ACC[2]=T >= 34.0;

    EF[1] = (! (ACC[2]));
    EF[0] = (! (ACC[3]));
}

template<class Precision> __forceinline__ __device__ void PerThread_ActionAfterEventDetection(
    int tid, int NT, int IDX, int& UDT, \
    Precision    &T, Precision   &dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR, int*       sPARi, Precision* ACC, int* ACCi
) {
    if (IDX == 0){
	    X[7]=100.0;
    }
    if (IDX == 1){
	    X[10]=(500.0 + X[10]);
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
    ACC[0]=3.17876449742659; //freq
    ACC[1]=0.00120799195301476; //mass
    ACC[2]=0.0; //$whenCondition1
    ACC[3]=0.0; //$whenCondition2
    X[0]=2.26; //AF1
    X[1]=19.92; //AF2
    X[2]=0.504; //AF3
    X[3]=1.604e-05; //AF4
    X[4]=0.0; //Ago_R_a
    X[5]=0.0; //Ago_R_i
    X[6]=0.0; //Ago_c
    X[7]=0.0; //Ago_d
    X[8]=0.0; //Ant_R
    X[9]=0.0; //Ant_c
    X[10]=0.0; //Ant_d
    X[11]=0.0; //Ant_p
    X[12]=45.0; //E2
    X[13]=0.662; //FSH_R
    X[14]=4.1; //FSH_bld
    X[15]=48627.2; //FSH_pit
    X[16]=0.00326; //GnRH
    X[17]=1.447e-05; //GnRH_R_a
    X[18]=1.294e-05; //GnRH_R_i
    X[19]=1.07; //InhA
    X[20]=86.84; //InhA_delay
    X[21]=52.18; //InhB
    X[22]=261119.0; //LH_Pit
    X[23]=0.263; //LH_R
    X[24]=2.667; //LH_bld
    X[25]=2.762e-05; //Lut1
    X[26]=0.0003772; //Lut2
    X[27]=0.00334; //Lut3
    X[28]=0.01385; //Lut4
    X[29]=7.652e-19; //OvF
    X[30]=2.41; //P4
    X[31]=0.244; //PrF
    X[32]=6.341; //R_FSH
    X[33]=1.497; //R_FSH_des
    X[34]=0.119; //R_Foll
    X[35]=0.00928; //R_GnRH_a
    X[36]=0.0009409; //R_GnRH_i
    X[37]=8.41; //R_LH
    X[38]=0.699; //R_LH_des
    X[39]=1.098e-08; //Sc1
    X[40]=2.171e-06; //Sc2
    X[41]=1.0; //csa1_degraded
    X[42]=1.0; //s102
    X[43]=1.0; //s106
    X[44]=1.0; //s107
    X[45]=1.0; //s108
    X[46]=0.0; //s113
    X[47]=0.0; //s114
    X[48]=0.0; //s115
    X[49]=0.0; //s116
    X[50]=1.0; //s33
    X[51]=1.0; //s38
    X[52]=1.0; //s62
    X[53]=1.0; //s64
    X[54]=1.0; //s66
    X[55]=1.0; //s67
    X[56]=1.0; //s69
    X[57]=1.0; //s71
    X[58]=1.0; //s72
    X[59]=1.0; //s74
    X[60]=1.0; //s76
    X[61]=1.0; //s78
    X[62]=1.0; //s82
    X[63]=1.0; //s85
    X[64]=1.0; //s87
    X[65]=1.0; //s92
    X[66]=1.0; //s93
    X[67]=1.0; //s94
    X[68]=1.0; //s95
    X[69]=1.0; //sa1_degraded
    X[70]=1.0; //sa28_degraded
    X[71]=1.0; //sa31_degraded
    X[72]=1.0; //sa35_degraded
    X[73]=1.0; //sa3_degraded
    X[74]=1.0; //sa52_degraded
    X[75]=1.0; //sa53_degraded
    X[76]=1.0; //sa61_degraded
    X[77]=1.0; //sa75_degraded
    X[78]=1.0; //sa78_degraded
    X[79]=1.0; //sa86_degraded

}

template <class Precision> __forceinline__ __device__ void PerThread_Finalization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
	
}


#endif
