
#ifndef BIOMD542_PERTHREAD_SYSTEMDEFINITION_H
#define BIOMD542_PERTHREAD_SYSTEMDEFINITION_H

#include <fstream>
#include <iostream>
#include <string>
#include "Functions.cuh"


template<class Precision> __forceinline__ __device__ void PerThread_OdeFunction(
	int tid, int NT, \
	Precision*    F, Precision*    X, Precision     T, \
	Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi  		
) {
    F[32]=(Mass_Action(5.59e-05,X[31],X[5]) + (-0.644848 * X[32]));
    F[31]=(Mass_Action(0.346673,X[33],X[7]) + ((-0.551509 * X[31]) - Mass_Action(5.59e-05,X[31],X[5])));
    F[18]=(Henri_Michaelis_Menten__irreversible(X[34],5.760257,1.185806) + (-0.004562 * X[18]));
    F[34]=(Mass_Action(0.283991,X[33],X[9]) - Henri_Michaelis_Menten__irreversible(X[34],5.760257,1.185806));
    F[33]=(Mass_Action(0.000161,X[28],X[8]) + ((0.644848 * X[32]) + ((-8.57e-05 * X[33]) + ((-(Mass_Action(0.283991,X[33],X[9]))) - Mass_Action(0.346673,X[33],X[7])))));
    F[29]=(Mass_Action(19.76984,X[36],X[10]) + (Michaelis_Menten(0.07305499999999999,X[40],X[1],16.56551) + ((-2.416217 * X[29]) - Henri_Michaelis_Menten__irreversible(X[29],7.130081,0.014352))));
    F[36]=((3.940468 * X[28]) + ((2.416217 * X[29]) + ((-8.052152 * X[36]) - Mass_Action(19.76984,X[36],X[10]))));
    F[40]=(Mass_Action(50.66157,X[42],X[10]) + (Michaelis_Menten(0.028914,X[17],X[1],0.1452) + (Henri_Michaelis_Menten__irreversible(X[29],7.130081,0.014352) + ((-0.067355 * X[40]) + ((-(Henri_Michaelis_Menten__irreversible(X[40],12.62955,0.004313))) - Michaelis_Menten(0.07305499999999999,X[40],X[1],16.56551))))));
    F[42]=((1.540886 * X[39]) + ((0.067355 * X[40]) + ((-9.220426 * X[42]) - Mass_Action(50.66157,X[42],X[10]))));
    F[17]=(Mass_Action(9.633772,X[20],X[10]) + (Henri_Michaelis_Menten__irreversible(X[40],12.62955,0.004313) + ((-0.054463 * X[17]) - Michaelis_Menten(0.028914,X[17],X[1],0.1452))));
    F[20]=((7.118684 * X[16]) + ((0.054463 * X[17]) + ((-15.0 * X[20]) - Mass_Action(9.633772,X[20],X[10]))));
    F[28]=(Michaelis_Menten(2.801964,X[39],X[1],21.91138) + ((8.052152 * X[36]) + ((8.57e-05 * X[33]) + ((-3.940468 * X[28]) + (((-(Henri_Michaelis_Menten__irreversible(X[28],5.760257,0.003379))) - Mass_Action_(0.001334,X[28],X[43],X[1])) - Mass_Action(0.000161,X[28],X[8]))))));
    F[39]=(Michaelis_Menten(3.68998,X[16],X[1],27.5668) + (Henri_Michaelis_Menten__irreversible(X[28],5.760257,0.003379) + ((9.220426 * X[42]) + ((-1.540886 * X[39]) + (((-(Michaelis_Menten(2.801964,X[39],X[1],21.91138))) - Henri_Michaelis_Menten__irreversible(X[39],7.99621,0.216599)) - Mass_Action_(0.074306,X[39],X[43],X[1]))))));
    F[16]=(0.025365 + (Henri_Michaelis_Menten__irreversible(X[39],7.99621,0.216599) + ((15.0 * X[20]) + ((0.004562 * X[18]) + ((-7.118684 * X[16]) + ((-(Michaelis_Menten(3.68998,X[16],X[1],27.5668))) - Mass_Action_(0.211664,X[16],X[43],X[1])))))));
    F[25]=(Mass_Action(1.163756,X[24],X[5]) + (-0.050949 * X[25]));
    F[24]=(Mass_Action(1.07,X[26],X[7]) + ((-0.029266 * X[24]) - Mass_Action(1.163756,X[24],X[5])));
    F[15]=(Henri_Michaelis_Menten__irreversible(X[27],5.760257,0.608448) + (-0.006298 * X[15]));
    F[27]=(Mass_Action(0.146177,X[26],X[9]) - Henri_Michaelis_Menten__irreversible(X[27],5.760257,0.608448));
    F[26]=(Mass_Action(0.009266999999999999,X[21],X[8]) + ((0.050949 * X[25]) + ((-0.000111 * X[26]) + ((-(Mass_Action(0.146177,X[26],X[9]))) - Mass_Action(1.07,X[26],X[7])))));
    F[22]=(Mass_Action(19.76984,X[35],X[10]) + (Michaelis_Menten(0.006017,X[38],X[1],16.56551) + ((-7.248652 * X[22]) - Henri_Michaelis_Menten__irreversible(X[22],7.130081,3.991539))));
    F[35]=((3.940468 * X[21]) + ((7.248652 * X[22]) + ((-8.052152 * X[35]) - Mass_Action(19.76984,X[35],X[10]))));
    F[38]=(Mass_Action(50.66157,X[41],X[10]) + (Michaelis_Menten(0.066012,X[14],X[1],0.1452) + (Henri_Michaelis_Menten__irreversible(X[22],7.130081,3.991539) + ((-0.202066 * X[38]) + ((-(Henri_Michaelis_Menten__irreversible(X[38],12.62955,0.473124))) - Michaelis_Menten(0.006017,X[38],X[1],16.56551))))));
    F[41]=((1.540886 * X[37]) + ((0.202066 * X[38]) + ((-9.220426 * X[41]) - Mass_Action(50.66157,X[41],X[10]))));
    F[14]=(Mass_Action(9.633772,X[19],X[10]) + (Henri_Michaelis_Menten__irreversible(X[38],12.62955,0.473124) + ((-0.163388 * X[14]) - Michaelis_Menten(0.066012,X[14],X[1],0.1452))));
    F[19]=((7.118684 * X[13]) + ((0.163388 * X[14]) + ((-15.0 * X[19]) - Mass_Action(9.633772,X[19],X[10]))));
    F[21]=(Michaelis_Menten(0.142099,X[37],X[1],21.91138) + ((8.052152 * X[35]) + ((0.000111 * X[26]) + ((-3.940468 * X[21]) + (((-(Henri_Michaelis_Menten__irreversible(X[21],5.760257,0.608448))) - Mass_Action_(0.039141,X[21],X[43],X[1])) - Mass_Action(0.009266999999999999,X[21],X[8]))))));
    F[37]=(Michaelis_Menten(0.391818,X[13],X[1],27.5668) + (Henri_Michaelis_Menten__irreversible(X[21],5.760257,0.608448) + ((9.220426 * X[41]) + ((-1.540886 * X[37]) + (((-(Michaelis_Menten(0.142099,X[37],X[1],21.91138))) - Henri_Michaelis_Menten__irreversible(X[37],7.99621,6.065997)) - Mass_Action_(0.07517600000000001,X[37],X[43],X[1]))))));
    F[13]=(0.03725 + (Henri_Michaelis_Menten__irreversible(X[37],7.99621,6.065997) + ((15.0 * X[19]) + ((0.006298 * X[15]) + ((-7.118684 * X[13]) + ((-(Michaelis_Menten(0.391818,X[13],X[1],27.5668))) - Mass_Action_(0.173127,X[13],X[43],X[1])))))));
    F[3]=(Mass_Action(0.095,X[12],X[30]) + ((-0.019 * X[3]) - Mass_Action(0.095,X[30],X[3])));
    F[2]=(Mass_Action(0.095,X[11],X[23]) + ((-0.005429 * X[2]) - Mass_Action(0.095,X[23],X[2])));
    F[12]=(Nucleation(5e-06,X[30]) + ((0.019 * X[3]) + ((-0.06 * X[12]) - Mass_Action(0.095,X[12],X[30]))));
    F[11]=(Nucleation(5e-06,X[23]) + ((0.005429 * X[2]) + ((-0.0012 * X[11]) - Mass_Action(0.095,X[11],X[23]))));
    F[30]=((0.551509 * X[31]) + ((0.12 * X[12]) + ((0.019 * (X[3] + X[6])) + ((-2.0 * Nucleation(5e-06,X[30])) + ((((-(Mass_Action(0.095,X[30],X[6]))) - Mass_Action_(0.006502,X[30],X[44],X[1])) - Mass_Action(0.095,X[12],X[30])) - Mass_Action(0.095,X[30],X[3]))))));
    F[23]=((0.029266 * X[24]) + ((0.0024 * X[11]) + ((0.005429 * (X[2] + X[4])) + ((-2.0 * Nucleation(5e-06,X[23])) + ((((-(Mass_Action(0.095,X[23],X[4]))) - Mass_Action_(0.279,X[23],X[44],X[1])) - Mass_Action(0.095,X[11],X[23])) - Mass_Action(0.095,X[23],X[2]))))));
    F[5]=((0.050949 * X[25]) + ((0.644848 * X[32]) + ((-(Mass_Action(1.163756,X[24],X[5]))) - Mass_Action(5.59e-05,X[31],X[5]))));
    F[7]=((0.029266 * X[24]) + ((0.050949 * X[25]) + ((0.551509 * X[31]) + ((0.644848 * X[32]) + ((-(Mass_Action(1.07,X[26],X[7]))) - Mass_Action(0.346673,X[33],X[7]))))));
    F[9]=((0.006298 * X[15]) + ((0.004562 * X[18]) + ((-(Mass_Action(0.146177,X[26],X[9]))) - Mass_Action(0.283991,X[33],X[9]))));
    F[8]=((0.000111 * X[26]) + (Mass_Action(0.146177,X[26],X[9]) + ((0.029266 * X[24]) + ((8.57e-05 * X[33]) + (Mass_Action(0.283991,X[33],X[9]) + ((0.551509 * X[31]) + ((-(Mass_Action(0.009266999999999999,X[21],X[8]))) - Mass_Action(0.000161,X[28],X[8]))))))));
    F[10]=((0.163388 * X[14]) + ((0.202066 * X[38]) + ((7.248652 * X[22]) + ((0.054463 * X[17]) + ((0.067355 * X[40]) + ((2.416217 * X[29]) + ((((((-(Mass_Action(19.76984,X[36],X[10]))) - Mass_Action(9.633772,X[19],X[10])) - Mass_Action(9.633772,X[20],X[10])) - Mass_Action(19.76984,X[35],X[10])) - Mass_Action(50.66157,X[41],X[10])) - Mass_Action(50.66157,X[42],X[10]))))))));
    F[1]=((0.68 * X[0]) + ((-0.015317 * X[1]) + ((((((((((((((((-(Michaelis_Menten(0.07305499999999999,X[40],X[1],16.56551))) - Michaelis_Menten(0.142099,X[37],X[1],21.91138)) - Mass_Action_(0.001334,X[28],X[43],X[1])) - Mass_Action_(0.211664,X[16],X[43],X[1])) - Michaelis_Menten(3.68998,X[16],X[1],27.5668)) - Michaelis_Menten(0.006017,X[38],X[1],16.56551)) - Mass_Action_(0.039141,X[21],X[43],X[1])) - Mass_Action_(0.173127,X[13],X[43],X[1])) - Mass_Action_(0.07517600000000001,X[37],X[43],X[1])) - Michaelis_Menten(0.066012,X[14],X[1],0.1452)) - Mass_Action_(0.279,X[23],X[44],X[1])) - Michaelis_Menten(2.801964,X[39],X[1],21.91138)) - Mass_Action_(0.074306,X[39],X[43],X[1])) - Michaelis_Menten(0.028914,X[17],X[1],0.1452)) - Michaelis_Menten(0.391818,X[13],X[1],27.5668)) - Mass_Action_(0.006502,X[30],X[44],X[1]))));
    F[0]=(Michaelis_Menten(0.391818,X[13],X[1],27.5668) + (Michaelis_Menten(0.142099,X[37],X[1],21.91138) + (Mass_Action_(0.173127,X[13],X[43],X[1]) + (Mass_Action_(0.07517600000000001,X[37],X[43],X[1]) + (Mass_Action_(0.039141,X[21],X[43],X[1]) + (Michaelis_Menten(0.066012,X[14],X[1],0.1452) + (Michaelis_Menten(0.006017,X[38],X[1],16.56551) + (Mass_Action_(0.279,X[23],X[44],X[1]) + (Michaelis_Menten(3.68998,X[16],X[1],27.5668) + (Michaelis_Menten(2.801964,X[39],X[1],21.91138) + (Mass_Action_(0.211664,X[16],X[43],X[1]) + (Mass_Action_(0.074306,X[39],X[43],X[1]) + (Mass_Action_(0.001334,X[28],X[43],X[1]) + (Michaelis_Menten(0.028914,X[17],X[1],0.1452) + (Michaelis_Menten(0.07305499999999999,X[40],X[1],16.56551) + (Mass_Action_(0.006502,X[30],X[44],X[1]) + ((0.015317 * X[1]) + (-0.68 * X[0]))))))))))))))))));
    F[6]=Mass_Action(0.095,X[30],X[3]);
    F[4]=Mass_Action(0.095,X[23],X[2]);
    F[44]=0.0;
    F[43]=0.0;

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
    X[0]=1.0; //ADP
    X[1]=0.0; //ATP
    X[2]=0.0; //Agg33
    X[3]=0.0; //Agg43
    X[4]=0.0; //Ap
    X[5]=0.1; //Bag2
    X[6]=0.0; //Bp
    X[7]=0.1; //CHIP
    X[8]=0.1; //Hsc70
    X[9]=0.1; //Hsp90
    X[10]=15.0; //MT
    X[11]=0.0; //Nucleus3
    X[12]=0.0; //Nucleus4
    X[13]=0.0; //Tau03R
    X[14]=0.0; //Tau03RMT
    X[15]=0.0; //Tau03R_Hsp90
    X[16]=0.0; //Tau04R
    X[17]=0.0; //Tau04RMT
    X[18]=0.0; //Tau04R_Hsp90
    X[19]=0.0; //Tau0_3R
    X[20]=0.0; //Tau0_4R
    X[21]=0.0; //TauH3R
    X[22]=0.0; //TauH3RMT
    X[23]=0.0; //TauH3RUb
    X[24]=0.0; //TauH3R_CHIP_Hsc70
    X[25]=0.0; //TauH3R_CHIP_Hsc70_Bag2
    X[26]=0.0; //TauH3R_Hsc70
    X[27]=0.0; //TauH3R_Hsp90
    X[28]=0.0; //TauH4R
    X[29]=0.0; //TauH4RMT
    X[30]=0.0; //TauH4RUb
    X[31]=0.0; //TauH4R_CHIP_Hsc70
    X[32]=0.0; //TauH4R_CHIP_Hsc70_Bag2
    X[33]=0.0; //TauH4R_Hsc70
    X[34]=0.0; //TauH4R_Hsp90
    X[35]=0.0; //TauH_3R
    X[36]=0.0; //TauH_4R
    X[37]=0.0; //TauN3R
    X[38]=0.0; //TauN3RMT
    X[39]=0.0; //TauN4R
    X[40]=0.0; //TauN4RMT
    X[41]=0.0; //TauN_3R
    X[42]=0.0; //TauN_4R
    X[43]=1.0; //_20S
    X[44]=1.0; //_26S

}

template <class Precision> __forceinline__ __device__ void PerThread_Finalization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
	
}


#endif
