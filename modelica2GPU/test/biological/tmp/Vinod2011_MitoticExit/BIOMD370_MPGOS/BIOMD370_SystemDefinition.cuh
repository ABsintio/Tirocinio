
#ifndef BIOMD370_PERTHREAD_SYSTEMDEFINITION_H
#define BIOMD370_PERTHREAD_SYSTEMDEFINITION_H

#include <fstream>
#include <iostream>
#include <string>
#include "Functions.cuh"


template<class Precision> __forceinline__ __device__ void PerThread_OdeFunction(
	int tid, int NT, \
	Precision*    F, Precision*    X, Precision     T, \
	Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi  		
) {
    ACC[14]=(sPAR[49] + (sPAR[50] * X[10]));
    ACC[9]=(sPAR[34] + (sPAR[35] * X[2]));
    ACC[8]=(sPAR[31] + ((sPAR[32] * X[2]) + (sPAR[33] * X[3])));
    ACC[0]=(sPAR[0] + ((-(X[0])) - X[18]));
    ACC[10]=((sPAR[29] * X[0]) + (sPAR[30] * ACC[0]));
    ACC[11]=((sPAR[21] * X[0]) + (sPAR[22] * ACC[0]));
    ACC[4]=(sPAR[10] + (((-(X[13])) - X[18]) - X[14]));
    ACC[3]=(X[7] - X[8]);
    ACC[5]=(sPAR[11] * ((1.0 + (sPAR[71] * (sPAR[51] * ACC[3]))) / (1.0 + (sPAR[51] + ACC[3]))));
    ACC[12]=(((sPAR[28] * ACC[5]) + (sPAR[27] * X[0])) / (sPAR[6] + (sPAR[10] - X[12])));
    ACC[6]=(X[15] - X[8]);
    ACC[7]=(X[20] + ((-(X[23])) - X[24]));
    ACC[2]=(X[5] - X[24]);
    ACC[1]=(X[4] + (sPAR[1] - X[23]));
    ACC[13]=(sPAR[47] + ((sPAR[45] * ACC[2]) + ((sPAR[46] * ACC[1]) + (sPAR[48] * X[6]))));
    ACC[15]=(sPAR[68] + ((sPAR[69] * ACC[1]) + (sPAR[70] * ACC[2])));
    ACC[16]=(sPAR[59] + ((sPAR[60] * ACC[1]) + (sPAR[61] * ACC[2])));
    ACC[17]=(((sPAR[66] * ACC[1]) + (sPAR[67] * X[10])) / (sPAR[6] + X[12]));
    F[25]=0.0;
    F[13]=0.0;
    F[18]=((sPAR[89] * ((sPAR[10] + ((-(X[14])) - X[18])) * X[0])) + (((-(sPAR[92])) * X[18]) - (sPAR[65] * (X[17] * X[19]))));
    F[16]=(sPAR[86] + ((sPAR[85] * X[11]) + (((-(sPAR[41])) - (sPAR[42] * X[3])) * X[16])));
    F[7]=(sPAR[80] - (sPAR[37] * X[7]));
    F[15]=(sPAR[84] + ((sPAR[83] * X[9]) + (((-(sPAR[39])) - (sPAR[40] * X[2])) * X[15])));
    F[2]=(sPAR[73] + ((sPAR[72] * X[11]) + (((-(sPAR[25])) - (sPAR[26] * X[3])) * X[2])));
    F[6]=(sPAR[79] + ((sPAR[78] * X[9]) - (sPAR[36] * X[6])));
    F[5]=(sPAR[77] + ((sPAR[76] * X[9]) - (ACC[9] * X[5])));
    F[4]=(sPAR[74] + ((sPAR[75] * X[11]) - (ACC[8] * X[4])));
    F[0]=((sPAR[65] * (X[17] * X[19])) + ((sPAR[92] * X[18]) + ((sPAR[57] * ACC[0]) + (((-(ACC[14])) * X[0]) - (sPAR[89] * ((sPAR[10] + ((-(X[14])) - X[18])) * X[0]))))));
    F[14]=((sPAR[65] * (X[17] * (sPAR[10] + ((-(X[12])) - X[14])))) - (ACC[12] * X[14]));
    F[22]=(((sPAR[23] + (sPAR[24] * X[17])) * ((1.0 - X[22]) / (1.0 + (sPAR[9] - X[22])))) + (((-(sPAR[64])) - (sPAR[63] / (1.0 + (sPAR[62] * ACC[3])))) * (X[22] / (sPAR[9] + X[22]))));
    F[8]=((sPAR[90] * (ACC[6] * ACC[3])) + ((((((-(sPAR[40])) * X[2]) - sPAR[39]) - sPAR[93]) - sPAR[37]) * X[8]));
    F[20]=(sPAR[88] + ((sPAR[87] * X[21]) - (ACC[13] * X[20])));
    F[24]=((sPAR[20] * (ACC[2] * ACC[7])) + ((((-(sPAR[44])) - ACC[9]) - ACC[13]) * X[24]));
    F[3]=((ACC[10] * ((1.0 - X[3]) / (1.0 + (sPAR[3] - X[3])))) - (ACC[15] * (X[3] / (sPAR[3] + X[3]))));
    F[21]=((ACC[11] * ((sPAR[12] - X[21]) / (sPAR[8] + (sPAR[12] - X[21])))) - (ACC[16] * (X[21] / (sPAR[8] + X[21]))));
    F[12]=((ACC[12] * (sPAR[10] - X[12])) - (ACC[17] * X[12]));
    F[19]=((ACC[17] * (X[18] - X[19])) + ((sPAR[89] * ((sPAR[10] + (((-(X[19])) - X[12]) - X[14])) * X[0])) + ((((-(ACC[12])) - sPAR[92]) * X[19]) - (sPAR[65] * (X[17] * X[19])))));
    F[23]=((sPAR[19] * (ACC[1] * ACC[7])) + ((((-(sPAR[43])) - ACC[8]) - ACC[13]) * X[23]));
    F[11]=(((sPAR[82] + (sPAR[81] * ACC[1])) * ((1.0 - X[11]) / (1.0 + (sPAR[5] - X[11])))) - (sPAR[38] * (X[11] / (sPAR[5] + X[11]))));
    F[9]=((sPAR[16] * ((1.0 - X[9]) / (1.0 + (sPAR[4] - X[9])))) + ((((-(sPAR[54])) * ACC[1]) - (sPAR[56] * ACC[2])) * (X[9] / (sPAR[4] + X[9]))));
    F[17]=(((sPAR[17] + (sPAR[18] * ACC[1])) * ((X[16] - X[17]) / (sPAR[7] + (X[16] - X[17])))) + (X[17] * ((((-(sPAR[58])) / (sPAR[7] + X[17])) - sPAR[41]) - (sPAR[42] * X[3]))));
    F[1]=(((sPAR[14] + (sPAR[15] * ACC[0])) * ((1.0 - X[1]) / (1.0 + (sPAR[2] - X[1])))) + (((-(sPAR[52])) - (sPAR[53] * ACC[1])) * (X[1] / (sPAR[2] + X[1]))));
    F[10]=((X[25] * ((X[22] - X[10]) * (X[1] - X[10]))) + ((X[10] * ((((-(sPAR[64])) - (sPAR[63] / (1.0 + (sPAR[64] * ACC[3])))) / (sPAR[9] + X[22])) - sPAR[91])) + (((-(sPAR[52])) - (sPAR[53] * ACC[1])) * (X[10] / (sPAR[2] + X[1])))));

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
    ACC[0]=0.0; //Cdc14c_1
    ACC[1]=0.0; //Clb2_2
    ACC[2]=0.0; //Clb5_1
    ACC[3]=0.0; //Esp1_1
    ACC[4]=0.0; //Net1_2
    ACC[5]=0.0; //PP_1
    ACC[6]=0.0; //Pds1_1
    ACC[7]=0.0; //Sic1_1
    ACC[8]=0.0; //V2_1
    ACC[9]=0.0; //V6_1
    ACC[10]=0.0; //Vacdh_1
    ACC[11]=0.0; //Vaswi_1
    ACC[12]=0.0; //Vd_1
    ACC[13]=0.0; //Vdsic_1
    ACC[14]=0.0; //Vexp_1
    ACC[15]=0.0; //Vicdh_1
    ACC[16]=0.0; //Viswi_1
    ACC[17]=0.0; //Vp_1
    sPAR[0]=0.5; //Cdc14T_1
    sPAR[1]=0.0; //Clb2nd_1
    sPAR[2]=1.0; //Jcdc15_1
    sPAR[3]=0.01; //Jcdh_1
    sPAR[4]=0.01; //Jmbf_1
    sPAR[5]=0.01; //Jmcm_1
    sPAR[6]=0.05; //Jnet_1
    sPAR[7]=0.1; //Jpolo_1
    sPAR[8]=0.1; //Jswi_1
    sPAR[9]=0.005; //Jtem1_1
    sPAR[10]=1.0; //Net1T_1
    sPAR[11]=1.0; //PPT_1
    sPAR[12]=1.0; //Swi5T_1
    sPAR[13]=1.0; //cell_1
    sPAR[14]=0.03; //kac15_1
    sPAR[15]=0.5; //kac15_2
    sPAR[16]=0.1; //kambf_1
    sPAR[17]=0.0; //kapolo_1
    sPAR[18]=1.0; //kapolo_2
    sPAR[19]=40.0; //kasic2_1
    sPAR[20]=10.0; //kasic5_1
    sPAR[21]=0.2; //kaswi_1
    sPAR[22]=1.0; //kaswi_2
    sPAR[23]=0.0; //katem_1
    sPAR[24]=0.6; //katem_2
    sPAR[25]=0.1; //kd20_1
    sPAR[26]=1.0; //kd20_2
    sPAR[27]=0.1; //kd_1
    sPAR[28]=0.45; //kd_2
    sPAR[29]=0.03; //kdcdh_1
    sPAR[30]=0.3; //kdcdh_2
    sPAR[31]=0.02; //kdclb2_1
    sPAR[32]=0.1; //kdclb2_2
    sPAR[33]=0.4; //kdclb2_3
    sPAR[34]=0.01; //kdclb5_1
    sPAR[35]=1.0; //kdclb5_2
    sPAR[36]=0.25; //kdcln_1
    sPAR[37]=0.004; //kdesp_1
    sPAR[38]=0.25; //kdmcm_1
    sPAR[39]=0.01; //kdpds_1
    sPAR[40]=2.0; //kdpds_2
    sPAR[41]=0.05; //kdpolo_1
    sPAR[42]=0.5; //kdpolo_2
    sPAR[43]=0.1; //kdsic2_1
    sPAR[44]=0.1; //kdsic5_1
    sPAR[45]=2.0; //kdsic_1
    sPAR[46]=2.0; //kdsic_2
    sPAR[47]=0.04; //kdsic_3
    sPAR[48]=1.5; //kdsic_4
    sPAR[49]=0.01; //kexp_1
    sPAR[50]=20.0; //kexp_2
    sPAR[51]=40.0; //ki_1
    sPAR[52]=0.03; //kic15_1
    sPAR[53]=0.2; //kic15_2
    sPAR[54]=0.5; //kimbf_1
    sPAR[55]=0.0; //kimbf_2
    sPAR[56]=0.5; //kimbf_3
    sPAR[57]=1.0; //kimp_1
    sPAR[58]=0.1; //kipolo_1
    sPAR[59]=0.01; //kiswi_1
    sPAR[60]=0.5; //kiswi_2
    sPAR[61]=0.75; //kiswi_3
    sPAR[62]=20.0; //kitem_1
    sPAR[63]=1.0; //kitem_2
    sPAR[64]=0.1; //kitem_3
    sPAR[65]=2.0; //kp_1
    sPAR[66]=0.2; //kp_3
    sPAR[67]=3.0; //kp_4
    sPAR[68]=0.001; //kpcdh_1
    sPAR[69]=0.04; //kpcdh_2
    sPAR[70]=0.75; //kpcdh_3
    sPAR[71]=0.1; //kpp_1
    sPAR[72]=0.05; //ks20_1
    sPAR[73]=0.001; //ks20_2
    sPAR[74]=0.015; //ksclb2_1
    sPAR[75]=0.005; //ksclb2_2
    sPAR[76]=0.01; //ksclb5_1
    sPAR[77]=0.002; //ksclb5_2
    sPAR[78]=0.1; //kscln_1
    sPAR[79]=0.01; //kscln_2
    sPAR[80]=0.001; //ksesp_1
    sPAR[81]=1.0; //ksmcm_1
    sPAR[82]=0.01; //ksmcm_3
    sPAR[83]=0.01; //kspds_1
    sPAR[84]=0.006; //kspds_2
    sPAR[85]=0.05; //kspolo_1
    sPAR[86]=0.001; //kspolo_2
    sPAR[87]=0.2; //kssic_1
    sPAR[88]=0.004; //kssic_2
    sPAR[89]=500.0; //lanet_1
    sPAR[90]=500.0; //lapds_1
    sPAR[91]=0.1; //ldmen_1
    sPAR[92]=1.0; //ldnet_1
    sPAR[93]=1.0; //ldpds_1
    X[0]=0.00214; //Cdc14n_1
    X[1]=0.9330000000000001; //Cdc15_1
    X[2]=0.0; //Cdc20_1
    X[3]=0.0; //Cdh1_1
    X[4]=0.999107; //Clb2T_1
    X[5]=0.201977; //Clb5T_1
    X[6]=0.04079; //Cln_1
    X[7]=0.25; //Esp1T_1
    X[8]=0.24857; //Esp1b_1
    X[9]=0.001977; //MBF_1
    X[10]=0.0; //MEN_1
    X[11]=0.996743; //Mcm_1
    X[12]=0.0119; //Net1dep_1
    X[13]=0.013; //Net1p_1
    X[14]=0.0119; //Net1pp_1
    X[15]=0.601977; //Pds1T_1
    X[16]=1.0; //PoloT_1
    X[17]=1.0; //Polo_1
    X[18]=0.483; //RENT_1
    X[19]=0.014; //RENTp_1
    X[20]=0.001683; //Sic1T_1
    X[21]=0.0; //Swi5_1
    X[22]=1.0; //Tem1_1
    X[23]=0.00145; //Trim2_1
    X[24]=0.0; //Trim5_1
    X[25]=100.0; //lamen_1

}

template <class Precision> __forceinline__ __device__ void PerThread_Finalization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
	
}


#endif
