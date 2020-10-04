within BIOMD627;
class Functions

    function elmt_vGLU_gn__inkl__Volume
        input Real arg_Vmax_GLU;
        input Real arg_GLU_g;
        input Real arg_K_m_GLU;
        input Real arg_ATP_g;
        input Real arg_K_m_ATP;
        input Real arg_Volume;

        output Real result;
        algorithm
            result := (arg_Vmax_GLU * (arg_GLU_g / (arg_GLU_g + arg_K_m_GLU)) * (arg_ATP_g / (arg_ATP_g + arg_K_m_ATP)) * arg_Volume);
    end elmt_vGLU_gn__inkl__Volume;

    function elmt_vGLU_eg__inkl__Volumes
        input Real arg_Vmax_GLU;
        input Real arg_GLU_e;
        input Real arg_K_m_GLU;
        input Real arg_Volume;

        output Real result;
        algorithm
            result := (arg_Vmax_GLU * (arg_GLU_e / (arg_GLU_e + arg_K_m_GLU)) * arg_Volume);
    end elmt_vGLU_eg__inkl__Volumes;

    function elmt_vHK__HS
        input Real arg_k_HK;
        input Real arg_ATP;
        input Real arg_G6P;
        input Real arg_K_I_G6P;

        output Real result;
        algorithm
            result := (arg_k_HK * arg_ATP * Functions.pow((1.0 + (arg_G6P / arg_K_I_G6P)), (- 1.0)));
    end elmt_vHK__HS;

    function elmt_vATPase
        input Real arg_VmaxATPase;
        input Real arg_ATP;
        input Real arg_Km_ATP;

        output Real result;
        algorithm
            result := (arg_VmaxATPase * (arg_ATP / (arg_ATP + arg_Km_ATP)));
    end elmt_vATPase;

    function elmt_facilitated_transport__inkl__Volume____scaled
        input Real arg_Vmax;
        input Real arg_sf;
        input Real arg_S;
        input Real arg_K;
        input Real arg_P;
        input Real arg_Volume;

        output Real result;
        algorithm
            result := (arg_Vmax * arg_sf * ((arg_S / (arg_S + arg_K)) - (arg_P / (arg_P + arg_K))) * arg_Volume);
    end elmt_facilitated_transport__inkl__Volume____scaled;

    function elmt_vLEAK_Na_inkl__Volume
        input Real arg_Sm;
        input Real arg_gNA;
        input Real arg_Volume;
        input Real arg_F;
        input Real arg_RT;
        input Real arg_Na_e;
        input Real arg_Na;
        input Real arg_Vm;
        input Real arg_Volume1;

        output Real result;
        algorithm
            result := (((arg_Sm * arg_gNA) / (arg_Volume * arg_F)) * (((arg_RT / arg_F) * log((arg_Na_e / arg_Na))) - arg_Vm) * arg_Volume1);
    end elmt_vLEAK_Na_inkl__Volume;

    function elmt_vPGK
        input Real arg_k_PGK;
        input Real arg_GAP;
        input Real arg_ADP;
        input Real arg_NAD;
        input Real arg_NADH;

        output Real result;
        algorithm
            result := (arg_k_PGK * arg_GAP * arg_ADP * (arg_NAD / arg_NADH));
    end elmt_vPGK;

    function elmt_modular_rate_law_for_two_substrates__two_products
        input Real arg_Vmax;
        input Real arg_K_S1;
        input Real arg_K_S2;
        input Real arg_S1;
        input Real arg_S2;
        input Real arg_P1;
        input Real arg_P2;
        input Real arg_Keq;
        input Real arg_K_P1;
        input Real arg_K_P2;

        output Real result;
        algorithm
            result := (arg_Vmax * (1.0 / (arg_K_S1 * arg_K_S2)) * (((arg_S1 * arg_S2) - ((arg_P1 * arg_P2) / arg_Keq)) / ((((1.0 + (arg_S1 / arg_K_S1)) * (1.0 + (arg_S2 / arg_K_S2))) + ((1.0 + (arg_P1 / arg_K_P1)) * (1.0 + (arg_P2 / arg_K_P2)))) - 1.0)));
    end elmt_modular_rate_law_for_two_substrates__two_products;

    function elmt_vPK
        input Real arg_k_PK;
        input Real arg_PEP;
        input Real arg_ADP;

        output Real result;
        algorithm
            result := (arg_k_PK * arg_PEP * arg_ADP);
    end elmt_vPK;

    function elmt_Blood_flow_contribution_inkl__volume
        input Real arg_F_in;
        input Real arg_V_c;
        input Real arg_Volume;
        input Real arg_Substrate;
        input Real arg_Product;

        output Real result;
        algorithm
            result := (((2.0 * arg_F_in) / arg_V_c) * (arg_Substrate - arg_Product) * arg_Volume);
    end elmt_Blood_flow_contribution_inkl__volume;

    function elmt_vGLU_ne__inkl__Volume
        input Real arg_vSTIM;
        input Real arg_ratio_Na_GLU;
        input Real arg_GLU_n;
        input Real arg_Km_GLU;
        input Real arg_Volume;

        output Real result;
        algorithm
            result := (arg_vSTIM * arg_ratio_Na_GLU * (arg_GLU_n / (arg_GLU_n + arg_Km_GLU)) * arg_Volume);
    end elmt_vGLU_ne__inkl__Volume;

    function elmt_vdHb_out
        input Real arg_F_out;
        input Real arg_dHb;
        input Real arg_V_v;

        output Real result;
        algorithm
            result := ((arg_F_out * arg_dHb) / arg_V_v);
    end elmt_vdHb_out;

    function elmt_vMITO2__inkl__Volumes
        input Real arg_v_max_mito;
        input Real arg_PYR;
        input Real arg_K_m_PYR;
        input Real arg_ADP;
        input Real arg_K_m_ADP;
        input Real arg_O2;
        input Real arg_K_m_O2;
        input Real arg_alpha;
        input Real arg_ATP;
        input Real arg_beta;
        input Real arg_Volume;

        output Real result;
        algorithm
            result := (arg_v_max_mito * (arg_PYR / (arg_PYR + arg_K_m_PYR)) * (arg_ADP / (arg_ADP + arg_K_m_ADP)) * (arg_O2 / (arg_O2 + arg_K_m_O2)) * (1.0 - (1.0 / (1.0 + exp(((- arg_alpha) * ((arg_ATP / arg_ADP) - arg_beta)))))) * arg_Volume);
    end elmt_vMITO2__inkl__Volumes;

    function elmt_vPUMP_volume_dependent
        input Real arg_Sm;
        input Real arg_Volume;
        input Real arg_k_pump;
        input Real arg_ATP;
        input Real arg_Na;
        input Real arg_Km_pump;

        output Real result;
        algorithm
            result := ((arg_Sm / arg_Volume) * arg_k_pump * arg_ATP * arg_Na * Functions.pow((1.0 + (arg_ATP / arg_Km_pump)), (- 1.0)));
    end elmt_vPUMP_volume_dependent;

    function elmt_O2_transport_function_inkl__volume
        input Real arg_PScap;
        input Real arg_Volume;
        input Real arg_KO2;
        input Real arg_HbOP;
        input Real arg_O2_source;
        input Real arg_nh;
        input Real arg_O2_destination;
        input Real arg_Volume1;

        output Real result;
        algorithm
            result := ((arg_PScap / arg_Volume) * ((arg_KO2 * Functions.pow(((arg_HbOP / arg_O2_source) - 1.0), ((- 1.0) / arg_nh))) - arg_O2_destination) * arg_Volume1);
    end elmt_O2_transport_function_inkl__volume;

    function elmt_vPFK
        input Real arg_k_PFK;
        input Real arg_ATP;
        input Real arg_K_I_ATP;
        input Real arg_nH;
        input Real arg_F6P;
        input Real arg_K_m_F6P;

        output Real result;
        algorithm
            result := (arg_k_PFK * arg_ATP * Functions.pow((1.0 + Functions.pow((arg_ATP / arg_K_I_ATP), arg_nH)), (- 1.0)) * (arg_F6P / (arg_F6P + arg_K_m_F6P)));
    end elmt_vPFK;

    function elmt_facilitated_transport__inkl__Volume
        input Real arg_Vmax;
        input Real arg_S;
        input Real arg_K;
        input Real arg_P;
        input Real arg_Volume;

        output Real result;
        algorithm
            result := (arg_Vmax * ((arg_S / (arg_S + arg_K)) - (arg_P / (arg_P + arg_K))) * arg_Volume);
    end elmt_facilitated_transport__inkl__Volume;

    function elmt_vdHb_in
        input Real arg_F_in;
        input Real arg_O2_a;
        input Real arg_O2_c;

        output Real result;
        algorithm
            result := (arg_F_in * (arg_O2_a - ((2.0 * arg_O2_c) - arg_O2_a)));
    end elmt_vdHb_in;

    function elmt_vStim__with_volume
        input Real arg_vstim;
        input Real arg_Volume;

        output Real result;
        algorithm
            result := (arg_vstim * arg_Volume);
    end elmt_vStim__with_volume;

    function elmt_modular_rate_law_for_one_substrate__one_product
        input Real arg_Vmax;
        input Real arg_K_S1;
        input Real arg_S1;
        input Real arg_P1;
        input Real arg_Keq;
        input Real arg_K_P1;

        output Real result;
        algorithm
            result := (arg_Vmax * (1.0 / arg_K_S1) * ((arg_S1 - (arg_P1 / arg_Keq)) / ((1.0 + (arg_S1 / arg_K_S1) + 1.0 + (arg_P1 / arg_K_P1)) - 1.0)));
    end elmt_modular_rate_law_for_one_substrate__one_product;


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
