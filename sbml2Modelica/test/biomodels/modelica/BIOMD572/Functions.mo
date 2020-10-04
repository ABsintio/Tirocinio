within BIOMD572;
class Functions

    function elmt_function_4_PGI
        input Real arg_F6P;
        input Real arg_G6P;
        input Real arg_Keq_PGI;
        input Real arg_Vmax_PGI;
        input Real arg_kmF6P_PGI;
        input Real arg_kmG6P_PGI;

        output Real result;
        algorithm
            result := (((arg_Vmax_PGI * (arg_G6P / arg_kmG6P_PGI)) - ((arg_Vmax_PGI / arg_Keq_PGI) * (arg_F6P / arg_kmG6P_PGI))) / (1.0 + (arg_G6P / arg_kmG6P_PGI) + (arg_F6P / arg_kmF6P_PGI)));
    end elmt_function_4_PGI;

    function elmt_function_4_P_transp
        input Real arg_ADP;
        input Real arg_ATP;
        input Real arg_Pext;
        input Real arg_Pint;
        input Real arg_Vmax_Ptransport;
        input Real arg_kiPint_Ptransport;
        input Real arg_kmADP_Ptransport;
        input Real arg_kmATP_Ptransport;
        input Real arg_kmPext_Ptransport;
        input Real arg_kmPint_Ptransport;

        output Real result;
        algorithm
            result := (((arg_kiPint_Ptransport / (arg_Pint + arg_kiPint_Ptransport)) * arg_Vmax_Ptransport * (arg_ATP / arg_kmATP_Ptransport) * (arg_Pext / arg_kmPext_Ptransport)) / ((((1.0 + (arg_Pext / arg_kmPext_Ptransport)) * (1.0 + (arg_ATP / arg_kmATP_Ptransport))) + ((1.0 + (arg_Pint / arg_kmPint_Ptransport) + Functions.pow((arg_Pint / arg_kmPint_Ptransport), 2.0)) * (1.0 + (arg_ADP / arg_kmADP_Ptransport)))) - 1.0));
    end elmt_function_4_P_transp;

    function elmt_function_4_PFL
        input Real arg_AcetCoA;
        input Real arg_CoA;
        input Real arg_Formate;
        input Real arg_G3P;
        input Real arg_Keq_PFL;
        input Real arg_KmCoA_PFL;
        input Real arg_PYR;
        input Real arg_Vmax_PFL;
        input Real arg_kiG3P_PFL;
        input Real arg_kmAcetCoA_PFL;
        input Real arg_kmFormate_PFL;
        input Real arg_kmPYR_PFL;

        output Real result;
        algorithm
            result := (((arg_kiG3P_PFL / (arg_G3P + arg_kiG3P_PFL)) * ((arg_Vmax_PFL * (arg_PYR / arg_kmPYR_PFL) * (arg_CoA / arg_KmCoA_PFL)) - ((arg_Vmax_PFL / arg_Keq_PFL) * (arg_AcetCoA / arg_kmPYR_PFL) * (arg_Formate / arg_KmCoA_PFL)))) / ((((1.0 + (arg_PYR / arg_kmPYR_PFL)) * (1.0 + (arg_CoA / arg_KmCoA_PFL))) + ((1.0 + (arg_AcetCoA / arg_kmAcetCoA_PFL)) * (1.0 + (arg_Formate / arg_kmFormate_PFL)))) - 1.0));
    end elmt_function_4_PFL;

    function elmt_function_4_PFK
        input Real arg_ADP;
        input Real arg_ATP;
        input Real arg_F6P;
        input Real arg_FBP;
        input Real arg_Vmax_PFK;
        input Real arg_kmADP_PFK;
        input Real arg_kmATP_PFK;
        input Real arg_kmF6P_PFK;
        input Real arg_kmFBP_PFK;

        output Real result;
        algorithm
            result := ((arg_Vmax_PFK * (arg_F6P / arg_kmF6P_PFK) * (arg_ATP / arg_kmATP_PFK)) / ((((1.0 + (arg_F6P / arg_kmF6P_PFK)) * (1.0 + (arg_ATP / arg_kmATP_PFK))) + ((1.0 + (arg_FBP / arg_kmFBP_PFK)) * (1.0 + (arg_ADP / arg_kmADP_PFK)))) - 1.0));
    end elmt_function_4_PFK;

    function elmt_function_4_GAPDH
        input Real arg_BPG;
        input Real arg_G3P;
        input Real arg_Keq_GAPDH;
        input Real arg_NAD;
        input Real arg_NADH;
        input Real arg_Pint;
        input Real arg_Vmax_GAPDH;
        input Real arg_kmBPG_GAPDH;
        input Real arg_kmG3P_GAPDH;
        input Real arg_kmNADH_GAPDH;
        input Real arg_kmNAD_GAPDH;
        input Real arg_kmPint_GAPDH;

        output Real result;
        algorithm
            result := (((arg_Vmax_GAPDH * (arg_G3P / arg_kmG3P_GAPDH) * (arg_NAD / arg_kmNAD_GAPDH) * (arg_Pint / arg_kmPint_GAPDH)) - ((arg_Vmax_GAPDH / arg_Keq_GAPDH) * (arg_BPG / arg_kmG3P_GAPDH) * (arg_NADH / arg_kmNAD_GAPDH) * (1.0 / arg_kmPint_GAPDH))) / ((((1.0 + (arg_G3P / arg_kmG3P_GAPDH)) * (1.0 + (arg_Pint / arg_kmPint_GAPDH)) * (1.0 + (arg_NAD / arg_kmNAD_GAPDH))) + ((1.0 + (arg_BPG / arg_kmBPG_GAPDH)) * (1.0 + (arg_NADH / arg_kmNADH_GAPDH)))) - 1.0));
    end elmt_function_4_GAPDH;

    function elmt_function_4_Mannitol_transp
        input Real arg_Mannitol;
        input Real arg_Mannitol_Ext;
        input Real arg_Vmax_Mannitol_transp;
        input Real arg_kmMannitol_Ext_Mannitol_transp;
        input Real arg_kmMannitol_Mannitol_transp;

        output Real result;
        algorithm
            result := ((arg_Vmax_Mannitol_transp * (arg_Mannitol / arg_kmMannitol_Mannitol_transp)) / (1.0 + (arg_Mannitol / arg_kmMannitol_Mannitol_transp) + (arg_Mannitol_Ext / arg_kmMannitol_Ext_Mannitol_transp)));
    end elmt_function_4_Mannitol_transp;

    function elmt_function_4_PTS_Glc
        input Real arg_FBP;
        input Real arg_G6P;
        input Real arg_Glucose;
        input Real arg_PEP;
        input Real arg_PYR;
        input Real arg_Pint;
        input Real arg_Vmax_PTS_Glc;
        input Real arg_kaPint_PTS_Glc;
        input Real arg_kiFBP_PTS_Glc;
        input Real arg_kmG6P_PTS_Glc;
        input Real arg_kmGlucose_PTS_Glc;
        input Real arg_kmPEP_PTS_Glc;
        input Real arg_kmPYR_PTS_Glc;

        output Real result;
        algorithm
            result := (((arg_Pint / (arg_Pint + arg_kaPint_PTS_Glc)) * (arg_kiFBP_PTS_Glc / (arg_FBP + arg_kiFBP_PTS_Glc)) * arg_Vmax_PTS_Glc * (arg_Glucose / arg_kmGlucose_PTS_Glc) * (arg_PEP / arg_kmPEP_PTS_Glc)) / ((((1.0 + (arg_Glucose / arg_kmGlucose_PTS_Glc)) * (1.0 + (arg_PEP / arg_kmPEP_PTS_Glc))) + ((1.0 + (arg_G6P / arg_kmG6P_PTS_Glc)) * (1.0 + (arg_PYR / arg_kmPYR_PTS_Glc)))) - 1.0));
    end elmt_function_4_PTS_Glc;

    function elmt_function_4_PYK
        input Real arg_ADP;
        input Real arg_ATP;
        input Real arg_FBP;
        input Real arg_PEP;
        input Real arg_PYR;
        input Real arg_Pint;
        input Real arg_Vmax_PYK;
        input Real arg_kaFBP_PYK;
        input Real arg_kiPint_PYK;
        input Real arg_kmADP_PYK;
        input Real arg_kmATP_PYK;
        input Real arg_kmPEP_PYK;
        input Real arg_kmPYR_PYK;
        input Real arg_nPYK;

        output Real result;
        algorithm
            result := (((arg_FBP / (arg_FBP + arg_kaFBP_PYK)) * (Functions.pow(arg_kiPint_PYK, arg_nPYK) / (Functions.pow(arg_Pint, arg_nPYK) + Functions.pow(arg_kiPint_PYK, arg_nPYK))) * arg_Vmax_PYK * (arg_ADP / arg_kmADP_PYK) * (arg_PEP / arg_kmPEP_PYK)) / ((((1.0 + (arg_ADP / arg_kmADP_PYK)) * (1.0 + (arg_PEP / arg_kmPEP_PYK))) + ((1.0 + (arg_ATP / arg_kmATP_PYK)) * (1.0 + (arg_PYR / arg_kmPYR_PYK)))) - 1.0));
    end elmt_function_4_PYK;

    function elmt_function_4_FBPase
        input Real arg_F6P;
        input Real arg_FBP;
        input Real arg_Pint;
        input Real arg_Vmax_FBPase;
        input Real arg_kmF6P_FBPase;
        input Real arg_kmFBP_FBPase;
        input Real arg_kmPint_FBPase;

        output Real result;
        algorithm
            result := ((arg_Vmax_FBPase * (arg_FBP / arg_kmFBP_FBPase)) / ((arg_FBP / arg_kmFBP_FBPase) + ((1.0 + (arg_F6P / arg_kmF6P_FBPase)) * (1.0 + (arg_Pint / arg_kmPint_FBPase)))));
    end elmt_function_4_FBPase;

    function elmt_function_4_MPD
        input Real arg_F6P;
        input Real arg_Keq_MPD;
        input Real arg_Mannitol1Phosphate;
        input Real arg_NAD;
        input Real arg_NADH;
        input Real arg_Vmax_MPD;
        input Real arg_kiF6P_MPD;
        input Real arg_kmF6P_MPD;
        input Real arg_kmMannitol1Phoshate_MPD;
        input Real arg_kmNADH_MPD;
        input Real arg_kmNAD_MPD;

        output Real result;
        algorithm
            result := (((arg_kiF6P_MPD / (arg_F6P + arg_kiF6P_MPD)) * ((arg_Vmax_MPD * (arg_F6P / arg_kmF6P_MPD) * (arg_NADH / arg_kmNADH_MPD)) - ((arg_Vmax_MPD / arg_Keq_MPD) * (arg_Mannitol1Phosphate / arg_kmF6P_MPD) * (arg_NAD / arg_kmNADH_MPD)))) / ((((1.0 + (arg_F6P / arg_kmF6P_MPD)) * (1.0 + (arg_NADH / arg_kmNADH_MPD))) + ((1.0 + (arg_Mannitol1Phosphate / arg_kmMannitol1Phoshate_MPD)) * (1.0 + (arg_NAD / arg_kmNAD_MPD)))) - 1.0));
    end elmt_function_4_MPD;

    function elmt_function_4_ATPase
        input Real arg_ATP;
        input Real arg_Vmax_ATPase;
        input Real arg_kmATP_ATPase;
        input Real arg_nATPase;

        output Real result;
        algorithm
            result := (arg_Vmax_ATPase * (Functions.pow((arg_ATP / arg_kmATP_ATPase), arg_nATPase) / (Functions.pow((arg_ATP / arg_kmATP_ATPase), arg_nATPase) + 1.0)));
    end elmt_function_4_ATPase;

    function elmt_function_4_ENO
        input Real arg_ADP;
        input Real arg_ATP;
        input Real arg_BPG;
        input Real arg_Keq_ENO;
        input Real arg_PEP;
        input Real arg_Vmax_ENO;
        input Real arg_kmADP_ENO;
        input Real arg_kmATP_ENO;
        input Real arg_kmBPG_ENO;
        input Real arg_kmPEP_ENO;

        output Real result;
        algorithm
            result := (((arg_Vmax_ENO * (arg_BPG / arg_kmBPG_ENO) * (arg_ADP / arg_kmADP_ENO)) - ((arg_Vmax_ENO / arg_Keq_ENO) * (arg_PEP / arg_kmBPG_ENO) * (arg_ATP / arg_kmADP_ENO))) / ((((1.0 + (arg_BPG / arg_kmBPG_ENO)) * (1.0 + (arg_ADP / arg_kmADP_ENO))) + ((1.0 + (arg_PEP / arg_kmPEP_ENO)) * (1.0 + (arg_ATP / arg_kmATP_ENO)))) - 1.0));
    end elmt_function_4_ENO;

    function elmt_function_4_PTS_Man
        input Real arg_Mannitol1Phosphate;
        input Real arg_Mannitol_Ext;
        input Real arg_PEP;
        input Real arg_PYR;
        input Real arg_Vmax_PTS_Man;
        input Real arg_kmMannitol1Phosphate_PTS_Man;
        input Real arg_kmMannitolExt_PTS_Man;
        input Real arg_kmPEP_PTS_Man;
        input Real arg_kmPYR_PTS_Man;

        output Real result;
        algorithm
            result := ((arg_Vmax_PTS_Man * (arg_Mannitol_Ext / arg_kmMannitolExt_PTS_Man) * (arg_PEP / arg_kmPEP_PTS_Man)) / ((((1.0 + (arg_Mannitol_Ext / arg_kmMannitolExt_PTS_Man)) * (1.0 + (arg_PEP / arg_kmPEP_PTS_Man))) + ((1.0 + (arg_Mannitol1Phosphate / arg_kmMannitol1Phosphate_PTS_Man)) * (1.0 + (arg_PYR / arg_kmPYR_PTS_Man)))) - 1.0));
    end elmt_function_4_PTS_Man;

    function elmt_function_4_FBA
        input Real arg_FBP;
        input Real arg_G3P;
        input Real arg_Keq_FBA;
        input Real arg_Vmax_FBA;
        input Real arg_kmFBP_FBA;
        input Real arg_kmG3P_FBA;

        output Real result;
        algorithm
            result := (((arg_Vmax_FBA * (arg_FBP / arg_kmFBP_FBA)) - ((arg_Vmax_FBA / arg_Keq_FBA) * (Functions.pow(arg_G3P, 2.0) / arg_kmFBP_FBA))) / (1.0 + (arg_FBP / arg_kmFBP_FBA) + (arg_G3P / arg_kmG3P_FBA) + Functions.pow((arg_G3P / arg_kmG3P_FBA), 2.0)));
    end elmt_function_4_FBA;

    function elmt_function_4_BDH
        input Real arg_Acetoin;
        input Real arg_Butanediol;
        input Real arg_Keq_BDH;
        input Real arg_NAD;
        input Real arg_NADH;
        input Real arg_Vmax_BDH;
        input Real arg_kmAcetoin_BDH;
        input Real arg_kmButanediol_BDH;
        input Real arg_kmNADH_BDH;
        input Real arg_kmNAD_BDH;

        output Real result;
        algorithm
            result := (((arg_Vmax_BDH * (arg_Acetoin / arg_kmAcetoin_BDH) * (arg_NADH / arg_kmNADH_BDH)) - ((arg_Vmax_BDH / arg_Keq_BDH) * (arg_Butanediol / arg_kmAcetoin_BDH) * (arg_NAD / arg_kmNADH_BDH))) / ((((1.0 + (arg_Acetoin / arg_kmAcetoin_BDH)) * (1.0 + (arg_NADH / arg_kmNADH_BDH))) + ((1.0 + (arg_Butanediol / arg_kmButanediol_BDH)) * (1.0 + (arg_NAD / arg_kmNAD_BDH)))) - 1.0));
    end elmt_function_4_BDH;

    function elmt_function_4_ALS
        input Real arg_Acetoin;
        input Real arg_Keq_ALS;
        input Real arg_PYR;
        input Real arg_Vmax_ALS;
        input Real arg_kmAcetoin_ALS;
        input Real arg_kmPYR_ALS;

        output Real result;
        algorithm
            result := (((arg_Vmax_ALS * Functions.pow((arg_PYR / arg_kmPYR_ALS), 2.0)) - ((arg_Vmax_ALS / arg_Keq_ALS) * (arg_Acetoin / arg_kmPYR_ALS))) / ((1.0 + (arg_PYR / arg_kmPYR_ALS) + Functions.pow((arg_PYR / arg_kmPYR_ALS), 2.0) + 1.0 + (arg_Acetoin / arg_kmAcetoin_ALS)) - 1.0));
    end elmt_function_4_ALS;

    function elmt_function_4_ACK
        input Real arg_ADP;
        input Real arg_ATP;
        input Real arg_AcetCoA;
        input Real arg_Acetate;
        input Real arg_CoA;
        input Real arg_Vmax_ACK;
        input Real arg_kmADP_ACK;
        input Real arg_kmATP_ACK;
        input Real arg_kmAcetCoA_ACK;
        input Real arg_kmAcetate_ACK;
        input Real arg_kmCoA_ACK;

        output Real result;
        algorithm
            result := ((arg_Vmax_ACK * (arg_AcetCoA / arg_kmAcetCoA_ACK) * (arg_ADP / arg_kmADP_ACK)) / ((((1.0 + (arg_AcetCoA / arg_kmAcetCoA_ACK)) * (1.0 + (arg_ADP / arg_kmADP_ACK))) + ((1.0 + (arg_Acetate / arg_kmAcetate_ACK)) * (1.0 + (arg_ATP / arg_kmATP_ACK)) * (1.0 + (arg_CoA / arg_kmCoA_ACK)))) - 1.0));
    end elmt_function_4_ACK;

    function elmt_function_4_Acetoin_transp
        input Real arg_Acetoin;
        input Real arg_Acetoin_Ext;
        input Real arg_Vmax_Acetoin_transp;
        input Real arg_kmAcetoin_Acetoin_transp;
        input Real arg_kmAcetoin_Ext_Acetoin_transp;

        output Real result;
        algorithm
            result := ((arg_Vmax_Acetoin_transp * (arg_Acetoin / arg_kmAcetoin_Acetoin_transp)) / (1.0 + (arg_Acetoin / arg_kmAcetoin_Acetoin_transp) + (arg_Acetoin_Ext / arg_kmAcetoin_Ext_Acetoin_transp)));
    end elmt_function_4_Acetoin_transp;

    function elmt_function_4_MP
        input Real arg_Mannitol;
        input Real arg_Mannitol1Phosphate;
        input Real arg_Vmax_MP;
        input Real arg_kmMannitol1Phosphate_MP;
        input Real arg_kmMannitol_MP;

        output Real result;
        algorithm
            result := ((arg_Vmax_MP * (arg_Mannitol1Phosphate / arg_kmMannitol1Phosphate_MP)) / ((1.0 + (arg_Mannitol1Phosphate / arg_kmMannitol1Phosphate_MP) + 1.0 + (arg_Mannitol / arg_kmMannitol_MP)) - 1.0));
    end elmt_function_4_MP;

    function elmt_function_4_AE
        input Real arg_ATP;
        input Real arg_AcetCoA;
        input Real arg_CoA;
        input Real arg_Ethanol;
        input Real arg_NAD;
        input Real arg_NADH;
        input Real arg_Vmax_AE;
        input Real arg_kiATP_AE;
        input Real arg_kmAcetCoA_AE;
        input Real arg_kmCoA_AE;
        input Real arg_kmEthanol_AE;
        input Real arg_kmNADH_AE;
        input Real arg_kmNAD_AE;

        output Real result;
        algorithm
            result := (((arg_kiATP_AE / (arg_ATP + arg_kiATP_AE)) * arg_Vmax_AE * (arg_AcetCoA / arg_kmAcetCoA_AE) * Functions.pow((arg_NADH / arg_kmNADH_AE), 2.0)) / ((((1.0 + (arg_NADH / arg_kmNADH_AE) + Functions.pow((arg_NADH / arg_kmNADH_AE), 2.0)) * (1.0 + (arg_AcetCoA / arg_kmAcetCoA_AE))) + ((1.0 + (arg_Ethanol / arg_kmEthanol_AE)) * (1.0 + (arg_CoA / arg_kmCoA_AE)) * (1.0 + (arg_NAD / arg_kmNAD_AE) + Functions.pow((arg_NAD / arg_kmNAD_AE), 2.0)))) - 1.0));
    end elmt_function_4_AE;

    function elmt_function_4_LDH
        input Real arg_FBP;
        input Real arg_Lactate;
        input Real arg_NAD;
        input Real arg_NADH;
        input Real arg_PYR;
        input Real arg_Pint;
        input Real arg_Vmax_LDH;
        input Real arg_kaFBP_LDH;
        input Real arg_kiPint_LDH;
        input Real arg_kmLactate_LDH;
        input Real arg_kmNADH_LDH;
        input Real arg_kmNAD_LDH;
        input Real arg_kmPYR_LDH;

        output Real result;
        algorithm
            result := (((arg_FBP / (arg_FBP + arg_kaFBP_LDH)) * (arg_kiPint_LDH / (arg_Pint + arg_kiPint_LDH)) * arg_Vmax_LDH * (arg_PYR / arg_kmPYR_LDH) * (arg_NADH / arg_kmNADH_LDH)) / ((((1.0 + (arg_PYR / arg_kmPYR_LDH)) * (1.0 + (arg_NADH / arg_kmNADH_LDH))) + ((1.0 + (arg_Lactate / arg_kmLactate_LDH)) * (1.0 + (arg_NAD / arg_kmNAD_LDH)))) - 1.0));
    end elmt_function_4_LDH;


    function acosh
        input  Real x;
        output Real y;
        algorithm
            y := log(x + sqrt(x^2 - 1));
    end acosh;

    function acot
        input  Real x;
        output Real y;
        algorithm
            if abs(x) < Constants.EPSILON then
                y := atan(sign(x) * Constants.INFINITY);
            else
                y := atan(1 / x);
            end if;
    end acot;

    function acoth
        input  Real x;
        output Real y;
        algorithm
            y := (1 / 2) * log((x + 1) / (x - 1));
    end acoth;

    function acsc
        input  Real x;
        output Real y;
        algorithm
            y := asin(1 / x);
    end acsc;

    function acsch
        input  Real x;
        output Real y;
        algorithm
            y := sign(x) * log((1 + sqrt(1 + x^2)) / abs(x));
    end acsch;

    function asec
        input  Real x;
        output Real y;
        algorithm
            y := acos(1 / x);
    end asec;

    function asech
        input  Real x;
        output Real y;
        algorithm
            y := log((1 + sqrt(1 - x^2)) / x);
    end asech;

    function asinh
        input  Real x;
        output Real y;
        algorithm
            y := log(x + sqrt(x^2 + 1));
    end asinh;

    function atanh
        input  Real x;
        output Real y;
        algorithm
            y := (1 / 2) * log((1 + x) / (1 - x));
    end atanh;

    function cot
        input  Real x;
        output Real y;
        algorithm
            y := 1 / tan(x);
    end cot;

    function coth
        input  Real x;
        output Real y;
        algorithm
            y := 1 / tanh(x);
    end coth;

    function csc
        input  Real x;
        output Real y;
        algorithm
            y := 1 / sin(x);
    end csc;

    function csch
        input  Real x;
        output Real y;
        algorithm
            y := 1 / sinh(x);
    end csch;

    function factorial
        input  Real n;
        output Real y;
        algorithm
            if eq(n, 0) then
                y := 1;
            else
                y := n * factorial(n - 1);
            end if;
    end factorial;

    function logarithm
        input  Real base;
        input  Real arg;
        output Real y;
        algorithm
            y := log(arg) / log(base);
    end logarithm;

    function pow
        input  Real x;
        input  Real power;
        output Real y;
        algorithm
            y := x^power;
    end pow;

    function root
        input  Real degree;
        input  Real x;
        output Real y;
        algorithm
            y := x^(1 / degree);
    end root;

    function sec
        input  Real x;
        output Real y;
        algorithm
            y := 1 / cos(x);
    end sec;

    function sech
        input  Real x;
        output Real y;
        algorithm
            y := 1 / cosh(x);
    end sech;

    function implies
        input  Boolean x1;
        input  Boolean x2;
        output Boolean y;
        algorithm
            y := not x1 or x2;
    end implies;

    function xor
        input  Boolean x1;
        input  Boolean x2;
        output Boolean y;
        algorithm
            y := (x1 and not x2) or (not x1 and x2);
    end xor;

    function eq
        input  Real x1;
        input  Real x2;
        output Boolean y;
        algorithm
            y := abs(x1 - x2) / max(abs(x1), Constants.ETA) < Constants.EPSILON;
    end eq;

    function real2bool
        input  Real    x;
        output Boolean y;
        algorithm
            y := (not eq(x, 0));
    end real2bool;

    function bool2real
        input  Boolean x;
        output Real    y;
        algorithm
            if x then
                y := 1.0;
            else
                y := 0.0;
            end if;
    end bool2real;
end Functions;
