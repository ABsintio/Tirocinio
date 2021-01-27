
#ifndef BIOMD572_FUNCTIONS_H
#define BIOMD572_FUNCTIONS_H

#include <iostream>

#define PRECISION double

__device__ PRECISION function_4_ACK(PRECISION ADP,PRECISION ATP,PRECISION AcetCoA,PRECISION Acetate,PRECISION CoA,PRECISION Vmax_ACK,PRECISION kmADP_ACK,PRECISION kmATP_ACK,PRECISION kmAcetCoA_ACK,PRECISION kmAcetate_ACK,PRECISION kmCoA_ACK);
__device__ PRECISION function_4_AE(PRECISION ATP,PRECISION AcetCoA,PRECISION CoA,PRECISION Ethanol,PRECISION NAD,PRECISION NADH,PRECISION Vmax_AE,PRECISION kiATP_AE,PRECISION kmAcetCoA_AE,PRECISION kmCoA_AE,PRECISION kmEthanol_AE,PRECISION kmNADH_AE,PRECISION kmNAD_AE);
__device__ PRECISION function_4_ALS(PRECISION Acetoin,PRECISION Keq_ALS,PRECISION PYR,PRECISION Vmax_ALS,PRECISION kmAcetoin_ALS,PRECISION kmPYR_ALS);
__device__ PRECISION function_4_ATPase(PRECISION ATP,PRECISION Vmax_ATPase,PRECISION kmATP_ATPase,PRECISION nATPase);
__device__ PRECISION function_4_Acetoin_transp(PRECISION Acetoin,PRECISION Acetoin_Ext,PRECISION Vmax_Acetoin_transp,PRECISION kmAcetoin_Acetoin_transp,PRECISION kmAcetoin_Ext_Acetoin_transp);
__device__ PRECISION function_4_BDH(PRECISION Acetoin,PRECISION Butanediol,PRECISION Keq_BDH,PRECISION NAD,PRECISION NADH,PRECISION Vmax_BDH,PRECISION kmAcetoin_BDH,PRECISION kmButanediol_BDH,PRECISION kmNADH_BDH,PRECISION kmNAD_BDH);
__device__ PRECISION function_4_ENO(PRECISION ADP,PRECISION ATP,PRECISION BPG,PRECISION Keq_ENO,PRECISION PEP,PRECISION Vmax_ENO,PRECISION kmADP_ENO,PRECISION kmATP_ENO,PRECISION kmBPG_ENO,PRECISION kmPEP_ENO);
__device__ PRECISION function_4_FBA(PRECISION FBP,PRECISION G3P,PRECISION Keq_FBA,PRECISION Vmax_FBA,PRECISION kmFBP_FBA,PRECISION kmG3P_FBA);
__device__ PRECISION function_4_FBPase(PRECISION F6P,PRECISION FBP,PRECISION Pint,PRECISION Vmax_FBPase,PRECISION kmF6P_FBPase,PRECISION kmFBP_FBPase,PRECISION kmPint_FBPase);
__device__ PRECISION function_4_GAPDH(PRECISION BPG,PRECISION G3P,PRECISION Keq_GAPDH,PRECISION NAD,PRECISION NADH,PRECISION Pint,PRECISION Vmax_GAPDH,PRECISION kmBPG_GAPDH,PRECISION kmG3P_GAPDH,PRECISION kmNADH_GAPDH,PRECISION kmNAD_GAPDH,PRECISION kmPint_GAPDH);
__device__ PRECISION function_4_LDH(PRECISION FBP,PRECISION Lactate,PRECISION NAD,PRECISION NADH,PRECISION PYR,PRECISION Pint,PRECISION Vmax_LDH,PRECISION kaFBP_LDH,PRECISION kiPint_LDH,PRECISION kmLactate_LDH,PRECISION kmNADH_LDH,PRECISION kmNAD_LDH,PRECISION kmPYR_LDH);
__device__ PRECISION function_4_MP(PRECISION Mannitol,PRECISION Mannitol1Phosphate,PRECISION Vmax_MP,PRECISION kmMannitol1Phosphate_MP,PRECISION kmMannitol_MP);
__device__ PRECISION function_4_MPD(PRECISION F6P,PRECISION Keq_MPD,PRECISION Mannitol1Phosphate,PRECISION NAD,PRECISION NADH,PRECISION Vmax_MPD,PRECISION kiF6P_MPD,PRECISION kmF6P_MPD,PRECISION kmMannitol1Phoshate_MPD,PRECISION kmNADH_MPD,PRECISION kmNAD_MPD);
__device__ PRECISION function_4_Mannitol_transp(PRECISION Mannitol,PRECISION Mannitol_Ext,PRECISION Vmax_Mannitol_transp,PRECISION kmMannitol_Ext_Mannitol_transp,PRECISION kmMannitol_Mannitol_transp);
__device__ PRECISION function_4_PFK(PRECISION ADP,PRECISION ATP,PRECISION F6P,PRECISION FBP,PRECISION Vmax_PFK,PRECISION kmADP_PFK,PRECISION kmATP_PFK,PRECISION kmF6P_PFK,PRECISION kmFBP_PFK);
__device__ PRECISION function_4_PFL(PRECISION AcetCoA,PRECISION CoA,PRECISION Formate,PRECISION G3P,PRECISION Keq_PFL,PRECISION KmCoA_PFL,PRECISION PYR,PRECISION Vmax_PFL,PRECISION kiG3P_PFL,PRECISION kmAcetCoA_PFL,PRECISION kmFormate_PFL,PRECISION kmPYR_PFL);
__device__ PRECISION function_4_PGI(PRECISION F6P,PRECISION G6P,PRECISION Keq_PGI,PRECISION Vmax_PGI,PRECISION kmF6P_PGI,PRECISION kmG6P_PGI);
__device__ PRECISION function_4_PTS_Glc(PRECISION FBP,PRECISION G6P,PRECISION Glucose,PRECISION PEP,PRECISION PYR,PRECISION Pint,PRECISION Vmax_PTS_Glc,PRECISION kaPint_PTS_Glc,PRECISION kiFBP_PTS_Glc,PRECISION kmG6P_PTS_Glc,PRECISION kmGlucose_PTS_Glc,PRECISION kmPEP_PTS_Glc,PRECISION kmPYR_PTS_Glc);
__device__ PRECISION function_4_PTS_Man(PRECISION Mannitol1Phosphate,PRECISION Mannitol_Ext,PRECISION PEP,PRECISION PYR,PRECISION Vmax_PTS_Man,PRECISION kmMannitol1Phosphate_PTS_Man,PRECISION kmMannitolExt_PTS_Man,PRECISION kmPEP_PTS_Man,PRECISION kmPYR_PTS_Man);
__device__ PRECISION function_4_PYK(PRECISION ADP,PRECISION ATP,PRECISION FBP,PRECISION PEP,PRECISION PYR,PRECISION Pint,PRECISION Vmax_PYK,PRECISION kaFBP_PYK,PRECISION kiPint_PYK,PRECISION kmADP_PYK,PRECISION kmATP_PYK,PRECISION kmPEP_PYK,PRECISION kmPYR_PYK,PRECISION nPYK);
__device__ PRECISION function_4_P_transp(PRECISION ADP,PRECISION ATP,PRECISION Pext,PRECISION Pint,PRECISION Vmax_Ptransport,PRECISION kiPint_Ptransport,PRECISION kmADP_Ptransport,PRECISION kmATP_Ptransport,PRECISION kmPext_Ptransport,PRECISION kmPint_Ptransport);

__device__ PRECISION function_4_ACK(PRECISION ADP,PRECISION ATP,PRECISION AcetCoA,PRECISION Acetate,PRECISION CoA,PRECISION Vmax_ACK,PRECISION kmADP_ACK,PRECISION kmATP_ACK,PRECISION kmAcetCoA_ACK,PRECISION kmAcetate_ACK,PRECISION kmCoA_ACK){
    PRECISION y = 0.0;
    y=(Vmax_ACK * (AcetCoA * (ADP / (((-1.0 + (((1.0 + (AcetCoA / kmAcetCoA_ACK)) * (1.0 + (ADP / kmADP_ACK))) + ((1.0 + (Acetate / kmAcetate_ACK)) * ((1.0 + (ATP / kmATP_ACK)) * (1.0 + (CoA / kmCoA_ACK)))))) * kmAcetCoA_ACK) * kmADP_ACK))));
    return y;
}
__device__ PRECISION function_4_AE(PRECISION ATP,PRECISION AcetCoA,PRECISION CoA,PRECISION Ethanol,PRECISION NAD,PRECISION NADH,PRECISION Vmax_AE,PRECISION kiATP_AE,PRECISION kmAcetCoA_AE,PRECISION kmCoA_AE,PRECISION kmEthanol_AE,PRECISION kmNADH_AE,PRECISION kmNAD_AE){
    PRECISION y = 0.0;
    y=(kiATP_AE * (Vmax_AE * (AcetCoA * (pow((NADH / kmNADH_AE),2.0) / (((-1.0 + (((1.0 + ((NADH / kmNADH_AE) + pow((NADH / kmNADH_AE),2.0))) * (1.0 + (AcetCoA / kmAcetCoA_AE))) + ((1.0 + (Ethanol / kmEthanol_AE)) * ((1.0 + (CoA / kmCoA_AE)) * (1.0 + ((NAD / kmNAD_AE) + pow((NAD / kmNAD_AE),2.0))))))) * kmAcetCoA_AE) * (ATP + kiATP_AE))))));
    return y;
}
__device__ PRECISION function_4_ALS(PRECISION Acetoin,PRECISION Keq_ALS,PRECISION PYR,PRECISION Vmax_ALS,PRECISION kmAcetoin_ALS,PRECISION kmPYR_ALS){
    PRECISION y = 0.0;
    y=(Vmax_ALS * ((pow((PYR / kmPYR_ALS),2.0) - (Acetoin / (kmPYR_ALS * Keq_ALS))) / (1.0 + ((PYR / kmPYR_ALS) + (pow((PYR / kmPYR_ALS),2.0) + (Acetoin / kmAcetoin_ALS))))));
    return y;
}
__device__ PRECISION function_4_ATPase(PRECISION ATP,PRECISION Vmax_ATPase,PRECISION kmATP_ATPase,PRECISION nATPase){
    PRECISION y = 0.0;
    y=(Vmax_ATPase * (pow((ATP / kmATP_ATPase),nATPase) / (1.0 + pow((ATP / kmATP_ATPase),nATPase))));
    return y;
}
__device__ PRECISION function_4_Acetoin_transp(PRECISION Acetoin,PRECISION Acetoin_Ext,PRECISION Vmax_Acetoin_transp,PRECISION kmAcetoin_Acetoin_transp,PRECISION kmAcetoin_Ext_Acetoin_transp){
    PRECISION y = 0.0;
    y=(Vmax_Acetoin_transp * (Acetoin / ((1.0 + ((Acetoin / kmAcetoin_Acetoin_transp) + (Acetoin_Ext / kmAcetoin_Ext_Acetoin_transp))) * kmAcetoin_Acetoin_transp)));
    return y;
}
__device__ PRECISION function_4_BDH(PRECISION Acetoin,PRECISION Butanediol,PRECISION Keq_BDH,PRECISION NAD,PRECISION NADH,PRECISION Vmax_BDH,PRECISION kmAcetoin_BDH,PRECISION kmButanediol_BDH,PRECISION kmNADH_BDH,PRECISION kmNAD_BDH){
    PRECISION y = 0.0;
    y=(Vmax_BDH * (((Acetoin * (NADH / (kmNADH_BDH * kmAcetoin_BDH))) - (Butanediol * (NAD / ((kmNADH_BDH * Keq_BDH) * kmAcetoin_BDH)))) / (-1.0 + (((1.0 + (Acetoin / kmAcetoin_BDH)) * (1.0 + (NADH / kmNADH_BDH))) + ((1.0 + (Butanediol / kmButanediol_BDH)) * (1.0 + (NAD / kmNAD_BDH)))))));
    return y;
}
__device__ PRECISION function_4_ENO(PRECISION ADP,PRECISION ATP,PRECISION BPG,PRECISION Keq_ENO,PRECISION PEP,PRECISION Vmax_ENO,PRECISION kmADP_ENO,PRECISION kmATP_ENO,PRECISION kmBPG_ENO,PRECISION kmPEP_ENO){
    PRECISION y = 0.0;
    y=(Vmax_ENO * (((BPG * (ADP / (kmADP_ENO * kmBPG_ENO))) - (PEP * (ATP / ((kmADP_ENO * Keq_ENO) * kmBPG_ENO)))) / (-1.0 + (((1.0 + (BPG / kmBPG_ENO)) * (1.0 + (ADP / kmADP_ENO))) + ((1.0 + (PEP / kmPEP_ENO)) * (1.0 + (ATP / kmATP_ENO)))))));
    return y;
}
__device__ PRECISION function_4_FBA(PRECISION FBP,PRECISION G3P,PRECISION Keq_FBA,PRECISION Vmax_FBA,PRECISION kmFBP_FBA,PRECISION kmG3P_FBA){
    PRECISION y = 0.0;
    y=(Vmax_FBA * (((FBP / kmFBP_FBA) - (pow(G3P,2.0) / (kmFBP_FBA * Keq_FBA))) / (1.0 + ((FBP / kmFBP_FBA) + ((G3P / kmG3P_FBA) + pow((G3P / kmG3P_FBA),2.0))))));
    return y;
}
__device__ PRECISION function_4_FBPase(PRECISION F6P,PRECISION FBP,PRECISION Pint,PRECISION Vmax_FBPase,PRECISION kmF6P_FBPase,PRECISION kmFBP_FBPase,PRECISION kmPint_FBPase){
    PRECISION y = 0.0;
    y=(Vmax_FBPase * (FBP / (((FBP / kmFBP_FBPase) + ((1.0 + (F6P / kmF6P_FBPase)) * (1.0 + (Pint / kmPint_FBPase)))) * kmFBP_FBPase)));
    return y;
}
__device__ PRECISION function_4_GAPDH(PRECISION BPG,PRECISION G3P,PRECISION Keq_GAPDH,PRECISION NAD,PRECISION NADH,PRECISION Pint,PRECISION Vmax_GAPDH,PRECISION kmBPG_GAPDH,PRECISION kmG3P_GAPDH,PRECISION kmNADH_GAPDH,PRECISION kmNAD_GAPDH,PRECISION kmPint_GAPDH){
    PRECISION y = 0.0;
    y=(Vmax_GAPDH * (((G3P * (NAD * (Pint / ((kmPint_GAPDH * kmG3P_GAPDH) * kmNAD_GAPDH)))) - (BPG * (NADH / (((kmPint_GAPDH * kmG3P_GAPDH) * Keq_GAPDH) * kmNAD_GAPDH)))) / (-1.0 + (((1.0 + (G3P / kmG3P_GAPDH)) * ((1.0 + (Pint / kmPint_GAPDH)) * (1.0 + (NAD / kmNAD_GAPDH)))) + ((1.0 + (BPG / kmBPG_GAPDH)) * (1.0 + (NADH / kmNADH_GAPDH)))))));
    return y;
}
__device__ PRECISION function_4_LDH(PRECISION FBP,PRECISION Lactate,PRECISION NAD,PRECISION NADH,PRECISION PYR,PRECISION Pint,PRECISION Vmax_LDH,PRECISION kaFBP_LDH,PRECISION kiPint_LDH,PRECISION kmLactate_LDH,PRECISION kmNADH_LDH,PRECISION kmNAD_LDH,PRECISION kmPYR_LDH){
    PRECISION y = 0.0;
    y=(FBP * (kiPint_LDH * (Vmax_LDH * (PYR * (NADH / (((((-1.0 + (((1.0 + (PYR / kmPYR_LDH)) * (1.0 + (NADH / kmNADH_LDH))) + ((1.0 + (Lactate / kmLactate_LDH)) * (1.0 + (NAD / kmNAD_LDH))))) * kmPYR_LDH) * (Pint + kiPint_LDH)) * (FBP + kaFBP_LDH)) * kmNADH_LDH))))));
    return y;
}
__device__ PRECISION function_4_MP(PRECISION Mannitol,PRECISION Mannitol1Phosphate,PRECISION Vmax_MP,PRECISION kmMannitol1Phosphate_MP,PRECISION kmMannitol_MP){
    PRECISION y = 0.0;
    y=(Vmax_MP * (Mannitol1Phosphate / ((1.0 + ((Mannitol1Phosphate / kmMannitol1Phosphate_MP) + (Mannitol / kmMannitol_MP))) * kmMannitol1Phosphate_MP)));
    return y;
}
__device__ PRECISION function_4_MPD(PRECISION F6P,PRECISION Keq_MPD,PRECISION Mannitol1Phosphate,PRECISION NAD,PRECISION NADH,PRECISION Vmax_MPD,PRECISION kiF6P_MPD,PRECISION kmF6P_MPD,PRECISION kmMannitol1Phoshate_MPD,PRECISION kmNADH_MPD,PRECISION kmNAD_MPD){
    PRECISION y = 0.0;
    y=(kiF6P_MPD * (Vmax_MPD * (((F6P * (NADH / (kmF6P_MPD * kmNADH_MPD))) - (Mannitol1Phosphate * (NAD / ((kmF6P_MPD * Keq_MPD) * kmNADH_MPD)))) / ((-1.0 + (((1.0 + (F6P / kmF6P_MPD)) * (1.0 + (NADH / kmNADH_MPD))) + ((1.0 + (Mannitol1Phosphate / kmMannitol1Phoshate_MPD)) * (1.0 + (NAD / kmNAD_MPD))))) * (F6P + kiF6P_MPD)))));
    return y;
}
__device__ PRECISION function_4_Mannitol_transp(PRECISION Mannitol,PRECISION Mannitol_Ext,PRECISION Vmax_Mannitol_transp,PRECISION kmMannitol_Ext_Mannitol_transp,PRECISION kmMannitol_Mannitol_transp){
    PRECISION y = 0.0;
    y=(Vmax_Mannitol_transp * (Mannitol / ((1.0 + ((Mannitol / kmMannitol_Mannitol_transp) + (Mannitol_Ext / kmMannitol_Ext_Mannitol_transp))) * kmMannitol_Mannitol_transp)));
    return y;
}
__device__ PRECISION function_4_PFK(PRECISION ADP,PRECISION ATP,PRECISION F6P,PRECISION FBP,PRECISION Vmax_PFK,PRECISION kmADP_PFK,PRECISION kmATP_PFK,PRECISION kmF6P_PFK,PRECISION kmFBP_PFK){
    PRECISION y = 0.0;
    y=(Vmax_PFK * (F6P * (ATP / (((-1.0 + (((1.0 + (F6P / kmF6P_PFK)) * (1.0 + (ATP / kmATP_PFK))) + ((1.0 + (FBP / kmFBP_PFK)) * (1.0 + (ADP / kmADP_PFK))))) * kmF6P_PFK) * kmATP_PFK))));
    return y;
}
__device__ PRECISION function_4_PFL(PRECISION AcetCoA,PRECISION CoA,PRECISION Formate,PRECISION G3P,PRECISION Keq_PFL,PRECISION KmCoA_PFL,PRECISION PYR,PRECISION Vmax_PFL,PRECISION kiG3P_PFL,PRECISION kmAcetCoA_PFL,PRECISION kmFormate_PFL,PRECISION kmPYR_PFL){
    PRECISION y = 0.0;
    y=(kiG3P_PFL * (Vmax_PFL * (((PYR * (CoA / (kmPYR_PFL * KmCoA_PFL))) - (AcetCoA * (Formate / ((kmPYR_PFL * Keq_PFL) * KmCoA_PFL)))) / ((-1.0 + (((1.0 + (PYR / kmPYR_PFL)) * (1.0 + (CoA / KmCoA_PFL))) + ((1.0 + (AcetCoA / kmAcetCoA_PFL)) * (1.0 + (Formate / kmFormate_PFL))))) * (G3P + kiG3P_PFL)))));
    return y;
}
__device__ PRECISION function_4_PGI(PRECISION F6P,PRECISION G6P,PRECISION Keq_PGI,PRECISION Vmax_PGI,PRECISION kmF6P_PGI,PRECISION kmG6P_PGI){
    PRECISION y = 0.0;
    y=(Vmax_PGI * (((G6P / kmG6P_PGI) - (F6P / (kmG6P_PGI * Keq_PGI))) / (1.0 + ((G6P / kmG6P_PGI) + (F6P / kmF6P_PGI)))));
    return y;
}
__device__ PRECISION function_4_PTS_Glc(PRECISION FBP,PRECISION G6P,PRECISION Glucose,PRECISION PEP,PRECISION PYR,PRECISION Pint,PRECISION Vmax_PTS_Glc,PRECISION kaPint_PTS_Glc,PRECISION kiFBP_PTS_Glc,PRECISION kmG6P_PTS_Glc,PRECISION kmGlucose_PTS_Glc,PRECISION kmPEP_PTS_Glc,PRECISION kmPYR_PTS_Glc){
    PRECISION y = 0.0;
    y=(Pint * (kiFBP_PTS_Glc * (Vmax_PTS_Glc * (Glucose * (PEP / (((((-1.0 + (((1.0 + (Glucose / kmGlucose_PTS_Glc)) * (1.0 + (PEP / kmPEP_PTS_Glc))) + ((1.0 + (G6P / kmG6P_PTS_Glc)) * (1.0 + (PYR / kmPYR_PTS_Glc))))) * kmGlucose_PTS_Glc) * (FBP + kiFBP_PTS_Glc)) * (Pint + kaPint_PTS_Glc)) * kmPEP_PTS_Glc))))));
    return y;
}
__device__ PRECISION function_4_PTS_Man(PRECISION Mannitol1Phosphate,PRECISION Mannitol_Ext,PRECISION PEP,PRECISION PYR,PRECISION Vmax_PTS_Man,PRECISION kmMannitol1Phosphate_PTS_Man,PRECISION kmMannitolExt_PTS_Man,PRECISION kmPEP_PTS_Man,PRECISION kmPYR_PTS_Man){
    PRECISION y = 0.0;
    y=(Vmax_PTS_Man * (Mannitol_Ext * (PEP / (((-1.0 + (((1.0 + (Mannitol_Ext / kmMannitolExt_PTS_Man)) * (1.0 + (PEP / kmPEP_PTS_Man))) + ((1.0 + (Mannitol1Phosphate / kmMannitol1Phosphate_PTS_Man)) * (1.0 + (PYR / kmPYR_PTS_Man))))) * kmMannitolExt_PTS_Man) * kmPEP_PTS_Man))));
    return y;
}
__device__ PRECISION function_4_PYK(PRECISION ADP,PRECISION ATP,PRECISION FBP,PRECISION PEP,PRECISION PYR,PRECISION Pint,PRECISION Vmax_PYK,PRECISION kaFBP_PYK,PRECISION kiPint_PYK,PRECISION kmADP_PYK,PRECISION kmATP_PYK,PRECISION kmPEP_PYK,PRECISION kmPYR_PYK,PRECISION nPYK){
    PRECISION y = 0.0;
    y=(FBP * (pow(kiPint_PYK,nPYK) * (Vmax_PYK * (ADP * (PEP / (((((-1.0 + (((1.0 + (ADP / kmADP_PYK)) * (1.0 + (PEP / kmPEP_PYK))) + ((1.0 + (ATP / kmATP_PYK)) * (1.0 + (PYR / kmPYR_PYK))))) * kmADP_PYK) * (pow(Pint,nPYK) + pow(kiPint_PYK,nPYK))) * (FBP + kaFBP_PYK)) * kmPEP_PYK))))));
    return y;
}
__device__ PRECISION function_4_P_transp(PRECISION ADP,PRECISION ATP,PRECISION Pext,PRECISION Pint,PRECISION Vmax_Ptransport,PRECISION kiPint_Ptransport,PRECISION kmADP_Ptransport,PRECISION kmATP_Ptransport,PRECISION kmPext_Ptransport,PRECISION kmPint_Ptransport){
    PRECISION y = 0.0;
    y=(kiPint_Ptransport * (Vmax_Ptransport * (ATP * (Pext / ((((-1.0 + (((1.0 + (Pext / kmPext_Ptransport)) * (1.0 + (ATP / kmATP_Ptransport))) + ((1.0 + ((Pint / kmPint_Ptransport) + pow((Pint / kmPint_Ptransport),2.0))) * (1.0 + (ADP / kmADP_Ptransport))))) * kmATP_Ptransport) * (Pint + kiPint_Ptransport)) * kmPext_Ptransport)))));
    return y;
}

#endif
