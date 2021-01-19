
#ifndef HEATINGSYSTEMEXPLICIT_N_10_PERTHREAD_SYSTEMDEFINITION_H
#define HEATINGSYSTEMEXPLICIT_N_10_PERTHREAD_SYSTEMDEFINITION_H

#include <fstream>
#include <iostream>
#include <string>
#include "Functions.cuh"


template<class Precision> __forceinline__ __device__ void PerThread_OdeFunction(
	int tid, int NT, \
	Precision*    F, Precision*    X, Precision     T, \
	Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi  		
) {
    F[20]=(50.0 * hist(X[20],(293.15 - X[10]),0.5));
    F[10]=((8.517887563884156e-06 * ((X[0] - X[10]) * (0.5 + sat((15.0 * X[20]),-0.5,0.5)))) + (-6.388415672913117e-06 * (-278.15 + (X[10] + (-8.0 * sin((7.27220521664304e-05 * T)))))));
    F[19]=(50.0 * hist(X[19],(293.15 - X[9]),0.5));
    F[9]=((9.098261221188838e-06 * ((X[0] - X[9]) * (0.5 + sat((15.0 * X[19]),-0.5,0.5)))) + (-6.823695915891629e-06 * (-278.15 + (X[9] + (-8.0 * sin((7.27220521664304e-05 * T)))))));
    F[18]=(50.0 * hist(X[18],(293.15 - X[8]),0.5));
    F[8]=((9.763506183553915e-06 * ((X[0] - X[8]) * (0.5 + sat((15.0 * X[18]),-0.5,0.5)))) + (-7.322629637665436e-06 * (-278.15 + (X[8] + (-8.0 * sin((7.27220521664304e-05 * T)))))));
    F[17]=(50.0 * hist(X[17],(293.15 - X[7]),0.5));
    F[7]=((1.053370786516854e-05 * ((X[0] - X[7]) * (0.5 + sat((15.0 * X[17]),-0.5,0.5)))) + (-7.900280898876403e-06 * (-278.15 + (X[7] + (-8.0 * sin((7.27220521664304e-05 * T)))))));
    F[16]=(50.0 * hist(X[16],(293.15 - X[6]),0.5));
    F[6]=((1.143583227445998e-05 * ((X[0] - X[6]) * (0.5 + sat((15.0 * X[16]),-0.5,0.5)))) + (-8.576874205844981e-06 * (-278.15 + (X[6] + (-8.0 * sin((7.27220521664304e-05 * T)))))));
    F[15]=(50.0 * hist(X[15],(293.15 - X[5]),0.5));
    F[5]=((1.250694830461367e-05 * ((X[0] - X[5]) * (0.5 + sat((15.0 * X[15]),-0.5,0.5)))) + (-9.380211228460255e-06 * (-278.15 + (X[5] + (-8.0 * sin((7.27220521664304e-05 * T)))))));
    F[14]=(50.0 * hist(X[14],(293.15 - X[4]),0.5));
    F[4]=((1.379944802207912e-05 * ((X[0] - X[4]) * (0.5 + sat((15.0 * X[14]),-0.5,0.5)))) + (-1.034958601655934e-05 * (-278.15 + (X[4] + (-8.0 * sin((7.27220521664304e-05 * T)))))));
    F[13]=(50.0 * hist(X[13],(293.15 - X[3]),0.5));
    F[3]=((1.538987688098495e-05 * ((X[0] - X[3]) * (0.5 + sat((15.0 * X[13]),-0.5,0.5)))) + (-1.154240766073871e-05 * (-278.15 + (X[3] + (-8.0 * sin((7.27220521664304e-05 * T)))))));
    F[12]=(50.0 * hist(X[12],(293.15 - X[2]),0.5));
    F[2]=((1.739466563587166e-05 * ((X[0] - X[2]) * (0.5 + sat((15.0 * X[12]),-0.5,0.5)))) + (-1.304599922690375e-05 * (-278.15 + (X[2] + (-8.0 * sin((7.27220521664304e-05 * T)))))));
    F[11]=(50.0 * hist(X[11],(293.15 - X[1]),0.5));
    F[1]=((2e-05 * ((X[0] - X[1]) * (0.5 + sat((15.0 * X[11]),-0.5,0.5)))) + (-1.5e-05 * (-278.15 + (X[1] + (-8.0 * sin((7.27220521664304e-05 * T)))))));
    F[0]=((5e-08 * sat((7500.0 * (343.15 - X[0])),0.0,30000.0)) + (-9.999999999999999e-06 * (((X[0] - X[1]) * (0.5 + sat((15.0 * X[11]),-0.5,0.5))) + (((X[0] - X[2]) * (0.5 + sat((15.0 * X[12]),-0.5,0.5))) + (((X[0] - X[3]) * (0.5 + sat((15.0 * X[13]),-0.5,0.5))) + (((X[0] - X[4]) * (0.5 + sat((15.0 * X[14]),-0.5,0.5))) + (((X[0] - X[5]) * (0.5 + sat((15.0 * X[15]),-0.5,0.5))) + (((X[0] - X[6]) * (0.5 + sat((15.0 * X[16]),-0.5,0.5))) + (((X[0] - X[7]) * (0.5 + sat((15.0 * X[17]),-0.5,0.5))) + (((X[0] - X[8]) * (0.5 + sat((15.0 * X[18]),-0.5,0.5))) + (((X[0] - X[9]) * (0.5 + sat((15.0 * X[19]),-0.5,0.5))) + ((X[0] - X[10]) * (0.5 + sat((15.0 * X[20]),-0.5,0.5))))))))))))));

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
    sPARi[0]=10; //N
    X[0]=343.15; //Td
    X[1]=293.15; //Tu[1]
    X[2]=293.15; //Tu[2]
    X[3]=293.15; //Tu[3]
    X[4]=293.15; //Tu[4]
    X[5]=293.15; //Tu[5]
    X[6]=293.15; //Tu[6]
    X[7]=293.15; //Tu[7]
    X[8]=293.15; //Tu[8]
    X[9]=293.15; //Tu[9]
    X[10]=293.15; //Tu[10]
    X[11]=-0.5; //x[1]
    X[12]=-0.5; //x[2]
    X[13]=-0.5; //x[3]
    X[14]=-0.5; //x[4]
    X[15]=-0.5; //x[5]
    X[16]=-0.5; //x[6]
    X[17]=-0.5; //x[7]
    X[18]=-0.5; //x[8]
    X[19]=-0.5; //x[9]
    X[20]=-0.5; //x[10]

}

template <class Precision> __forceinline__ __device__ void PerThread_Finalization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
	
}


#endif
