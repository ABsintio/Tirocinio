
#ifndef BIOMD015_PERTHREAD_SYSTEMDEFINITION_H
#define BIOMD015_PERTHREAD_SYSTEMDEFINITION_H

#include <fstream>
#include <iostream>
#include <string>


template<class Precision> __forceinline__ __device__ void PerThread_OdeFunction(
	int tid, int NT, \
	Precision*    F, Precision*    X, Precision     T, \
	Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi  		
) {
    F[8]=0.0;
    F[9]=0.0;
    F[13]=((sPAR[36] * pow(X[15],sPAR[103])) - (sPAR[34] * pow(X[13],sPAR[102])));
    F[4]=((sPAR[11] * pow(X[17],sPAR[60])) + ((sPAR[18] * (pow(X[3],sPAR[74]) * pow(X[8],sPAR[73]))) + (((-(sPAR[19])) * (pow(X[7],sPAR[75]) * (pow(X[3],sPAR[77]) * pow(X[4],sPAR[76])))) - (sPAR[21] * pow(X[4],sPAR[78])))));
    F[15]=((sPAR[21] * pow(X[4],sPAR[78])) + ((sPAR[24] * pow(X[5],sPAR[83])) + (((-(sPAR[35])) * pow(X[15],2.0)) - (sPAR[36] * pow(X[15],sPAR[103])))));
    F[5]=((sPAR[0] * pow(X[0],sPAR[37])) + ((sPAR[9] * pow(X[16],sPAR[54])) + ((sPAR[26] * (pow(X[6],sPAR[88]) * pow(X[8],sPAR[87]))) + ((((-(sPAR[22])) * (pow(X[7],sPAR[79]) * (pow(X[6],sPAR[81]) * pow(X[5],sPAR[80])))) - (sPAR[23] * pow(X[5],sPAR[82]))) - (sPAR[24] * pow(X[5],sPAR[83]))))));
    F[2]=((sPAR[2] * (pow(X[16],sPAR[63]) * pow(X[17],sPAR[62]))) + ((sPAR[14] * pow((X[16] * X[17]),sPAR[63])) + (((-(sPAR[12])) - sPAR[13]) * pow(X[2],sPAR[61]))));
    F[10]=((pow(X[0],sPAR[99]) * (pow(X[3],sPAR[100]) * (sPAR[6] + sPAR[20]))) + (((-(sPAR[31])) - sPAR[32]) * X[10]));
    F[17]=((sPAR[13] * pow(X[2],sPAR[61])) + ((sPAR[15] * (pow(X[3],sPAR[65]) * (pow(X[16],sPAR[66]) * pow(X[17],sPAR[64])))) + (((-(sPAR[11])) * pow(X[17],sPAR[60])) - (sPAR[14] * pow((X[16] * X[17]),sPAR[63])))));
    F[16]=((sPAR[3] * (pow(X[0],sPAR[40]) * (pow(X[16],sPAR[41]) * pow(X[17],sPAR[39])))) + ((sPAR[12] * pow(X[2],sPAR[61])) + (((-(sPAR[2])) * (pow(X[16],sPAR[63]) * pow(X[17],sPAR[62]))) - (sPAR[9] * pow(X[16],sPAR[54])))));
    F[3]=((sPAR[17] * (pow(X[0],sPAR[71]) * pow(X[14],sPAR[72]))) + ((sPAR[19] * (pow(X[7],sPAR[75]) * (pow(X[3],sPAR[77]) * pow(X[4],sPAR[76])))) + ((sPAR[32] * X[10]) + (((((-(sPAR[20])) * (pow(X[0],sPAR[99]) * pow(X[3],sPAR[100]))) - (sPAR[15] * (pow(X[3],sPAR[65]) * (pow(X[16],sPAR[66]) * pow(X[17],sPAR[64]))))) - (sPAR[16] * (pow(X[6],sPAR[67]) * (pow(X[0],sPAR[68]) * (pow(X[14],sPAR[69]) * pow(X[3],sPAR[70])))))) - (sPAR[18] * (pow(X[3],sPAR[74]) * pow(X[8],sPAR[73])))))));
    F[14]=((sPAR[25] * (pow(X[6],sPAR[84]) * (pow(X[14],sPAR[85]) * pow(X[3],sPAR[86])))) - (sPAR[17] * (pow(X[0],sPAR[71]) * pow(X[14],sPAR[72]))));
    F[1]=((sPAR[28] * pow(X[11],sPAR[91])) + (((-(sPAR[1])) * pow(X[1],sPAR[38])) - (sPAR[5] * (pow(X[7],sPAR[45]) * (pow(X[0],sPAR[46]) * pow(X[1],sPAR[47]))))));
    F[11]=((sPAR[27] * (pow(X[0],sPAR[89]) * pow(X[11],sPAR[90]))) + (((-(sPAR[28])) * pow(X[11],sPAR[91])) - (sPAR[33] * pow(X[11],sPAR[101]))));
    F[0]=((sPAR[5] * (pow(X[7],sPAR[45]) * (pow(X[0],sPAR[46]) * pow(X[1],sPAR[47])))) + ((sPAR[7] * (pow(X[12],sPAR[48]) * pow(X[0],sPAR[49]))) + ((sPAR[31] * X[10]) + ((sPAR[33] * pow(X[11],sPAR[101])) + ((((((-(sPAR[27])) * (pow(X[0],sPAR[89]) * pow(X[11],sPAR[90]))) - (sPAR[3] * (pow(X[0],sPAR[40]) * (pow(X[16],sPAR[41]) * pow(X[17],sPAR[39]))))) - (sPAR[4] * (pow(X[0],sPAR[43]) * (pow(X[3],sPAR[44]) * pow(X[8],sPAR[42]))))) - (sPAR[0] * pow(X[0],sPAR[37]))) - (sPAR[6] * (pow(X[0],sPAR[99]) * pow(X[3],sPAR[100]))))))));
    F[12]=((sPAR[8] * (pow(X[6],sPAR[51]) * (pow(X[0],sPAR[52]) * (pow(X[3],sPAR[53]) * pow(X[8],sPAR[50]))))) - (sPAR[7] * (pow(X[12],sPAR[48]) * pow(X[0],sPAR[49]))));
    F[6]=((sPAR[4] * (pow(X[0],sPAR[43]) * (pow(X[3],sPAR[44]) * pow(X[8],sPAR[42])))) + ((sPAR[10] * (pow(X[7],sPAR[55]) * (pow(X[6],sPAR[57]) * (pow(X[0],sPAR[58]) * (pow(X[3],sPAR[59]) * pow(X[8],sPAR[56])))))) + ((sPAR[16] * (pow(X[6],sPAR[67]) * (pow(X[0],sPAR[68]) * (pow(X[14],sPAR[69]) * pow(X[3],sPAR[70]))))) + ((sPAR[22] * (pow(X[7],sPAR[79]) * (pow(X[6],sPAR[81]) * pow(X[5],sPAR[80])))) + ((((-(sPAR[8])) * (pow(X[6],sPAR[51]) * (pow(X[0],sPAR[52]) * (pow(X[3],sPAR[53]) * pow(X[8],sPAR[50]))))) - (sPAR[25] * (pow(X[6],sPAR[84]) * (pow(X[14],sPAR[85]) * pow(X[3],sPAR[86]))))) - (sPAR[26] * (pow(X[6],sPAR[88]) * pow(X[8],sPAR[87]))))))));
    F[7]=((sPAR[29] * (pow(X[7],sPAR[92]) * (pow(X[0],sPAR[95]) * (pow(X[3],sPAR[96]) * (pow(X[9],sPAR[93]) * pow(X[8],sPAR[94])))))) + ((((((-(sPAR[30])) * pow(X[7],sPAR[97])) - (sPAR[10] * (pow(X[7],sPAR[55]) * (pow(X[6],sPAR[57]) * (pow(X[0],sPAR[58]) * (pow(X[3],sPAR[59]) * pow(X[8],sPAR[56]))))))) - (sPAR[19] * (pow(X[7],sPAR[75]) * (pow(X[3],sPAR[77]) * pow(X[4],sPAR[76]))))) - (sPAR[5] * (pow(X[7],sPAR[45]) * (pow(X[0],sPAR[46]) * pow(X[1],sPAR[47]))))) - (sPAR[22] * (pow(X[7],sPAR[79]) * (pow(X[6],sPAR[81]) * pow(X[5],sPAR[80]))))));

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
    sPAR[0]=0.001; //aada
    sPAR[1]=0.01; //aade
    sPAR[2]=3.279; //aadna
    sPAR[3]=0.06; //aadrnr
    sPAR[4]=0.027; //aampd
    sPAR[5]=233.8; //aaprt
    sPAR[6]=614.5; //aarna
    sPAR[7]=66544.0; //aasli
    sPAR[8]=3.593; //aasuc
    sPAR[9]=0.033; //adada
    sPAR[10]=5.273; //aden
    sPAR[11]=0.033; //adgnuc
    sPAR[12]=0.002; //adnaa
    sPAR[13]=0.001; //adnag
    sPAR[14]=2.23; //agdna
    sPAR[15]=0.12; //agdrnr
    sPAR[16]=0.301; //agmpr
    sPAR[17]=0.374; //agmps
    sPAR[18]=0.251; //agnuc
    sPAR[19]=361.69; //agprt
    sPAR[20]=409.6; //agrna
    sPAR[21]=0.492; //agua
    sPAR[22]=12.569; //ahprt
    sPAR[23]=0.004; //ahx
    sPAR[24]=0.275; //ahxd
    sPAR[25]=1.282; //aimpd
    sPAR[26]=0.914; //ainuc
    sPAR[27]=7.207; //amat
    sPAR[28]=0.29; //apolyam
    sPAR[29]=0.9; //aprpps
    sPAR[30]=1.295; //apyr
    sPAR[31]=0.06900000000000001; //arnaa
    sPAR[32]=0.046; //arnag
    sPAR[33]=8.853999999999999; //atrans
    sPAR[34]=8.744e-05; //aua
    sPAR[35]=0.001; //ax
    sPAR[36]=0.949; //axd
    sPAR[37]=0.97; //fada4
    sPAR[38]=0.55; //fade6
    sPAR[39]=0.87; //fadrnr10
    sPAR[40]=0.1; //fadrnr4
    sPAR[41]=-0.3; //fadrnr9
    sPAR[42]=-0.1; //fampd18
    sPAR[43]=0.8; //fampd4
    sPAR[44]=-0.03; //fampd8
    sPAR[45]=0.5; //faprt1
    sPAR[46]=-0.8; //faprt4
    sPAR[47]=0.75; //faprt6
    sPAR[48]=0.99; //fasli3
    sPAR[49]=-0.95; //fasli4
    sPAR[50]=-0.05; //fasuc18
    sPAR[51]=0.4; //fasuc2
    sPAR[52]=-0.24; //fasuc4
    sPAR[53]=0.2; //fasuc8
    sPAR[54]=1.0; //fdada9
    sPAR[55]=2.0; //fden1
    sPAR[56]=-0.08; //fden18
    sPAR[57]=-0.06; //fden2
    sPAR[58]=-0.25; //fden4
    sPAR[59]=-0.2; //fden8
    sPAR[60]=1.0; //fdgnuc10
    sPAR[61]=1.0; //fdnan12
    sPAR[62]=0.33; //fdnap10
    sPAR[63]=0.42; //fdnap9
    sPAR[64]=-0.39; //fgdrnr10
    sPAR[65]=0.4; //fgdrnr8
    sPAR[66]=-1.2; //fgdrnr9
    sPAR[67]=-0.15; //fgmpr2
    sPAR[68]=-0.07000000000000001; //fgmpr4
    sPAR[69]=-0.76; //fgmpr7
    sPAR[70]=0.7; //fgmpr8
    sPAR[71]=0.12; //fgmps4
    sPAR[72]=0.16; //fgmps7
    sPAR[73]=-0.34; //fgnuc18
    sPAR[74]=0.9; //fgnuc8
    sPAR[75]=1.2; //fgprt1
    sPAR[76]=0.42; //fgprt15
    sPAR[77]=-1.2; //fgprt8
    sPAR[78]=0.5; //fgua15
    sPAR[79]=1.1; //fhprt1
    sPAR[80]=0.48; //fhprt13
    sPAR[81]=-0.89; //fhprt2
    sPAR[82]=1.12; //fhx13
    sPAR[83]=0.65; //fhxd13
    sPAR[84]=0.15; //fimpd2
    sPAR[85]=-0.09; //fimpd7
    sPAR[86]=-0.03; //fimpd8
    sPAR[87]=-0.36; //finuc18
    sPAR[88]=0.8; //finuc2
    sPAR[89]=0.2; //fmat4
    sPAR[90]=-0.6; //fmat5
    sPAR[91]=0.9; //fpolyam5
    sPAR[92]=-0.03; //fprpps1
    sPAR[93]=0.65; //fprpps17
    sPAR[94]=0.7; //fprpps18
    sPAR[95]=-0.45; //fprpps4
    sPAR[96]=-0.04; //fprpps8
    sPAR[97]=1.27; //fpyr1
    sPAR[98]=0.13; //franp8
    sPAR[99]=0.05; //frnap4
    sPAR[100]=0.13; //frnap8
    sPAR[101]=0.33; //ftrans5
    sPAR[102]=2.21; //fua16
    sPAR[103]=0.55; //fxd14
    X[0]=2475.35; //ATP
    X[1]=0.98473; //Ade
    X[2]=5179.34; //DNA
    X[3]=410.223; //GTP
    X[4]=5.50638; //Gua
    X[5]=9.517849999999999; //HX
    X[6]=98.2634; //IMP
    X[7]=5.01742; //PRPP
    X[8]=1400.0; //Pi
    X[9]=18.0; //R5P
    X[10]=28680.5; //RNA
    X[11]=3.99187; //SAM
    X[12]=0.198189; //SAMP
    X[13]=100.293; //UA
    X[14]=24.793; //XMP
    X[15]=5.05941; //Xa
    X[16]=6.01413; //dATP
    X[17]=3.02581; //dGTP

}

template <class Precision> __forceinline__ __device__ void PerThread_Finalization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
	
}


#endif
