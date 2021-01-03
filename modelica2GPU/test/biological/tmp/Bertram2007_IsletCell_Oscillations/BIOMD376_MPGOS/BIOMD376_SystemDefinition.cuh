
#ifndef BIOMD376_PERTHREAD_SYSTEMDEFINITION_H
#define BIOMD376_PERTHREAD_SYSTEMDEFINITION_H

#include <fstream>
#include <iostream>
#include <string>
#include "Functions.cuh"


template<class Precision> __forceinline__ __device__ void PerThread_OdeFunction(
	int tid, int NT, \
	Precision*    F, Precision*    X, Precision     T, \
	Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi  		
) {
    ACC[46]=0.07330827067669173;
    ACC[8]=(sPAR[37] * sPAR[6]);
    ACC[82]=(sPAR[0] / sPAR[30]);
    ACC[58]=sPAR[67];
    ACC[3]=(sPAR[26] * (X[10] * (X[6] - sPAR[10])));
    ACC[50]=(1.0 / (1.0 + pow(2.718281828459045,(-3.2 - (0.2 * X[6])))));
    ACC[48]=(1.0 / (1.0 + pow(2.718281828459045,(-1.666666666666667 - (0.08333333333333333 * X[6])))));
    ACC[2]=(sPAR[25] * (ACC[48] * (X[6] - sPAR[9])));
    ACC[22]=((sPAR[35] * (sPAR[2] - X[8])) - (sPAR[13] * ACC[2]));
    ACC[5]=(sPAR[29] * (pow(X[8],2.0) * ((X[6] - sPAR[10]) / (pow(X[8],2.0) + pow(sPAR[38],2.0)))));
    ACC[49]=(0.165 * X[7]);
    ACC[67]=((0.08 * (1.0 + (0.1176470588235294 * ACC[49]))) + (0.89 * pow((0.05882352941176471 * ACC[49]),2.0)));
    ACC[27]=(0.135 * X[7]);
    ACC[9]=(sPAR[34] * pow(X[3],0.5));
    ACC[1]=(0.3 * X[4]);
    ACC[76]=(pow(ACC[1],2.0) / sPAR[32]);
    ACC[59]=(sPAR[67] + ACC[76]);
    ACC[80]=(X[3] * (pow(ACC[1],2.0) / ((sPAR[32] * sPAR[18]) * sPAR[31])));
    ACC[69]=(sPAR[0] * (pow(ACC[1],2.0) / ((sPAR[17] * sPAR[32]) * sPAR[30])));
    ACC[66]=(sPAR[0] * (X[3] * (pow(ACC[1],2.0) / ((((sPAR[30] * sPAR[31]) * sPAR[18]) * sPAR[17]) * sPAR[32]))));
    ACC[73]=ACC[66];
    ACC[78]=(X[3] / sPAR[31]);
    ACC[71]=(sPAR[0] * (X[3] / (sPAR[31] * sPAR[30])));
    ACC[14]=(sPAR[59] * (X[5] / ((1.0 + pow(2.718281828459045,((X[9] - sPAR[61]) / sPAR[62]))) * (sPAR[60] + X[5]))));
    ACC[25]=(sPAR[8] - X[5]);
    ACC[15]=(sPAR[42] * (X[2] * ((ACC[9] + sPAR[7]) / ((sPAR[52] + (X[5] / ACC[25])) * (sPAR[58] + X[2])))));
    ACC[12]=(sPAR[63] * (X[5] / ((1.0 + pow(2.718281828459045,((X[9] - sPAR[43]) / sPAR[44]))) * (sPAR[64] + X[5]))));
    ACC[11]=((sPAR[49] * X[9]) + sPAR[50]);
    ACC[24]=(((sPAR[54] * X[9]) - sPAR[55]) * pow(X[8],2.0));
    ACC[13]=(sPAR[56] * (X[2] * (pow(2.718281828459045,(sPAR[57] * X[9])) / X[8])));
    ACC[23]=(ACC[13] - ACC[24]);
    ACC[0]=(sPAR[1] - X[0]);
    ACC[7]=(sPAR[48] * (sPAR[45] / ((1.0 + pow(2.718281828459045,((sPAR[46] - X[9]) / sPAR[47]))) * (sPAR[45] + ACC[0]))));
    ACC[10]=(3.0 * ACC[7]);
    ACC[26]=(ACC[0] / X[0]);
    ACC[6]=(sPAR[51] * (ACC[26] * (pow(2.718281828459045,(0.5 * (sPAR[5] * X[9]))) / (ACC[26] + sPAR[53]))));
    ACC[28]=(sPAR[14] - X[7]);
    ACC[29]=(0.05 * ACC[28]);
    ACC[45]=(pow((1.0 + (0.05882352941176471 * ACC[49])),2.0) * (1.0 + ((0.03846153846153846 * ACC[27]) + ACC[29])));
    ACC[47]=(ACC[67] / ACC[45]);
    ACC[4]=(sPAR[28] * (ACC[47] * (X[6] - sPAR[10])));
    ACC[75]=(pow(ACC[28],2.0) / sPAR[33]);
    ACC[37]=(sPAR[15] + ACC[75]);
    ACC[38]=(ACC[37] + ACC[76]);
    ACC[79]=(X[3] * (pow(ACC[28],2.0) / ((sPAR[33] * sPAR[20]) * sPAR[31])));
    ACC[68]=(sPAR[0] * (pow(ACC[28],2.0) / ((sPAR[19] * sPAR[33]) * sPAR[30])));
    ACC[72]=(sPAR[0] * (X[3] * (pow(ACC[28],2.0) / ((((sPAR[33] * sPAR[19]) * sPAR[20]) * sPAR[31]) * sPAR[30]))));
    ACC[20]=(((sPAR[39] * X[8]) + sPAR[40]) * ACC[28]);
    ACC[77]=(pow((ACC[1] * ACC[28]),2.0) / ((sPAR[21] * sPAR[33]) * sPAR[32]));
    ACC[62]=(ACC[59] + ACC[77]);
    ACC[63]=(ACC[62] + ACC[80]);
    ACC[60]=ACC[62];
    ACC[61]=ACC[62];
    ACC[39]=(ACC[38] + ACC[77]);
    ACC[40]=(ACC[39] + ACC[78]);
    ACC[41]=(ACC[40] + ACC[79]);
    ACC[42]=(ACC[41] + ACC[80]);
    ACC[81]=(X[3] * (pow(ACC[1],2.0) * (pow(ACC[28],2.0) / (((((sPAR[33] * sPAR[32]) * sPAR[21]) * sPAR[20]) * sPAR[18]) * sPAR[31]))));
    ACC[51]=(ACC[63] + ACC[81]);
    ACC[52]=(ACC[51] + ACC[69]);
    ACC[64]=ACC[51];
    ACC[65]=ACC[51];
    ACC[43]=(ACC[42] + ACC[81]);
    ACC[44]=(ACC[43] + ACC[82]);
    ACC[30]=(ACC[44] + ACC[68]);
    ACC[31]=(ACC[30] + ACC[69]);
    ACC[70]=(sPAR[0] * (pow(ACC[1],2.0) * (pow(ACC[28],2.0) / (((((sPAR[33] * sPAR[32]) * sPAR[21]) * sPAR[19]) * sPAR[17]) * sPAR[30]))));
    ACC[56]=(ACC[52] + ACC[70]);
    ACC[53]=ACC[56];
    ACC[54]=ACC[56];
    ACC[55]=ACC[56];
    ACC[32]=(ACC[31] + ACC[70]);
    ACC[33]=(ACC[32] + ACC[71]);
    ACC[34]=(ACC[33] + ACC[72]);
    ACC[35]=(ACC[34] + ACC[66]);
    ACC[74]=(sPAR[0] * (X[3] * (pow(ACC[1],2.0) * (pow(ACC[28],2.0) / ((((((((sPAR[21] * sPAR[19]) * sPAR[20]) * sPAR[17]) * sPAR[18]) * sPAR[33]) * sPAR[32]) * sPAR[31]) * sPAR[30])))));
    ACC[57]=(ACC[56] + ACC[74]);
    ACC[36]=(ACC[35] + ACC[74]);
    ACC[16]=(sPAR[12] * (((sPAR[41] * ACC[57]) + ACC[66]) / ACC[36]));
    ACC[17]=(sPAR[37] * ACC[16]);
    ACC[21]=(sPAR[65] * (X[1] - X[8]));
    ACC[18]=(sPAR[36] * X[8]);
    ACC[19]=(ACC[21] - ACC[18]);
    F[10]=((ACC[50] - X[10]) / sPAR[66]);
    F[5]=(sPAR[27] * (ACC[15] - ACC[14]));
    F[2]=((-(sPAR[24])) * ACC[23]);
    F[0]=(sPAR[27] * (ACC[6] - ACC[7]));
    F[9]=((ACC[12] + ((-2.0 * ACC[24]) + ((((-(ACC[10])) - ACC[6]) - ACC[13]) - ACC[11]))) / sPAR[3]);
    F[6]=(((((-(ACC[4])) - ACC[5]) - ACC[3]) - ACC[2]) / sPAR[16]);
    F[7]=(ACC[20] + (-0.07330827067669173 * ACC[6]));
    F[4]=(ACC[8] - ACC[17]);
    F[3]=(ACC[17] + (-0.5 * ACC[9]));
    F[1]=((-(sPAR[23])) * (sPAR[11] * ACC[19]));
    F[8]=(sPAR[22] * (ACC[22] + (ACC[19] + (0.07330827067669173 * ACC[23]))));

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
    ACC[0]=3.9; //ATPm
    ACC[1]=90.3; //F6P
    ACC[2]=-2927.84163162795; //Ica
    ACC[3]=0.0; //Ik
    ACC[4]=2433.43025793791; //Ikatp
    ACC[5]=466.296163499462; //Ikca
    ACC[6]=1.1239508472473; //JANT
    ACC[7]=1.12901593707623; //JF1F0
    ACC[8]=0.0004; //JGK_ms
    ACC[9]=0.000734846922834953; //JGPDH
    ACC[10]=3.38704781122868; //JHatp
    ACC[11]=0.298; //JHleak
    ACC[12]=5.21282484607726; //JHres
    ACC[13]=0.162244429551387; //JNaCa
    ACC[14]=0.446813558235194; //JO
    ACC[15]=0.451601160351069; //JPDH
    ACC[16]=0.374364085279846; //JPFK
    ACC[17]=0.000374364085279847; //JPFK_ms
    ACC[18]=0.068; //JSERCA
    ACC[19]=0.000965999999999995; //Jer
    ACC[20]=0.0797355; //Jhyd
    ACC[21]=0.068966; //Jleak
    ACC[22]=0.00117528734232577; //Jmem
    ACC[23]=0.00445042955138744; //Jmito
    ACC[24]=0.157794; //Juni
    ACC[25]=9.6; //NADm
    ACC[26]=0.351351351351351; //RATm
    ACC[27]=153.495; //adp3m
    ACC[28]=1363.0; //atp
    ACC[29]=68.15000000000001; //atp4m
    ACC[30]=16521.1939655256; //bottom10
    ACC[31]=16657.0954655256; //bottom11
    ACC[32]=19526.1135763608; //bottom12
    ACC[33]=19562.1135763608; //bottom13
    ACC[34]=20322.1099854517; //bottom14
    ACC[35]=21789.8461854517; //bottom15
    ACC[36]=23339.1159653027; //bottom16
    ACC[37]=8445.404545454539; //bottom2
    ACC[38]=8445.567627254541; //bottom3
    ACC[39]=8514.424061914589; //bottom4
    ACC[40]=8516.584061914589; //bottom5
    ACC[41]=9428.57975282368; //bottom6
    ACC[42]=9430.341036263681; //bottom7
    ACC[43]=9467.523510980111; //bottom8
    ACC[44]=9484.190177646769; //bottom9
    ACC[45]=10871.9258612131; //bottomo
    ACC[46]=0.0733082706766917; //delta
    ACC[47]=0.010139292741408; //katpo
    ACC[48]=0.0344451956662112; //m_infinity
    ACC[49]=187.605; //mgadp
    ACC[50]=0.000150710358059757; //n_infinity
    ACC[51]=107.96327461647; //topa10
    ACC[52]=243.86477461647; //topa11
    ACC[53]=3112.8828854517; //topa12
    ACC[54]=3112.8828854517; //topa13
    ACC[55]=3112.8828854517; //topa14
    ACC[56]=3112.8828854517; //topa15
    ACC[57]=4662.15266530272; //topa16
    ACC[58]=0.0; //topa2
    ACC[59]=0.1630818; //topa3
    ACC[60]=69.01951646004549; //topa4
    ACC[61]=69.01951646004549; //topa5
    ACC[62]=69.01951646004549; //topa6
    ACC[63]=70.78079990004549; //topa7
    ACC[64]=107.96327461647; //topa8
    ACC[65]=107.96327461647; //topa9
    ACC[66]=1467.7362; //topb
    ACC[67]=110.233638969723; //topo
    ACC[68]=7037.00378787879; //weight10
    ACC[69]=135.9015; //weight11
    ACC[70]=2869.01811083523; //weight12
    ACC[71]=36.0; //weight13
    ACC[72]=759.996409090909; //weight14
    ACC[73]=1467.7362; //weight15
    ACC[74]=1549.26977985102; //weight16
    ACC[75]=8444.404545454539; //weight2
    ACC[76]=0.1630818; //weight3
    ACC[77]=68.85643466004549; //weight4
    ACC[78]=2.16; //weight5
    ACC[79]=911.995690909091; //weight6
    ACC[80]=1.76128344; //weight7
    ACC[81]=37.1824747164245; //weight8
    ACC[82]=16.6666666666667; //weight9
    sPAR[0]=500.0; //AMP
    sPAR[1]=15.0; //Amtot
    sPAR[2]=0.05; //Cbas
    sPAR[3]=1.8; //Cmito
    sPAR[4]=1.0; //Compartment
    sPAR[5]=0.037410133; //FRT
    sPAR[6]=0.4; //JGK
    sPAR[7]=0.0005; //JGPDHbas
    sPAR[8]=10.0; //NADmtot
    sPAR[9]=25.0; //VCa
    sPAR[10]=-75.0; //VK
    sPAR[11]=31.0; //Vc_Ver
    sPAR[12]=5.0; //VmaxPFK
    sPAR[13]=4.5e-06; //alpha
    sPAR[14]=2500.0; //atot
    sPAR[15]=1.0; //bottom1
    sPAR[16]=5300.0; //cm
    sPAR[17]=0.02; //f13
    sPAR[18]=0.2; //f23
    sPAR[19]=20.0; //f41
    sPAR[20]=20.0; //f42
    sPAR[21]=20.0; //f43
    sPAR[22]=0.01; //fcyt
    sPAR[23]=0.01; //fer
    sPAR[24]=0.01; //fmito
    sPAR[25]=1000.0; //gCa
    sPAR[26]=2700.0; //gK
    sPAR[27]=0.001; //gamma
    sPAR[28]=16000.0; //gkATP_
    sPAR[29]=300.0; //gkCa
    sPAR[30]=30.0; //k1
    sPAR[31]=1.0; //k2
    sPAR[32]=50000.0; //k3
    sPAR[33]=220.0; //k4
    sPAR[34]=0.0005; //kGPDH
    sPAR[35]=0.1; //kPMCA
    sPAR[36]=0.4; //kSERCA
    sPAR[37]=0.001; //kappa
    sPAR[38]=0.5; //kd
    sPAR[39]=5e-05; //khyd
    sPAR[40]=5e-05; //khydbas
    sPAR[41]=0.06; //lambda
    sPAR[42]=400.0; //p1
    sPAR[43]=177.0; //p10
    sPAR[44]=5.0; //p11
    sPAR[45]=10.0; //p13
    sPAR[46]=190.0; //p14
    sPAR[47]=8.5; //p15
    sPAR[48]=35.0; //p16
    sPAR[49]=0.002; //p17
    sPAR[50]=-0.03; //p18
    sPAR[51]=0.35; //p19
    sPAR[52]=1.0; //p2
    sPAR[53]=2.0; //p20
    sPAR[54]=0.04; //p21
    sPAR[55]=1.1; //p22
    sPAR[56]=0.01; //p23
    sPAR[57]=0.016; //p24
    sPAR[58]=0.01; //p3
    sPAR[59]=0.6; //p4
    sPAR[60]=0.1; //p5
    sPAR[61]=177.0; //p6
    sPAR[62]=5.0; //p7
    sPAR[63]=7.0; //p8
    sPAR[64]=0.1; //p9
    sPAR[65]=0.0002; //pleak
    sPAR[66]=20.0; //tau_n
    sPAR[67]=0.0; //topa1
    sPAR[68]=1.0; //weight1
    X[0]=11.1; //ADPm
    X[1]=345.0; //Caer
    X[2]=0.2000000000000051; //Cam
    X[3]=2.16; //FBP
    X[4]=301.0; //G6P
    X[5]=0.4000000000000004; //NADHm
    X[6]=-60.00000000000006; //Vm
    X[7]=1137.0; //adp
    X[8]=0.17; //c
    X[9]=164.0; //delta_psi
    X[10]=0.0; //n

}

template <class Precision> __forceinline__ __device__ void PerThread_Finalization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
	
}


#endif
