within BIOMD250;
class Functions

    function elmt_function_4_v108
        input Real arg_K108;
        input Real arg_V108;
        input Real arg_A2_2;
        input Real arg_RsT;

        output Real result;
        algorithm
            result := ((arg_V108 * arg_A2_2 * arg_RsT) / (arg_K108 + arg_RsT));
    end elmt_function_4_v108;

    function elmt_function_4_v109
        input Real arg_K109;
        input Real arg_V109;
        input Real arg_HRG;
        input Real arg_A3;

        output Real result;
        algorithm
            result := ((arg_V109 * arg_HRG * arg_A3) / (arg_K109 + arg_A3));
    end elmt_function_4_v109;

    function elmt_function_4_v029
        input Real arg_K29;
        input Real arg_V29;
        input Real arg_ppERK_n;
        input Real arg_Elk1_n;

        output Real result;
        algorithm
            result := ((arg_V29 * arg_ppERK_n * arg_Elk1_n) / (arg_K29 + arg_Elk1_n));
    end elmt_function_4_v029;

    function elmt_function_4_v106
        input Real arg_K106;
        input Real arg_V106;
        input Real arg_HRG;
        input Real arg_RsD;

        output Real result;
        algorithm
            result := ((arg_V106 * arg_HRG * arg_RsD) / (arg_K106 + arg_RsD));
    end elmt_function_4_v106;

    function elmt_function_4_v107
        input Real arg_K107;
        input Real arg_V107;
        input Real arg_A1_2;
        input Real arg_RsT;

        output Real result;
        algorithm
            result := ((arg_V107 * arg_A1_2 * arg_RsT) / (arg_K107 + arg_RsT));
    end elmt_function_4_v107;

    function elmt_function_4_v027
        input Real arg_K27;
        input Real arg_V27;
        input Real arg_CREB_n;
        input Real arg_pRSK_n;

        output Real result;
        algorithm
            result := ((arg_V27 * arg_pRSK_n * arg_CREB_n) / (arg_K27 + arg_CREB_n));
    end elmt_function_4_v027;

    function elmt_function_4_v104
        input Real arg_K104;
        input Real arg_V104;
        input Real arg_A2_2;

        output Real result;
        algorithm
            result := ((arg_V104 * arg_A2_2) / (arg_K104 + arg_A2_2));
    end elmt_function_4_v104;

    function elmt_function_4_v028
        input Real arg_K28;
        input Real arg_V28;
        input Real arg_pCREB_n;

        output Real result;
        algorithm
            result := ((arg_V28 * arg_pCREB_n) / (arg_K28 + arg_pCREB_n));
    end elmt_function_4_v028;

    function elmt_function_4_v105
        input Real arg_K105;
        input Real arg_V105;
        input Real arg_EGF;
        input Real arg_RsD;

        output Real result;
        algorithm
            result := ((arg_V105 * arg_EGF * arg_RsD) / (arg_K105 + arg_RsD));
    end elmt_function_4_v105;

    function elmt_function_4_v036
        input Real arg_K36;
        input Real arg_V36;
        input Real arg_c_FOS_c;
        input Real arg_pRSK_c;

        output Real result;
        algorithm
            result := ((arg_V36 * arg_pRSK_c * arg_c_FOS_c) / (arg_K36 + arg_c_FOS_c));
    end elmt_function_4_v036;

    function elmt_function_4_v113
        input Real arg_K113;
        input Real arg_V113;
        input Real arg_RsT;
        input Real arg_pMEK_c;

        output Real result;
        algorithm
            result := ((arg_V113 * arg_RsT * arg_pMEK_c) / (arg_K113 + arg_pMEK_c));
    end elmt_function_4_v113;

    function elmt_function_4_v037
        input Real arg_K37;
        input Real arg_V37;
        input Real arg_pc_FOS_c;

        output Real result;
        algorithm
            result := ((arg_V37 * arg_pc_FOS_c) / (arg_K37 + arg_pc_FOS_c));
    end elmt_function_4_v037;

    function elmt_function_4_v114
        input Real arg_K114;
        input Real arg_V114;
        input Real arg_Kin_2;
        input Real arg_pMEK_c;

        output Real result;
        algorithm
            result := ((arg_V114 * arg_Kin_2 * arg_pMEK_c) / (arg_K114 + arg_pMEK_c));
    end elmt_function_4_v114;

    function elmt_function_4_v034
        input Real arg_p34;
        input Real arg_c_FOSmRNA;

        output Real result;
        algorithm
            result := (arg_p34 * arg_c_FOSmRNA);
    end elmt_function_4_v034;

    function elmt_function_4_v111
        input Real arg_K111;
        input Real arg_V111;
        input Real arg_HRG;
        input Real arg_Kin;

        output Real result;
        algorithm
            result := ((arg_V111 * arg_HRG * arg_Kin) / (arg_K111 + arg_Kin));
    end elmt_function_4_v111;

    function elmt_function_4_v035
        input Real arg_K35;
        input Real arg_V35;
        input Real arg_c_FOS_c;
        input Real arg_ppERK_c;

        output Real result;
        algorithm
            result := ((arg_V35 * arg_ppERK_c * arg_c_FOS_c) / (arg_K35 + arg_c_FOS_c));
    end elmt_function_4_v035;

    function elmt_function_4_v112
        input Real arg_K112;
        input Real arg_V112;
        input Real arg_A3_2;
        input Real arg_Kin_2;

        output Real result;
        algorithm
            result := ((arg_V112 * arg_A3_2 * arg_Kin_2) / (arg_K112 + arg_Kin_2));
    end elmt_function_4_v112;

    function elmt_function_4_v032
        input Real arg_Vn;
        input Real arg_p32;
        input Real arg_PreFOSmRNA;

        output Real result;
        algorithm
            result := (arg_p32 * arg_Vn * arg_PreFOSmRNA);
    end elmt_function_4_v032;

    function elmt_function_4_v110
        input Real arg_K110;
        input Real arg_V110;
        input Real arg_A3_2;

        output Real result;
        algorithm
            result := ((arg_V110 * arg_A3_2) / (arg_K110 + arg_A3_2));
    end elmt_function_4_v110;

    function elmt_function_4_v030
        input Real arg_K30;
        input Real arg_V30;
        input Real arg_pElk1_n;

        output Real result;
        algorithm
            result := ((arg_V30 * arg_pElk1_n) / (arg_K30 + arg_pElk1_n));
    end elmt_function_4_v030;

    function elmt_function_4_v031
        input Real arg_K31;
        input Real arg_KF31;
        input Real arg_V31;
        input Real arg_n31;
        input Real arg_nF31;
        input Real arg_Fn;
        input Real arg_pCREB_n;
        input Real arg_pElk1_n;

        output Real result;
        algorithm
            result := ((arg_V31 * Functions.pow((arg_pCREB_n * arg_pElk1_n), arg_n31)) / (Functions.pow(arg_K31, arg_n31) + Functions.pow((arg_pCREB_n * arg_pElk1_n), arg_n31) + Functions.pow((arg_Fn / arg_KF31), arg_nF31)));
    end elmt_function_4_v031;

    function elmt_function_4_v115
        input Real arg_K115;
        input Real arg_V115;
        input Real arg_MEKc;

        output Real result;
        algorithm
            result := ((arg_V115 * arg_MEKc) / (arg_K115 + arg_MEKc));
    end elmt_function_4_v115;

    function elmt_function_4_v040
        input Real arg_KexFOS;
        input Real arg_KimFOS;
        input Real arg_Vc;
        input Real arg_Vn;
        input Real arg_c_FOS_c;
        input Real arg_FOSn;

        output Real result;
        algorithm
            result := ((arg_KimFOS * arg_Vc * arg_c_FOS_c) - (arg_KexFOS * arg_Vn * arg_FOSn));
    end elmt_function_4_v040;

    function elmt_function_4_v003
        input Real arg_K3;
        input Real arg_K4;
        input Real arg_V3;
        input Real arg_pERK_c;
        input Real arg_ppERK_c;

        output Real result;
        algorithm
            result := ((arg_V3 * arg_pERK_c) / ((arg_K3 * (1.0 + (arg_ppERK_c / arg_K4))) + arg_pERK_c));
    end elmt_function_4_v003;

    function elmt_function_4_v004
        input Real arg_K3;
        input Real arg_K4;
        input Real arg_V4;
        input Real arg_pERK_c;
        input Real arg_ppERK_c;

        output Real result;
        algorithm
            result := ((arg_V4 * arg_ppERK_c) / ((arg_K4 * (1.0 + (arg_pERK_c / arg_K3))) + arg_ppERK_c));
    end elmt_function_4_v004;

    function elmt_function_4_v001
        input Real arg_Fct;
        input Real arg_K1;
        input Real arg_K2;
        input Real arg_V1;
        input Real arg_ERK_c;
        input Real arg_pERK_c;
        input Real arg_MEKc;

        output Real result;
        algorithm
            result := ((arg_V1 * arg_Fct * arg_MEKc * arg_ERK_c) / ((arg_K1 * (1.0 + (arg_pERK_c / arg_K2))) + arg_ERK_c));
    end elmt_function_4_v001;

    function elmt_function_4_v002
        input Real arg_Fct;
        input Real arg_K1;
        input Real arg_K2;
        input Real arg_V2;
        input Real arg_ERK_c;
        input Real arg_pERK_c;
        input Real arg_MEKc;

        output Real result;
        algorithm
            result := ((arg_V2 * arg_Fct * arg_MEKc * arg_pERK_c) / ((arg_K2 * (1.0 + (arg_ERK_c / arg_K1))) + arg_pERK_c));
    end elmt_function_4_v002;

    function elmt_function_4_v043
        input Real arg_K43;
        input Real arg_V43;
        input Real arg_FOSn;
        input Real arg_pRSK_n;

        output Real result;
        algorithm
            result := ((arg_V43 * arg_pRSK_n * arg_FOSn) / (arg_K43 + arg_FOSn));
    end elmt_function_4_v043;

    function elmt_function_4_v044
        input Real arg_K44;
        input Real arg_V44;
        input Real arg_FOSn_2;

        output Real result;
        algorithm
            result := ((arg_V44 * arg_FOSn_2) / (arg_K44 + arg_FOSn_2));
    end elmt_function_4_v044;

    function elmt_function_4_v041
        input Real arg_KexFOSP;
        input Real arg_KimFOSP;
        input Real arg_Vc;
        input Real arg_Vn;
        input Real arg_pc_FOS_c;
        input Real arg_FOSn_2;

        output Real result;
        algorithm
            result := ((arg_KimFOSP * arg_Vc * arg_pc_FOS_c) - (arg_KexFOSP * arg_Vn * arg_FOSn_2));
    end elmt_function_4_v041;

    function elmt_function_4_v042
        input Real arg_K42;
        input Real arg_V42;
        input Real arg_ppERK_n;
        input Real arg_FOSn;

        output Real result;
        algorithm
            result := ((arg_V42 * arg_ppERK_n * arg_FOSn) / (arg_K42 + arg_FOSn));
    end elmt_function_4_v042;

    function elmt_function_4_v009
        input Real arg_KexERKPP;
        input Real arg_KimERKPP;
        input Real arg_Vc;
        input Real arg_Vn;
        input Real arg_ppERK_c;
        input Real arg_ppERK_n;

        output Real result;
        algorithm
            result := ((arg_KimERKPP * arg_Vc * arg_ppERK_c) - (arg_KexERKPP * arg_Vn * arg_ppERK_n));
    end elmt_function_4_v009;

    function elmt_function_4_v007
        input Real arg_KexERK;
        input Real arg_KimERK;
        input Real arg_Vc;
        input Real arg_Vn;
        input Real arg_ERK_c;
        input Real arg_ERK_n;

        output Real result;
        algorithm
            result := ((arg_KimERK * arg_Vc * arg_ERK_c) - (arg_KexERK * arg_Vn * arg_ERK_n));
    end elmt_function_4_v007;

    function elmt_function_4_v008
        input Real arg_KexERKP;
        input Real arg_KimERKP;
        input Real arg_Vc;
        input Real arg_Vn;
        input Real arg_pERK_c;
        input Real arg_pERK_n;

        output Real result;
        algorithm
            result := ((arg_KimERKP * arg_Vc * arg_pERK_c) - (arg_KexERKP * arg_Vn * arg_pERK_n));
    end elmt_function_4_v008;

    function elmt_function_4_v005
        input Real arg_K5;
        input Real arg_K6;
        input Real arg_V5;
        input Real arg_pERK_n;
        input Real arg_ppERK_n;

        output Real result;
        algorithm
            result := ((arg_V5 * arg_pERK_n) / ((arg_K5 * (1.0 + (arg_ppERK_n / arg_K6))) + arg_pERK_n));
    end elmt_function_4_v005;

    function elmt_function_4_v006
        input Real arg_K5;
        input Real arg_K6;
        input Real arg_V6;
        input Real arg_pERK_n;
        input Real arg_ppERK_n;

        output Real result;
        algorithm
            result := ((arg_V6 * arg_ppERK_n) / ((arg_K6 * (1.0 + (arg_pERK_n / arg_K5))) + arg_ppERK_n));
    end elmt_function_4_v006;

    function elmt_function_4_v014
        input Real arg_K14;
        input Real arg_V14;
        input Real arg_ppERK_c;
        input Real arg_DUSP_c;

        output Real result;
        algorithm
            result := ((arg_V14 * arg_ppERK_c * arg_DUSP_c) / (arg_K14 + arg_DUSP_c));
    end elmt_function_4_v014;

    function elmt_function_4_v058
        input Real arg_Vn;
        input Real arg_p58;
        input Real arg_PreFmRNA;

        output Real result;
        algorithm
            result := (arg_p58 * arg_Vn * arg_PreFmRNA);
    end elmt_function_4_v058;

    function elmt_function_4_v015
        input Real arg_K15;
        input Real arg_V15;
        input Real arg_pDUSP_c;

        output Real result;
        algorithm
            result := ((arg_V15 * arg_pDUSP_c) / (arg_K15 + arg_pDUSP_c));
    end elmt_function_4_v015;

    function elmt_function_4_v013
        input Real arg_p13;
        input Real arg_DUSPmRNA;

        output Real result;
        algorithm
            result := (arg_p13 * arg_DUSPmRNA);
    end elmt_function_4_v013;

    function elmt_function_4_v057
        input Real arg_K57;
        input Real arg_V57;
        input Real arg_n57;
        input Real arg_FOSn_2;

        output Real result;
        algorithm
            result := ((arg_V57 * Functions.pow(arg_FOSn_2, arg_n57)) / (Functions.pow(arg_K57, arg_n57) + Functions.pow(arg_FOSn_2, arg_n57)));
    end elmt_function_4_v057;

    function elmt_function_4_v010
        input Real arg_K10;
        input Real arg_V10;
        input Real arg_n10;
        input Real arg_ppERK_n;

        output Real result;
        algorithm
            result := ((arg_V10 * Functions.pow(arg_ppERK_n, arg_n10)) / (Functions.pow(arg_K10, arg_n10) + Functions.pow(arg_ppERK_n, arg_n10)));
    end elmt_function_4_v010;

    function elmt_function_4_v011
        input Real arg_Vn;
        input Real arg_p11;
        input Real arg_PreDUSPmRNA;

        output Real result;
        algorithm
            result := (arg_p11 * arg_Vn * arg_PreDUSPmRNA);
    end elmt_function_4_v011;

    function elmt_function_4_v018
        input Real arg_KexDUSP;
        input Real arg_KimDUSP;
        input Real arg_Vc;
        input Real arg_Vn;
        input Real arg_DUSP_n;
        input Real arg_DUSP_c;

        output Real result;
        algorithm
            result := ((arg_KimDUSP * arg_Vc * arg_DUSP_c) - (arg_KexDUSP * arg_Vn * arg_DUSP_n));
    end elmt_function_4_v018;

    function elmt_function_4_v019
        input Real arg_KexDUSPP;
        input Real arg_KimDUSPP;
        input Real arg_Vc;
        input Real arg_Vn;
        input Real arg_pDUSP_c;
        input Real arg_pDUSP_n;

        output Real result;
        algorithm
            result := ((arg_KimDUSPP * arg_Vc * arg_pDUSP_c) - (arg_KexDUSPP * arg_Vn * arg_pDUSP_n));
    end elmt_function_4_v019;

    function elmt_function_4_v062
        input Real arg_KexF;
        input Real arg_KimF;
        input Real arg_Vc;
        input Real arg_Vn;
        input Real arg_F;
        input Real arg_Fn;

        output Real result;
        algorithm
            result := ((arg_KimF * arg_Vc * arg_F) - (arg_KexF * arg_Vn * arg_Fn));
    end elmt_function_4_v062;

    function elmt_function_4_v060
        input Real arg_p60;
        input Real arg_FmRNA;

        output Real result;
        algorithm
            result := (arg_p60 * arg_FmRNA);
    end elmt_function_4_v060;

    function elmt_function_4_v025
        input Real arg_K25;
        input Real arg_V25;
        input Real arg_pRSK_c;

        output Real result;
        algorithm
            result := ((arg_V25 * arg_pRSK_c) / (arg_K25 + arg_pRSK_c));
    end elmt_function_4_v025;

    function elmt_function_4_v102
        input Real arg_K102;
        input Real arg_V102;
        input Real arg_A1_2;

        output Real result;
        algorithm
            result := ((arg_V102 * arg_A1_2) / (arg_K102 + arg_A1_2));
    end elmt_function_4_v102;

    function elmt_function_4_v026
        input Real arg_KexRSKP;
        input Real arg_KimRSKP;
        input Real arg_Vc;
        input Real arg_Vn;
        input Real arg_pRSK_n;
        input Real arg_pRSK_c;

        output Real result;
        algorithm
            result := ((arg_KimRSKP * arg_Vc * arg_pRSK_c) - (arg_KexRSKP * arg_Vn * arg_pRSK_n));
    end elmt_function_4_v026;

    function elmt_function_4_v103
        input Real arg_K103;
        input Real arg_V103;
        input Real arg_A2;
        input Real arg_HRG;

        output Real result;
        algorithm
            result := ((arg_V103 * arg_HRG * arg_A2) / (arg_K103 + arg_A2));
    end elmt_function_4_v103;

    function elmt_function_4_v024
        input Real arg_K24;
        input Real arg_V24;
        input Real arg_ppERK_c;
        input Real arg_RSK_c;

        output Real result;
        algorithm
            result := ((arg_V24 * arg_ppERK_c * arg_RSK_c) / (arg_K24 + arg_RSK_c));
    end elmt_function_4_v024;

    function elmt_function_4_v101
        input Real arg_K101;
        input Real arg_V101;
        input Real arg_A1;
        input Real arg_EGF;

        output Real result;
        algorithm
            result := ((arg_V101 * arg_EGF * arg_A1) / (arg_K101 + arg_A1));
    end elmt_function_4_v101;

    function elmt_function_4_v021
        input Real arg_K21;
        input Real arg_V21;
        input Real arg_pDUSP_n;

        output Real result;
        algorithm
            result := ((arg_V21 * arg_pDUSP_n) / (arg_K21 + arg_pDUSP_n));
    end elmt_function_4_v021;

    function elmt_function_4_v063
        input Real arg_cytoplasm;
        input Real arg_nucleus;
        input Real arg_p63;
        input Real arg_Fn;

        output Real result;
        algorithm
            result := ((arg_cytoplasm * arg_p63 * arg_Fn) / arg_nucleus);
    end elmt_function_4_v063;

    function elmt_function_4_v020
        input Real arg_K20;
        input Real arg_V20;
        input Real arg_ppERK_n;
        input Real arg_DUSP_n;

        output Real result;
        algorithm
            result := ((arg_V20 * arg_ppERK_n * arg_DUSP_n) / (arg_K20 + arg_DUSP_n));
    end elmt_function_4_v020;


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
