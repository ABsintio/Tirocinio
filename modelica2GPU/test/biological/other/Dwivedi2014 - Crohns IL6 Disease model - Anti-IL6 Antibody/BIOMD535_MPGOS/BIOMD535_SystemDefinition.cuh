
#ifndef BIOMD535_PERTHREAD_SYSTEMDEFINITION_H
#define BIOMD535_PERTHREAD_SYSTEMDEFINITION_H

#include <fstream>
#include <iostream>
#include <string>
#include "Functions.cuh"


template<class Precision> __forceinline__ __device__ void PerThread_OdeFunction(
	int tid, int NT, \
	Precision*    F, Precision*    X, Precision     T, \
	Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi  		
) {
    ACC[1]=(330.0 * (X[18] / (10.0 + X[18])));
    ACC[2]=(330.0 * (X[15] / (10.0 + X[15])));
    ACC[0]=(100.0 + (-0.4523583510901705 * X[4]));
    F[31]=((0.0003472222222222222 * X[35]) + (-0.001736111111111111 * X[31]));
    F[19]=(Function_for_mwa3cb4a9b_d628_4807_8847_bdcd9b40c7f1_1(2.5,X[9],X[19],1000.0,1.0,X[38]) + ((0.01041666666666667 * X[7]) + ((-0.02083333333333333 * X[19]) - Function_for_mw8b4e96ed_0bcc_4ad6_b560_366e173a6e6b(X[19],0.0018,1.0))));
    F[38]=((0.01041666666666667 * X[35]) + ((-0.02083333333333333 * X[38]) + ((-(Function_for_mwa3cb4a9b_d628_4807_8847_bdcd9b40c7f1_1(2.5,X[9],X[19],1000.0,1.0,X[38]))) - Function_for_mw9629d028_fcc0_4886_9e4d_36eecdb0381d(0.0018,1.0,X[38]))));
    F[20]=(Function_for_mw8be158f1_ea81_45bf_80d4_6e31cd83fe6c(1.026,20.52,X[20],X[22],X[34],1.0) + ((1.2125 * X[25]) + (-0.8473000000000001 * X[20])));
    F[34]=((1.2125 * X[30]) + ((-0.8473000000000001 * X[34]) - Function_for_mw8be158f1_ea81_45bf_80d4_6e31cd83fe6c(1.026,20.52,X[20],X[22],X[34],1.0)));
    F[9]=(0.036 + ((1.2125 * X[37]) + ((-0.8473000000000001 * X[9]) + (((-(Function_for_mw4c099d5c_200f_474e_8ec1_59e9223a8afd(1.92,0.384,X[9],X[22],X[33],1.0))) - Function_for_mwf913ea0b_785a_4701_ac91_b18ab5dd5a89(1.0,X[9],1.0)) - Function_for_mwa3cb4a9b_d628_4807_8847_bdcd9b40c7f1_1(2.5,X[9],X[19],1000.0,1.0,X[38])))));
    F[33]=((1.2125 * X[12]) + ((-0.8473000000000001 * X[33]) - Function_for_mw4c099d5c_200f_474e_8ec1_59e9223a8afd(1.92,0.384,X[9],X[22],X[33],1.0)));
    F[18]=(Function_for_reaction_42(X[8],X[21],145.0,219.0,1.0) - Function_for_reaction_43(X[18],0.62,1.0,5.34));
    F[8]=(Function_for_reaction_43(X[18],0.62,1.0,5.34) - Function_for_reaction_42(X[8],X[21],145.0,219.0,1.0));
    F[21]=(Function_for_reaction_46(155.0,X[26],1.0) + ((-(Function_for_reaction_45(X[21],1.0,0.01))) - Function_for_mw64df7c9e_35da_4c7f_be56_c5dabfb060b6(0.525,X[21],1.0,155.3)));
    F[26]=(Function_for_reaction_41(1.026,20.52,X[22],X[26],X[27],1.0) + (Function_for_mw64df7c9e_35da_4c7f_be56_c5dabfb060b6(0.525,X[21],1.0,155.3) + ((-(Function_for_reaction_46(155.0,X[26],1.0))) - Function_for_reaction_44(1.96,X[26],1.0))));
    F[27]=(0.06850000000000001 - (Function_for_reaction_41(1.026,20.52,X[22],X[26],X[27],1.0) + Function_for_mw6f470e13_f0e4_4294_83d8_59dd5670d10c(0.1561,X[27],1.0)));
    F[22]=(Function_for_mw4c099d5c_200f_474e_8ec1_59e9223a8afd(1.92,0.384,X[9],X[22],X[33],1.0) + ((1.2125 * X[0]) + ((-0.8473000000000001 * X[22]) + ((-(Function_for_reaction_41(1.026,20.52,X[22],X[26],X[27],1.0))) - Function_for_mw8be158f1_ea81_45bf_80d4_6e31cd83fe6c(1.026,20.52,X[20],X[22],X[34],1.0)))));
    F[13]=((0.02083333333333333 * (X[35] - X[13])) + ((-(Function_for_mw8fb6c0a7_b05d_4c2a_8866_77eb81f063d1_1(X[1],2.5,X[13],1.0,1000.0,X[36]))) - Function_for_mw2ae288ab_7d03_4a84_a024_c711ad2b77e6(X[13],1.0,0.0018)));
    F[36]=(Function_for_mw8fb6c0a7_b05d_4c2a_8866_77eb81f063d1_1(X[1],2.5,X[13],1.0,1000.0,X[36]) + ((0.02083333333333333 * (X[7] - X[36])) - Function_for_mw3e76b10b_5420_4828_8c70_b91b767132d0(1.0,0.0018,X[36])));
    F[29]=(Function_for_mwd77df15b_fed7_41a8_a3d6_b0f6c590c5f6(1.026,20.52,X[5],X[17],1.0,X[29]) + ((1.2125 * X[25]) + (-0.8473000000000001 * X[29])));
    F[5]=((1.2125 * X[30]) + ((-0.8473000000000001 * X[5]) - Function_for_mwd77df15b_fed7_41a8_a3d6_b0f6c590c5f6(1.026,20.52,X[5],X[17],1.0,X[29])));
    F[10]=((1.2125 * X[12]) + ((-0.8473000000000001 * X[10]) - Function_for_mwa812f08f_1035_42bd_82d2_72d691308f88(1.92,0.384,X[1],X[10],X[17],1.0)));
    F[15]=(Function_for_reaction_9(X[2],X[16],1.0,145.0,219.0) - Function_for_reaction_10(X[15],1.0,0.62,5.34));
    F[16]=(Function_for_reaction_10(X[15],1.0,0.62,5.34) - Function_for_reaction_9(X[2],X[16],1.0,145.0,219.0));
    F[2]=(Function_for_reaction_16(155.0,1.0,X[32]) + ((-(Function_for_reaction_13(X[2],1.0,0.01))) - Function_for_mwb675e13a_26c0_4b18_a8c3_0f5a62090ba4(X[2],0.525,1.0,155.3)));
    F[23]=(Function_for_reaction_7(1.92,0.384,X[1],X[3],X[23],1.0) + ((-(Function_for_reaction_8(1.026,20.52,X[23],X[24],1.0,X[32]))) - Function_for_reaction_11(1.96,X[23],1.0)));
    F[1]=((1.2125 * X[37]) + ((-0.8473000000000001 * X[1]) + (((-(Function_for_reaction_7(1.92,0.384,X[1],X[3],X[23],1.0))) - Function_for_mwa812f08f_1035_42bd_82d2_72d691308f88(1.92,0.384,X[1],X[10],X[17],1.0)) - Function_for_mw8fb6c0a7_b05d_4c2a_8866_77eb81f063d1_1(X[1],2.5,X[13],1.0,1000.0,X[36]))));
    F[3]=(0.06850000000000001 - (Function_for_reaction_7(1.92,0.384,X[1],X[3],X[23],1.0) + Function_for_reaction_15(0.1561,X[3],1.0)));
    F[17]=((1.2125 * X[0]) + ((-0.8473000000000001 * X[17]) + (Function_for_mwa812f08f_1035_42bd_82d2_72d691308f88(1.92,0.384,X[1],X[10],X[17],1.0) + ((-(Function_for_reaction_6(1.026,20.52,X[17],X[24],1.0,X[32]))) - Function_for_mwd77df15b_fed7_41a8_a3d6_b0f6c590c5f6(1.026,20.52,X[5],X[17],1.0,X[29])))));
    F[32]=(Function_for_reaction_6(1.026,20.52,X[17],X[24],1.0,X[32]) + (Function_for_reaction_8(1.026,20.52,X[23],X[24],1.0,X[32]) + (Function_for_mwb675e13a_26c0_4b18_a8c3_0f5a62090ba4(X[2],0.525,1.0,155.3) + ((-(Function_for_reaction_16(155.0,1.0,X[32]))) - Function_for_reaction_12(1.96,1.0,X[32])))));
    F[24]=(0.06850000000000001 + (((-(Function_for_reaction_6(1.026,20.52,X[17],X[24],1.0,X[32]))) - Function_for_reaction_8(1.026,20.52,X[23],X[24],1.0,X[32])) - Function_for_mw4a00a3a4_778f_4952_8100_2dc3cc2b7046(0.1561,X[24],1.0)));
    F[7]=(Function_for_mwb1879013_5fcd_490c_8b01_eaf84df15b9a_1(2.5,X[7],1.0,1000.0,X[35],X[37]) + ((-0.02083333333333333 * (X[7] - X[36])) + ((-0.01041666666666667 * X[7]) + ((0.02083333333333333 * X[19]) - Function_for_mw30abb016_4300_4f40_a1b3_f865d0a45707(X[7],1.0,0.0018)))));
    F[35]=((-0.01076388888888889 * X[35]) + ((0.001736111111111111 * X[31]) + ((-0.02083333333333333 * (X[35] - X[13])) + ((0.02083333333333333 * X[38]) + ((-(Function_for_mwb1879013_5fcd_490c_8b01_eaf84df15b9a_1(2.5,X[7],1.0,1000.0,X[35],X[37]))) - Function_for_mwba7f4605_8571_439b_b3ab_eb0b43808db8(1.0,0.0018,X[35]))))));
    F[0]=(Function_for_reaction_1(1.92,0.384,X[0],X[12],1.0,X[37]) + ((-2.425 * X[0]) + ((0.8473000000000001 * X[22]) + ((0.8473000000000001 * X[17]) - Function_for_reaction_2(1.026,20.52,X[0],1.0,X[25],X[30])))));
    F[12]=(0.1 + (Function_for_mw71d90b81_8211_4039_8807_12a7fe03206c(X[4],1.0,0.0054) + ((-2.425 * X[12]) + ((0.8473000000000001 * X[33]) + ((0.8473000000000001 * X[10]) + ((-(Function_for_reaction_1(1.92,0.384,X[0],X[12],1.0,X[37]))) - Function_for_mw41c27823_d7ee_4554_9eac_3d5beec8e854(X[12],1.0,0.3)))))));
    F[4]=(0.42 + ((-1.2125 * X[4]) + ((0.8473000000000001 * X[14]) - Function_for_reaction_5(0.36,X[4],1.0))));
    F[25]=(Function_for_reaction_2(1.026,20.52,X[0],1.0,X[25],X[30]) + ((-2.425 * X[25]) + (0.8473000000000001 * (X[20] + X[29]))));
    F[30]=(3.9 + ((-2.425 * X[30]) + ((0.8473000000000001 * X[34]) + ((0.8473000000000001 * X[5]) + ((-(Function_for_reaction_2(1.026,20.52,X[0],1.0,X[25],X[30]))) - Function_for_mwb6a99eb5_ea4c_4733_98dd_1daf5ec6b0db(1.0,X[30],1.0))))));
    F[37]=(0.0063 + ((-2.425 * X[37]) + ((0.8473000000000001 * X[9]) + ((0.8473000000000001 * X[1]) + (((-(Function_for_reaction_1(1.92,0.384,X[0],X[12],1.0,X[37]))) - Function_for_reaction_4(34.82,1.0,X[37])) - Function_for_mwb1879013_5fcd_490c_8b01_eaf84df15b9a_1(2.5,X[7],1.0,1000.0,X[35],X[37]))))));
    F[14]=(Function_for_mwab0012ac_e5f2_4904_9893_820fd210402e(0.5,1.0,ACC[2]) + ((1.2125 * X[4]) + (-0.8473000000000001 * X[14])));
    F[11]=((0.01041666666666667 * X[28]) + ((-0.02083333333333333 * X[11]) - Function_for_mw5be6711a_526a_4a58_80c6_d353dcabdf87(X[11],0.0018,1.0)));
    F[6]=((0.02083333333333333 * (X[28] - X[6])) - Function_for_mw5d9fcd0c_ca08_4444_b509_2ea4777e0025(X[6],1.0,0.0018));
    F[28]=((-0.02083333333333333 * (X[28] - X[6])) + ((-0.01041666666666667 * X[28]) + ((0.02083333333333333 * X[11]) - Function_for_mw14d351b9_623a_48e8_a21c_854411039120(1.0,X[28],0.0018))));

}

template<class Precision> __forceinline__ __device__ void PerThread_EventFunction(
	int tid, int NT, Precision*	  EF, \
	Precision     T, Precision    dT, Precision*    TD, Precision*	X, \
	Precision* cPAR, Precision* sPAR, int*       sPARi, Precision* ACC, int* ACCi  		
) {
    ACC[5]=T >= 0.1;
    ACC[4]=T >= 672.0;
    ACC[3]=T >= 1344.0;

    EF[2] = (! (ACC[3]));
    EF[0] = (! (ACC[5]));
    EF[1] = (! (ACC[4]));
}

template<class Precision> __forceinline__ __device__ void PerThread_ActionAfterEventDetection(
    int tid, int NT, int IDX, int& UDT, \
    Precision    &T, Precision   &dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR, int*       sPARi, Precision* ACC, int* ACCi
) {
    if (IDX == 0){
	    X[35]=(703.8000000000001 + X[35]);
    }
    if (IDX == 1){
	    X[35]=(703.8000000000001 + X[35]);
    }
    if (IDX == 2){
	    X[35]=(703.8000000000001 + X[35]);
    }

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
    ACC[0]=0.0; //CRP_Suppression___
    ACC[1]=0.0; //mw0083d743_836f_4238_a17f_4602193d5bc0
    ACC[2]=0.0; //mwd5313618_89eb_4c8c_bc82_66f10f966349
    ACC[3]=0; //$whenCondition1
    ACC[4]=0; //$whenCondition2
    ACC[5]=0; //$whenCondition3
    X[0]=0.00109424263781451; //mw03db56ac_8dc6_4931_ae82_fef706d2ee3d
    X[1]=0.00072566581144648; //mw0adf3eb4_a196_4c48_b10d_4e9e9faaf9e1
    X[2]=0.765416493681823; //mw0eb6c959_d408_45a0_a450_928b8c5876bb
    X[3]=0.438235811135574; //mw10315fa3_6f13_4618_bda8_a8694bd3c374
    X[4]=221.06367608557; //mw114aa90f_5f5b_4fe8_9406_361c8489b6a1
    X[5]=5.5896988923534; //mw147d30ec_478e_4090_b496_128a131d29eb
    X[6]=-1.236890033247e-26; //mw1d9426a3_e1e9_49e0_ad77_eb6833be398a
    X[7]=-9.13055311065931e-27; //mw1da111f2_a036_4392_8512_015005bdcbb7
    X[8]=0.610636013508212; //mw2b255f94_8018_4b99_bde8_918eeac45446
    X[9]=0.0093481986616084; //mw2c9b0499_3325_4394_8af3_bbf653a944a0
    X[10]=6.08704712819469; //mw2e464cf3_a09c_4b7c_9f3c_06720016a48e
    X[11]=-7.627502852945431e-27; //mw2f3d48e0_c9c4_4a0e_aca3_9241eb573296
    X[12]=4.25350679194445; //mw30ae63db_6cd3_4b6f_93ad_3350cd360bcc
    X[13]=-5.96393846435346e-26; //mw3667a5e1_02c9_44a0_acb4_b0431faa822d
    X[14]=409.775322370541; //mw36ea78c1_ed71_4def_96d3_857a442d7195
    X[15]=9.22246266042167; //mw39c2e431_fdc3_4964_be29_6ca856620b1b
    X[16]=0.777537339578333; //mw42054cd7_17af_46da_970c_7f99151906ad
    X[17]=0.000976164943878913; //mw4638f126_8cb8_4021_ab41_6ae195743ba0
    X[18]=9.389363986491791; //mw48867e93_f170_44e8_ac7a_185b23e1bf3b
    X[19]=-4.59593443100062e-27; //mw5d764bb8_5693_4ac8_9557_f65992cc5eb0
    X[20]=0.136303909449242; //mw6335d5d7_c7b0_4bc0_b883_f7ee4915c2c3
    X[21]=0.980272509547246; //mw6cce2109_0e32_4dd9_98ec_41173e8ef07d
    X[22]=0.00130682388893128; //mw7becb5fe_8da8_4285_a821_0d77ad811b62
    X[23]=1.60036523605187e-05; //mw7d86cc23_a1af_44c3_bdb9_71e9b1bb2a83
    X[24]=0.388958921403941; //mw80848184_e2dd_47ce_86d7_7a21479342bd
    X[25]=0.0874060669217432; //mw810ff751_fa4e_4143_bd50_169b3e325e1e
    X[26]=8.44890497633548e-05; //mw824bc3d4_1ac3_4912_9b51_8f14ff1c96b9
    X[27]=0.374962692933961; //mw8c9107e6_f51d_442d_b2dc_2bfdbb8482ca
    X[28]=-1.77880538609987e-26; //mwa2d8dd1c_bb9a_4552_8738_e24671651c1d
    X[29]=0.116343661809953; //mwab41493c_6349_45f1_a226_3030cfed0e06
    X[30]=3.9; //mwbbbce920_e8dd_4320_9386_fc94bfb2fc99
    X[31]=-1.43946747402714e-26; //mwbc2f5464_81e5_43fd_8b39_f5a2756af72f
    X[32]=6.59935877686372e-05; //mwd2d9d93a_3bd1_4f17_bac1_baba9ef2d55a
    X[33]=6.06410682471754; //mwd31f52cc_04e7_40e0_885f_c7b2d9e62215
    X[34]=5.56973864471412; //mwd65b5b39_dc1b_4e77_a999_67277a880e5e
    X[35]=-9.11709813671959e-26; //mwf345ed7a_0622_403c_b816_c8749a2c9ded
    X[36]=-4.75609189014598e-27; //mwf405687b_7401_44ec_a0d6_4a2b35c13e8a
    X[37]=0.000435628896551166; //mwf626e95e_543f_41e4_aad4_c6bf60ab345b
    X[38]=-2.04215117743153e-27; //mwf7796221_1fea_4274_a93e_c00adbf5778c

}

template <class Precision> __forceinline__ __device__ void PerThread_Finalization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
	
}


#endif
