within BIOMD640;
class Functions

    function elmt_function_22
        input Real arg_PI3K_p_PDK1;
        input Real arg_p70_S6K_T229_phos_by_PI3K_p_PDK1_second;
        input Real arg_p70_S6K_pT389;

        output Real result;
        algorithm
            result := (arg_p70_S6K_T229_phos_by_PI3K_p_PDK1_second * arg_p70_S6K_pT389 * arg_PI3K_p_PDK1);
    end elmt_function_22;

    function elmt_function_23
        input Real arg_mTORC1_pS2448;
        input Real arg_p70_S6K_T389_phos_by_mTORC1_pS2448_second;
        input Real arg_p70_S6K_pT229;

        output Real result;
        algorithm
            result := (arg_p70_S6K_T389_phos_by_mTORC1_pS2448_second * arg_p70_S6K_pT229 * arg_mTORC1_pS2448);
    end elmt_function_23;

    function elmt_function_20
        input Real arg_PI3K_p_PDK1;
        input Real arg_p70_S6K;
        input Real arg_p70_S6K_T229_phos_by_PI3K_p_PDK1_first;

        output Real result;
        algorithm
            result := (arg_p70_S6K_T229_phos_by_PI3K_p_PDK1_first * arg_p70_S6K * arg_PI3K_p_PDK1);
    end elmt_function_20;

    function elmt_function_21
        input Real arg_mTORC1_pS2448;
        input Real arg_p70_S6K;
        input Real arg_p70_S6K_T389_phos_by_mTORC1_pS2448_first;

        output Real result;
        algorithm
            result := (arg_p70_S6K_T389_phos_by_mTORC1_pS2448_first * arg_p70_S6K * arg_mTORC1_pS2448);
    end elmt_function_21;

    function elmt_function_26
        input Real arg_Akt_pT308;
        input Real arg_Akt_pT308_pS473;
        input Real arg_PRAS40_T246_phos_by_Akt_pT308_second;
        input Real arg_PRAS40_pS183;

        output Real result;
        algorithm
            result := (arg_PRAS40_T246_phos_by_Akt_pT308_second * arg_PRAS40_pS183 * (arg_Akt_pT308 + arg_Akt_pT308_pS473));
    end elmt_function_26;

    function elmt_function_27
        input Real arg_PRAS40_S183_phos_by_mTORC1_pS2448_second;
        input Real arg_PRAS40_pT246;
        input Real arg_mTORC1_pS2448;

        output Real result;
        algorithm
            result := (arg_PRAS40_S183_phos_by_mTORC1_pS2448_second * arg_PRAS40_pT246 * arg_mTORC1_pS2448);
    end elmt_function_27;

    function elmt_function_24
        input Real arg_PRAS40;
        input Real arg_PRAS40_S183_phos_by_mTORC1_pS2448_first;
        input Real arg_mTORC1_pS2448;

        output Real result;
        algorithm
            result := (arg_PRAS40_S183_phos_by_mTORC1_pS2448_first * arg_PRAS40 * arg_mTORC1_pS2448);
    end elmt_function_24;

    function elmt_function_25
        input Real arg_Akt_pT308;
        input Real arg_Akt_pT308_pS473;
        input Real arg_PRAS40;
        input Real arg_PRAS40_T246_phos_by_Akt_pT308_first;

        output Real result;
        algorithm
            result := (arg_PRAS40_T246_phos_by_Akt_pT308_first * arg_PRAS40 * (arg_Akt_pT308 + arg_Akt_pT308_pS473));
    end elmt_function_25;

    function elmt_function_1
        input Real arg_Amino_Acids;
        input Real arg_IRS;
        input Real arg_IRS_phos_by_Amino_Acids;

        output Real result;
        algorithm
            result := (arg_IRS_phos_by_Amino_Acids * arg_IRS * arg_Amino_Acids);
    end elmt_function_1;

    function elmt_function_4
        input Real arg_IR_beta;
        input Real arg_IR_beta_phos_by_Insulin;
        input Real arg_Insulin;

        output Real result;
        algorithm
            result := (arg_IR_beta_phos_by_Insulin * arg_IR_beta * arg_Insulin);
    end elmt_function_4;

    function elmt_function_5
        input Real arg_IRS;
        input Real arg_IRS_phos_by_IR_beta_pY1146;
        input Real arg_IR_beta_pY1146;

        output Real result;
        algorithm
            result := (arg_IRS_phos_by_IR_beta_pY1146 * arg_IRS * arg_IR_beta_pY1146);
    end elmt_function_5;

    function elmt_function_2
        input Real arg_AMPK;
        input Real arg_AMPK_T172_phos_by_Amino_Acids;
        input Real arg_Amino_Acids;

        output Real result;
        algorithm
            result := (arg_AMPK_T172_phos_by_Amino_Acids * arg_AMPK * arg_Amino_Acids);
    end elmt_function_2;

    function elmt_function_3
        input Real arg_Amino_Acids;
        input Real arg_mTORC2;
        input Real arg_mTORC2_S2481_phos_by_Amino_Acids;

        output Real result;
        algorithm
            result := (arg_mTORC2_S2481_phos_by_Amino_Acids * arg_mTORC2 * arg_Amino_Acids);
    end elmt_function_3;

    function elmt_function_11
        input Real arg_Akt;
        input Real arg_Akt_T308_phos_by_PI3K_p_PDK1_first;
        input Real arg_PI3K_p_PDK1;

        output Real result;
        algorithm
            result := (arg_Akt_T308_phos_by_PI3K_p_PDK1_first * arg_Akt * arg_PI3K_p_PDK1);
    end elmt_function_11;

    function elmt_function_12
        input Real arg_Akt;
        input Real arg_Akt_S473_phos_by_mTORC2_pS2481_first;
        input Real arg_mTORC2_pS2481;

        output Real result;
        algorithm
            result := (arg_Akt_S473_phos_by_mTORC2_pS2481_first * arg_Akt * arg_mTORC2_pS2481);
    end elmt_function_12;

    function elmt_function_10
        input Real arg_AMPK;
        input Real arg_AMPK_T172_phos;
        input Real arg_IRS_p;

        output Real result;
        algorithm
            result := (arg_AMPK_T172_phos * arg_AMPK * arg_IRS_p);
    end elmt_function_10;

    function elmt_function_15
        input Real arg_AMPK_pT172;
        input Real arg_TSC1_TSC2;
        input Real arg_TSC1_TSC2_S1387_phos_by_AMPK_pT172;

        output Real result;
        algorithm
            result := (arg_TSC1_TSC2_S1387_phos_by_AMPK_pT172 * arg_TSC1_TSC2 * arg_AMPK_pT172);
    end elmt_function_15;

    function elmt_function_8
        input Real arg_IRS_p;
        input Real arg_PI3K_PDK1;
        input Real arg_PI3K_PDK1_phos_by_IRS_p;

        output Real result;
        algorithm
            result := (arg_PI3K_PDK1_phos_by_IRS_p * arg_PI3K_PDK1 * arg_IRS_p);
    end elmt_function_8;

    function elmt_function_16
        input Real arg_Akt_pT308;
        input Real arg_Akt_pT308_pS473;
        input Real arg_TSC1_TSC2;
        input Real arg_TSC1_TSC2_T1462_phos_by_Akt_pT308;

        output Real result;
        algorithm
            result := (arg_TSC1_TSC2_T1462_phos_by_Akt_pT308 * arg_TSC1_TSC2 * (arg_Akt_pT308 + arg_Akt_pT308_pS473));
    end elmt_function_16;

    function elmt_function_9
        input Real arg_IR_beta_pY1146;
        input Real arg_PI3K_variant;
        input Real arg_PI3K_variant_phos_by_IR_beta_pY1146;

        output Real result;
        algorithm
            result := (arg_PI3K_variant_phos_by_IR_beta_pY1146 * arg_PI3K_variant * arg_IR_beta_pY1146);
    end elmt_function_9;

    function elmt_function_6
        input Real arg_IRS_p;
        input Real arg_IRS_p_phos_by_p70_S6K_pT229_pT389;
        input Real arg_p70_S6K_pT229_pT389;

        output Real result;
        algorithm
            result := (arg_IRS_p_phos_by_p70_S6K_pT229_pT389 * arg_IRS_p * arg_p70_S6K_pT229_pT389);
    end elmt_function_6;

    function elmt_function_13
        input Real arg_Akt_T308_phos_by_PI3K_p_PDK1_second;
        input Real arg_Akt_pS473;
        input Real arg_PI3K_p_PDK1;

        output Real result;
        algorithm
            result := (arg_Akt_T308_phos_by_PI3K_p_PDK1_second * arg_Akt_pS473 * arg_PI3K_p_PDK1);
    end elmt_function_13;

    function elmt_function_14
        input Real arg_Akt_S473_phos_by_mTORC2_pS2481_second;
        input Real arg_Akt_pT308;
        input Real arg_mTORC2_pS2481;

        output Real result;
        algorithm
            result := (arg_Akt_S473_phos_by_mTORC2_pS2481_second * arg_Akt_pT308 * arg_mTORC2_pS2481);
    end elmt_function_14;

    function elmt_function_7
        input Real arg_IRS;
        input Real arg_IRS_phos_by_p70_S6K_pT229_pT389;
        input Real arg_p70_S6K_pT229_pT389;

        output Real result;
        algorithm
            result := (arg_IRS_phos_by_p70_S6K_pT229_pT389 * arg_IRS * arg_p70_S6K_pT229_pT389);
    end elmt_function_7;

    function elmt_function_19
        input Real arg_PI3K_variant_p;
        input Real arg_mTORC2;
        input Real arg_mTORC2_S2481_phos_by_PI3K_variant_p;

        output Real result;
        algorithm
            result := (arg_mTORC2_S2481_phos_by_PI3K_variant_p * arg_mTORC2 * arg_PI3K_variant_p);
    end elmt_function_19;

    function elmt_function_17
        input Real arg_TSC1_TSC2;
        input Real arg_TSC1_TSC2_pS1387;
        input Real arg_mTORC1_pS2448;
        input Real arg_mTORC1_pS2448_dephos_by_TSC1_TSC2;

        output Real result;
        algorithm
            result := (arg_mTORC1_pS2448_dephos_by_TSC1_TSC2 * arg_mTORC1_pS2448 * (arg_TSC1_TSC2 + arg_TSC1_TSC2_pS1387));
    end elmt_function_17;

    function elmt_function_18
        input Real arg_Amino_Acids;
        input Real arg_mTORC1;
        input Real arg_mTORC1_S2448_activation_by_Amino_Acids;

        output Real result;
        algorithm
            result := (arg_mTORC1_S2448_activation_by_Amino_Acids * arg_mTORC1 * arg_Amino_Acids);
    end elmt_function_18;


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
