
#ifndef BIOMD356_PERTHREAD_SYSTEMDEFINITION_H
#define BIOMD356_PERTHREAD_SYSTEMDEFINITION_H

#include <fstream>
#include <iostream>
#include <string>
#include "Functions.cuh"


template<class Precision> __forceinline__ __device__ void PerThread_OdeFunction(
	int tid, int NT, \
	Precision*    F, Precision*    X, Precision     T, \
	Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi  		
) {
    ACC[0]=0.0;
    ACC[19]=(2.5 / (sPAR[1] * sPAR[27]));
    ACC[18]=(2.5 / (sPAR[1] * (1.0 - sPAR[25])));
    ACC[6]=0.01;
    ACC[5]=1400.0;
    ACC[12]=0.0;
    ACC[7]=7e-06;
    ACC[22]=((sPAR[60] * (X[3] / (sPAR[13] + X[3]))) + ((sPAR[61] * (X[1] * (X[3] / (sPAR[14] + X[3])))) + (sPAR[70] * (5.0 + X[4]))));
    ACC[11]=(1e-12 * (5.0 + X[4]));
    ACC[1]=(sPAR[66] + ((((-(sPAR[67])) * X[2]) - (sPAR[68] * X[8])) - (sPAR[69] * X[11])));
    ACC[17]=((1.0 - sPAR[79]) * (sPAR[20] + (sPAR[21] * X[4])));
    ACC[16]=(ACC[17] * (X[3] / (sPAR[6] + X[3])));
    ACC[15]=(ACC[16] + ACC[22]);
    ACC[14]=(sPAR[17] + ACC[15]);
    ACC[10]=(sPAR[32] * X[11]);
    ACC[3]=(sPAR[77] - (sPAR[76] * ACC[10]));
    ACC[21]=(ACC[3] * (sPAR[73] / (1.0 - ACC[3])));
    ACC[4]=(X[10] / sPAR[19]);
    ACC[2]=(X[2] / sPAR[18]);
    ACC[8]=(X[21] + X[22]);
    ACC[20]=(sPAR[65] + (0.5 * ((sPAR[64] - sPAR[65]) * (2.0 + (tanh((ACC[18] * (ACC[8] - (sPAR[25] * sPAR[1])))) - tanh((ACC[19] * (ACC[8] - (sPAR[27] * sPAR[1])))))))));
    ACC[9]=(sPAR[31] * (sPAR[57] * (X[20] / sPAR[0])));
    ACC[13]=(X[25] + ((sPAR[5] * ((ACC[1] + (ACC[9] + ((sPAR[56] * X[3]) + (((-(sPAR[55])) * X[2]) - sPAR[17])))) / sPAR[18])) + sPAR[15]));
    F[30]=((sPAR[28] * X[31]) + ((sPAR[29] * X[39]) + ((sPAR[11] * X[42]) + ((sPAR[72] * X[41]) + ((-2.0 * (ACC[11] * (X[30] * (sPAR[22] + sPAR[23])))) - (sPAR[71] * X[30]))))));
    F[31]=((2.0 * ((sPAR[22] * (ACC[11] * X[30])) + (sPAR[28] * X[32]))) + ((sPAR[29] * (X[35] + X[36])) + (((((-(sPAR[8])) * X[31]) - (sPAR[22] * (ACC[11] * X[31]))) - (sPAR[28] * X[31])) - (sPAR[23] * (ACC[11] * X[31])))));
    F[39]=((2.0 * (sPAR[23] * (ACC[11] * X[30]))) + ((sPAR[28] * X[35]) + ((2.0 * (sPAR[29] * X[40])) + ((sPAR[28] * X[36]) + ((((-(sPAR[22])) - sPAR[23]) * (ACC[11] * X[39])) + (((-(sPAR[29])) - sPAR[8]) * X[39]))))));
    F[32]=((sPAR[22] * (ACC[11] * X[31])) + ((sPAR[29] * X[33]) + (-2.0 * (X[32] * (sPAR[28] + sPAR[8])))));
    F[35]=((ACC[11] * ((sPAR[22] * X[39]) + (sPAR[23] * X[31]))) + ((sPAR[29] * X[37]) + ((sPAR[28] * (X[33] - X[35])) + (((-2.0 * sPAR[8]) - sPAR[29]) * X[35]))));
    F[40]=((sPAR[23] * (ACC[11] * X[39])) + ((sPAR[28] * X[37]) + (-2.0 * (X[40] * (sPAR[29] + sPAR[8])))));
    F[33]=((sPAR[22] * (ACC[11] * X[36])) + ((sPAR[8] * ((2.0 * X[32]) + X[35])) + ((sPAR[29] * X[34]) + ((((-2.0 * sPAR[28]) - sPAR[29]) * X[33]) + (((-(sPAR[23])) * (ACC[11] * X[33])) - (sPAR[10] * X[33]))))));
    F[37]=((sPAR[23] * (ACC[11] * X[36])) + ((sPAR[8] * X[35]) + ((2.0 * (sPAR[8] * X[40])) + ((0.01 * X[38]) + ((sPAR[28] * X[34]) + ((2.0 * ((-(sPAR[29])) * X[37])) + (((-1400.0 - sPAR[22]) * (ACC[11] * X[37])) + (((-(sPAR[28])) - sPAR[10]) * X[37]))))))));
    F[34]=((ACC[11] * ((sPAR[22] * X[37]) + (sPAR[23] * X[33]))) + ((((-(sPAR[10])) - sPAR[28]) - sPAR[29]) * X[34]));
    F[36]=((sPAR[8] * (X[31] + X[39])) + ((sPAR[28] * X[33]) + ((sPAR[29] * (X[37] + X[38])) + ((((-(sPAR[22])) - sPAR[23]) * (ACC[11] * X[36])) + ((((-(sPAR[28])) - sPAR[10]) - sPAR[29]) * X[36])))));
    F[38]=((1400.0 * (ACC[11] * X[37])) + ((-0.01 - (sPAR[10] + sPAR[29])) * X[38]));
    F[3]=((sPAR[55] * X[2]) + ((-(ACC[15])) - (sPAR[56] * X[3])));
    F[9]=((((-(sPAR[73])) - ACC[21]) * X[9]) + ((sPAR[74] * X[10]) + ACC[10]));
    F[7]=(sPAR[63] * (ACC[4] - X[7]));
    F[4]=(sPAR[78] * (ACC[4] + ((-(sPAR[4])) - X[4])));
    F[25]=((-(sPAR[24])) * (X[25] + (sPAR[26] * (sPAR[2] - ACC[2]))));
    F[22]=((sPAR[62] * X[21]) - (ACC[20] * X[22]));
    F[20]=((ACC[20] * X[22]) - (sPAR[57] * X[20]));
    F[11]=(ACC[13] - ACC[10]);
    F[2]=(ACC[1] + (ACC[9] + ((sPAR[56] * X[3]) + ((-(sPAR[17])) - (sPAR[55] * X[2])))));
    F[10]=((((-(sPAR[74])) - sPAR[75]) * X[10]) + (sPAR[73] * X[9]));
    F[21]=((-(sPAR[62])) * X[21]);
    F[8]=(sPAR[63] * (X[7] - X[8]));
    F[42]=(((sPAR[9] + (sPAR[7] * (X[24] / (sPAR[12] + X[24])))) * X[43]) - (sPAR[11] * X[42]));
    F[43]=((sPAR[10] * (X[36] + (X[33] + (X[37] + (X[38] + (X[34] + X[41])))))) + (((-(sPAR[9])) - (sPAR[7] * (X[24] / (sPAR[12] + X[24])))) * X[43]));
    F[27]=((sPAR[10] * (X[36] + ((2.0 * (X[33] + X[37])) + (3.0 * X[38])))) + ((3.0 * (sPAR[10] * X[34])) + (((-(sPAR[9])) - (sPAR[7] * (X[24] / (sPAR[12] + X[24])))) * X[27])));
    F[26]=(((sPAR[9] + (sPAR[7] * (X[24] / (sPAR[12] + X[24])))) * X[27]) - (sPAR[11] * X[26]));
    F[41]=((sPAR[71] * X[30]) + (((-(sPAR[72])) - sPAR[10]) * X[41]));
    F[5]=((sPAR[37] * X[6]) - (sPAR[33] * (X[5] * ((X[36] + (X[33] + (X[37] + (X[38] + (X[34] + (X[41] + (sPAR[34] * X[43]))))))) * (1.0 + ((sPAR[35] * X[19]) + (sPAR[36] * X[28])))))));
    F[6]=((sPAR[33] * (X[5] * ((X[36] + (X[33] + (X[37] + (X[38] + (X[34] + (X[41] + (sPAR[34] * X[43]))))))) * (1.0 + ((sPAR[35] * X[19]) + (sPAR[36] * X[28])))))) - (sPAR[37] * X[6]));
    F[23]=((sPAR[38] * X[24]) - (sPAR[39] * (X[23] * X[6])));
    F[24]=((sPAR[39] * (X[23] * X[6])) - (sPAR[38] * X[24]));
    F[14]=((sPAR[40] * X[15]) - (sPAR[41] * (X[14] * X[6])));
    F[15]=((sPAR[41] * (X[14] * X[6])) - (sPAR[40] * X[15]));
    F[12]=((sPAR[44] * X[13]) - (sPAR[45] * (X[12] * X[15])));
    F[13]=((sPAR[45] * (X[12] * X[15])) - (sPAR[44] * X[13]));
    F[18]=((sPAR[46] * X[19]) - (sPAR[47] * (X[18] * X[13])));
    F[19]=((sPAR[47] * (X[18] * X[13])) - (sPAR[46] * X[19]));
    F[16]=((sPAR[48] * X[17]) - (sPAR[49] * (X[16] * X[13])));
    F[17]=((sPAR[49] * (X[16] * X[13])) - (sPAR[48] * X[17]));
    F[28]=((sPAR[50] * X[29]) - (sPAR[51] * (X[28] * X[17])));
    F[29]=((sPAR[51] * (X[28] * X[17])) - (sPAR[50] * X[29]));
    F[0]=((sPAR[54] * X[1]) - (X[0] * ((sPAR[52] * X[19]) + ((sPAR[53] * X[17]) + sPAR[43]))));
    F[1]=((X[0] * ((sPAR[52] * X[19]) + ((sPAR[53] * X[17]) + sPAR[43]))) - (sPAR[54] * X[1]));

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
    ACC[0]=0.0; //E
    ACC[1]=0.0; //EGP
    ACC[2]=0.0; //G
    ACC[3]=0.0; //HE
    ACC[4]=0.0; //I
    ACC[5]=0.0; //K4
    ACC[6]=0.0; //K8
    ACC[7]=0.0; //KD
    ACC[8]=0.0; //Q_sto
    ACC[9]=0.0; //Ra
    ACC[10]=0.0; //S
    ACC[11]=0.0; //S1
    ACC[12]=0.0; //S2
    ACC[13]=0.0; //S_po
    ACC[14]=0.0; //U
    ACC[15]=0.0; //U_id
    ACC[16]=0.0; //U_idm
    ACC[17]=0.0; //V_mmax
    ACC[18]=0.0; //aa
    ACC[19]=0.0; //cc
    ACC[20]=0.0; //k_empt
    ACC[21]=0.0; //m_3
    ACC[22]=0.0; //vglucoseuptake
    sPAR[0]=78.0; //BW
    sPAR[1]=78000.0; //D
    sPAR[2]=95.0; //G_b
    sPAR[3]=0.6; //HE_b
    sPAR[4]=25.0; //I_b
    sPAR[5]=2.3; //K
    sPAR[6]=225.59; //K_m0
    sPAR[7]=237.5189220434; //Kcat
    sPAR[8]=0.0013640432; //Kcr
    sPAR[9]=0.0009500831; //Kdp
    sPAR[10]=30.6825110077; //Kend
    sPAR[11]=37.0818924842; //Kex
    sPAR[12]=3.0181933402; //Km
    sPAR[13]=132.7704719106; //KmG1
    sPAR[14]=70.4032025464; //KmG4
    sPAR[15]=1.8; //S_b
    sPAR[16]=-1.8; //S_b_minus
    sPAR[17]=1.0; //U_ii
    sPAR[18]=1.88; //V_G
    sPAR[19]=0.05; //V_I
    sPAR[20]=2.5; //V_m0
    sPAR[21]=0.047; //V_mX
    sPAR[22]=448251462.71204; //a1
    sPAR[23]=4321891.90327031; //a2
    sPAR[24]=0.05; //alpha
    sPAR[25]=0.82; //b
    sPAR[26]=0.11; //beta
    sPAR[27]=0.01; //d
    sPAR[28]=0.7722612342; //d1
    sPAR[29]=0.0122057759; //d2
    sPAR[30]=1.0; //default
    sPAR[31]=0.9; //f
    sPAR[32]=0.5; //gamma
    sPAR[33]=0.009645862999999999; //k21
    sPAR[34]=2374.9773277896; //k22
    sPAR[35]=0.1199031163; //k23
    sPAR[36]=0.9430860972; //k24
    sPAR[37]=608.5839585406; //k2b
    sPAR[38]=0.1895302156; //k3b
    sPAR[39]=8.111935048799999; //k3f
    sPAR[40]=28137.0701606029; //k4b
    sPAR[41]=384885.688277883; //k4f
    sPAR[42]=0.2040341054; //k5Basic
    sPAR[43]=2.34e-08; //k5BasicWb
    sPAR[44]=10052.5084521206; //k5b
    sPAR[45]=64300.0712750856; //k5f
    sPAR[46]=77.77121054849999; //k6b
    sPAR[47]=16094201.7926563; //k6f
    sPAR[48]=565342.162392942; //k7b
    sPAR[49]=4174.6300598327; //k7f
    sPAR[50]=300.7511656484; //k8b
    sPAR[51]=1515762.41887571; //k8f
    sPAR[52]=8.14e-08; //k91
    sPAR[53]=0.0280831426; //k92
    sPAR[54]=4.0297596909; //k9b
    sPAR[55]=0.065; //k_1
    sPAR[56]=0.079; //k_2
    sPAR[57]=0.057; //k_abs
    sPAR[58]=0.0005; //k_e1
    sPAR[59]=339.0; //k_e2
    sPAR[60]=0.2966651081; //k_glut1
    sPAR[61]=31.4211308621; //k_glut4
    sPAR[62]=0.0558; //k_gri
    sPAR[63]=0.007900000000000001; //k_i
    sPAR[64]=0.0558; //k_max
    sPAR[65]=0.008; //k_min
    sPAR[66]=2.7; //k_p1
    sPAR[67]=0.0021; //k_p2
    sPAR[68]=0.008999999999999999; //k_p3
    sPAR[69]=0.0618; //k_p4
    sPAR[70]=0.003119389367; //kbf
    sPAR[71]=0.49752158; //kfbasal
    sPAR[72]=128042.884096176; //krbasal
    sPAR[73]=0.19; //m_1
    sPAR[74]=0.484; //m_2
    sPAR[75]=0.194; //m_4
    sPAR[76]=0.0304; //m_5
    sPAR[77]=0.6471; //m_6
    sPAR[78]=0.0331; //p_2U
    sPAR[79]=0.2; //part
    X[0]=9.99316830771855; //GLUT4_C
    X[1]=-0.007997762216555919; //GLUT4_M
    X[2]=178.0; //G_p
    X[3]=135.0; //G_t
    X[4]=0.0; //INS
    X[5]=9.999822536000069; //IRS
    X[6]=0.000177463999892648; //IRSiP
    X[7]=25.0; //I_1
    X[8]=25.0; //I_d
    X[9]=4.5; //I_l
    X[10]=1.25; //I_p
    X[11]=3.6; //I_po
    X[12]=8.65876984730663; //PDK1
    X[13]=1.34123015269338; //PDK1_
    X[14]=9.97578356966623; //PI3K
    X[15]=0.0242164303337614; //PI3K_
    X[16]=9.901931436173021; //PKB
    X[17]=0.09806856382699421; //PKB_P
    X[18]=3.60283594102724e-05; //PKC
    X[19]=9.999963971640589; //PKC_P
    X[20]=0.0; //Q_gut
    X[21]=78000.0; //Q_sto1
    X[22]=0.0; //Q_sto2
    X[23]=9.924632416347441; //X
    X[24]=0.0753675836525682; //X_P
    X[25]=0.0; //Y
    X[26]=1.13228497567934e-06; //iend
    X[27]=7.25519178924707e-06; //iendIR
    X[28]=0.0201915011292933; //mTOR
    X[29]=9.979808498870719; //mTOR_
    X[30]=9.96820379306998; //r0
    X[31]=0.0221366043399864; //r1
    X[32]=1.22886711962222e-05; //r11
    X[33]=1.51513915390766e-09; //r11x2
    X[34]=1.78725515332219e-14; //r11x22
    X[35]=1.0376421415741e-05; //r12
    X[36]=1.36475817837692e-06; //r1x2
    X[37]=6.39351849488596e-10; //r1x22
    X[38]=5.59231079319369e-20; //r1x22d
    X[39]=0.009349210947381691; //r2
    X[40]=2.18683301945588e-06; //r22
    X[41]=3.87230309356247e-05; //rPbasal
    X[42]=3.31711803810961e-05; //rend
    X[43]=0.000212533941418487; //rendP

}

template <class Precision> __forceinline__ __device__ void PerThread_Finalization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
	
}


#endif
