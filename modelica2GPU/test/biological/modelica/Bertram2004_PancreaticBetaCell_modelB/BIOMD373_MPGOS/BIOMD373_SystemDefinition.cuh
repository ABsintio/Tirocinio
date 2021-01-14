
#ifndef BIOMD373_PERTHREAD_SYSTEMDEFINITION_H
#define BIOMD373_PERTHREAD_SYSTEMDEFINITION_H

#include <fstream>
#include <iostream>
#include <string>
#include "Functions.cuh"


template<class Precision> __forceinline__ __device__ void PerThread_OdeFunction(
	int tid, int NT, \
	Precision*    F, Precision*    X, Precision     T, \
	Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi  		
) {
    ACC[45]=sPAR[41];
    ACC[1]=(sPAR[19] * (X[6] * (X[0] - sPAR[5])));
    ACC[3]=(sPAR[20] * ((X[0] - sPAR[5]) / (1.0 + pow((sPAR[26] / X[2]),2.0))));
    ACC[32]=(1.0 / (1.0 + pow(2.718281828459045,(-1.666666666666667 - (0.08333333333333333 * X[0])))));
    ACC[0]=(sPAR[18] * (ACC[32] * (X[0] - sPAR[4])));
    ACC[6]=(((-(sPAR[6])) * ACC[0]) - (sPAR[29] * X[2]));
    ACC[33]=(1.0 / (1.0 + pow(2.718281828459045,(-3.2 - (0.2 * X[0])))));
    ACC[7]=(sPAR[2] * X[2]);
    ACC[5]=(sPAR[35] * (X[3] - X[2]));
    ACC[4]=(sPAR[10] * ((ACC[5] - ACC[7]) / sPAR[33]));
    ACC[37]=(0.2 * pow(abs(X[4]),0.5));
    ACC[70]=(sPAR[42] * (ACC[37] / (sPAR[28] + ACC[37])));
    ACC[29]=(sPAR[36] + ACC[70]);
    ACC[28]=(0.3 * X[5]);
    ACC[63]=(pow(ACC[28],2.0) / sPAR[24]);
    ACC[46]=(sPAR[41] + ACC[63]);
    ACC[67]=(X[4] * (pow(ACC[28],2.0) / ((sPAR[16] * sPAR[24]) * sPAR[23])));
    ACC[65]=(X[4] / sPAR[23]);
    ACC[31]=(0.165 * X[1]);
    ACC[54]=((0.08 * (1.0 + (2.0 * (ACC[31] / sPAR[27])))) + (0.89 * pow((ACC[31] / sPAR[27]),2.0)));
    ACC[8]=(0.135 * X[1]);
    ACC[35]=pow(abs((pow((X[1] - sPAR[7]),2.0) + (-4.0 * pow(X[1],2.0)))),0.5);
    ACC[10]=(0.5 * (sPAR[7] + (ACC[35] - X[1])));
    ACC[62]=(pow(ACC[10],2.0) / sPAR[25]);
    ACC[19]=(sPAR[8] + ACC[62]);
    ACC[20]=(ACC[19] + ACC[63]);
    ACC[66]=(X[4] * (pow(ACC[10],2.0) / ((sPAR[13] * sPAR[25]) * sPAR[23])));
    ACC[11]=(0.05 * ACC[10]);
    ACC[27]=(pow((1.0 + (ACC[31] / sPAR[27])),2.0) * (1.0 + ((ACC[8] / sPAR[30]) + (ACC[11] / sPAR[31]))));
    ACC[30]=(ACC[54] / ACC[27]);
    ACC[2]=(sPAR[21] * (ACC[30] * (X[0] - sPAR[5])));
    ACC[9]=(pow(X[1],2.0) / ACC[10]);
    ACC[69]=(ACC[9] / sPAR[22]);
    ACC[58]=(ACC[9] * (X[4] / (sPAR[23] * sPAR[22])));
    ACC[56]=(ACC[9] * (pow(ACC[28],2.0) / ((sPAR[11] * sPAR[24]) * sPAR[22])));
    ACC[53]=(ACC[9] * (X[4] * (pow(ACC[28],2.0) / ((((sPAR[22] * sPAR[23]) * sPAR[24]) * sPAR[16]) * sPAR[11]))));
    ACC[60]=ACC[53];
    ACC[55]=(ACC[9] * (pow(ACC[10],2.0) / ((sPAR[17] * sPAR[25]) * sPAR[22])));
    ACC[59]=(ACC[9] * (X[4] * (pow(ACC[10],2.0) / ((((sPAR[17] * sPAR[13]) * sPAR[25]) * sPAR[23]) * sPAR[22]))));
    ACC[36]=(ACC[10] / X[1]);
    ACC[64]=(pow((ACC[28] * ACC[10]),2.0) / ((sPAR[25] * sPAR[24]) * sPAR[12]));
    ACC[49]=(ACC[46] + ACC[64]);
    ACC[50]=(ACC[49] + ACC[67]);
    ACC[47]=ACC[49];
    ACC[48]=ACC[49];
    ACC[21]=(ACC[20] + ACC[64]);
    ACC[22]=(ACC[21] + ACC[65]);
    ACC[23]=(ACC[22] + ACC[66]);
    ACC[24]=(ACC[23] + ACC[67]);
    ACC[68]=(X[4] * (pow(ACC[28],2.0) * (pow(ACC[10],2.0) / (((((sPAR[12] * sPAR[13]) * sPAR[16]) * sPAR[25]) * sPAR[24]) * sPAR[23]))));
    ACC[38]=(ACC[50] + ACC[68]);
    ACC[39]=(ACC[38] + ACC[56]);
    ACC[51]=ACC[38];
    ACC[52]=ACC[38];
    ACC[25]=(ACC[24] + ACC[68]);
    ACC[26]=(ACC[25] + ACC[69]);
    ACC[12]=(ACC[26] + ACC[55]);
    ACC[13]=(ACC[12] + ACC[56]);
    ACC[57]=(ACC[9] * (pow(ACC[28],2.0) * (pow(ACC[10],2.0) / (((((sPAR[12] * sPAR[17]) * sPAR[11]) * sPAR[25]) * sPAR[24]) * sPAR[22]))));
    ACC[43]=(ACC[39] + ACC[57]);
    ACC[40]=ACC[43];
    ACC[41]=ACC[43];
    ACC[42]=ACC[43];
    ACC[14]=(ACC[13] + ACC[57]);
    ACC[15]=(ACC[14] + ACC[58]);
    ACC[16]=(ACC[15] + ACC[59]);
    ACC[17]=(ACC[16] + ACC[53]);
    ACC[61]=(ACC[9] * (X[4] * (pow(ACC[28],2.0) * (pow(ACC[10],2.0) / ((((((((sPAR[12] * sPAR[17]) * sPAR[13]) * sPAR[11]) * sPAR[16]) * sPAR[25]) * sPAR[24]) * sPAR[23]) * sPAR[22])))));
    ACC[44]=(ACC[43] + ACC[61]);
    ACC[18]=(ACC[17] + ACC[61]);
    ACC[34]=(sPAR[9] * (((sPAR[34] * ACC[44]) + ACC[53]) / ACC[18]));
    F[6]=((ACC[33] - X[6]) / sPAR[40]);
    F[3]=((-(sPAR[15])) * (sPAR[38] * ACC[4]));
    F[2]=(sPAR[14] * (ACC[6] + ACC[4]));
    F[0]=(((((-(ACC[2])) - ACC[3]) - ACC[1]) - ACC[0]) / sPAR[1]);
    F[5]=(sPAR[32] * (sPAR[3] - ACC[34]));
    F[4]=(sPAR[32] * (ACC[34] + (-0.5 * ACC[37])));
    F[1]=((ACC[10] - (X[1] * pow(2.718281828459045,(ACC[29] * (1.0 - (X[2] / sPAR[37])))))) / sPAR[39]);

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
    ACC[0]=-2927.84163162795; //ICa
    ACC[1]=1012.5; //IK
    ACC[2]=2669.03575460448; //IKATP
    ACC[3]=1800.0; //IKCa
    ACC[4]=-0.06304999999999999; //Jer
    ACC[5]=0.03695; //Jleak
    ACC[6]=-0.0368247126576742; //Jmem
    ACC[7]=0.1; //Jserca
    ACC[8]=105.3; //adp3m
    ACC[9]=320.253205134709; //amp
    ACC[10]=1899.74679486529; //atp
    ACC[11]=94.9873397432646; //atp4m
    ACC[12]=12962.5219108643; //bottom10
    ACC[13]=13000.9522954804; //bottom11
    ACC[14]=13347.6940804792; //bottom12
    ACC[15]=13774.6983539922; //bottom13
    ACC[16]=17627.384853979; //bottom14
    ACC[17]=25313.461777212; //bottom15
    ACC[18]=28780.8796272001; //bottom16
    ACC[19]=3610.03788460095; //bottom2
    ACC[20]=3610.10988460095; //bottom3
    ACC[21]=3623.10242098551; //bottom4
    ACC[22]=3663.10242098551; //bottom5
    ACC[23]=10881.1781901874; //bottom6
    ACC[24]=10895.5781901874; //bottom7
    ACC[25]=11025.503554033; //bottom8
    ACC[26]=11036.1786608709; //bottom9
    ACC[27]=7348.24106009167; //bottomo
    ACC[28]=60.0; //f6p
    ACC[29]=1.24703296147847; //fback
    ACC[30]=0.00711742867894527; //katpo
    ACC[31]=128.7; //mgadp
    ACC[32]=0.0344451956662112; //minf
    ACC[33]=0.000150710358059757; //ninf
    ACC[34]=0.550829288131395; //pfk
    ACC[35]=1579.49358973058; //rad
    ACC[36]=2.43557281392986; //ratio
    ACC[37]=1.26491106406735; //rgpdh
    ACC[38]=157.389900230198; //topa10
    ACC[39]=195.820284846363; //topa11
    ACC[40]=542.562069845176; //topa12
    ACC[41]=542.562069845176; //topa13
    ACC[42]=542.562069845176; //topa14
    ACC[43]=542.562069845176; //topa15
    ACC[44]=4009.9799198333; //topa16
    ACC[45]=0.0; //topa2
    ACC[46]=0.07199999999999999; //topa3
    ACC[47]=13.0645363845634; //topa4
    ACC[48]=13.0645363845634; //topa5
    ACC[49]=13.0645363845634; //topa6
    ACC[50]=27.4645363845634; //topa7
    ACC[51]=157.389900230198; //topa8
    ACC[52]=157.389900230198; //topa9
    ACC[53]=7686.07692323301; //topb
    ACC[54]=52.3005816608997; //topo
    ACC[55]=1926.34324999341; //weight10
    ACC[56]=38.4303846161651; //weight11
    ACC[57]=346.741784998813; //weight12
    ACC[58]=427.004273512945; //weight13
    ACC[59]=3852.68649998681; //weight14
    ACC[60]=7686.07692323301; //weight15
    ACC[61]=3467.41784998813; //weight16
    ACC[62]=3609.03788460095; //weight2
    ACC[63]=0.07199999999999999; //weight3
    ACC[64]=12.9925363845634; //weight4
    ACC[65]=40.0; //weight5
    ACC[66]=7218.07576920189; //weight6
    ACC[67]=14.4; //weight7
    ACC[68]=129.925363845634; //weight8
    ACC[69]=10.6751068378236; //weight9
    ACC[70]=0.247032961478473; //y
    sPAR[0]=1.0; //COMpartment
    sPAR[1]=5300.0; //Cm
    sPAR[2]=0.4; //Kserca
    sPAR[3]=0.2; //Rgk
    sPAR[4]=25.0; //VCa
    sPAR[5]=-75.0; //VK
    sPAR[6]=4.5e-06; //alpha
    sPAR[7]=3000.0; //atot
    sPAR[8]=1.0; //bottom1
    sPAR[9]=2.0; //cat
    sPAR[10]=1.0; //epser
    sPAR[11]=0.02; //famp
    sPAR[12]=20.0; //fatp
    sPAR[13]=20.0; //fbt
    sPAR[14]=0.01; //fcyt
    sPAR[15]=0.01; //fer
    sPAR[16]=0.2; //ffbp
    sPAR[17]=20.0; //fmt
    sPAR[18]=1000.0; //gCa
    sPAR[19]=2700.0; //gK
    sPAR[20]=600.0; //gKCa
    sPAR[21]=25000.0; //gkatpbar
    sPAR[22]=30.0; //k1
    sPAR[23]=1.0; //k2
    sPAR[24]=50000.0; //k3
    sPAR[25]=1000.0; //k4
    sPAR[26]=0.5; //kd
    sPAR[27]=17.0; //kdd
    sPAR[28]=10.0; //kg
    sPAR[29]=0.2; //kpmca
    sPAR[30]=26.0; //ktd
    sPAR[31]=1.0; //ktt
    sPAR[32]=0.005; //lambda
    sPAR[33]=1.0; //lambdaer
    sPAR[34]=0.06; //pfkbas
    sPAR[35]=0.0002; //pleak
    sPAR[36]=1.0; //r
    sPAR[37]=0.35; //r1
    sPAR[38]=31.0; //sigmaV
    sPAR[39]=300000.0; //taua
    sPAR[40]=20.0; //taun
    sPAR[41]=0.0; //topa1
    sPAR[42]=2.2; //vg
    X[0]=-59.99999999999999; //V
    X[1]=780.0000000000005; //adp
    X[2]=0.25; //c
    X[3]=185.0; //cer
    X[4]=39.99999999999997; //fbp
    X[5]=200.0; //g6p
    X[6]=0.02499999999999998; //n

}

template <class Precision> __forceinline__ __device__ void PerThread_Finalization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
	
}


#endif
