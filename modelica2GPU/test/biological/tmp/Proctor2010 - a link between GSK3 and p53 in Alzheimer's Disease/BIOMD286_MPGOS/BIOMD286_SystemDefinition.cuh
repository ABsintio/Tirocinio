
#ifndef BIOMD286_PERTHREAD_SYSTEMDEFINITION_H
#define BIOMD286_PERTHREAD_SYSTEMDEFINITION_H

#include <fstream>
#include <iostream>
#include <string>
#include "Functions.cuh"


template<class Precision> __forceinline__ __device__ void PerThread_OdeFunction(
	int tid, int NT, \
	Precision*    F, Precision*    X, Precision     T, \
	Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi  		
) {
    ACC[2]=(X[54] + (X[35] + (X[56] + (X[36] + (X[37] + (X[38] + (X[39] + (X[23] + X[57]))))))));
    ACC[1]=(X[20] + (X[35] + (X[22] + (X[36] + (X[37] + (X[38] + (X[39] + (X[23] + (X[29] + (X[30] + (X[31] + (X[32] + (X[24] + (X[25] + (X[26] + (X[27] + (X[33] + X[28])))))))))))))))));
    ACC[0]=piecewise(25, T >= 3600.0 && T <= 3660.0, 0);
    F[11]=0.0;
    F[0]=0.0;
    F[1]=0.0;
    F[45]=0.0;
    F[53]=0.0;
    F[46]=0.0;
    F[4]=0.0;
    F[40]=(sPAR[55] * (X[9] * (-1.0 + (X[9] + X[40]))));
    F[41]=0.0;
    F[43]=((sPAR[18] * (X[47] * X[42])) - (sPAR[25] * X[43]));
    F[10]=(sPAR[33] * (X[9] * X[42]));
    F[9]=((sPAR[10] * (X[48] * (-1.0 + X[48]))) + ((2.0 * (sPAR[10] * (X[48] * X[9]))) + ((sPAR[11] * (X[49] * (-1.0 + X[49]))) + ((2.0 * (sPAR[11] * (X[49] * X[9]))) + ((sPAR[9] * (X[47] * (-1.0 + X[47]))) + ((2.0 * (sPAR[9] * (X[47] * X[9]))) + (((((((-(sPAR[33])) * (X[9] * X[42])) - (sPAR[10] * (X[48] * X[9]))) - (sPAR[55] * (X[9] * (-1.0 + X[9])))) - (sPAR[9] * (X[47] * X[9]))) - (sPAR[11] * (X[49] * X[9]))) - (sPAR[55] * (X[9] * X[40])))))))));
    F[19]=((sPAR[15] * X[47]) - (sPAR[45] * X[19]));
    F[49]=((sPAR[42] * (X[48] * (X[17] + X[18]))) + ((sPAR[41] * (X[16] * X[48])) + ((X[49] * (((-(sPAR[30])) * X[41]) - (sPAR[11] * (-1.0 + X[49])))) - (sPAR[11] * (X[49] * X[9])))));
    F[48]=((sPAR[42] * (X[47] * (X[17] + X[18]))) + ((sPAR[41] * (X[16] * X[47])) + ((sPAR[30] * (X[49] * X[41])) + ((X[48] * (((-(sPAR[42])) * (X[17] + X[18])) - (sPAR[10] * (-1.0 + X[48])))) + ((X[48] * (((-(sPAR[10])) * X[9]) - (sPAR[30] * X[41]))) - (sPAR[41] * (X[16] * X[48])))))));
    F[47]=((sPAR[45] * X[19]) + ((sPAR[30] * (X[48] * X[41])) + ((sPAR[51] * X[46]) + ((X[47] * (((-(sPAR[42])) * (X[17] + X[18])) - sPAR[15])) + ((X[47] * (((-(sPAR[18])) * X[42]) - (sPAR[9] * (-1.0 + (X[47] + X[9]))))) - (sPAR[41] * (X[16] * X[47])))))));
    F[6]=(sPAR[36] * (X[7] * (-1.0 + (X[7] + X[6]))));
    F[7]=((sPAR[8] * (X[5] * ((0.5 * (-1.0 + X[5])) + (2.0 * X[7])))) + ((X[7] * (sPAR[31] - (sPAR[33] * X[42]))) + (((-(X[7])) * (sPAR[31] + (sPAR[36] * (-1.0 + (X[7] + X[6]))))) - (sPAR[8] * (X[5] * X[7])))));
    F[8]=(sPAR[33] * (X[7] * X[42]));
    F[5]=((sPAR[43] * (X[17] + X[18])) + (X[5] * (((-(sPAR[8])) * (-1.0 + (X[5] + X[7]))) - sPAR[22])));
    F[18]=((sPAR[50] * X[18]) + ((sPAR[14] * (X[16] * X[56])) + ((sPAR[39] * (X[39] * X[18])) + ((X[18] * ((sPAR[42] * (X[47] + X[48])) + (sPAR[43] + ((-(sPAR[50])) - sPAR[44])))) + (((-(X[18])) * (sPAR[43] + (sPAR[42] * (X[47] + X[48])))) - (sPAR[39] * (X[39] * X[18])))))));
    F[17]=((sPAR[50] * X[17]) + ((sPAR[14] * (X[16] * X[54])) + ((sPAR[39] * (X[39] * X[17])) + ((X[17] * ((sPAR[42] * (X[47] + X[48])) + (sPAR[43] + ((-(sPAR[50])) - sPAR[44])))) + (((-(X[17])) * (sPAR[43] + (sPAR[42] * (X[47] + X[48])))) - (sPAR[39] * (X[39] * X[17])))))));
    F[16]=((sPAR[44] * (X[17] + X[18])) + ((sPAR[38] * (X[39] * X[16])) + ((X[16] * ((sPAR[41] * (X[47] + X[48])) - (sPAR[14] * X[54]))) + ((X[16] * (((-(sPAR[14])) * X[56]) - (sPAR[41] * X[48]))) + (((-(sPAR[41])) * (X[16] * X[47])) - (sPAR[38] * (X[39] * X[16])))))));
    F[28]=((sPAR[17] * (X[27] * X[42])) - (sPAR[23] * (X[28] * X[53])));
    F[33]=((sPAR[17] * (X[32] * X[42])) - (sPAR[23] * (X[33] * X[53])));
    F[57]=((sPAR[17] * (X[23] * X[42])) - (sPAR[26] * (X[53] * (X[57] * (X[4] / (5000.0 + X[4]))))));
    F[27]=((sPAR[2] * (X[26] * X[15])) + (X[27] * (((-(sPAR[5])) * X[21]) - (sPAR[17] * X[42]))));
    F[26]=((sPAR[2] * (X[25] * X[15])) + ((sPAR[5] * (X[27] * X[21])) + (X[26] * (((-(sPAR[2])) * X[15]) - (sPAR[5] * X[21])))));
    F[25]=((sPAR[2] * (X[24] * X[15])) + ((sPAR[5] * (X[26] * X[21])) + (X[25] * (((-(sPAR[2])) * X[15]) - (sPAR[5] * X[21])))));
    F[24]=((sPAR[1] * (X[22] * X[15])) + ((sPAR[5] * (X[25] * X[21])) + (X[24] * (((-(sPAR[2])) * X[15]) - (sPAR[5] * X[21])))));
    F[32]=((sPAR[2] * (X[31] * X[15])) + (X[32] * (((-(sPAR[5])) * X[21]) - (sPAR[17] * X[42]))));
    F[31]=((sPAR[2] * (X[30] * X[15])) + ((sPAR[5] * (X[32] * X[21])) + (X[31] * (((-(sPAR[2])) * X[15]) - (sPAR[5] * X[21])))));
    F[30]=((sPAR[2] * (X[29] * X[15])) + ((sPAR[5] * (X[31] * X[21])) + (X[30] * (((-(sPAR[2])) * X[15]) - (sPAR[5] * X[21])))));
    F[29]=((sPAR[3] * (X[20] * X[15])) + ((sPAR[5] * (X[30] * X[21])) + (X[29] * (((-(sPAR[2])) * X[15]) - (sPAR[5] * X[21])))));
    F[23]=((X[39] * ((sPAR[38] * X[16]) + (sPAR[39] * X[17]))) + ((sPAR[39] * (X[39] * X[18])) - (sPAR[17] * (X[23] * X[42]))));
    F[39]=((sPAR[34] * (X[38] * X[15])) + ((X[39] * (((-(sPAR[7])) * X[55]) - (sPAR[38] * X[16]))) - (sPAR[39] * (X[39] * (X[17] + X[18])))));
    F[38]=((sPAR[34] * (X[37] * X[15])) + ((sPAR[7] * (X[39] * X[55])) + (X[38] * (((-(sPAR[34])) * X[15]) - (sPAR[7] * X[55])))));
    F[37]=((sPAR[34] * (X[36] * X[15])) + ((sPAR[7] * (X[38] * X[55])) + (X[37] * (((-(sPAR[34])) * X[15]) - (sPAR[7] * X[55])))));
    F[36]=((sPAR[35] * (X[15] * X[35])) + ((sPAR[7] * (X[37] * X[55])) + (X[36] * (((-(sPAR[34])) * X[15]) - (sPAR[7] * X[55])))));
    F[21]=0.0;
    F[55]=0.0;
    F[50]=((sPAR[5] * (X[21] * (X[32] + (X[31] + (X[30] + X[29]))))) + ((4.0 * (sPAR[23] * (X[33] * X[53]))) + ((sPAR[7] * (X[55] * (X[39] + (X[38] + (X[37] + X[36]))))) + ((4.0 * (sPAR[26] * (X[53] * (X[57] * (X[4] / (5000.0 + X[4])))))) + ((sPAR[5] * (X[21] * (X[27] + (X[26] + (X[25] + X[24]))))) + ((4.0 * (sPAR[23] * (X[28] * X[53]))) - (sPAR[12] * (X[12] * (X[50] * (X[4] / (5000.0 + X[4])))))))))));
    F[42]=((sPAR[23] * (X[33] * X[53])) + ((sPAR[26] * (X[53] * (X[57] * (X[4] / (5000.0 + X[4]))))) + ((sPAR[23] * (X[28] * X[53])) + ((sPAR[25] * X[43]) + ((X[42] * (((-(sPAR[33])) * (X[9] + X[7])) - (sPAR[17] * (X[32] + X[23])))) + (((-(sPAR[17])) * (X[27] * X[42])) - (sPAR[18] * (X[47] * X[42]))))))));
    F[15]=((sPAR[13] * (X[14] * X[13])) + ((X[15] * (((-(sPAR[2])) * (X[29] + X[30])) - (sPAR[35] * X[35]))) + (((((((((-(sPAR[2])) * (X[26] * X[15])) - (sPAR[3] * (X[20] * X[15]))) - (sPAR[2] * (X[24] * X[15]))) - (sPAR[34] * (X[38] * X[15]))) - (sPAR[34] * (X[36] * X[15]))) - (sPAR[34] * (X[37] * X[15]))) - (sPAR[2] * (X[15] * (X[31] + X[25])))) - (sPAR[1] * (X[22] * X[15])))));
    F[13]=((sPAR[12] * (X[12] * (X[50] * (X[4] / (5000.0 + X[4]))))) - (sPAR[13] * (X[14] * X[13])));
    F[14]=((sPAR[3] * (X[20] * X[15])) + ((X[15] * ((sPAR[2] * (X[29] + (X[30] + X[31]))) + (sPAR[35] * X[35]))) + ((sPAR[34] * (X[15] * (X[36] + (X[37] + X[38])))) + ((sPAR[1] * (X[22] * X[15])) + ((sPAR[2] * (X[15] * (X[24] + (X[25] + X[26])))) - (sPAR[13] * (X[14] * X[13])))))));
    F[12]=((sPAR[13] * (X[14] * X[13])) - (sPAR[12] * (X[12] * (X[50] * (X[4] / (5000.0 + X[4]))))));
    F[51]=0.0;
    F[44]=(sPAR[31] * (X[7] + X[8]));
    F[22]=((sPAR[37] * (X[20] * X[2])) + ((sPAR[5] * (X[24] * X[21])) - (X[22] * (sPAR[28] + (sPAR[1] * X[15])))));
    F[56]=((sPAR[49] * X[56]) + ((sPAR[44] * X[18]) + ((sPAR[40] * (X[54] * X[2])) + ((((-(sPAR[29])) - sPAR[49]) * X[56]) - (sPAR[14] * (X[16] * X[56]))))));
    F[3]=((sPAR[32] * X[2]) - (sPAR[4] * (X[52] * X[3])));
    F[2]=((sPAR[4] * (X[52] * X[3])) + ((sPAR[40] * (X[54] * X[2])) + ((sPAR[37] * (X[20] * X[2])) + ((((-(sPAR[40])) * (X[54] * X[2])) - (sPAR[37] * (X[20] * X[2]))) - (sPAR[32] * X[2])))));
    F[58]=((sPAR[53] * X[46]) + ((sPAR[52] * X[58]) + ((sPAR[54] * X[5]) + (((-(sPAR[27])) - sPAR[52]) * X[58]))));
    F[34]=((sPAR[48] * X[34]) + ((sPAR[49] * (X[54] + X[56])) + ((sPAR[50] * (X[17] + X[18])) + (((-(sPAR[48])) - sPAR[24]) * X[34]))));
    F[35]=((sPAR[16] * (X[54] * X[20])) + ((sPAR[7] * (X[36] * X[55])) + (((-(sPAR[46])) * X[35]) - (sPAR[35] * (X[15] * X[35])))));
    F[54]=((sPAR[49] * X[54]) + ((sPAR[46] * X[35]) + ((sPAR[44] * X[17]) + ((sPAR[52] * X[58]) + ((sPAR[29] * X[56]) + ((X[54] * (((-(sPAR[49])) - (sPAR[16] * X[20])) - (sPAR[40] * X[2]))) - (sPAR[14] * (X[16] * X[54]))))))));
    F[20]=((sPAR[48] * X[34]) + ((sPAR[46] * X[35]) + ((sPAR[5] * (X[29] * X[21])) + ((sPAR[17] * (X[23] * X[42])) + ((sPAR[28] * X[22]) + ((X[20] * (((-(sPAR[3])) * X[15]) - (sPAR[37] * X[2]))) - (sPAR[16] * (X[54] * X[20]))))))));
    F[52]=((sPAR[19] * ACC[0]) + ((sPAR[4] * (X[52] * X[3])) + ((sPAR[21] * X[44]) + ((sPAR[20] * X[51]) - (X[52] * (sPAR[47] + (sPAR[4] * X[3])))))));

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
    ACC[0]=0.0; //IR
    ACC[1]=0.0; //tot_mdm2
    ACC[2]=0.0; //tot_p53
    sPAR[0]=1.0; //cell
    sPAR[1]=6.84e-06; //kMdm2PUb
    sPAR[2]=0.00456; //kMdm2PolyUb
    sPAR[3]=4.56e-06; //kMdm2Ub
    sPAR[4]=0.0001; //kactATM
    sPAR[5]=1e-07; //kactDUBMdm2
    sPAR[6]=0.0001; //kactDUBProtp53
    sPAR[7]=1e-07; //kactDUBp53
    sPAR[8]=1e-08; //kaggAbeta
    sPAR[9]=1e-08; //kaggTau
    sPAR[10]=1e-08; //kaggTauP1
    sPAR[11]=1e-07; //kaggTauP2
    sPAR[12]=0.0002; //kbinE1Ub
    sPAR[13]=0.001; //kbinE2Ub
    sPAR[14]=2e-06; //kbinGSK3bp53
    sPAR[15]=0.1; //kbinMTTau
    sPAR[16]=0.001155; //kbinMdm2p53
    sPAR[17]=2e-06; //kbinProt
    sPAR[18]=1.925e-07; //kbinTauProt
    sPAR[19]=0.08; //kdam
    sPAR[20]=1e-09; //kdamBasalROS
    sPAR[21]=1e-05; //kdamROS
    sPAR[22]=0.0001; //kdegAbeta
    sPAR[23]=0.01; //kdegMdm2
    sPAR[24]=0.0005; //kdegMdm2mRNA
    sPAR[25]=0.01; //kdegTau20SProt
    sPAR[26]=0.005; //kdegp53
    sPAR[27]=0.0001; //kdegp53mRNA
    sPAR[28]=0.5; //kdephosMdm2
    sPAR[29]=0.5; //kdephosp53
    sPAR[30]=0.01; //kdephospTau
    sPAR[31]=1e-05; //kgenROSAbeta
    sPAR[32]=0.0005; //kinactATM
    sPAR[33]=1e-05; //kinhibprot
    sPAR[34]=0.01; //kp53PolyUb
    sPAR[35]=5e-05; //kp53Ub
    sPAR[36]=0.001; //kpf
    sPAR[37]=2.0; //kphosMdm2
    sPAR[38]=0.005; //kphosMdm2GSK3b
    sPAR[39]=0.5; //kphosMdm2GSK3bp53
    sPAR[40]=0.0002; //kphosp53
    sPAR[41]=0.0002; //kphospTauGSK3b
    sPAR[42]=0.1; //kphospTauGSK3bp53
    sPAR[43]=5e-05; //kprodAbeta
    sPAR[44]=0.002; //krelGSK3bp53
    sPAR[45]=0.0001; //krelMTTau
    sPAR[46]=1.155e-05; //krelMdm2p53
    sPAR[47]=2e-05; //krepair
    sPAR[48]=0.000495; //ksynMdm2
    sPAR[49]=0.0005; //ksynMdm2mRNA
    sPAR[50]=0.0007; //ksynMdm2mRNAGSK3bp53
    sPAR[51]=8.000000000000001e-05; //ksynTau
    sPAR[52]=0.007; //ksynp53
    sPAR[53]=0.001; //ksynp53mRNA
    sPAR[54]=1e-05; //ksynp53mRNAAbeta
    sPAR[55]=0.001; //ktangfor
    X[0]=1000.0; //ADP
    X[1]=1000.0; //AMP
    X[2]=0.0; //ATMA
    X[3]=200.0; //ATMI
    X[4]=10000.0; //ATP
    X[5]=0.0; //Abeta
    X[6]=0.0; //AbetaPlaque
    X[7]=0.0; //AggAbeta
    X[8]=0.0; //AggAbeta_Proteasome
    X[9]=0.0; //AggTau
    X[10]=0.0; //AggTau_Proteasome
    X[11]=200.0; //DUB
    X[12]=100.0; //E1
    X[13]=0.0; //E1_Ub
    X[14]=100.0; //E2
    X[15]=0.0; //E2_Ub
    X[16]=500.0; //GSK3b
    X[17]=0.0; //GSK3b_p53
    X[18]=0.0; //GSK3b_p53_P
    X[19]=100.0; //MT_Tau
    X[20]=5.0; //Mdm2
    X[21]=200.0; //Mdm2DUB
    X[22]=0.0; //Mdm2_P
    X[23]=0.0; //Mdm2_P1_p53_Ub4
    X[24]=0.0; //Mdm2_P_Ub
    X[25]=0.0; //Mdm2_P_Ub2
    X[26]=0.0; //Mdm2_P_Ub3
    X[27]=0.0; //Mdm2_P_Ub4
    X[28]=0.0; //Mdm2_P_Ub4_Proteasome
    X[29]=0.0; //Mdm2_Ub
    X[30]=0.0; //Mdm2_Ub2
    X[31]=0.0; //Mdm2_Ub3
    X[32]=0.0; //Mdm2_Ub4
    X[33]=0.0; //Mdm2_Ub4_Proteasome
    X[34]=10.0; //Mdm2_mRNA
    X[35]=95.0; //Mdm2_p53
    X[36]=0.0; //Mdm2_p53_Ub
    X[37]=0.0; //Mdm2_p53_Ub2
    X[38]=0.0; //Mdm2_p53_Ub3
    X[39]=0.0; //Mdm2_p53_Ub4
    X[40]=0.0; //NFT
    X[41]=50.0; //PP1
    X[42]=500.0; //Proteasome
    X[43]=0.0; //Proteasome_Tau
    X[44]=0.0; //ROS
    X[45]=0.0; //Sink
    X[46]=1.0; //Source
    X[47]=0.0; //Tau
    X[48]=0.0; //Tau_P1
    X[49]=0.0; //Tau_P2
    X[50]=4000.0; //Ub
    X[51]=10.0; //basalROS
    X[52]=0.0; //damDNA
    X[53]=1.0; //kproteff
    X[54]=5.0; //p53
    X[55]=200.0; //p53DUB
    X[56]=0.0; //p53_P
    X[57]=0.0; //p53_Ub4_Proteasome
    X[58]=10.0; //p53_mRNA

}

template <class Precision> __forceinline__ __device__ void PerThread_Finalization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
	
}


#endif
