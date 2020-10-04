within BIOMD481;
class Functions

    function elmt_function_22
        input Real arg_Foll;
        input Real arg_LH_Bld;
        input Real arg_P4;
        input Real arg_default;
        input Real arg_par45;
        input Real arg_par46;
        input Real arg_par47;
        input Real arg_par48;

        output Real result;
        algorithm
            result := (((((arg_par45 * Functions.pow((arg_P4 * arg_default), 5.0)) / (Functions.pow((arg_P4 * arg_default), 5.0) + Functions.pow(arg_par46, 5.0))) + ((arg_par47 * Functions.pow((arg_LH_Bld * arg_default), 2.0)) / (Functions.pow((arg_LH_Bld * arg_default), 2.0) + Functions.pow(arg_par48, 2.0)))) * arg_Foll * arg_default) / arg_default);
    end elmt_function_22;

    function elmt_function_23
        input Real arg_CL;
        input Real arg_IOF;
        input Real arg_default;
        input Real arg_par65;
        input Real arg_par66;

        output Real result;
        algorithm
            result := ((((arg_par65 * Functions.pow((arg_IOF * arg_default), 5.0)) / (Functions.pow((arg_IOF * arg_default), 5.0) + Functions.pow(arg_par66, 5.0))) * arg_CL * arg_default) / arg_default);
    end elmt_function_23;

    function elmt_function_20
        input Real arg_PGF;
        input Real arg_default;
        input Real arg_par59;

        output Real result;
        algorithm
            result := ((arg_par59 * arg_PGF * arg_default) / arg_default);
    end elmt_function_20;

    function elmt_function_21
        input Real arg_IOF;
        input Real arg_default;
        input Real arg_par98;

        output Real result;
        algorithm
            result := ((arg_par98 * arg_IOF * arg_default) / arg_default);
    end elmt_function_21;

    function elmt_function_26
        input Real arg_E2;
        input Real arg_GnRH_Hyp;
        input Real arg_P4;
        input Real arg_default;
        input Real arg_par3;
        input Real arg_par4;
        input Real arg_par5;
        input Real arg_par6;
        input Real arg_par7;
        input Real arg_par8;
        input Real arg_par9;

        output Real result;
        algorithm
            result := ((((arg_par8 * Functions.pow((arg_E2 * arg_default), 5.0)) / (Functions.pow((arg_E2 * arg_default), 5.0) + Functions.pow(arg_par9, 5.0))) * ((arg_par3 * (((Functions.pow(arg_par5, 2.0) / (Functions.pow(arg_par5, 2.0) + Functions.pow((arg_P4 * arg_default), 2.0))) + (Functions.pow(arg_par4, 2.0) / (Functions.pow(arg_par4, 2.0) + Functions.pow((arg_E2 * arg_default), 2.0)))) - (((Functions.pow(arg_par5, 2.0) / (Functions.pow(arg_par5, 2.0) + Functions.pow((arg_P4 * arg_default), 2.0))) * Functions.pow(arg_par4, 2.0)) / (Functions.pow(arg_par4, 2.0) + Functions.pow((arg_E2 * arg_default), 2.0))))) + ((arg_par6 * Functions.pow(arg_par7, 2.0)) / (Functions.pow((arg_P4 * arg_default), 2.0) + Functions.pow(arg_par7, 2.0)))) * arg_GnRH_Hyp * arg_default) / arg_default);
    end elmt_function_26;

    function elmt_function_27
        input Real arg_FSH_Bld;
        input Real arg_Foll;
        input Real arg_default;
        input Real arg_par41;
        input Real arg_par42;
        input Real arg_par43;

        output Real result;
        algorithm
            result := (((arg_par41 * Functions.pow((arg_FSH_Bld * arg_default), 2.0)) / (Functions.pow(((arg_par42 * Functions.pow(arg_par43, 2.0)) / (Functions.pow(arg_par43, 2.0) + Functions.pow((arg_Foll * arg_default), 2.0))), 2.0) + Functions.pow((arg_FSH_Bld * arg_default), 2.0))) / arg_default);
    end elmt_function_27;

    function elmt_function_24
        input Real arg_E2;
        input Real arg_P4;
        input Real arg_default;
        input Real arg_par31;
        input Real arg_par32;
        input Real arg_par33;
        input Real arg_par34;

        output Real result;
        algorithm
            result := ((((arg_par31 * Functions.pow((arg_E2 * arg_default), 2.0)) / (Functions.pow((arg_E2 * arg_default), 2.0) + Functions.pow(arg_par32, 2.0))) + ((arg_par33 * Functions.pow(arg_par34, 2.0)) / (Functions.pow(arg_par34, 2.0) + Functions.pow((arg_P4 * arg_default), 2.0)))) / arg_default);
    end elmt_function_24;

    function elmt_function_25
        input Real arg_Inh;
        input Real arg_default;
        input Real arg_par21;
        input Real arg_par22;

        output Real result;
        algorithm
            result := (((arg_par21 * Functions.pow(arg_par22, 5.0)) / (Functions.pow(arg_par22, 5.0) + Functions.pow((arg_Inh * arg_default), 5.0))) / arg_default);
    end elmt_function_25;

    function elmt_function_28
        input Real arg_CL;
        input Real arg_PGF;
        input Real arg_default;
        input Real arg_par95;
        input Real arg_par96;
        input Real arg_par97;

        output Real result;
        algorithm
            result := (((((arg_par95 * Functions.pow((arg_PGF * arg_default), 5.0)) / (Functions.pow((arg_PGF * arg_default), 5.0) + Functions.pow(arg_par96, 5.0))) * Functions.pow((arg_CL * arg_default), 10.0)) / (Functions.pow((arg_CL * arg_default), 10.0) + Functions.pow(arg_par97, 10.0))) / arg_default);
    end elmt_function_28;

    function elmt_function_1
        input Real arg_GnRH_Pit;
        input Real arg_LH_Pit;
        input Real arg_default;
        input Real arg_par35;
        input Real arg_par36;
        input Real arg_par37;

        output Real result;
        algorithm
            result := (((arg_par37 + ((arg_par35 * Functions.pow((arg_GnRH_Pit * arg_default), 5.0)) / (Functions.pow((arg_GnRH_Pit * arg_default), 5.0) + Functions.pow(arg_par36, 5.0)))) * arg_LH_Pit * arg_default) / arg_default);
    end elmt_function_1;

    function elmt_function_4
        input Real arg_CL;
        input Real arg_Foll;
        input Real arg_LH_Bld;
        input Real arg_default;
        input Real arg_par47;
        input Real arg_par48;
        input Real arg_par62;
        input Real arg_par63;
        input Real arg_par64;

        output Real result;
        algorithm
            result := (((((arg_par62 * arg_par47 * Functions.pow((arg_LH_Bld * arg_default), 2.0)) / (Functions.pow((arg_LH_Bld * arg_default), 2.0) + Functions.pow(arg_par48, 2.0))) * arg_Foll * arg_default) + ((arg_par63 * Functions.pow((arg_CL * arg_default), 2.0)) / (Functions.pow((arg_CL * arg_default), 2.0) + Functions.pow(arg_par64, 2.0)))) / arg_default);
    end elmt_function_4;

    function elmt_function_5
        input Real arg_GnRH_Hyp;
        input Real arg_default;
        input Real arg_par1;
        input Real arg_par2;

        output Real result;
        algorithm
            result := ((arg_par2 * (1.0 - ((arg_GnRH_Hyp * arg_default) / arg_par1))) / arg_default);
    end elmt_function_5;

    function elmt_function_2
        input Real arg_E2;
        input Real arg_FSH_Pit;
        input Real arg_GnRH_Pit;
        input Real arg_P4;
        input Real arg_default;
        input Real arg_par23;
        input Real arg_par24;
        input Real arg_par25;
        input Real arg_par26;
        input Real arg_par27;
        input Real arg_par28;
        input Real arg_par30;

        output Real result;
        algorithm
            result := (((arg_par30 + ((arg_par23 * Functions.pow((arg_P4 * arg_default), 2.0)) / (Functions.pow((arg_P4 * arg_default), 2.0) + Functions.pow(arg_par24, 2.0))) + ((arg_par25 * Functions.pow(arg_par26, 2.0)) / (Functions.pow((arg_E2 * arg_default), 2.0) + Functions.pow(arg_par26, 2.0))) + ((arg_par27 * arg_GnRH_Pit * arg_default) / (arg_par28 + (arg_GnRH_Pit * arg_default)))) * arg_FSH_Pit * arg_default) / arg_default);
    end elmt_function_2;

    function elmt_function_3
        input Real arg_E2;
        input Real arg_GnRH_Hyp;
        input Real arg_P4;
        input Real arg_default;
        input Real arg_par3;
        input Real arg_par4;
        input Real arg_par5;
        input Real arg_par6;
        input Real arg_par7;

        output Real result;
        algorithm
            result := ((((arg_par3 * (((Functions.pow(arg_par5, 2.0) / (Functions.pow(arg_par5, 2.0) + Functions.pow((arg_P4 * arg_default), 2.0))) + (Functions.pow(arg_par4, 2.0) / (Functions.pow(arg_par4, 2.0) + Functions.pow((arg_E2 * arg_default), 2.0)))) - (((Functions.pow(arg_par5, 2.0) / (Functions.pow(arg_par5, 2.0) + Functions.pow((arg_P4 * arg_default), 2.0))) * Functions.pow(arg_par4, 2.0)) / (Functions.pow(arg_par4, 2.0) + Functions.pow((arg_E2 * arg_default), 2.0))))) + ((arg_par6 * Functions.pow(arg_par7, 2.0)) / (Functions.pow((arg_P4 * arg_default), 2.0) + Functions.pow(arg_par7, 2.0)))) * arg_GnRH_Hyp * arg_default) / arg_default);
    end elmt_function_3;

    function elmt_function_11
        input Real arg_Enz;
        input Real arg_OT;
        input Real arg_default;
        input Real arg_par56;
        input Real arg_par57;
        input Real arg_par58;

        output Real result;
        algorithm
            result := (((((arg_par56 * Functions.pow(arg_Enz, 5.0)) / (Functions.pow(arg_Enz, 5.0) + Functions.pow(arg_par57, 5.0))) * Functions.pow((arg_OT * arg_default), 2.0)) / (Functions.pow((arg_OT * arg_default), 2.0) + Functions.pow(arg_par58, 2.0))) / arg_default);
    end elmt_function_11;

    function elmt_function_12
        input Real arg_GnRH_Pit;
        input Real arg_default;
        input Real arg_par10;

        output Real result;
        algorithm
            result := ((arg_par10 * arg_GnRH_Pit * arg_default) / arg_default);
    end elmt_function_12;

    function elmt_function_10
        input Real arg_P4;
        input Real arg_default;
        input Real arg_par86;
        input Real arg_par87;

        output Real result;
        algorithm
            result := (((arg_par86 * Functions.pow((arg_P4 * arg_default), 5.0)) / (Functions.pow((arg_P4 * arg_default), 5.0) + Functions.pow(arg_par87, 5.0))) / arg_default);
    end elmt_function_10;

    function elmt_function_8
        input Real arg_Foll;
        input Real arg_default;
        input Real arg_par81;

        output Real result;
        algorithm
            result := ((arg_par81 * Functions.pow((arg_Foll * arg_default), 2.0)) / arg_default);
    end elmt_function_8;

    function elmt_function_15
        input Real arg_P4;
        input Real arg_default;
        input Real arg_par72;

        output Real result;
        algorithm
            result := ((arg_par72 * arg_P4 * arg_default) / arg_default);
    end elmt_function_15;

    function elmt_function_9
        input Real arg_CL;
        input Real arg_E2;
        input Real arg_default;
        input Real arg_par91;
        input Real arg_par92;

        output Real result;
        algorithm
            result := ((((arg_par91 * Functions.pow((arg_E2 * arg_default), 2.0)) / (Functions.pow((arg_E2 * arg_default), 2.0) + Functions.pow(arg_par92, 2.0))) * Functions.pow((arg_CL * arg_default), 2.0)) / arg_default);
    end elmt_function_9;

    function elmt_function_16
        input Real arg_E2;
        input Real arg_default;
        input Real arg_par77;

        output Real result;
        algorithm
            result := ((arg_par77 * arg_E2 * arg_default) / arg_default);
    end elmt_function_16;

    function elmt_function_6
        input Real arg_Foll;
        input Real arg_default;
        input Real arg_par76;

        output Real result;
        algorithm
            result := ((arg_par76 * Functions.pow((arg_Foll * arg_default), 2.0)) / arg_default);
    end elmt_function_6;

    function elmt_function_13
        input Real arg_LH_Bld;
        input Real arg_default;
        input Real arg_par38;

        output Real result;
        algorithm
            result := ((arg_par38 * arg_LH_Bld * arg_default) / arg_default);
    end elmt_function_13;

    function elmt_function_7
        input Real arg_CL;
        input Real arg_default;
        input Real arg_par71;

        output Real result;
        algorithm
            result := ((arg_par71 * Functions.pow((arg_CL * arg_default), 2.0)) / arg_default);
    end elmt_function_7;

    function elmt_function_14
        input Real arg_FSH_Bld;
        input Real arg_default;
        input Real arg_par29;

        output Real result;
        algorithm
            result := ((arg_par29 * arg_FSH_Bld * arg_default) / arg_default);
    end elmt_function_14;

    function elmt_function_19
        input Real arg_Enz;
        input Real arg_default;
        input Real arg_par89;

        output Real result;
        algorithm
            result := ((arg_par89 * arg_Enz) / arg_default);
    end elmt_function_19;

    function elmt_function_17
        input Real arg_Inh;
        input Real arg_default;
        input Real arg_par82;

        output Real result;
        algorithm
            result := ((arg_par82 * arg_Inh * arg_default) / arg_default);
    end elmt_function_17;

    function elmt_function_18
        input Real arg_OT;
        input Real arg_default;
        input Real arg_par94;

        output Real result;
        algorithm
            result := ((arg_par94 * arg_OT * arg_default) / arg_default);
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
