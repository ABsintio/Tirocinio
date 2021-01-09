
#ifndef POWERSYSTEMSTEPLOAD_N_2_M_4_PERTHREAD_SYSTEMDEFINITION_H
#define POWERSYSTEMSTEPLOAD_N_2_M_4_PERTHREAD_SYSTEMDEFINITION_H

#include <fstream>
#include <iostream>
#include <string>
#include "Functions.cuh"


template<class Precision> __forceinline__ __device__ void PerThread_OdeFunction(
	int tid, int NT, \
	Precision*    F, Precision*    X, Precision     T, \
	Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi  		
) {
    ACC[5]=0.0;
    ACC[9]=0.0;
    ACC[2]=0.0;
    ACC[6]=0.0;
    ACC[41]=1.0;
    ACC[21]=500000000.0;
    ACC[45]=1.0;
    ACC[40]=1.0;
    ACC[20]=500000000.0;
    ACC[44]=1.0;
    ACC[10]=500000000.0;
    ACC[12]=500000000.0;
    ACC[11]=0.0;
    ACC[22]=X[15];
    ACC[23]=X[1];
    ACC[24]=X[2];
    ACC[25]=X[3];
    ACC[26]=X[4];
    ACC[27]=X[16];
    ACC[28]=X[5];
    ACC[29]=X[6];
    ACC[30]=X[7];
    ACC[31]=X[8];
    ACC[8]=(500000000.0 * sin((X[22] - X[21])));
    ACC[7]=(500000000.0 * sin((X[21] - X[22])));
    ACC[17]=(0.5 * X[0]);
    ACC[16]=ACC[17];
    ACC[34]=(1.0 - X[15]);
    ACC[50]=(X[23] * X[15]);
    ACC[42]=((sPAR[23] * ACC[50]) + X[17]);
    ACC[18]=(500000000.0 * ACC[42]);
    ACC[13]=(0.1591549430918953 * X[13]);
    ACC[32]=(-1.0 + (0.02 * ACC[13]));
    ACC[46]=(1.0 + ((2e-09 * ACC[17]) - (ACC[32] / sPAR[25])));
    ACC[36]=(ACC[46] - ACC[42]);
    ACC[48]=(ACC[46] + (sPAR[7] * (ACC[34] + (X[9] / sPAR[19]))));
    ACC[52]=(ACC[46] + (sPAR[9] * (ACC[36] + (X[11] / sPAR[21]))));
    ACC[38]=ACC[13];
    ACC[35]=(1.0 - X[16]);
    ACC[51]=(X[24] * X[16]);
    ACC[43]=((sPAR[24] * ACC[51]) + X[18]);
    ACC[19]=(500000000.0 * ACC[43]);
    ACC[39]=(0.1591549430918953 * X[14]);
    ACC[33]=(-1.0 + (0.02 * ACC[39]));
    ACC[47]=(1.0 + ((2e-09 * ACC[17]) - (ACC[33] / sPAR[26])));
    ACC[37]=(ACC[47] - ACC[43]);
    ACC[49]=(ACC[47] + (sPAR[8] * (ACC[35] + (X[10] / sPAR[20]))));
    ACC[53]=(ACC[47] + (sPAR[10] * (ACC[37] + (X[12] / sPAR[22]))));
    ACC[3]=(sPAR[0] * (X[13] - X[14]));
    ACC[0]=(ACC[7] + ACC[3]);
    ACC[14]=ACC[0];
    ACC[4]=(sPAR[0] * (X[14] - X[13]));
    ACC[1]=(500000000.0 + (ACC[8] + ACC[4]));
    ACC[15]=ACC[1];
    F[9]=ACC[34];
    F[21]=(-314.1592653589793 + X[13]);
    F[17]=((((1.0 - sPAR[23]) * ACC[50]) - X[17]) / sPAR[37]);
    F[1]=((4.0 * ((ACC[50] * (X[15] - X[1])) + (0.25 * (sPAR[11] * (sPAR[17] - X[1]))))) / sPAR[35]);
    F[2]=((4.0 * ((ACC[50] * (X[1] - X[2])) + (0.25 * (sPAR[11] * (sPAR[17] - X[2]))))) / sPAR[35]);
    F[3]=((4.0 * ((ACC[50] * (X[2] - X[3])) + (0.25 * (sPAR[11] * (sPAR[17] - X[3]))))) / sPAR[35]);
    F[4]=((4.0 * ((ACC[50] * (X[3] - X[4])) + (0.25 * (sPAR[11] * (sPAR[17] - X[4]))))) / sPAR[35]);
    F[15]=((X[19] - ACC[50]) / sPAR[31]);
    F[11]=ACC[36];
    F[19]=((ACC[48] - X[19]) / sPAR[33]);
    F[23]=((ACC[52] - X[23]) / sPAR[39]);
    F[0]=((1000000000.0 * ((sPAR[4] - ACC[13]) / (sPAR[4] * sPAR[3]))) / sPAR[2]);
    F[10]=ACC[35];
    F[22]=(-314.1592653589793 + X[14]);
    F[18]=((((1.0 - sPAR[24]) * ACC[51]) - X[18]) / sPAR[38]);
    F[5]=((4.0 * ((ACC[51] * (X[16] - X[5])) + (0.25 * (sPAR[12] * (sPAR[18] - X[5]))))) / sPAR[36]);
    F[6]=((4.0 * ((ACC[51] * (X[5] - X[6])) + (0.25 * (sPAR[12] * (sPAR[18] - X[6]))))) / sPAR[36]);
    F[7]=((4.0 * ((ACC[51] * (X[6] - X[7])) + (0.25 * (sPAR[12] * (sPAR[18] - X[7]))))) / sPAR[36]);
    F[8]=((4.0 * ((ACC[51] * (X[7] - X[8])) + (0.25 * (sPAR[12] * (sPAR[18] - X[8]))))) / sPAR[36]);
    F[16]=((X[20] - ACC[51]) / sPAR[32]);
    F[12]=ACC[37];
    F[20]=((ACC[49] - X[20]) / sPAR[34]);
    F[24]=((ACC[53] - X[24]) / sPAR[40]);
    F[13]=((ACC[18] - ACC[0]) / (25330.29591058444 * X[13]));
    F[14]=((ACC[19] - ACC[1]) / (25330.29591058444 * X[14]));

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
    ACC[6]=0.0; //P_ex[1,1]
    ACC[10]=500000000.0; //P_f
    X[21]=0.0; //generator[1].theta
    X[22]=0.0; //generator[2].theta
    ACC[7]=(ACC[10] * sin((X[21] - X[22]))); //P_ex[1,2]
    ACC[2]=0.0; //P_diss[1,1]
    ACC[3]=0.0; //P_diss[1,2]
    ACC[11]=0.0; //P_load[1]
    ACC[0]=(ACC[6] + (ACC[7] + (ACC[2] + (ACC[3] + ACC[11])))); //P_a[1]
    ACC[8]=(ACC[10] * sin((X[22] - X[21]))); //P_ex[2,1]
    ACC[9]=0.0; //P_ex[2,2]
    ACC[4]=0.0; //P_diss[2,1]
    ACC[5]=0.0; //P_diss[2,2]
    ACC[12]=500000000.0; //P_load[2]
    ACC[1]=(ACC[8] + (ACC[9] + (ACC[4] + (ACC[5] + ACC[12])))); //P_a[2]
    X[13]=314.1592653589793; //generator[1].omega
    ACC[38]=(0.1591549430918953 * X[13]); //generator[1].f
    ACC[13]=ACC[38]; //f
    ACC[14]=0.0; //generator[1].P_a
    ACC[15]=0.0; //generator[2].P_a
    X[0]=0.0; //P_sfc
    ACC[16]=(0.5 * X[0]); //generator[1].P_sfc
    ACC[17]=ACC[16]; //generator[2].P_sfc
    ACC[18]=0.0; //generator[1].P_t
    ACC[19]=0.0; //generator[2].P_t
    ACC[20]=500000000.0; //generator[1].P_t_0
    ACC[21]=500000000.0; //generator[2].P_t_0
    ACC[22]=0.0; //generator[1].T_s_b[1]
    ACC[23]=0.0; //generator[1].T_s_b[2]
    ACC[24]=0.0; //generator[1].T_s_b[3]
    ACC[25]=0.0; //generator[1].T_s_b[4]
    ACC[26]=0.0; //generator[1].T_s_b[5]
    ACC[27]=0.0; //generator[2].T_s_b[1]
    ACC[28]=0.0; //generator[2].T_s_b[2]
    ACC[29]=0.0; //generator[2].T_s_b[3]
    ACC[30]=0.0; //generator[2].T_s_b[4]
    ACC[31]=0.0; //generator[2].T_s_b[5]
    ACC[32]=(-1.0 + (0.02 * ACC[38])); //generator[1].delta_f
    ACC[33]=0.0; //generator[2].delta_f
    ACC[40]=1.0; //generator[1].p_0
    X[15]=1.0; //generator[1].p
    ACC[34]=(ACC[40] - X[15]); //generator[1].err_p
    ACC[41]=1.0; //generator[2].p_0
    X[16]=1.0; //generator[2].p
    ACC[35]=(ACC[41] - X[16]); //generator[2].err_p
    ACC[36]=0.0; //generator[1].err_p_t
    ACC[37]=0.0; //generator[2].err_p_t
    ACC[39]=0.0; //generator[2].f
    ACC[42]=0.0; //generator[1].p_t
    ACC[43]=0.0; //generator[2].p_t
    ACC[44]=1.0; //generator[1].p_t_0
    ACC[45]=1.0; //generator[2].p_t_0
    sPAR[25]=0.1; //generator[1].droop
    ACC[46]=(ACC[44] + ((2e-09 * ACC[16]) - (ACC[32] / sPAR[25]))); //generator[1].p_t_0_fc
    sPAR[26]=0.1; //generator[2].droop
    ACC[47]=(ACC[45] + ((2e-09 * ACC[17]) - (ACC[33] / sPAR[26]))); //generator[2].p_t_0_fc
    ACC[48]=0.0; //generator[1].q_ev_0
    ACC[49]=0.0; //generator[2].q_ev_0
    ACC[50]=0.0; //generator[1].w_s
    ACC[51]=0.0; //generator[2].w_s
    ACC[52]=0.0; //generator[1].y_t_0
    ACC[53]=0.0; //generator[2].y_t_0
    sPAR[0]=0.0; //P_d
    sPAR[1]=500000000.0; //P_nom
    sPAR[2]=20.0; //T_sfc
    sPAR[3]=0.1; //droop
    sPAR[4]=50.0; //f_ref
    sPAR[5]=25330.29591058444; //generator[1].J
    sPAR[6]=25330.29591058444; //generator[2].J
    sPAR[7]=10.0; //generator[1].Kp_p
    sPAR[8]=10.0; //generator[2].Kp_p
    sPAR[9]=2.0; //generator[1].Kp_t
    sPAR[10]=2.0; //generator[2].Kp_t
    sPAR[11]=2.0; //generator[1].NTU
    sPAR[12]=2.0; //generator[2].NTU
    sPAR[13]=500000000.0; //generator[1].P_nom
    sPAR[14]=500000000.0; //generator[2].P_nom
    sPAR[15]=5.0; //generator[1].T_a
    sPAR[16]=5.0; //generator[2].T_a
    sPAR[17]=1.5; //generator[1].T_source
    sPAR[18]=1.5; //generator[2].T_source
    sPAR[19]=70.0; //generator[1].Ti_p
    sPAR[20]=70.0; //generator[2].Ti_p
    sPAR[21]=0.3; //generator[1].Ti_t
    sPAR[22]=0.3; //generator[2].Ti_t
    sPAR[23]=0.3; //generator[1].alpha
    sPAR[24]=0.3; //generator[2].alpha
    sPAR[27]=50.0; //generator[1].f_ref
    sPAR[28]=50.0; //generator[2].f_ref
    sPAR[29]=314.1592653589793; //generator[1].omega_ref
    sPAR[30]=314.1592653589793; //generator[2].omega_ref
    sPAR[31]=200.0; //generator[1].tau_b
    sPAR[32]=200.0; //generator[2].tau_b
    sPAR[33]=3.0; //generator[1].tau_q
    sPAR[34]=3.0; //generator[2].tau_q
    sPAR[35]=100.0; //generator[1].tau_sh
    sPAR[36]=100.0; //generator[2].tau_sh
    sPAR[37]=8.0; //generator[1].tau_t
    sPAR[38]=8.0; //generator[2].tau_t
    sPAR[39]=0.3; //generator[1].tau_y
    sPAR[40]=0.3; //generator[2].tau_y
    sPAR[41]=0.0; //omega_ref
    sPAR[42]=0.0; //generator[1].pi
    sPAR[43]=0.0; //generator[2].pi
    sPAR[44]=0.0; //pi
    sPARi[0]=4; //M
    sPARi[1]=2; //N
    sPARi[2]=4; //generator[1].N
    sPARi[3]=4; //generator[2].N
    X[1]=((X[15] + (0.25 * (sPAR[11] * sPAR[17]))) / (1.0 + (0.25 * sPAR[11]))); //generator[1].T_s[1]
    X[2]=((X[1] + (0.25 * (sPAR[11] * sPAR[17]))) / (1.0 + (0.25 * sPAR[11]))); //generator[1].T_s[2]
    X[3]=((X[2] + (0.25 * (sPAR[11] * sPAR[17]))) / (1.0 + (0.25 * sPAR[11]))); //generator[1].T_s[3]
    X[4]=((X[3] + (0.25 * (sPAR[11] * sPAR[17]))) / (1.0 + (0.25 * sPAR[11]))); //generator[1].T_s[4]
    X[5]=((X[16] + (0.25 * (sPAR[12] * sPAR[18]))) / (1.0 + (0.25 * sPAR[12]))); //generator[2].T_s[1]
    X[6]=((X[5] + (0.25 * (sPAR[12] * sPAR[18]))) / (1.0 + (0.25 * sPAR[12]))); //generator[2].T_s[2]
    X[7]=((X[6] + (0.25 * (sPAR[12] * sPAR[18]))) / (1.0 + (0.25 * sPAR[12]))); //generator[2].T_s[3]
    X[8]=((X[7] + (0.25 * (sPAR[12] * sPAR[18]))) / (1.0 + (0.25 * sPAR[12]))); //generator[2].T_s[4]
    X[9]=0.0; //generator[1].err_p_int
    X[10]=0.0; //generator[2].err_p_int
    X[11]=0.0; //generator[1].err_p_t_int
    X[12]=0.0; //generator[2].err_p_t_int
    X[14]=314.1592653589793; //generator[2].omega
    X[17]=(1.0 - sPAR[23]); //generator[1].p_t_lp
    X[18]=(1.0 - sPAR[24]); //generator[2].p_t_lp
    X[19]=1.0; //generator[1].q_ev
    X[20]=1.0; //generator[2].q_ev
    X[23]=1.0; //generator[1].y_t
    X[24]=1.0; //generator[2].y_t

}

template <class Precision> __forceinline__ __device__ void PerThread_Finalization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
	
}


#endif
