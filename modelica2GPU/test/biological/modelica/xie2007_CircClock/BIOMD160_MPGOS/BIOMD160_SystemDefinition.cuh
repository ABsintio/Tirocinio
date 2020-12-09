
#ifndef BIOMD160_PERTHREAD_SYSTEMDEFINITION_H
#define BIOMD160_PERTHREAD_SYSTEMDEFINITION_H

#include <fstream>
#include <iostream>
#include <string>


template<class Precision> __forceinline__ __device__ void PerThread_OdeFunction(
	int tid, int NT, \
	Precision*    F, Precision*    X, Precision     T, \
	Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi  		
) {
    F[17]=(((1.0 - X[17]) * (sPAR[4] * X[0])) - (X[17] * sPAR[42]));
    F[19]=(((1.0 - (X[20] + X[19])) * (sPAR[6] * X[4])) - (X[19] * sPAR[44]));
    F[20]=(((1.0 - (X[20] + X[19])) * (sPAR[8] * X[8])) - (X[20] * sPAR[46]));
    F[15]=(((1.0 - X[15]) * (sPAR[1] * X[0])) - (sPAR[39] * X[15]));
    F[18]=(((1.0 - X[18]) * (sPAR[5] * X[0])) - (sPAR[43] * X[18]));
    F[16]=(((1.0 - X[16]) * (sPAR[2] * X[0])) - (X[16] * sPAR[40]));
    F[3]=0.0;
    F[7]=((X[6] * sPAR[45]) + ((X[21] * sPAR[36]) + (X[7] * (((-(X[5])) * sPAR[7]) - sPAR[18]))));
    F[21]=(((((1.0 - pow((1.0 - X[17]),sPAR[23])) * sPAR[27]) + (pow((1.0 - X[17]),sPAR[23]) * sPAR[30])) * X[22]) - (X[21] * sPAR[19]));
    F[22]=0.0;
    F[5]=((X[13] * sPAR[35]) - (X[5] * sPAR[15]));
    F[2]=((X[9] * sPAR[33]) + ((X[0] * sPAR[38]) - (X[2] * ((sPAR[0] * X[3]) + sPAR[11]))));
    F[4]=((X[11] * sPAR[34]) - (X[4] * sPAR[13]));
    F[11]=(((((1.0 - pow((1.0 - X[15]),sPAR[22])) * sPAR[25]) + (pow((1.0 - X[15]),sPAR[22]) * sPAR[30])) * X[12]) - (X[11] * sPAR[14]));
    F[12]=0.0;
    F[8]=((X[23] * sPAR[37]) - (X[8] * sPAR[20]));
    F[23]=(((((1.0 - pow((1.0 - X[18]),sPAR[24])) * sPAR[28]) + (pow((1.0 - X[18]),sPAR[24]) * sPAR[30])) * X[24]) - (X[23] * sPAR[21]));
    F[24]=0.0;
    F[6]=((X[5] * (X[7] * sPAR[7])) + ((X[1] * sPAR[41]) + (X[6] * (((-(sPAR[45])) - (X[0] * sPAR[3])) - sPAR[17]))));
    F[13]=(((((1.0 - pow((1.0 - X[16]),sPAR[23])) * sPAR[26]) + (pow((1.0 - X[16]),sPAR[23]) * sPAR[30])) * X[14]) - (X[13] * sPAR[16]));
    F[9]=((((X[20] * sPAR[32]) + ((X[19] * sPAR[31]) + ((1.0 - (X[20] + X[19])) * sPAR[29]))) * X[10]) - (X[9] * sPAR[12]));
    F[14]=0.0;
    F[10]=0.0;
    F[1]=((X[0] * (X[6] * sPAR[3])) - (X[1] * (sPAR[10] + sPAR[41])));
    F[0]=((X[2] * (sPAR[0] * X[3])) + ((X[1] * sPAR[41]) - (X[0] * ((X[6] * sPAR[3]) + (sPAR[9] + sPAR[38])))));

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
    sPAR[0]=2.349; //bcc
    sPAR[1]=0.062; //bccpdpp
    sPAR[2]=0.06900000000000001; //bccperp
    sPAR[3]=51.0; //bccpt
    sPAR[4]=0.06900000000000001; //bcctimp
    sPAR[5]=0.1; //bccvrip
    sPAR[6]=1.155; //bpdpclkp
    sPAR[7]=1.1; //bpt
    sPAR[8]=1.858; //bvriclkp
    sPAR[9]=0.184; //dcc
    sPAR[10]=15.06; //dccpt
    sPAR[11]=0.2; //dclk
    sPAR[12]=0.643; //dclkm
    sPAR[13]=0.156; //dpdp
    sPAR[14]=0.06; //dpdpm
    sPAR[15]=0.62; //dper
    sPAR[16]=0.053; //dperm
    sPAR[17]=0.279; //dpt
    sPAR[18]=0.62; //dtim
    sPAR[19]=0.053; //dtimm
    sPAR[20]=1.226; //dvri
    sPAR[21]=0.07000000000000001; //dvrim
    sPAR[22]=6.0; //npdp
    sPAR[23]=5.0; //npt
    sPAR[24]=4.0; //nvri
    sPAR[25]=9.831; //tcccpdpp
    sPAR[26]=11.0; //tcccperp
    sPAR[27]=11.0; //tccctimp
    sPAR[28]=16.86; //tcccvrip
    sPAR[29]=1.42; //tcclkp
    sPAR[30]=0.028; //tcdvpmt
    sPAR[31]=125.54; //tcpdpclkp
    sPAR[32]=0.053; //tcvriclkp
    sPAR[33]=35.0; //tlclk
    sPAR[34]=1.87; //tlpdp
    sPAR[35]=36.0; //tlper
    sPAR[36]=36.0; //tltim
    sPAR[37]=14.68; //tlvri
    sPAR[38]=0.89; //ubcc
    sPAR[39]=0.145; //ubccpdpp
    sPAR[40]=0.262; //ubccperp
    sPAR[41]=7.89; //ubccpt
    sPAR[42]=0.262; //ubcctimp
    sPAR[43]=0.276; //ubccvrip
    sPAR[44]=0.952; //ubpdpclkp
    sPAR[45]=2.93; //ubpt
    sPAR[46]=1.043; //ubvriclkp
    X[0]=0.5566; //CC
    X[1]=0.4982; //CCPT
    X[2]=3.6628; //CLK
    X[3]=1.0; //CYC
    X[4]=4.1953; //PDP
    X[5]=2.7527; //PER
    X[6]=0.4014; //PT
    X[7]=2.7527; //TIM
    X[8]=3.175; //VRI
    X[9]=0.2583; //clkm
    X[10]=0.003185; //clkp
    X[11]=0.3175; //pdpm
    X[12]=0.003185; //pdpp
    X[13]=0.2395; //perm
    X[14]=0.003185; //perp
    X[15]=0.08; //prcpdp
    X[16]=0.041; //prcper
    X[17]=0.043; //prct
    X[18]=0.0585; //prcv
    X[19]=0.426; //prpc
    X[20]=0.489; //prvc
    X[21]=0.2395; //timm
    X[22]=0.003185; //timp
    X[23]=0.2571; //vrim
    X[24]=0.003185; //vrip

}

template <class Precision> __forceinline__ __device__ void PerThread_Finalization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
	
}


#endif
