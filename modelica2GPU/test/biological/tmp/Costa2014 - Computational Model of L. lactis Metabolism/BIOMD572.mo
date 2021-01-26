
model BIOMD572 "Costa2014 - Computational Model of L. lactis Metabolism"

    function pow
        input  Real x;
        input  Real power;
        output Real y;
        algorithm
            y := x^power;
    end pow;
    
    function piecewise
        input Real x;
        input Boolean condition;
        input Real y;
        output Real z;
        algorithm
            z := if condition then x else y;
    end piecewise;


    function function_4_PTS_Glc
        	input Real FBP;
	input Real G6P;
	input Real Glucose;
	input Real PEP;
	input Real PYR;
	input Real Pint;
	input Real Vmax_PTS_Glc;
	input Real kaPint_PTS_Glc;
	input Real kiFBP_PTS_Glc;
	input Real kmG6P_PTS_Glc;
	input Real kmGlucose_PTS_Glc;
	input Real kmPEP_PTS_Glc;
	input Real kmPYR_PTS_Glc;
        output Real y;
    algorithm
        y :=  (Pint / (Pint + kaPint_PTS_Glc)) * (kiFBP_PTS_Glc / (FBP + kiFBP_PTS_Glc)) * Vmax_PTS_Glc * (Glucose / kmGlucose_PTS_Glc) * (PEP / kmPEP_PTS_Glc) / ((1 + Glucose / kmGlucose_PTS_Glc) * (1 + PEP / kmPEP_PTS_Glc) + (1 + G6P / kmG6P_PTS_Glc) * (1 + PYR / kmPYR_PTS_Glc) - 1);
    end function_4_PTS_Glc;


    function function_4_ATPase
        	input Real ATP;
	input Real Vmax_ATPase;
	input Real kmATP_ATPase;
	input Real nATPase;
        output Real y;
    algorithm
        y :=  Vmax_ATPase * ((ATP / kmATP_ATPase)^nATPase / ((ATP / kmATP_ATPase)^nATPase + 1));
    end function_4_ATPase;


    function function_4_P_transp
        	input Real ADP;
	input Real ATP;
	input Real Pext;
	input Real Pint;
	input Real Vmax_Ptransport;
	input Real kiPint_Ptransport;
	input Real kmADP_Ptransport;
	input Real kmATP_Ptransport;
	input Real kmPext_Ptransport;
	input Real kmPint_Ptransport;
        output Real y;
    algorithm
        y :=  (kiPint_Ptransport / (Pint + kiPint_Ptransport)) * Vmax_Ptransport * (ATP / kmATP_Ptransport) * (Pext / kmPext_Ptransport) / ((1 + Pext / kmPext_Ptransport) * (1 + ATP / kmATP_Ptransport) + (1 + Pint / kmPint_Ptransport + (Pint / kmPint_Ptransport)^2) * (1 + ADP / kmADP_Ptransport) - 1);
    end function_4_P_transp;


    function function_4_PGI
        	input Real F6P;
	input Real G6P;
	input Real Keq_PGI;
	input Real Vmax_PGI;
	input Real kmF6P_PGI;
	input Real kmG6P_PGI;
        output Real y;
    algorithm
        y :=  (Vmax_PGI * (G6P / kmG6P_PGI) - (Vmax_PGI / Keq_PGI) * (F6P / kmG6P_PGI)) / (1 + G6P / kmG6P_PGI + F6P / kmF6P_PGI);
    end function_4_PGI;


    function function_4_PFK
        	input Real ADP;
	input Real ATP;
	input Real F6P;
	input Real FBP;
	input Real Vmax_PFK;
	input Real kmADP_PFK;
	input Real kmATP_PFK;
	input Real kmF6P_PFK;
	input Real kmFBP_PFK;
        output Real y;
    algorithm
        y :=  Vmax_PFK * (F6P / kmF6P_PFK) * (ATP / kmATP_PFK) / ((1 + F6P / kmF6P_PFK) * (1 + ATP / kmATP_PFK) + (1 + FBP / kmFBP_PFK) * (1 + ADP / kmADP_PFK) - 1);
    end function_4_PFK;


    function function_4_FBA
        	input Real FBP;
	input Real G3P;
	input Real Keq_FBA;
	input Real Vmax_FBA;
	input Real kmFBP_FBA;
	input Real kmG3P_FBA;
        output Real y;
    algorithm
        y :=  (Vmax_FBA * (FBP / kmFBP_FBA) - (Vmax_FBA / Keq_FBA) * (G3P^2 / kmFBP_FBA)) / (1 + FBP / kmFBP_FBA + G3P / kmG3P_FBA + (G3P / kmG3P_FBA)^2);
    end function_4_FBA;


    function function_4_GAPDH
        	input Real BPG;
	input Real G3P;
	input Real Keq_GAPDH;
	input Real NAD;
	input Real NADH;
	input Real Pint;
	input Real Vmax_GAPDH;
	input Real kmBPG_GAPDH;
	input Real kmG3P_GAPDH;
	input Real kmNADH_GAPDH;
	input Real kmNAD_GAPDH;
	input Real kmPint_GAPDH;
        output Real y;
    algorithm
        y :=  (Vmax_GAPDH * (G3P / kmG3P_GAPDH) * (NAD / kmNAD_GAPDH) * (Pint / kmPint_GAPDH) - (Vmax_GAPDH / Keq_GAPDH) * (BPG / kmG3P_GAPDH) * (NADH / kmNAD_GAPDH) * (1 / kmPint_GAPDH)) / ((1 + G3P / kmG3P_GAPDH) * (1 + Pint / kmPint_GAPDH) * (1 + NAD / kmNAD_GAPDH) + (1 + BPG / kmBPG_GAPDH) * (1 + NADH / kmNADH_GAPDH) - 1);
    end function_4_GAPDH;


    function function_4_ENO
        	input Real ADP;
	input Real ATP;
	input Real BPG;
	input Real Keq_ENO;
	input Real PEP;
	input Real Vmax_ENO;
	input Real kmADP_ENO;
	input Real kmATP_ENO;
	input Real kmBPG_ENO;
	input Real kmPEP_ENO;
        output Real y;
    algorithm
        y :=  (Vmax_ENO * (BPG / kmBPG_ENO) * (ADP / kmADP_ENO) - (Vmax_ENO / Keq_ENO) * (PEP / kmBPG_ENO) * (ATP / kmADP_ENO)) / ((1 + BPG / kmBPG_ENO) * (1 + ADP / kmADP_ENO) + (1 + PEP / kmPEP_ENO) * (1 + ATP / kmATP_ENO) - 1);
    end function_4_ENO;


    function function_4_PYK
        	input Real ADP;
	input Real ATP;
	input Real FBP;
	input Real PEP;
	input Real PYR;
	input Real Pint;
	input Real Vmax_PYK;
	input Real kaFBP_PYK;
	input Real kiPint_PYK;
	input Real kmADP_PYK;
	input Real kmATP_PYK;
	input Real kmPEP_PYK;
	input Real kmPYR_PYK;
	input Real nPYK;
        output Real y;
    algorithm
        y :=  (FBP / (FBP + kaFBP_PYK)) * (kiPint_PYK^nPYK / (Pint^nPYK + kiPint_PYK^nPYK)) * Vmax_PYK * (ADP / kmADP_PYK) * (PEP / kmPEP_PYK) / ((1 + ADP / kmADP_PYK) * (1 + PEP / kmPEP_PYK) + (1 + ATP / kmATP_PYK) * (1 + PYR / kmPYR_PYK) - 1);
    end function_4_PYK;


    function function_4_LDH
        	input Real FBP;
	input Real Lactate;
	input Real NAD;
	input Real NADH;
	input Real PYR;
	input Real Pint;
	input Real Vmax_LDH;
	input Real kaFBP_LDH;
	input Real kiPint_LDH;
	input Real kmLactate_LDH;
	input Real kmNADH_LDH;
	input Real kmNAD_LDH;
	input Real kmPYR_LDH;
        output Real y;
    algorithm
        y :=  (FBP / (FBP + kaFBP_LDH)) * (kiPint_LDH / (Pint + kiPint_LDH)) * Vmax_LDH * (PYR / kmPYR_LDH) * (NADH / kmNADH_LDH) / ((1 + PYR / kmPYR_LDH) * (1 + NADH / kmNADH_LDH) + (1 + Lactate / kmLactate_LDH) * (1 + NAD / kmNAD_LDH) - 1);
    end function_4_LDH;


    function function_4_PFL
        	input Real AcetCoA;
	input Real CoA;
	input Real Formate;
	input Real G3P;
	input Real Keq_PFL;
	input Real KmCoA_PFL;
	input Real PYR;
	input Real Vmax_PFL;
	input Real kiG3P_PFL;
	input Real kmAcetCoA_PFL;
	input Real kmFormate_PFL;
	input Real kmPYR_PFL;
        output Real y;
    algorithm
        y :=  (kiG3P_PFL / (G3P + kiG3P_PFL)) * (Vmax_PFL * (PYR / kmPYR_PFL) * (CoA / KmCoA_PFL) - (Vmax_PFL / Keq_PFL) * (AcetCoA / kmPYR_PFL) * (Formate / KmCoA_PFL)) / ((1 + PYR / kmPYR_PFL) * (1 + CoA / KmCoA_PFL) + (1 + AcetCoA / kmAcetCoA_PFL) * (1 + Formate / kmFormate_PFL) - 1);
    end function_4_PFL;


    function function_4_AE
        	input Real ATP;
	input Real AcetCoA;
	input Real CoA;
	input Real Ethanol;
	input Real NAD;
	input Real NADH;
	input Real Vmax_AE;
	input Real kiATP_AE;
	input Real kmAcetCoA_AE;
	input Real kmCoA_AE;
	input Real kmEthanol_AE;
	input Real kmNADH_AE;
	input Real kmNAD_AE;
        output Real y;
    algorithm
        y :=  (kiATP_AE / (ATP + kiATP_AE)) * Vmax_AE * (AcetCoA / kmAcetCoA_AE) * (NADH / kmNADH_AE)^2 / ((1 + NADH / kmNADH_AE + (NADH / kmNADH_AE)^2) * (1 + AcetCoA / kmAcetCoA_AE) + (1 + Ethanol / kmEthanol_AE) * (1 + CoA / kmCoA_AE) * (1 + NAD / kmNAD_AE + (NAD / kmNAD_AE)^2) - 1);
    end function_4_AE;


    function function_4_ACK
        	input Real ADP;
	input Real ATP;
	input Real AcetCoA;
	input Real Acetate;
	input Real CoA;
	input Real Vmax_ACK;
	input Real kmADP_ACK;
	input Real kmATP_ACK;
	input Real kmAcetCoA_ACK;
	input Real kmAcetate_ACK;
	input Real kmCoA_ACK;
        output Real y;
    algorithm
        y :=  Vmax_ACK * (AcetCoA / kmAcetCoA_ACK) * (ADP / kmADP_ACK) / ((1 + AcetCoA / kmAcetCoA_ACK) * (1 + ADP / kmADP_ACK) + (1 + Acetate / kmAcetate_ACK) * (1 + ATP / kmATP_ACK) * (1 + CoA / kmCoA_ACK) - 1);
    end function_4_ACK;


    function function_4_ALS
        	input Real Acetoin;
	input Real Keq_ALS;
	input Real PYR;
	input Real Vmax_ALS;
	input Real kmAcetoin_ALS;
	input Real kmPYR_ALS;
        output Real y;
    algorithm
        y :=  (Vmax_ALS * (PYR / kmPYR_ALS)^2 - (Vmax_ALS / Keq_ALS) * (Acetoin / kmPYR_ALS)) / (1 + PYR / kmPYR_ALS + (PYR / kmPYR_ALS)^2 + 1 + Acetoin / kmAcetoin_ALS - 1);
    end function_4_ALS;


    function function_4_BDH
        	input Real Acetoin;
	input Real Butanediol;
	input Real Keq_BDH;
	input Real NAD;
	input Real NADH;
	input Real Vmax_BDH;
	input Real kmAcetoin_BDH;
	input Real kmButanediol_BDH;
	input Real kmNADH_BDH;
	input Real kmNAD_BDH;
        output Real y;
    algorithm
        y :=  (Vmax_BDH * (Acetoin / kmAcetoin_BDH) * (NADH / kmNADH_BDH) - (Vmax_BDH / Keq_BDH) * (Butanediol / kmAcetoin_BDH) * (NAD / kmNADH_BDH)) / ((1 + Acetoin / kmAcetoin_BDH) * (1 + NADH / kmNADH_BDH) + (1 + Butanediol / kmButanediol_BDH) * (1 + NAD / kmNAD_BDH) - 1);
    end function_4_BDH;


    function function_4_MPD
        	input Real F6P;
	input Real Keq_MPD;
	input Real Mannitol1Phosphate;
	input Real NAD;
	input Real NADH;
	input Real Vmax_MPD;
	input Real kiF6P_MPD;
	input Real kmF6P_MPD;
	input Real kmMannitol1Phoshate_MPD;
	input Real kmNADH_MPD;
	input Real kmNAD_MPD;
        output Real y;
    algorithm
        y :=  (kiF6P_MPD / (F6P + kiF6P_MPD)) * (Vmax_MPD * (F6P / kmF6P_MPD) * (NADH / kmNADH_MPD) - (Vmax_MPD / Keq_MPD) * (Mannitol1Phosphate / kmF6P_MPD) * (NAD / kmNADH_MPD)) / ((1 + F6P / kmF6P_MPD) * (1 + NADH / kmNADH_MPD) + (1 + Mannitol1Phosphate / kmMannitol1Phoshate_MPD) * (1 + NAD / kmNAD_MPD) - 1);
    end function_4_MPD;


    function function_4_MP
        	input Real Mannitol;
	input Real Mannitol1Phosphate;
	input Real Vmax_MP;
	input Real kmMannitol1Phosphate_MP;
	input Real kmMannitol_MP;
        output Real y;
    algorithm
        y :=  Vmax_MP * (Mannitol1Phosphate / kmMannitol1Phosphate_MP) / (1 + Mannitol1Phosphate / kmMannitol1Phosphate_MP + 1 + Mannitol / kmMannitol_MP - 1);
    end function_4_MP;


    function function_4_PTS_Man
        	input Real Mannitol1Phosphate;
	input Real Mannitol_Ext;
	input Real PEP;
	input Real PYR;
	input Real Vmax_PTS_Man;
	input Real kmMannitol1Phosphate_PTS_Man;
	input Real kmMannitolExt_PTS_Man;
	input Real kmPEP_PTS_Man;
	input Real kmPYR_PTS_Man;
        output Real y;
    algorithm
        y :=  Vmax_PTS_Man * (Mannitol_Ext / kmMannitolExt_PTS_Man) * (PEP / kmPEP_PTS_Man) / ((1 + Mannitol_Ext / kmMannitolExt_PTS_Man) * (1 + PEP / kmPEP_PTS_Man) + (1 + Mannitol1Phosphate / kmMannitol1Phosphate_PTS_Man) * (1 + PYR / kmPYR_PTS_Man) - 1);
    end function_4_PTS_Man;


    function function_4_Acetoin_transp
        	input Real Acetoin;
	input Real Acetoin_Ext;
	input Real Vmax_Acetoin_transp;
	input Real kmAcetoin_Acetoin_transp;
	input Real kmAcetoin_Ext_Acetoin_transp;
        output Real y;
    algorithm
        y :=  Vmax_Acetoin_transp * (Acetoin / kmAcetoin_Acetoin_transp) / (1 + Acetoin / kmAcetoin_Acetoin_transp + Acetoin_Ext / kmAcetoin_Ext_Acetoin_transp);
    end function_4_Acetoin_transp;


    function function_4_Mannitol_transp
        	input Real Mannitol;
	input Real Mannitol_Ext;
	input Real Vmax_Mannitol_transp;
	input Real kmMannitol_Ext_Mannitol_transp;
	input Real kmMannitol_Mannitol_transp;
        output Real y;
    algorithm
        y :=  Vmax_Mannitol_transp * (Mannitol / kmMannitol_Mannitol_transp) / (1 + Mannitol / kmMannitol_Mannitol_transp + Mannitol_Ext / kmMannitol_Ext_Mannitol_transp);
    end function_4_Mannitol_transp;


    function function_4_FBPase
        	input Real F6P;
	input Real FBP;
	input Real Pint;
	input Real Vmax_FBPase;
	input Real kmF6P_FBPase;
	input Real kmFBP_FBPase;
	input Real kmPint_FBPase;
        output Real y;
    algorithm
        y :=  Vmax_FBPase * (FBP / kmFBP_FBPase) / (FBP / kmFBP_FBPase + (1 + F6P / kmF6P_FBPase) * (1 + Pint / kmPint_FBPase));
    end function_4_FBPase;


    parameter Real Vmax_PTS_Glc_0 = 3.71082;
    parameter Real kaPint_PTS_Glc_0 = 0.070909;
    parameter Real kiFBP_PTS_Glc_0 = 1.16937;
    parameter Real kmG6P_PTS_Glc_0 = 0.284871;
    parameter Real kmGlucose_PTS_Glc_0 = 0.0485045;
    parameter Real kmPEP_PTS_Glc_0 = 0.305604;
    parameter Real kmPYR_PTS_Glc_0 = 1.95993;
    parameter Real Vmax_ATPase_1 = 3.2901;
    parameter Real kmATP_ATPase_1 = 4.34159;
    parameter Real nATPase_1 = 3.0;
    parameter Real Vmax_Ptransport_2 = 3.59588;
    parameter Real kiPint_Ptransport_2 = 0.561093;
    parameter Real kmADP_Ptransport_2 = 0.192278;
    parameter Real kmATP_Ptransport_2 = 0.523288;
    parameter Real kmPext_Ptransport_2 = 0.749898;
    parameter Real kmPint_Ptransport_2 = 0.30336;
    parameter Real Keq_PGI_3 = 0.43;
    parameter Real Vmax_PGI_3 = 21.681;
    parameter Real kmF6P_PGI_3 = 3.13894;
    parameter Real kmG6P_PGI_3 = 0.199409;
    parameter Real Vmax_PFK_4 = 18.3577;
    parameter Real kmADP_PFK_4 = 10.7357;
    parameter Real kmATP_PFK_4 = 0.0616607;
    parameter Real kmF6P_PFK_4 = 1.01973;
    parameter Real kmFBP_PFK_4 = 86.8048;
    parameter Real Keq_FBA_5 = 0.056;
    parameter Real Vmax_FBA_5 = 56.1311;
    parameter Real kmFBP_FBA_5 = 0.300745;
    parameter Real kmG3P_FBA_5 = 10.1058;
    parameter Real Keq_GAPDH_6 = 0.0007;
    parameter Real Vmax_GAPDH_6 = 30.0058;
    parameter Real kmBPG_GAPDH_6 = 0.0481603;
    parameter Real kmG3P_GAPDH_6 = 0.181788;
    parameter Real kmNADH_GAPDH_6 = 0.643019;
    parameter Real kmNAD_GAPDH_6 = 0.0477445;
    parameter Real kmPint_GAPDH_6 = 6.75302;
    parameter Real Keq_ENO_7 = 27.55;
    parameter Real Vmax_ENO_7 = 29.132;
    parameter Real kmADP_ENO_7 = 0.413195;
    parameter Real kmATP_ENO_7 = 0.748238;
    parameter Real kmBPG_ENO_7 = 0.0241572;
    parameter Real kmPEP_ENO_7 = 1.38899;
    parameter Real Vmax_PYK_8 = 2.22404;
    parameter Real kaFBP_PYK_8 = 0.0388651;
    parameter Real kiPint_PYK_8 = 3.70071;
    parameter Real kmADP_PYK_8 = 3.07711;
    parameter Real kmATP_PYK_8 = 29.6028;
    parameter Real kmPEP_PYK_8 = 0.330583;
    parameter Real kmPYR_PYK_8 = 96.4227;
    parameter Real nPYK_8 = 3.0;
    parameter Real Vmax_LDH_9 = 566.598;
    parameter Real kaFBP_LDH_9 = 0.0184011;
    parameter Real kiPint_LDH_9 = 0.0676829;
    parameter Real kmLactate_LDH_9 = 94.1203;
    parameter Real kmNADH_LDH_9 = 0.144443;
    parameter Real kmNAD_LDH_9 = 3.08447;
    parameter Real kmPYR_LDH_9 = 0.01;
    parameter Real Keq_PFL_10 = 650.0;
    parameter Real KmCoA_PFL_10 = 0.124066;
    parameter Real Vmax_PFL_10 = 0.00230934;
    parameter Real kiG3P_PFL_10 = 0.511288;
    parameter Real kmAcetCoA_PFL_10 = 7.34319;
    parameter Real kmFormate_PFL_10 = 54.2693;
    parameter Real kmPYR_PFL_10 = 5.77662;
    parameter Real Vmax_AE_11 = 2.11844;
    parameter Real kiATP_AE_11 = 6.28119;
    parameter Real kmAcetCoA_AE_11 = 7.38021;
    parameter Real kmCoA_AE_11 = 0.091813;
    parameter Real kmEthanol_AE_11 = 2.28106;
    parameter Real kmNADH_AE_11 = 0.43127;
    parameter Real kmNAD_AE_11 = 1.31442;
    parameter Real Vmax_ACK_12 = 3.83918;
    parameter Real kmADP_ACK_12 = 1.17242;
    parameter Real kmATP_ACK_12 = 14.1556;
    parameter Real kmAcetCoA_ACK_12 = 0.55824;
    parameter Real kmAcetate_ACK_12 = 0.552221;
    parameter Real kmCoA_ACK_12 = 0.173388;
    parameter Real Keq_ALS_13 = 900000.0;
    parameter Real Vmax_ALS_13 = 0.354581;
    parameter Real kmAcetoin_ALS_13 = 0.0495418;
    parameter Real kmPYR_ALS_13 = 0.262819;
    parameter Real Keq_BDH_14 = 1400.0;
    parameter Real Vmax_BDH_14 = 2.28578;
    parameter Real kmAcetoin_BDH_14 = 5.62373;
    parameter Real kmButanediol_BDH_14 = 1.80684;
    parameter Real kmNADH_BDH_14 = 3.54858;
    parameter Real kmNAD_BDH_14 = 1.29567;
    parameter Real Keq_MPD_15 = 200.0;
    parameter Real Vmax_MPD_15 = 1.32695;
    parameter Real kiF6P_MPD_15 = 22.0284;
    parameter Real kmF6P_MPD_15 = 0.321372;
    parameter Real kmMannitol1Phoshate_MPD_15 = 0.0891203;
    parameter Real kmNADH_MPD_15 = 0.0303446;
    parameter Real kmNAD_MPD_15 = 0.373149;
    parameter Real Vmax_MP_16 = 3.48563;
    parameter Real kmMannitol1Phosphate_MP_16 = 3.51571;
    parameter Real kmMannitol_MP_16 = 0.238849;
    parameter Real Vmax_PTS_Man_17 = 4.44903;
    parameter Real kmMannitol1Phosphate_PTS_Man_17 = 0.362571;
    parameter Real kmMannitolExt_PTS_Man_17 = 0.0127321;
    parameter Real kmPEP_PTS_Man_17 = 2.20816;
    parameter Real kmPYR_PTS_Man_17 = 0.344134;
    parameter Real Vmax_Acetoin_transp_18 = 1.60066;
    parameter Real kmAcetoin_Acetoin_transp_18 = 1.89255;
    parameter Real kmAcetoin_Ext_Acetoin_transp_18 = 7.05248;
    parameter Real Vmax_Mannitol_transp_19 = 1.62459;
    parameter Real kmMannitol_Ext_Mannitol_transp_19 = 0.940662;
    parameter Real kmMannitol_Mannitol_transp_19 = 0.0223502;
    parameter Real Vmax_FBPase_20 = 0.0970486;
    parameter Real kmF6P_FBPase_20 = 1.90796;
    parameter Real kmFBP_FBPase_20 = 0.412307;
    parameter Real kmPint_FBPase_20 = 0.0109675;
    parameter Real compartment_1 = 1.0;
    parameter Real compartment_2 = 1.0;



    Real G6P;
    Real ATP;
    Real ADP;
    Real Pint;
    Real F6P;
    Real FBP;
    Real G3P;
    Real BPG;
    Real PEP;
    Real NAD;
    Real NADH;
    Real PYR;
    Real AcetCoA;
    Real Acetoin;
    Real Mannitol;
    Real Mannitol1Phosphate;
    Real CoA;
    Real Pext;
    Real Lactate;
    Real Ethanol;
    Real Acetate;
    Real Butanediol;
    Real Glucose;
    Real Acetoin_Ext;
    Real Mannitol_Ext;
    Real Formate;

initial equation
    G6P = 0.0;
    ATP = 4.88632508879394;
    ADP = 20.3856905308319;
    Pint = 38.26;
    F6P = 0.0;
    FBP = 15.3;
    G3P = 0.0;
    BPG = 1.26348531244692;
    PEP = 2.4790177588998;
    NAD = 4.67;
    NADH = 2.03337939283534e-06;
    PYR = 0.0;
    AcetCoA = 0.0;
    Acetoin = 0.0;
    Mannitol = 0.0;
    Mannitol1Phosphate = 0.0;
    CoA = 1.0;
    Pext = 50.0;
    Lactate = 0.0;
    Ethanol = 0.0;
    Acetate = 0.0;
    Butanediol = 0.0;
    Glucose = 80.0;
    Acetoin_Ext = 0.0;
    Mannitol_Ext = 0.0;
    Formate = 0.0;

equation

    der(G6P) = (function_4_PTS_Glc(FBP, G6P, Glucose, PEP, PYR, Pint, Vmax_PTS_Glc_0, kaPint_PTS_Glc_0, kiFBP_PTS_Glc_0, kmG6P_PTS_Glc_0, kmGlucose_PTS_Glc_0, kmPEP_PTS_Glc_0, kmPYR_PTS_Glc_0)) - (compartment_1 * function_4_PGI(F6P, G6P, Keq_PGI_3, Vmax_PGI_3, kmF6P_PGI_3, kmG6P_PGI_3));
    der(ATP) = (compartment_1 * function_4_ENO(ADP, ATP, BPG, Keq_ENO_7, PEP, Vmax_ENO_7, kmADP_ENO_7, kmATP_ENO_7, kmBPG_ENO_7, kmPEP_ENO_7)) + (compartment_1 * function_4_PYK(ADP, ATP, FBP, PEP, PYR, Pint, Vmax_PYK_8, kaFBP_PYK_8, kiPint_PYK_8, kmADP_PYK_8, kmATP_PYK_8, kmPEP_PYK_8, kmPYR_PYK_8, nPYK_8)) + (function_4_ACK(ADP, ATP, AcetCoA, Acetate, CoA, Vmax_ACK_12, kmADP_ACK_12, kmATP_ACK_12, kmAcetCoA_ACK_12, kmAcetate_ACK_12, kmCoA_ACK_12)) - (compartment_1 * function_4_ATPase(ATP, Vmax_ATPase_1, kmATP_ATPase_1, nATPase_1)) - (function_4_P_transp(ADP, ATP, Pext, Pint, Vmax_Ptransport_2, kiPint_Ptransport_2, kmADP_Ptransport_2, kmATP_Ptransport_2, kmPext_Ptransport_2, kmPint_Ptransport_2)) - (compartment_1 * function_4_PFK(ADP, ATP, F6P, FBP, Vmax_PFK_4, kmADP_PFK_4, kmATP_PFK_4, kmF6P_PFK_4, kmFBP_PFK_4));
    der(ADP) = (compartment_1 * function_4_ATPase(ATP, Vmax_ATPase_1, kmATP_ATPase_1, nATPase_1)) + (function_4_P_transp(ADP, ATP, Pext, Pint, Vmax_Ptransport_2, kiPint_Ptransport_2, kmADP_Ptransport_2, kmATP_Ptransport_2, kmPext_Ptransport_2, kmPint_Ptransport_2)) + (compartment_1 * function_4_PFK(ADP, ATP, F6P, FBP, Vmax_PFK_4, kmADP_PFK_4, kmATP_PFK_4, kmF6P_PFK_4, kmFBP_PFK_4)) - (compartment_1 * function_4_ENO(ADP, ATP, BPG, Keq_ENO_7, PEP, Vmax_ENO_7, kmADP_ENO_7, kmATP_ENO_7, kmBPG_ENO_7, kmPEP_ENO_7)) - (compartment_1 * function_4_PYK(ADP, ATP, FBP, PEP, PYR, Pint, Vmax_PYK_8, kaFBP_PYK_8, kiPint_PYK_8, kmADP_PYK_8, kmATP_PYK_8, kmPEP_PYK_8, kmPYR_PYK_8, nPYK_8)) - (function_4_ACK(ADP, ATP, AcetCoA, Acetate, CoA, Vmax_ACK_12, kmADP_ACK_12, kmATP_ACK_12, kmAcetCoA_ACK_12, kmAcetate_ACK_12, kmCoA_ACK_12));
    der(Pint) = (compartment_1 * function_4_ATPase(ATP, Vmax_ATPase_1, kmATP_ATPase_1, nATPase_1)) + (2.0 * function_4_P_transp(ADP, ATP, Pext, Pint, Vmax_Ptransport_2, kiPint_Ptransport_2, kmADP_Ptransport_2, kmATP_Ptransport_2, kmPext_Ptransport_2, kmPint_Ptransport_2)) + (compartment_1 * function_4_FBPase(F6P, FBP, Pint, Vmax_FBPase_20, kmF6P_FBPase_20, kmFBP_FBPase_20, kmPint_FBPase_20)) - (compartment_1 * function_4_GAPDH(BPG, G3P, Keq_GAPDH_6, NAD, NADH, Pint, Vmax_GAPDH_6, kmBPG_GAPDH_6, kmG3P_GAPDH_6, kmNADH_GAPDH_6, kmNAD_GAPDH_6, kmPint_GAPDH_6));
    der(F6P) = (compartment_1 * function_4_PGI(F6P, G6P, Keq_PGI_3, Vmax_PGI_3, kmF6P_PGI_3, kmG6P_PGI_3)) + (compartment_1 * function_4_FBPase(F6P, FBP, Pint, Vmax_FBPase_20, kmF6P_FBPase_20, kmFBP_FBPase_20, kmPint_FBPase_20)) - (compartment_1 * function_4_PFK(ADP, ATP, F6P, FBP, Vmax_PFK_4, kmADP_PFK_4, kmATP_PFK_4, kmF6P_PFK_4, kmFBP_PFK_4)) - (compartment_1 * function_4_MPD(F6P, Keq_MPD_15, Mannitol1Phosphate, NAD, NADH, Vmax_MPD_15, kiF6P_MPD_15, kmF6P_MPD_15, kmMannitol1Phoshate_MPD_15, kmNADH_MPD_15, kmNAD_MPD_15));
    der(FBP) = (compartment_1 * function_4_PFK(ADP, ATP, F6P, FBP, Vmax_PFK_4, kmADP_PFK_4, kmATP_PFK_4, kmF6P_PFK_4, kmFBP_PFK_4)) - (compartment_1 * function_4_FBA(FBP, G3P, Keq_FBA_5, Vmax_FBA_5, kmFBP_FBA_5, kmG3P_FBA_5)) - (compartment_1 * function_4_FBPase(F6P, FBP, Pint, Vmax_FBPase_20, kmF6P_FBPase_20, kmFBP_FBPase_20, kmPint_FBPase_20));
    der(G3P) = (2.0 * compartment_1 * function_4_FBA(FBP, G3P, Keq_FBA_5, Vmax_FBA_5, kmFBP_FBA_5, kmG3P_FBA_5)) - (compartment_1 * function_4_GAPDH(BPG, G3P, Keq_GAPDH_6, NAD, NADH, Pint, Vmax_GAPDH_6, kmBPG_GAPDH_6, kmG3P_GAPDH_6, kmNADH_GAPDH_6, kmNAD_GAPDH_6, kmPint_GAPDH_6));
    der(BPG) = (compartment_1 * function_4_GAPDH(BPG, G3P, Keq_GAPDH_6, NAD, NADH, Pint, Vmax_GAPDH_6, kmBPG_GAPDH_6, kmG3P_GAPDH_6, kmNADH_GAPDH_6, kmNAD_GAPDH_6, kmPint_GAPDH_6)) - (compartment_1 * function_4_ENO(ADP, ATP, BPG, Keq_ENO_7, PEP, Vmax_ENO_7, kmADP_ENO_7, kmATP_ENO_7, kmBPG_ENO_7, kmPEP_ENO_7));
    der(PEP) = (compartment_1 * function_4_ENO(ADP, ATP, BPG, Keq_ENO_7, PEP, Vmax_ENO_7, kmADP_ENO_7, kmATP_ENO_7, kmBPG_ENO_7, kmPEP_ENO_7)) - (function_4_PTS_Glc(FBP, G6P, Glucose, PEP, PYR, Pint, Vmax_PTS_Glc_0, kaPint_PTS_Glc_0, kiFBP_PTS_Glc_0, kmG6P_PTS_Glc_0, kmGlucose_PTS_Glc_0, kmPEP_PTS_Glc_0, kmPYR_PTS_Glc_0)) - (compartment_1 * function_4_PYK(ADP, ATP, FBP, PEP, PYR, Pint, Vmax_PYK_8, kaFBP_PYK_8, kiPint_PYK_8, kmADP_PYK_8, kmATP_PYK_8, kmPEP_PYK_8, kmPYR_PYK_8, nPYK_8)) - (function_4_PTS_Man(Mannitol1Phosphate, Mannitol_Ext, PEP, PYR, Vmax_PTS_Man_17, kmMannitol1Phosphate_PTS_Man_17, kmMannitolExt_PTS_Man_17, kmPEP_PTS_Man_17, kmPYR_PTS_Man_17));
    der(NAD) = (function_4_LDH(FBP, Lactate, NAD, NADH, PYR, Pint, Vmax_LDH_9, kaFBP_LDH_9, kiPint_LDH_9, kmLactate_LDH_9, kmNADH_LDH_9, kmNAD_LDH_9, kmPYR_LDH_9)) + (2.0 * function_4_AE(ATP, AcetCoA, CoA, Ethanol, NAD, NADH, Vmax_AE_11, kiATP_AE_11, kmAcetCoA_AE_11, kmCoA_AE_11, kmEthanol_AE_11, kmNADH_AE_11, kmNAD_AE_11)) + (function_4_BDH(Acetoin, Butanediol, Keq_BDH_14, NAD, NADH, Vmax_BDH_14, kmAcetoin_BDH_14, kmButanediol_BDH_14, kmNADH_BDH_14, kmNAD_BDH_14)) + (compartment_1 * function_4_MPD(F6P, Keq_MPD_15, Mannitol1Phosphate, NAD, NADH, Vmax_MPD_15, kiF6P_MPD_15, kmF6P_MPD_15, kmMannitol1Phoshate_MPD_15, kmNADH_MPD_15, kmNAD_MPD_15)) - (compartment_1 * function_4_GAPDH(BPG, G3P, Keq_GAPDH_6, NAD, NADH, Pint, Vmax_GAPDH_6, kmBPG_GAPDH_6, kmG3P_GAPDH_6, kmNADH_GAPDH_6, kmNAD_GAPDH_6, kmPint_GAPDH_6));
    der(NADH) = (compartment_1 * function_4_GAPDH(BPG, G3P, Keq_GAPDH_6, NAD, NADH, Pint, Vmax_GAPDH_6, kmBPG_GAPDH_6, kmG3P_GAPDH_6, kmNADH_GAPDH_6, kmNAD_GAPDH_6, kmPint_GAPDH_6)) - (function_4_LDH(FBP, Lactate, NAD, NADH, PYR, Pint, Vmax_LDH_9, kaFBP_LDH_9, kiPint_LDH_9, kmLactate_LDH_9, kmNADH_LDH_9, kmNAD_LDH_9, kmPYR_LDH_9)) - (2.0 * function_4_AE(ATP, AcetCoA, CoA, Ethanol, NAD, NADH, Vmax_AE_11, kiATP_AE_11, kmAcetCoA_AE_11, kmCoA_AE_11, kmEthanol_AE_11, kmNADH_AE_11, kmNAD_AE_11)) - (function_4_BDH(Acetoin, Butanediol, Keq_BDH_14, NAD, NADH, Vmax_BDH_14, kmAcetoin_BDH_14, kmButanediol_BDH_14, kmNADH_BDH_14, kmNAD_BDH_14)) - (compartment_1 * function_4_MPD(F6P, Keq_MPD_15, Mannitol1Phosphate, NAD, NADH, Vmax_MPD_15, kiF6P_MPD_15, kmF6P_MPD_15, kmMannitol1Phoshate_MPD_15, kmNADH_MPD_15, kmNAD_MPD_15));
    der(PYR) = (function_4_PTS_Glc(FBP, G6P, Glucose, PEP, PYR, Pint, Vmax_PTS_Glc_0, kaPint_PTS_Glc_0, kiFBP_PTS_Glc_0, kmG6P_PTS_Glc_0, kmGlucose_PTS_Glc_0, kmPEP_PTS_Glc_0, kmPYR_PTS_Glc_0)) + (compartment_1 * function_4_PYK(ADP, ATP, FBP, PEP, PYR, Pint, Vmax_PYK_8, kaFBP_PYK_8, kiPint_PYK_8, kmADP_PYK_8, kmATP_PYK_8, kmPEP_PYK_8, kmPYR_PYK_8, nPYK_8)) + (function_4_PTS_Man(Mannitol1Phosphate, Mannitol_Ext, PEP, PYR, Vmax_PTS_Man_17, kmMannitol1Phosphate_PTS_Man_17, kmMannitolExt_PTS_Man_17, kmPEP_PTS_Man_17, kmPYR_PTS_Man_17)) - (function_4_LDH(FBP, Lactate, NAD, NADH, PYR, Pint, Vmax_LDH_9, kaFBP_LDH_9, kiPint_LDH_9, kmLactate_LDH_9, kmNADH_LDH_9, kmNAD_LDH_9, kmPYR_LDH_9)) - (function_4_PFL(AcetCoA, CoA, Formate, G3P, Keq_PFL_10, KmCoA_PFL_10, PYR, Vmax_PFL_10, kiG3P_PFL_10, kmAcetCoA_PFL_10, kmFormate_PFL_10, kmPYR_PFL_10)) - (2.0 * compartment_1 * function_4_ALS(Acetoin, Keq_ALS_13, PYR, Vmax_ALS_13, kmAcetoin_ALS_13, kmPYR_ALS_13));
    der(AcetCoA) = (function_4_PFL(AcetCoA, CoA, Formate, G3P, Keq_PFL_10, KmCoA_PFL_10, PYR, Vmax_PFL_10, kiG3P_PFL_10, kmAcetCoA_PFL_10, kmFormate_PFL_10, kmPYR_PFL_10)) - (function_4_AE(ATP, AcetCoA, CoA, Ethanol, NAD, NADH, Vmax_AE_11, kiATP_AE_11, kmAcetCoA_AE_11, kmCoA_AE_11, kmEthanol_AE_11, kmNADH_AE_11, kmNAD_AE_11)) - (function_4_ACK(ADP, ATP, AcetCoA, Acetate, CoA, Vmax_ACK_12, kmADP_ACK_12, kmATP_ACK_12, kmAcetCoA_ACK_12, kmAcetate_ACK_12, kmCoA_ACK_12));
    der(Acetoin) = (compartment_1 * function_4_ALS(Acetoin, Keq_ALS_13, PYR, Vmax_ALS_13, kmAcetoin_ALS_13, kmPYR_ALS_13)) - (function_4_BDH(Acetoin, Butanediol, Keq_BDH_14, NAD, NADH, Vmax_BDH_14, kmAcetoin_BDH_14, kmButanediol_BDH_14, kmNADH_BDH_14, kmNAD_BDH_14)) - (function_4_Acetoin_transp(Acetoin, Acetoin_Ext, Vmax_Acetoin_transp_18, kmAcetoin_Acetoin_transp_18, kmAcetoin_Ext_Acetoin_transp_18));
    der(Mannitol) = (compartment_1 * function_4_MP(Mannitol, Mannitol1Phosphate, Vmax_MP_16, kmMannitol1Phosphate_MP_16, kmMannitol_MP_16)) - (function_4_Mannitol_transp(Mannitol, Mannitol_Ext, Vmax_Mannitol_transp_19, kmMannitol_Ext_Mannitol_transp_19, kmMannitol_Mannitol_transp_19));
    der(Mannitol1Phosphate) = (compartment_1 * function_4_MPD(F6P, Keq_MPD_15, Mannitol1Phosphate, NAD, NADH, Vmax_MPD_15, kiF6P_MPD_15, kmF6P_MPD_15, kmMannitol1Phoshate_MPD_15, kmNADH_MPD_15, kmNAD_MPD_15)) + (function_4_PTS_Man(Mannitol1Phosphate, Mannitol_Ext, PEP, PYR, Vmax_PTS_Man_17, kmMannitol1Phosphate_PTS_Man_17, kmMannitolExt_PTS_Man_17, kmPEP_PTS_Man_17, kmPYR_PTS_Man_17)) - (compartment_1 * function_4_MP(Mannitol, Mannitol1Phosphate, Vmax_MP_16, kmMannitol1Phosphate_MP_16, kmMannitol_MP_16));
    der(CoA) = (function_4_AE(ATP, AcetCoA, CoA, Ethanol, NAD, NADH, Vmax_AE_11, kiATP_AE_11, kmAcetCoA_AE_11, kmCoA_AE_11, kmEthanol_AE_11, kmNADH_AE_11, kmNAD_AE_11)) + (function_4_ACK(ADP, ATP, AcetCoA, Acetate, CoA, Vmax_ACK_12, kmADP_ACK_12, kmATP_ACK_12, kmAcetCoA_ACK_12, kmAcetate_ACK_12, kmCoA_ACK_12)) - (function_4_PFL(AcetCoA, CoA, Formate, G3P, Keq_PFL_10, KmCoA_PFL_10, PYR, Vmax_PFL_10, kiG3P_PFL_10, kmAcetCoA_PFL_10, kmFormate_PFL_10, kmPYR_PFL_10));
    der(Pext) =  - (function_4_P_transp(ADP, ATP, Pext, Pint, Vmax_Ptransport_2, kiPint_Ptransport_2, kmADP_Ptransport_2, kmATP_Ptransport_2, kmPext_Ptransport_2, kmPint_Ptransport_2));
    der(Lactate) = (function_4_LDH(FBP, Lactate, NAD, NADH, PYR, Pint, Vmax_LDH_9, kaFBP_LDH_9, kiPint_LDH_9, kmLactate_LDH_9, kmNADH_LDH_9, kmNAD_LDH_9, kmPYR_LDH_9)) ;
    der(Ethanol) = (function_4_AE(ATP, AcetCoA, CoA, Ethanol, NAD, NADH, Vmax_AE_11, kiATP_AE_11, kmAcetCoA_AE_11, kmCoA_AE_11, kmEthanol_AE_11, kmNADH_AE_11, kmNAD_AE_11)) ;
    der(Acetate) = (function_4_ACK(ADP, ATP, AcetCoA, Acetate, CoA, Vmax_ACK_12, kmADP_ACK_12, kmATP_ACK_12, kmAcetCoA_ACK_12, kmAcetate_ACK_12, kmCoA_ACK_12)) ;
    der(Butanediol) = (function_4_BDH(Acetoin, Butanediol, Keq_BDH_14, NAD, NADH, Vmax_BDH_14, kmAcetoin_BDH_14, kmButanediol_BDH_14, kmNADH_BDH_14, kmNAD_BDH_14)) ;
    der(Glucose) =  - (function_4_PTS_Glc(FBP, G6P, Glucose, PEP, PYR, Pint, Vmax_PTS_Glc_0, kaPint_PTS_Glc_0, kiFBP_PTS_Glc_0, kmG6P_PTS_Glc_0, kmGlucose_PTS_Glc_0, kmPEP_PTS_Glc_0, kmPYR_PTS_Glc_0));
    der(Acetoin_Ext) = (function_4_Acetoin_transp(Acetoin, Acetoin_Ext, Vmax_Acetoin_transp_18, kmAcetoin_Acetoin_transp_18, kmAcetoin_Ext_Acetoin_transp_18)) ;
    der(Mannitol_Ext) = (function_4_Mannitol_transp(Mannitol, Mannitol_Ext, Vmax_Mannitol_transp_19, kmMannitol_Ext_Mannitol_transp_19, kmMannitol_Mannitol_transp_19)) - (function_4_PTS_Man(Mannitol1Phosphate, Mannitol_Ext, PEP, PYR, Vmax_PTS_Man_17, kmMannitol1Phosphate_PTS_Man_17, kmMannitolExt_PTS_Man_17, kmPEP_PTS_Man_17, kmPYR_PTS_Man_17));
    der(Formate) = (function_4_PFL(AcetCoA, CoA, Formate, G3P, Keq_PFL_10, KmCoA_PFL_10, PYR, Vmax_PFL_10, kiG3P_PFL_10, kmAcetCoA_PFL_10, kmFormate_PFL_10, kmPYR_PFL_10)) ;




end BIOMD572;
