within BIOMD590;
class Functions

    function elmt_Function_for_r1
        input Real arg_K_atp;
        input Real arg_K_bc;
        input Real arg_K_q;
        input Real arg_K_utp;
        input Real arg_atp;
        input Real arg_bc;
        input Real arg_compartment;
        input Real arg_glu;
        input Real arg_utp;
        input Real arg_vmax1;

        output Real result;
        algorithm
            result := (((arg_vmax1 * arg_bc * arg_glu * arg_atp) / ((1.0 + (arg_utp / arg_K_utp)) * (arg_K_atp + arg_atp) * (arg_K_bc + arg_bc) * (arg_K_q + arg_glu))) / arg_compartment);
    end elmt_Function_for_r1;

    function elmt_Function_for_r10
        input Real arg_K_m10;
        input Real arg_compartment;
        input Real arg_ump;
        input Real arg_vmax10;

        output Real result;
        algorithm
            result := (((arg_vmax10 * arg_ump) / (arg_K_m10 + arg_ump)) / arg_compartment);
    end elmt_Function_for_r10;

    function elmt_Function_for_omp_dilution
        input Real arg_compartment;
        input Real arg_d;
        input Real arg_omp;

        output Real result;
        algorithm
            result := ((arg_d * arg_omp) / arg_compartment);
    end elmt_Function_for_omp_dilution;

    function elmt_Function_for_r5
        input Real arg_K_m5;
        input Real arg_compartment;
        input Real arg_oro;
        input Real arg_prpp;
        input Real arg_vmax5;

        output Real result;
        algorithm
            result := (((arg_vmax5 * arg_oro * arg_prpp) / (arg_K_m5 + (arg_oro * arg_prpp))) / arg_compartment);
    end elmt_Function_for_r5;

    function elmt_Function_for_r4
        input Real arg_K_m4;
        input Real arg_compartment;
        input Real arg_dho;
        input Real arg_vmax4;

        output Real result;
        algorithm
            result := (((arg_vmax4 * arg_dho) / (arg_K_m4 + arg_dho)) / arg_compartment);
    end elmt_Function_for_r4;

    function elmt_Function_for_r3
        input Real arg_K_m3;
        input Real arg_ca;
        input Real arg_compartment;
        input Real arg_vmax3;

        output Real result;
        algorithm
            result := (((arg_vmax3 * arg_ca) / (arg_K_m3 + arg_ca)) / arg_compartment);
    end elmt_Function_for_r3;

    function elmt_Function_for_utp_degradation
        input Real arg_K_Mp;
        input Real arg_compartment;
        input Real arg_g_pyr;
        input Real arg_utp;

        output Real result;
        algorithm
            result := (((arg_g_pyr * arg_utp) / (arg_K_Mp + arg_utp)) / arg_compartment);
    end elmt_Function_for_utp_degradation;

    function elmt_Function_for_ctp_degradation
        input Real arg_K_Mp;
        input Real arg_compartment;
        input Real arg_ctp;
        input Real arg_g_pyr;

        output Real result;
        algorithm
            result := (((arg_g_pyr * arg_ctp) / (arg_K_Mp + arg_ctp)) / arg_compartment);
    end elmt_Function_for_ctp_degradation;

    function elmt_Function_for_oro_dilution
        input Real arg_compartment;
        input Real arg_d;
        input Real arg_oro;

        output Real result;
        algorithm
            result := ((arg_d * arg_oro) / arg_compartment);
    end elmt_Function_for_oro_dilution;

    function elmt_Function_for_r2
        input Real arg_K_asp;
        input Real arg_K_m2;
        input Real arg_K_utp;
        input Real arg_asp;
        input Real arg_compartment;
        input Real arg_cp;
        input Real arg_utp;
        input Real arg_vmax2;

        output Real result;
        algorithm
            result := (((arg_vmax2 * arg_cp * arg_asp) / ((1.0 + (arg_utp / arg_K_utp)) * (arg_K_m2 + arg_cp) * (arg_K_asp + arg_asp))) / arg_compartment);
    end elmt_Function_for_r2;

    function elmt_Function_for_ctp_dilution
        input Real arg_compartment;
        input Real arg_ctp;
        input Real arg_d;

        output Real result;
        algorithm
            result := ((arg_d * arg_ctp) / arg_compartment);
    end elmt_Function_for_ctp_dilution;

    function elmt_Function_for_ca_dilution
        input Real arg_ca;
        input Real arg_compartment;
        input Real arg_d;

        output Real result;
        algorithm
            result := ((arg_d * arg_ca) / arg_compartment);
    end elmt_Function_for_ca_dilution;

    function elmt_Function_for_dho_dilution
        input Real arg_compartment;
        input Real arg_d;
        input Real arg_dho;

        output Real result;
        algorithm
            result := ((arg_d * arg_dho) / arg_compartment);
    end elmt_Function_for_dho_dilution;

    function elmt_Function_for_udp_dilution
        input Real arg_compartment;
        input Real arg_d;
        input Real arg_udp;

        output Real result;
        algorithm
            result := ((arg_d * arg_udp) / arg_compartment);
    end elmt_Function_for_udp_dilution;

    function elmt_Function_for_ump_dilution
        input Real arg_compartment;
        input Real arg_d;
        input Real arg_ump;

        output Real result;
        algorithm
            result := ((arg_d * arg_ump) / arg_compartment);
    end elmt_Function_for_ump_dilution;

    function elmt_Function_for_utp_dilution
        input Real arg_compartment;
        input Real arg_d;
        input Real arg_utp;

        output Real result;
        algorithm
            result := ((arg_d * arg_utp) / arg_compartment);
    end elmt_Function_for_utp_dilution;

    function elmt_Function_for_r8
        input Real arg_K_m8;
        input Real arg_compartment;
        input Real arg_utp;
        input Real arg_vmax8;

        output Real result;
        algorithm
            result := (((arg_vmax8 * arg_utp) / (arg_K_m8 + arg_utp)) / arg_compartment);
    end elmt_Function_for_r8;

    function elmt_Function_for_r7
        input Real arg_K_m7;
        input Real arg_compartment;
        input Real arg_udp;
        input Real arg_vmax7;

        output Real result;
        algorithm
            result := (((arg_vmax7 * arg_udp) / (arg_K_m7 + arg_udp)) / arg_compartment);
    end elmt_Function_for_r7;

    function elmt_Function_for_r6
        input Real arg_K_m6;
        input Real arg_compartment;
        input Real arg_omp;
        input Real arg_vmax6;

        output Real result;
        algorithm
            result := (((arg_vmax6 * arg_omp) / (arg_K_m6 + arg_omp)) / arg_compartment);
    end elmt_Function_for_r6;

    function elmt_Function_for_cp_dilution
        input Real arg_compartment;
        input Real arg_cp;
        input Real arg_d;

        output Real result;
        algorithm
            result := ((arg_d * arg_cp) / arg_compartment);
    end elmt_Function_for_cp_dilution;


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
