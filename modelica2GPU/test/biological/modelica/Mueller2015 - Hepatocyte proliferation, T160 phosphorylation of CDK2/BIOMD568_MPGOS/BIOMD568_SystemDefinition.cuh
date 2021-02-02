
#ifndef BIOMD568_PERTHREAD_SYSTEMDEFINITION_H
#define BIOMD568_PERTHREAD_SYSTEMDEFINITION_H

#include <fstream>
#include <iostream>
#include <string>
#include "Functions.cuh"


template<class Precision> __forceinline__ __device__ void PerThread_OdeFunction(
	int tid, int NT, \
	Precision*    F, Precision*    X, Precision     T, \
	Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi  		
) {
    ACC[23]=87735.36596180897;
    ACC[22]=11499.40147960882;
    ACC[25]=0.3467598957583937;
    ACC[24]=0.1000372176705278;
    ACC[20]=9.981799797130682;
    ACC[21]=1430.784136147094;
    ACC[27]=101.5991128194075;
    ACC[10]=0.01973164956590371;
    ACC[1]=(2.0 + ((((((-(X[20])) - X[19]) - X[17]) - X[14]) - X[23]) - X[8]));
    ACC[3]=(0.01593991247078077 * X[13]);
    ACC[2]=(0.01304000245825217 * (X[6] + (X[7] + X[13])));
    ACC[9]=(0.005040634674922601 * (X[0] + (X[11] + (X[6] + (X[7] + X[13])))));
    ACC[8]=(0.01337461300309598 * ((0.25 * (X[21] + (X[2] + (X[15] + X[16])))) + (12.67 * (X[3] + (X[10] + X[12])))));
    ACC[5]=(0.04373839009287926 * ((0.25 * X[16]) + (12.67 * X[10])));
    ACC[4]=(0.05279403525433436 * (X[9] + X[15]));
    ACC[6]=(0.01462074303405573 * ((0.25 * (X[21] + (X[4] + (X[9] + X[15])))) + (12.67 * (X[22] + X[12]))));
    ACC[16]=piecewise(0.0,lt(T,-1.0),piecewise(0.0,lt(T,0.0),0.0));
    ACC[19]=(2797.82326282727 * (1.0 - ACC[16]));
    ACC[15]=piecewise(0.0,lt(T,-1.0),piecewise(0.0,lt(T,0.0),0.0));
    ACC[17]=piecewise(0.0,lt(T,-1.0),piecewise(0.0,lt(T,0.0),0.0));
    ACC[18]=piecewise(0.0,lt(T,-1.0),piecewise(0.0,lt(T,0.0),0.0));
    ACC[14]=piecewise(0.0,lt(T,-1.0),piecewise(0.0,lt(T,24.0),1.0));
    ACC[12]=((1.0 - ACC[17]) * (0.16 + (0.8435838264454634 * (pow(ACC[14],1.14663416967514) / (0.004266460054123166 + pow(ACC[14],1.14663416967514))))));
    ACC[11]=((1.0 - ACC[15]) * (0.53 + (0.4818605884206149 * (pow(ACC[14],1.0957) / (0.02523529451194663 + pow(ACC[14],1.0957))))));
    ACC[26]=(0.09183265750003219 / (1.0 + (0.439662894183616 * ACC[11])));
    ACC[13]=(1.0 - ((0.09183265750003219 / (ACC[26] * 0.439662894183616)) - 2.274469856858949));
    ACC[28]=(0.6012882038466359 + (0.3987117961533641 * (ACC[12] * (1.0 - ACC[13]))));
    ACC[29]=((1.0 - ACC[18]) * ACC[28]);
    ACC[7]=(0.5611900154798762 * (X[11] + (X[5] + X[7])));
    ACC[0]=(0.02629959094719133 * ((0.25 * (X[21] + X[15])) + (12.67 * X[12])));
    F[20]=(Function_for_reaction_68_0(X[19],1.0,23.6658781343201) - Function_for_reaction_69_0(X[20],1.0,23.6658781343201));
    F[19]=(Function_for_reaction_65_0(X[17],1.0,23.6658781343201) - Function_for_reaction_68_0(X[19],1.0,23.6658781343201));
    F[17]=(Function_for_reaction_58_0(X[14],1.0,23.6658781343201) - Function_for_reaction_65_0(X[17],1.0,23.6658781343201));
    F[14]=(Function_for_reaction_42_0(X[8],1.0,23.6658781343201) - Function_for_reaction_58_0(X[14],1.0,23.6658781343201));
    F[8]=(Function_for_reaction_18_0(X[5],X[9],X[23],1.0,0.00949790539669408) - Function_for_reaction_42_0(X[8],1.0,23.6658781343201));
    F[23]=(-(Function_for_reaction_18_0(X[5],X[9],X[23],1.0,0.00949790539669408)));
    F[13]=(Function_for_reaction_38_0(2.03458881189349,X[6],X[9],1.0,7142308.07232621,3.0) + (Function_for_reaction_39_0(2.03458881189349,X[7],X[9],1.0,7142308.07232621,3.0) + (((-(Function_for_reaction_55_0(X[13],1.0,ACC[25]))) - Function_for_reaction_56_0(X[2],X[13],1.0,0.863570809432207)) - Function_for_reaction_57_0(0.118988383643671,X[9],X[13],1.0,0.00313841707547858,16634.9400020267,3.0))));
    F[7]=(Function_for_reaction_17_0(2.03458881189349,X[11],X[16],1.0,ACC[19],3.0) + (Function_for_reaction_36_0(X[5],X[6],1.0,182.218452288549) + ((((((-(Function_for_reaction_41_0(0.118988383643671,X[7],X[9],1.0,2892.0219338341,16634.9400020267,3.0))) - Function_for_reaction_30_0(X[7],1.0,0.0889964132806627)) - Function_for_reaction_37_0(X[7],1.0,ACC[23])) - Function_for_reaction_34_0(X[7],1.0,0.0999954023364359)) - Function_for_reaction_32_0(X[2],X[7],1.0,0.863570809432207)) - Function_for_reaction_39_0(2.03458881189349,X[7],X[9],1.0,7142308.07232621,3.0))));
    F[11]=(Function_for_reaction_35_0(X[0],X[5],1.0,229.976400323907) + (Function_for_reaction_41_0(0.118988383643671,X[7],X[9],1.0,2892.0219338341,16634.9400020267,3.0) + (((((-(Function_for_reaction_17_0(2.03458881189349,X[11],X[16],1.0,ACC[19],3.0))) - Function_for_reaction_12_0(X[2],X[11],1.0,0.863570809432207)) - Function_for_reaction_14_0(X[11],1.0,0.0999954023364359)) - Function_for_reaction_10_0(X[11],1.0,0.0889964132806627)) - Function_for_reaction_15_0(X[11],1.0,ACC[22]))));
    F[6]=(Function_for_reaction_16_0(2.03458881189349,X[0],X[16],1.0,ACC[19],3.0) + (Function_for_reaction_34_0(X[7],1.0,0.0999954023364359) + (Function_for_reaction_37_0(X[7],1.0,ACC[23]) + (Function_for_reaction_57_0(0.118988383643671,X[9],X[13],1.0,0.00313841707547858,16634.9400020267,3.0) + (((((-(Function_for_reaction_40_0(0.118988383643671,X[6],X[9],1.0,2892.0219338341,16634.9400020267,3.0))) - Function_for_reaction_31_0(X[2],X[6],1.0,0.863570809432207)) - Function_for_reaction_36_0(X[5],X[6],1.0,182.218452288549)) - Function_for_reaction_29_0(X[6],1.0,ACC[25])) - Function_for_reaction_38_0(2.03458881189349,X[6],X[9],1.0,7142308.07232621,3.0))))));
    F[0]=(Function_for_reaction_8_0(X[5],1.0,72.5245257602228,20.0129834334888) + (Function_for_reaction_14_0(X[11],1.0,0.0999954023364359) + (Function_for_reaction_15_0(X[11],1.0,ACC[22]) + (Function_for_reaction_40_0(0.118988383643671,X[6],X[9],1.0,2892.0219338341,16634.9400020267,3.0) + ((((-(Function_for_reaction_35_0(X[0],X[5],1.0,229.976400323907))) - Function_for_reaction_9_0(X[0],1.0,ACC[25])) - Function_for_reaction_11_0(X[0],X[2],1.0,0.863570809432207)) - Function_for_reaction_16_0(2.03458881189349,X[0],X[16],1.0,ACC[19],3.0))))));
    F[5]=(Function_for_reaction_10_0(X[11],1.0,0.0889964132806627) + (Function_for_reaction_12_0(X[2],X[11],1.0,0.863570809432207) + (Function_for_reaction_13_0(X[5],1.0,0.459601740303536,2.49174531457788e-06,ACC[28]) + (Function_for_reaction_15_0(X[11],1.0,ACC[22]) + (Function_for_reaction_30_0(X[7],1.0,0.0889964132806627) + (Function_for_reaction_32_0(X[2],X[7],1.0,0.863570809432207) + (Function_for_reaction_37_0(X[7],1.0,ACC[23]) + (Function_for_reaction_39_0(2.03458881189349,X[7],X[9],1.0,7142308.07232621,3.0) + (((-(Function_for_reaction_33_0(X[5],1.0,ACC[24]))) - Function_for_reaction_35_0(X[0],X[5],1.0,229.976400323907)) - Function_for_reaction_36_0(X[5],X[6],1.0,182.218452288549))))))))));
    F[22]=(Function_for_reaction_2_0(X[5],X[7],1.0,2.19944932286058,0.157511710670132,ACC[28]) + (Function_for_reaction_50_0(X[12],1.0,ACC[20]) + ((-(Function_for_reaction_4_0(X[22],1.0,ACC[13],0.225746618767114,1.55090179808215e-05))) - Function_for_reaction_23_0(X[3],X[22],1.0,997.938141166465))));
    F[1]=(Function_for_reaction_1_0(1.0,14298.6715905912,ACC[28]) + (Function_for_reaction_48_0(X[10],1.0,ACC[21]) + ((-(Function_for_reaction_19_0(X[1],1.0,ACC[13],1.01433121526038,0.107637073030656))) - Function_for_reaction_22_0(X[1],X[3],1.0,14.3083360067931))));
    F[15]=(Function_for_reaction_49_0(X[2],X[9],1.0,997.938141166465) + (((-(Function_for_reaction_60_0(X[15],1.0,ACC[13],0.225746618767114,1.55090179808215e-05))) - Function_for_reaction_62_0(X[15],1.0,ACC[20])) - Function_for_reaction_63_0(X[5],X[9],X[15],1.0,ACC[12],0.040108041739907,0.000282976267377082,0.750574831653576)));
    F[9]=(Function_for_reaction_21_0(X[4],1.0,ACC[27]) + (Function_for_reaction_62_0(X[15],1.0,ACC[20]) + (Function_for_reaction_63_0(X[5],X[9],X[15],1.0,ACC[12],0.040108041739907,0.000282976267377082,0.750574831653576) + ((((-(Function_for_reaction_49_0(X[2],X[9],1.0,997.938141166465))) - Function_for_reaction_44_0(X[9],1.0,ACC[13],0.225746618767114,1.55090179808215e-05)) - Function_for_reaction_46_0(X[9],1.0,ACC[13],5.58835572681068)) - Function_for_reaction_47_0(X[9],1.0,101.282119534273)))));
    F[4]=(Function_for_reaction_6_0(X[21],1.0,ACC[20]) + (Function_for_reaction_7_0(X[5],X[9],X[21],1.0,ACC[12],0.040108041739907,0.000282976267377082,0.750574831653576) + (Function_for_reaction_47_0(X[9],1.0,101.282119534273) + (((-(Function_for_reaction_20_0(X[4],1.0,ACC[13],0.225746618767114,1.55090179808215e-05))) - Function_for_reaction_21_0(X[4],1.0,ACC[27])) - Function_for_reaction_24_0(X[2],X[4],1.0,997.938141166465)))));
    F[18]=(Function_for_reaction_61_0(X[16],1.0,ACC[21]) + (Function_for_reaction_64_0(X[5],X[9],X[16],1.0,ACC[12],0.040108041739907,0.000282976267377082,0.750574831653576) + ((-(Function_for_reaction_66_0(X[18],1.0,ACC[13],1.01433121526038,0.107637073030656))) - Function_for_reaction_67_0(X[2],X[18],1.0,14.3083360067931))));
    F[3]=(Function_for_reaction_5_0(X[5],1.0,0.811617200647839,3.84136205729286e-06,ACC[29]) + (Function_for_reaction_43_0(X[10],1.0,ACC[13],1.01433121526038,0.107637073030656) + (Function_for_reaction_45_0(X[12],1.0,ACC[13],0.225746618767114,1.55090179808215e-05) + (Function_for_reaction_48_0(X[10],1.0,ACC[21]) + (Function_for_reaction_50_0(X[12],1.0,ACC[20]) + (((((-(Function_for_reaction_28_0(X[3],1.0,ACC[12],ACC[13],0.736488746268804,0.00464010657330714))) - Function_for_reaction_23_0(X[3],X[22],1.0,997.938141166465)) - Function_for_reaction_25_0(X[3],ACC[10],1.0,ACC[26])) - Function_for_reaction_22_0(X[1],X[3],1.0,14.3083360067931)) - Function_for_reaction_26_0(X[3],ACC[10],1.0,ACC[26])))))));
    F[10]=(Function_for_reaction_22_0(X[1],X[3],1.0,14.3083360067931) + ((((-(Function_for_reaction_53_0(X[10],ACC[10],1.0,ACC[26]))) - Function_for_reaction_43_0(X[10],1.0,ACC[13],1.01433121526038,0.107637073030656)) - Function_for_reaction_48_0(X[10],1.0,ACC[21])) - Function_for_reaction_51_0(X[10],ACC[10],1.0,ACC[26])));
    F[12]=(Function_for_reaction_23_0(X[3],X[22],1.0,997.938141166465) + ((((-(Function_for_reaction_54_0(X[12],ACC[10],1.0,ACC[26]))) - Function_for_reaction_45_0(X[12],1.0,ACC[13],0.225746618767114,1.55090179808215e-05)) - Function_for_reaction_50_0(X[12],1.0,ACC[20])) - Function_for_reaction_52_0(X[12],ACC[10],1.0,ACC[26])));
    F[21]=(Function_for_reaction_24_0(X[2],X[4],1.0,997.938141166465) + (Function_for_reaction_52_0(X[12],ACC[10],1.0,ACC[26]) + (((-(Function_for_reaction_3_0(X[21],1.0,ACC[13],0.225746618767114,1.55090179808215e-05))) - Function_for_reaction_6_0(X[21],1.0,ACC[20])) - Function_for_reaction_7_0(X[5],X[9],X[21],1.0,ACC[12],0.040108041739907,0.000282976267377082,0.750574831653576))));
    F[16]=(Function_for_reaction_51_0(X[10],ACC[10],1.0,ACC[26]) + (Function_for_reaction_67_0(X[2],X[18],1.0,14.3083360067931) + (((-(Function_for_reaction_59_0(X[16],1.0,1.01433121526038))) - Function_for_reaction_61_0(X[16],1.0,ACC[21])) - Function_for_reaction_64_0(X[5],X[9],X[16],1.0,ACC[12],0.040108041739907,0.000282976267377082,0.750574831653576))));
    F[2]=(Function_for_reaction_3_0(X[21],1.0,ACC[13],0.225746618767114,1.55090179808215e-05) + (Function_for_reaction_6_0(X[21],1.0,ACC[20]) + (Function_for_reaction_25_0(X[3],ACC[10],1.0,ACC[26]) + (Function_for_reaction_60_0(X[15],1.0,ACC[13],0.225746618767114,1.55090179808215e-05) + (Function_for_reaction_61_0(X[16],1.0,ACC[21]) + (Function_for_reaction_62_0(X[15],1.0,ACC[20]) + ((((-(Function_for_reaction_67_0(X[2],X[18],1.0,14.3083360067931))) - Function_for_reaction_24_0(X[2],X[4],1.0,997.938141166465)) - Function_for_reaction_27_0(X[2],1.0,ACC[12],ACC[13],0.736488746268804,0.00464010657330714)) - Function_for_reaction_49_0(X[2],X[9],1.0,997.938141166465))))))));

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
    ACC[0]=0.0; //ObsCDK2P21_obs
    ACC[1]=0.0; //ObsDNAContent_obs
    ACC[2]=0.0; //ObsPhosRbS788_obs
    ACC[3]=0.0; //ObsPhosRbS800_obs
    ACC[4]=0.0; //ObsTotCDK2T160_obs
    ACC[5]=0.0; //ObsTotCycDCDK4_obs
    ACC[6]=0.0; //ObsTotCycECDK2_obs
    ACC[7]=0.0; //ObsTotE2F_obs
    ACC[8]=0.0; //ObsTotP21_obs
    ACC[9]=0.0; //ObsTotRb_obs
    ACC[10]=0.0197316495659037; //Vratio
    ACC[11]=0.53; //akt
    ACC[12]=0.16; //erk
    ACC[13]=0.47; //gsk3b
    ACC[14]=0.0; //hgf
    ACC[15]=0.0; //inhakt
    ACC[16]=0.0; //inhc4d1
    ACC[17]=0.0; //inherk
    ACC[18]=0.0; //inhp53
    ACC[19]=2797.82326282727; //kcatp_rbc4
    ACC[20]=9.98179979713068; //kd_p21c2
    ACC[21]=1430.78413614709; //kd_p21c4
    ACC[22]=11499.4014796088; //kd_rbe2f
    ACC[23]=87735.365961809; //kd_rbpe2f
    ACC[24]=0.100037217670528; //kdeg_e2ffree
    ACC[25]=0.346759895758394; //kdeg_rbfree
    ACC[26]=0.07447775230966951; //kimport
    ACC[27]=101.599112819407; //kp_c2cak
    ACC[28]=0.635098964160441; //tf
    ACC[29]=0.635098964160441; //tfp21
    X[0]=25.5914; //S1
    X[1]=0.0; //S10
    X[2]=0.0; //S11
    X[3]=0.0; //S12
    X[4]=0.0; //S13
    X[5]=0.0; //S14
    X[6]=0.0; //S15
    X[7]=0.0; //S16
    X[8]=0.0; //S17
    X[9]=0.0; //S18
    X[10]=0.0; //S19
    X[11]=0.0601; //S2
    X[12]=0.0; //S20
    X[13]=0.0; //S21
    X[14]=0.0; //S22
    X[15]=0.0; //S23
    X[16]=0.0; //S24
    X[17]=0.0; //S25
    X[18]=0.0; //S26
    X[19]=0.0; //S27
    X[20]=0.0; //S28
    X[21]=6.2223; //S3
    X[22]=0.415; //S4
    X[23]=1.0; //S5

}

template <class Precision> __forceinline__ __device__ void PerThread_Finalization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
	
}


#endif
