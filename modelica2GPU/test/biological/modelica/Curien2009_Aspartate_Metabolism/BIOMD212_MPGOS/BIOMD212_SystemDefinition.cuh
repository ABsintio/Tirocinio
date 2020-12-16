
#ifndef BIOMD212_PERTHREAD_SYSTEMDEFINITION_H
#define BIOMD212_PERTHREAD_SYSTEMDEFINITION_H

#include <fstream>
#include <iostream>
#include <string>


template<class Precision> __forceinline__ __device__ void PerThread_OdeFunction(
	int tid, int NT, \
	Precision*    F, Precision*    X, Precision     T, \
	Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi  		
) {
    F[14]=0.0;
    F[0]=0.0;
    F[20]=(sPAR[64] * ((sPAR[24] * (X[12] * (X[4] / (1.0 + pow((X[20] / sPAR[23]),sPAR[25]))))) + ((sPAR[27] * (X[13] * (X[4] / (1.0 + pow((X[20] / sPAR[26]),sPAR[28]))))) + (((-(sPAR[60])) * (X[20] / (sPAR[42] + X[20]))) - (sPAR[41] * (X[19] * (X[20] / (sPAR[40] + X[20]))))))));
    F[6]=0.0;
    F[8]=(sPAR[64] * ((X[0] * ((sPAR[2] - (sPAR[3] * X[8])) / (1.0 + pow((X[20] * ((1.0 + (X[6] / sPAR[0])) / sPAR[1])),sPAR[4])))) + ((X[1] * ((sPAR[6] - (sPAR[7] * X[8])) / (1.0 + pow((X[20] / sPAR[5]),sPAR[8])))) + ((X[2] * ((sPAR[14] - (sPAR[15] * X[8])) / (1.0 + pow((X[28] / sPAR[13]),sPAR[16])))) + ((X[3] * ((sPAR[10] - (sPAR[11] * X[8])) / (1.0 + pow((X[28] / sPAR[9]),sPAR[12])))) + (X[5] * ((sPAR[18] * X[4]) - (sPAR[17] * X[8]))))))));
    F[1]=0.0;
    F[2]=0.0;
    F[3]=0.0;
    F[28]=(sPAR[64] * ((X[27] * (X[22] * ((sPAR[57] + (sPAR[55] * (pow(X[6],sPAR[58]) / sPAR[51]))) / ((1.0 + (pow(X[6],sPAR[58]) / sPAR[51])) * ((sPAR[50] * ((1.0 + (X[6] / sPAR[52])) * ((1.0 + (X[23] / sPAR[56])) / ((1.0 + (X[6] / sPAR[53])) * (1.0 + (pow(X[6],sPAR[58]) / sPAR[54])))))) + X[22]))))) + ((X[28] * (((-(X[25])) * (sPAR[46] / (1.0 + pow((X[17] / (sPAR[43] + (sPAR[44] * (X[30] / (sPAR[45] + X[30]))))),sPAR[47])))) - (sPAR[60] / (sPAR[59] + X[28])))) - (sPAR[49] * (X[26] * (X[28] / (sPAR[48] + X[28])))))));
    F[5]=0.0;
    F[4]=(sPAR[64] * ((X[5] * ((sPAR[17] * X[8]) - (sPAR[18] * X[4]))) + (((((-(sPAR[32])) * (X[3] * (X[4] * (sPAR[31] + (sPAR[30] / (1.0 + (X[28] / sPAR[29]))))))) - (sPAR[24] * (X[12] * (X[4] / (1.0 + pow((X[20] / sPAR[23]),sPAR[25])))))) - (sPAR[27] * (X[13] * (X[4] / (1.0 + pow((X[20] / sPAR[26]),sPAR[28])))))) - (sPAR[36] * (X[2] * (X[4] * (sPAR[35] + (sPAR[34] / (1.0 + (X[28] / sPAR[33]))))))))));
    F[12]=0.0;
    F[13]=0.0;
    F[16]=(sPAR[64] * ((sPAR[36] * (X[2] * (X[4] * (sPAR[35] + (sPAR[34] / (1.0 + (X[28] / sPAR[33]))))))) + ((sPAR[32] * (X[3] * (X[4] * (sPAR[31] + (sPAR[30] / (1.0 + (X[28] / sPAR[29]))))))) - (sPAR[38] * (X[15] * (X[16] / (sPAR[37] + X[16])))))));
    F[22]=(sPAR[64] * ((sPAR[38] * (X[15] * (X[16] / (sPAR[37] + X[16])))) + (X[22] * (((-(X[27])) * ((sPAR[57] + (sPAR[55] * (pow(X[6],sPAR[58]) / sPAR[51]))) / ((1.0 + (pow(X[6],sPAR[58]) / sPAR[51])) * ((sPAR[50] * ((1.0 + (X[6] / sPAR[52])) * ((1.0 + (X[23] / sPAR[56])) / ((1.0 + (X[6] / sPAR[53])) * (1.0 + (pow(X[6],sPAR[58]) / sPAR[54])))))) + X[22])))) - (X[9] * (sPAR[22] / (((sPAR[21] * ((1.0 + (X[23] / sPAR[20])) / (1.0 + (sPAR[19] / X[10])))) + X[22]) * (1.0 + (sPAR[19] / X[10])))))))));
    F[15]=0.0;
    F[27]=0.0;
    F[23]=0.0;
    F[10]=0.0;
    F[9]=0.0;
    F[25]=0.0;
    F[17]=(sPAR[64] * ((X[25] * (X[28] * (sPAR[46] / (1.0 + pow((X[17] / (sPAR[43] + (sPAR[44] * (X[30] / (sPAR[45] + X[30]))))),sPAR[47]))))) - (sPAR[60] * (X[17] / (sPAR[39] + X[17])))));
    F[30]=0.0;
    F[19]=0.0;
    F[26]=0.0;
    F[24]=0.0;
    F[18]=0.0;
    F[29]=0.0;
    F[21]=0.0;
    F[11]=0.0;
    F[7]=0.0;

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
    sPAR[0]=3.5; //AK1_AdoMet_Ka_app_exp_Vak1
    sPAR[1]=550.0; //AK1_Lys_Ki_app_exp_Vak1
    sPAR[2]=5.65; //AK1_kforward_app_exp_Vak1
    sPAR[3]=1.6; //AK1_kreverse_app_exp_Vak1
    sPAR[4]=2.0; //AK1_nH_exp_Vak1
    sPAR[5]=22.0; //AK2_Lys_Ki_app_exp_Vak2
    sPAR[6]=3.15; //AK2_kforward_app_exp_Vak2
    sPAR[7]=0.86; //AK2_kreverse_app_exp_Vak2
    sPAR[8]=1.1; //AK2_nH_exp_Vak2
    sPAR[9]=109.0; //AKII_Thr_Ki_app_exp_VakII
    sPAR[10]=1.35; //AKII_kforward_app_exp_VakII
    sPAR[11]=0.22; //AKII_kreverse_app_exp_VakII
    sPAR[12]=2.0; //AKII_nH_exp_VakII
    sPAR[13]=124.0; //AKI_Thr_Ki_app_exp_VakI
    sPAR[14]=0.36; //AKI_kforward_app_exp_VakI
    sPAR[15]=0.15; //AKI_kreverse_app_exp_VakI
    sPAR[16]=2.0; //AKI_nH_exp_VakI
    sPAR[17]=0.9; //ASADH_kforward_app_exp_Vasadh
    sPAR[18]=0.23; //ASADH_kreverse_app_exp_Vasadh
    sPAR[19]=460.0; //CGS_Cys_Km_exp_Vcgs
    sPAR[20]=2000.0; //CGS_Phosphate_Ki_exp_Vcgs
    sPAR[21]=2500.0; //CGS_Phser_Km_exp_Vcgs
    sPAR[22]=30.0; //CGS_kcat_exp_Vcgs
    sPAR[23]=10.0; //DHDPS1_Lys_Ki_app_exp_Vdhdps1
    sPAR[24]=1.0; //DHDPS1_k_app_exp_Vdhdps1
    sPAR[25]=2.0; //DHDPS1_nH_exp_Vdhdps1
    sPAR[26]=33.0; //DHDPS2_Lys_Ki_app_exp_Vdhdps2
    sPAR[27]=1.0; //DHDPS2_k_app_exp_Vdhdps2
    sPAR[28]=2.0; //DHDPS2_nH_exp_Vdhdps2
    sPAR[29]=8500.0; //HSDHII_Thr_Ki_app_exp_Vhsdh2
    sPAR[30]=0.75; //HSDHII_Thr_relative_inhibition_app_exp_Vhsdh2
    sPAR[31]=0.25; //HSDHII_Thr_relative_residual_activity_app_exp_Vhsdh2
    sPAR[32]=0.64; //HSDHII_kforward_app_exp_Vhsdh2
    sPAR[33]=400.0; //HSDHI_Thr_Ki_app_exp_Vhsdh1
    sPAR[34]=0.86; //HSDHI_Thr_relative_inhibition_app_exp_Vhsdh1
    sPAR[35]=0.14; //HSDHI_Thr_relative_residual_activity_app_exp_Vhsdh1
    sPAR[36]=0.84; //HSDHI_kforward_app_exp_Vhsdh1
    sPAR[37]=14.0; //HSK_Hser_app_exp_Vhsk
    sPAR[38]=2.8; //HSK_kcat_app_exp_Vhsk
    sPAR[39]=20.0; //Ile_tRNAS_Ile_Km_VileTRNA
    sPAR[40]=13000.0; //LKR_Lys_Km_exp_VlysKR
    sPAR[41]=3.1; //LKR_kcat_exp_VlysKR
    sPAR[42]=25.0; //Lys_tRNAS_Lys_Km_VlysTRNA
    sPAR[43]=30.0; //TD_Ile_Ki_no_Val_app_exp_Vtd
    sPAR[44]=73.0; //TD_Val_Ka1_app_exp_Vtd
    sPAR[45]=615.0; //TD_Val_Ka2_app_exp_Vtd
    sPAR[46]=0.0124; //TD_k_app_exp_Vtd
    sPAR[47]=3.0; //TD_nH_app_exp_Vtd
    sPAR[48]=7100.0; //THA_Thr_Km_exp_Vtha
    sPAR[49]=1.7; //THA_kcat_exp_Vtha
    sPAR[50]=250.0; //TS1_AdoMEt_Km_no_AdoMet_exp_Vts1
    sPAR[51]=73.0; //TS1_AdoMet_Ka1_exp_Vts1
    sPAR[52]=0.5; //TS1_AdoMet_Ka2_exp_Vts1
    sPAR[53]=1.09; //TS1_AdoMet_Ka3_exp_Vts1
    sPAR[54]=140.0; //TS1_AdoMet_Ka4_exp_Vts1
    sPAR[55]=3.5; //TS1_AdoMet_kcatmax_exp_Vts1
    sPAR[56]=1000.0; //TS1_Phosphate_Ki_exp_Vts1
    sPAR[57]=0.42; //TS1_kcatmin_exp_Vts1
    sPAR[58]=2.0; //TS1_nH_exp_Vts1
    sPAR[59]=100.0; //Thr_tRNAS_Thr_Km_VthrTRNA
    sPAR[60]=0.43; //V_AA_RS
    sPAR[61]=0.43; //V_Ile_RS
    sPAR[62]=0.43; //V_Lys_RS
    sPAR[63]=0.43; //V_Thr_RS
    sPAR[64]=1.0; //c1
    X[0]=0.25; //AK1
    X[1]=0.25; //AK2
    X[2]=0.63; //AKHSDHI
    X[3]=0.63; //AKHSDHII
    X[4]=0.0; //ASA
    X[5]=11.6; //ASADH
    X[6]=20.0; //AdoMet
    X[7]=1500.0; //Asp
    X[8]=0.0; //AspP
    X[9]=0.7; //CGS
    X[10]=15.0; //Cys
    X[11]=0.0; //Cysta
    X[12]=1.6; //DHDPS1
    X[13]=1.6; //DHDPS2
    X[14]=0.0; //Gly
    X[15]=4.0; //HSK
    X[16]=0.0; //Hser
    X[17]=0.0; //Ile
    X[18]=0.0; //IleTRNA
    X[19]=0.0; //LKR
    X[20]=0.0; //Lys
    X[21]=0.0; //LysTRNA
    X[22]=0.0; //PHser
    X[23]=10000.0; //Phosphate
    X[24]=0.0; //Sacc
    X[25]=0.36; //TD
    X[26]=0.0; //THA
    X[27]=7.4; //TS1
    X[28]=0.0; //Thr
    X[29]=0.0; //ThrTRNA
    X[30]=100.0; //Val

}

template <class Precision> __forceinline__ __device__ void PerThread_Finalization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
	
}


#endif
