
#ifndef BIOMD406_PERTHREAD_SYSTEMDEFINITION_H
#define BIOMD406_PERTHREAD_SYSTEMDEFINITION_H

#include <fstream>
#include <iostream>
#include <string>
#include "Functions.cuh"


template<class Precision> __forceinline__ __device__ void PerThread_OdeFunction(
	int tid, int NT, \
	Precision*    F, Precision*    X, Precision     T, \
	Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi  		
) {
    ACC[7]=(0.01 + (0.99 * X[39]));
    ACC[3]=(0.001 + ((0.45 * X[17]) + X[25]));
    ACC[4]=(0.0184 + (X[10] + X[11]));
    ACC[5]=(0.5 + (X[31] + ((15.0 * X[25]) + ((10.0 * X[21]) + ((50.0 * X[17]) + (5.0 * X[19]))))));
    ACC[8]=(0.01 + (0.49 * X[36]));
    ACC[0]=(1.01 + (X[40] + (0.01 * ACC[3])));
    ACC[6]=(2.0 * (X[40] / (ACC[0] + sqrt((pow(ACC[0],2.0) + (-4.0 * X[40]))))));
    ACC[1]=(X[40] - ACC[6]);
    ACC[9]=((1.0 - (X[45] + X[46])) * (ACC[1] / (0.01 + ((0.01 * ACC[3]) + ACC[1]))));
    ACC[2]=((0.1 * X[40]) + (10.0 * (X[45] * (ACC[1] / (0.01 + ((0.01 * ACC[3]) + ACC[1]))))));
    F[8]=0.0;
    F[44]=0.0;
    F[9]=0.0;
    F[12]=0.0;
    F[14]=0.0;
    F[15]=0.0;
    F[16]=0.0;
    F[18]=0.0;
    F[20]=0.0;
    F[22]=0.0;
    F[23]=0.0;
    F[24]=0.0;
    F[26]=0.0;
    F[29]=0.0;
    F[30]=0.0;
    F[32]=0.0;
    F[33]=0.0;
    F[34]=0.0;
    F[35]=0.0;
    F[38]=0.0;
    F[41]=0.0;
    F[42]=0.0;
    F[43]=0.0;
    F[47]=0.0;
    F[48]=0.0;
    F[49]=0.0;
    F[1]=0.0;
    F[5]=0.0;
    F[46]=((2.0 * X[45]) + (-125.0 * (X[46] / (1.0 + pow((100.0 * (X[17] + X[25])),4.0)))));
    F[37]=(0.0015 + ((0.015 * X[11]) + (-0.1 * X[37])));
    F[36]=(((0.24 + X[37]) * ((1.0 - X[36]) / (1.04 - X[36]))) - (X[17] * (X[36] / (0.03 + X[36]))));
    F[31]=(0.0015 - ((0.1 + ((5.0 * X[11]) + (0.2 * X[10]))) * X[31]));
    F[28]=(0.25 + ((0.75 * X[27]) + ((-0.75 + ((-10.0 * (X[25] + X[17])) + (-0.25 * X[19]))) * X[28])));
    F[27]=((0.125 * ((1.0 - X[27]) / (1.01 - X[27]))) + ((-0.01 + (-3.0 * X[25])) * (X[27] / (0.01 + X[27]))));
    F[13]=((((0.0975 * X[17]) + (0.05 * X[31])) * ((1.0 - X[13]) / (1.01 - X[13]))) + (-0.04 * (X[13] / (0.01 + X[13]))));
    F[11]=((X[13] * ((1.0 - X[11]) / (1.01 - X[11]))) + (-0.2 * (X[11] / (0.01 + X[11]))));
    F[10]=(((1.25 + (30.0 * X[11])) * ((1.0 - X[10]) / (1.01 - X[10]))) + ((-5.5 + ((-4.0 * X[31]) + ((-40.0 * X[25]) - X[17]))) * (X[10] / (0.01 + X[10]))));
    F[40]=(0.005 + ((0.075 * X[27]) - (ACC[3] * X[40])));
    F[7]=(1.0 + ((ACC[4] * (X[6] + X[2])) + (((0.02 + X[11]) * (X[3] + X[4])) + ((-3.0 * (X[25] * X[7])) + (X[3] + ((-3.0 * (X[21] * X[7])) + (X[4] + ((-500.0 * (X[17] * X[7])) + ((100.0 * X[6]) + ((-500.0 * (X[19] * X[7])) + ((100.0 * X[2]) - (ACC[5] * X[7]))))))))))));
    F[17]=(0.03 + ((ACC[5] * X[6]) + (((0.01 + ACC[7]) * X[19]) + ((-500.0 * (X[17] * X[7])) + ((100.0 * X[6]) + (((-0.01 * X[28]) + ((-(ACC[8])) - ACC[4])) * X[17]))))));
    F[19]=((ACC[5] * X[2]) + ((((0.01 * X[28]) + ACC[8]) * X[17]) + (((-0.01 - (ACC[7] + ACC[4])) * X[19]) + ((-500.0 * (X[19] * X[7])) + (100.0 * X[2])))));
    F[2]=((((0.01 * X[28]) + ACC[8]) * X[6]) + ((500.0 * (X[19] * X[7])) + (X[2] * (-100.01 + (((-(ACC[7])) - ACC[5]) - ACC[4])))));
    F[6]=(((0.01 + ACC[7]) * X[2]) + ((500.0 * (X[17] * X[7])) + (X[6] * (-100.0 + ((-0.01 * X[28]) + (((-(ACC[5])) - ACC[4]) - ACC[8]))))));
    F[45]=((10.0 * ((X[17] + X[25]) * ACC[9])) + (-2.0 * X[45]));
    F[21]=((4.0 * (X[28] * X[25])) + ((ACC[5] * X[4]) + ((-0.1 * (ACC[7] * X[21])) + ((-0.6 * (X[21] / (1.0 + (10.0 * ACC[2])))) + ((-3.0 * (X[21] * X[7])) + (X[4] + ((-0.02 - X[11]) * X[21])))))));
    F[25]=(0.002 + ((0.04 * X[27]) + ((0.1 * (ACC[7] * X[21])) + ((0.6 * (X[21] / (1.0 + (10.0 * ACC[2])))) + ((ACC[5] * X[3]) + ((-4.0 * (X[28] * X[25])) + ((-3.0 * (X[25] * X[7])) + (X[3] + ((-0.02 - X[11]) * X[25])))))))));
    F[39]=((X[17] * ((1.0 - X[39]) / (1.03 - X[39]))) + ((-0.24 + ((-0.3 * ACC[2]) - X[37])) * (X[39] / (0.03 + X[39]))));
    F[3]=((3.0 * (X[25] * X[7])) + ((0.1 * (ACC[7] * X[4])) + ((0.6 * (X[4] / (1.0 + (10.0 * ACC[2])))) + (((-0.02 - X[11]) * X[3]) + ((-4.0 * (X[28] * X[3])) + (((-(ACC[5])) * X[3]) - X[3]))))));
    F[4]=((3.0 * (X[21] * X[7])) + ((4.0 * (X[28] * X[3])) + (((-0.02 - X[11]) * X[4]) + ((-0.1 * (ACC[7] * X[4])) + ((-0.6 * (X[4] / (1.0 + (10.0 * ACC[2])))) + ((-(X[4])) - (ACC[5] * X[4])))))));
    F[0]=0.0;

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
    ACC[0]=0.0; //BB
    ACC[1]=0.0; //Cdc18
    ACC[2]=0.0; //UDNA
    ACC[3]=0.0; //Vdc18
    ACC[4]=0.0; //Vdcyc
    ACC[5]=0.0; //Vdrum
    ACC[6]=0.0; //chrom
    ACC[7]=0.0; //k25
    ACC[8]=0.0; //kwee
    ACC[9]=0.0; //preRC
    sPAR[0]=1.0; //Cdc10T
    sPAR[1]=1.0; //Cdc25T
    sPAR[2]=0.03; //Ja25
    sPAR[3]=0.01; //Jac10
    sPAR[4]=0.01; //Jaie
    sPAR[5]=0.01; //Jaslp
    sPAR[6]=0.01; //Jasrw
    sPAR[7]=0.04; //Jawee
    sPAR[8]=0.03; //Ji25
    sPAR[9]=0.01; //Jic10
    sPAR[10]=0.01; //Jiie
    sPAR[11]=0.01; //Jipre
    sPAR[12]=0.01; //Jislp
    sPAR[13]=0.01; //Jisrw
    sPAR[14]=0.03; //Jiwee
    sPAR[15]=1.0; //Puc1
    sPAR[16]=1.0; //Rad3
    sPAR[17]=1.0; //Slp1T
    sPAR[18]=1.0; //Srw1T
    sPAR[19]=1.0; //Va25_dash2
    sPAR[20]=0.25; //Vamik
    sPAR[21]=0.75; //Vamik_dash
    sPAR[22]=0.24; //Vawee_dash
    sPAR[23]=1.0; //Vawee_dash2
    sPAR[24]=0.3; //Vi25
    sPAR[25]=0.24; //Vi25_dash
    sPAR[26]=1.0; //Vi25_dash2
    sPAR[27]=0.75; //Vimik
    sPAR[28]=10.0; //Vimik_dash
    sPAR[29]=10.0; //Vimik_dash2
    sPAR[30]=0.25; //Vimik_dash3
    sPAR[31]=0.0; //Viwee_dash
    sPAR[32]=1.0; //Viwee_dash2
    sPAR[33]=1.0; //Wee1T
    sPAR[34]=10.0; //beta
    sPAR[35]=1.0; //default
    sPAR[36]=0.1; //k
    sPAR[37]=0.1; //k255
    sPAR[38]=0.01; //k25_dash
    sPAR[39]=1.0; //k25_dash2
    sPAR[40]=10.0; //k_dash
    sPAR[41]=0.125; //kac10
    sPAR[42]=0.0975; //kaie
    sPAR[43]=0.05; //kaie_dash
    sPAR[44]=1.0; //kaslp
    sPAR[45]=1.25; //kasrw
    sPAR[46]=30.0; //kasrw_dash
    sPAR[47]=0.001; //kdc18
    sPAR[48]=0.45; //kdc18c13
    sPAR[49]=1.0; //kdc18cig
    sPAR[50]=0.0; //kdc18cig_dash
    sPAR[51]=0.1; //kdci1
    sPAR[52]=5.0; //kdci1_dash
    sPAR[53]=0.2; //kdci1_dash2
    sPAR[54]=0.02; //kdcig
    sPAR[55]=1.0; //kdcig_dash
    sPAR[56]=0.018; //kdcyc
    sPAR[57]=1.0; //kdcycslp
    sPAR[58]=0.0003; //kdcycslp_dash
    sPAR[59]=1.0; //kdcycsrw
    sPAR[60]=0.0001; //kdcycsrw_dash
    sPAR[61]=0.1; //kdflp
    sPAR[62]=0.4; //kdrum
    sPAR[63]=50.0; //kdrumc13
    sPAR[64]=5.0; //kdrumc13_dash
    sPAR[65]=1.0; //kdrumci1
    sPAR[66]=15.0; //kdrumcig
    sPAR[67]=10.0; //kdrumcig_dash
    sPAR[68]=0.1; //kdrumpuc
    sPAR[69]=0.01; //kic10
    sPAR[70]=3.0; //kic10_dash
    sPAR[71]=0.04; //kiie
    sPAR[72]=10.0; //kini_dash
    sPAR[73]=10.0; //kini_dash2
    sPAR[74]=0.0; //kini_dash3
    sPAR[75]=1.0; //kipre
    sPAR[76]=1.0; //kipre_dash
    sPAR[77]=0.2; //kislp
    sPAR[78]=1.5; //kisrw
    sPAR[79]=40.0; //kisrw_dash
    sPAR[80]=1.0; //kisrw_dash2
    sPAR[81]=4.0; //kisrw_dash3
    sPAR[82]=4.0; //kisrw_dash4
    sPAR[83]=0.01; //kmik_dash
    sPAR[84]=4.0; //kmik_dash2
    sPAR[85]=100.0; //ko18
    sPAR[86]=1.0; //ko18r
    sPAR[87]=125.0; //kori
    sPAR[88]=0.6; //kpyp
    sPAR[89]=0.01; //kpyp2
    sPAR[90]=2.0; //krepl
    sPAR[91]=0.005; //ksc18
    sPAR[92]=0.075; //ksc18_dash
    sPAR[93]=0.0015; //ksci1
    sPAR[94]=0.002; //kscig
    sPAR[95]=0.04; //kscig_dash
    sPAR[96]=0.03; //kscyc
    sPAR[97]=0.0015; //ksflp
    sPAR[98]=0.015; //ksflp_dash
    sPAR[99]=1.0; //ksrum
    sPAR[100]=0.01; //kwee_dash
    sPAR[101]=0.5; //kwee_dash2
    sPAR[102]=1.0; //lcm
    sPAR[103]=3.0; //lcp
    sPAR[104]=100.0; //lm
    sPAR[105]=500.0; //lp
    sPAR[106]=4.0; //n
    sPAR[107]=1.0; //oriT
    X[0]=0.0; //kmik
    X[1]=0.0; //s130
    X[2]=0.0432273; //s137
    X[3]=0.0; //s149
    X[4]=0.0; //s153
    X[5]=0.0; //s157
    X[6]=0.0165018; //s161
    X[7]=0.0; //s166
    X[8]=0.0; //s4
    X[9]=0.0; //s46
    X[10]=0.00239076; //s47
    X[11]=6.33821e-05; //s48
    X[12]=0.0; //s49
    X[13]=0.00127807; //s50
    X[14]=0.0; //s51
    X[15]=0.0; //s52
    X[16]=0.0; //s55
    X[17]=0.0439902; //s56
    X[18]=0.0; //s57
    X[19]=0.1147007; //s60
    X[20]=0.0; //s61
    X[21]=0.0; //s63
    X[22]=0.0; //s64
    X[23]=0.0; //s65
    X[24]=0.0; //s66
    X[25]=0.0; //s67
    X[26]=0.0; //s70
    X[27]=0.0; //s71
    X[28]=0.0; //s72
    X[29]=0.0; //s73
    X[30]=0.0; //s74
    X[31]=0.0; //s75
    X[32]=0.0; //s76
    X[33]=0.0; //s77
    X[34]=0.0; //s78
    X[35]=0.0; //s79
    X[36]=0.0; //s80
    X[37]=0.0; //s81
    X[38]=0.0; //s82
    X[39]=0.0; //s83
    X[40]=0.0; //s84
    X[41]=0.0; //s85
    X[42]=0.0; //s88
    X[43]=0.0; //s89
    X[44]=0.0; //s9
    X[45]=0.0; //s90
    X[46]=0.0; //s91
    X[47]=0.0; //s92
    X[48]=0.0; //s93
    X[49]=0.0; //s94

}

template <class Precision> __forceinline__ __device__ void PerThread_Finalization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
	
}


#endif
