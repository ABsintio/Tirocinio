within BIOMD604;
class Functions

    function elmt_function_4_vVPfk2627a_1
        input Real arg_Pfk2627a;
        input Real arg_cellvol;
        input Real arg_volchangespeed;

        output Real result;
        algorithm
            result := ((arg_Pfk2627a * arg_volchangespeed) / arg_cellvol);
    end elmt_function_4_vVPfk2627a_1;

    function elmt_function_4_vVGpd1_1
        input Real arg_Gpd1;
        input Real arg_cellvol;
        input Real arg_volchangespeed;

        output Real result;
        algorithm
            result := ((arg_Gpd1 * arg_volchangespeed) / arg_cellvol);
    end elmt_function_4_vVGpd1_1;

    function elmt_function_4_v16f_1
        input Real arg_Hog1;
        input Real arg_OsmoE;
        input Real arg_Vm;
        input Real arg_kv16f_1;
        input Real arg_kv16f_2;
        input Real arg_kv16f_3;

        output Real result;
        algorithm
            result := (arg_Hog1 * arg_kv16f_1 * arg_OsmoE * Functions.pow((arg_kv16f_2 / arg_Vm), arg_kv16f_3));
    end elmt_function_4_v16f_1;

    function elmt_function_4_vVPfk2627i_1
        input Real arg_Pfk2627i;
        input Real arg_cellvol;
        input Real arg_volchangespeed;

        output Real result;
        algorithm
            result := ((arg_Pfk2627i * arg_volchangespeed) / arg_cellvol);
    end elmt_function_4_vVPfk2627i_1;

    function elmt_Henri_Michaelis_Menten__irreversible__5__1
        input Real arg_kv9_1;
        input Real arg_kv9_2;
        input Real arg_pyruvate;

        output Real result;
        algorithm
            result := ((arg_kv9_1 * arg_pyruvate) / (arg_kv9_2 + arg_pyruvate));
    end elmt_Henri_Michaelis_Menten__irreversible__5__1;

    function elmt_function_4_vVpyruvate_1
        input Real arg_cellvol;
        input Real arg_pyruvate;
        input Real arg_volchangespeed;

        output Real result;
        algorithm
            result := ((arg_pyruvate * arg_volchangespeed) / arg_cellvol);
    end elmt_function_4_vVpyruvate_1;

    function elmt_function_4_vVtrehalose_1
        input Real arg_cellvol;
        input Real arg_trehalose;
        input Real arg_volchangespeed;

        output Real result;
        algorithm
            result := ((arg_trehalose * arg_volchangespeed) / arg_cellvol);
    end elmt_function_4_vVtrehalose_1;

    function elmt_function_4_v6_1_1
        input Real arg_Gpd1;
        input Real arg_kv6_1;
        input Real arg_kv6_2;
        input Real arg_kv6_3;
        input Real arg_trioseP;

        output Real result;
        algorithm
            result := ((Functions.pow(arg_trioseP, arg_kv6_3) * arg_kv6_1 * arg_Gpd1) / (arg_kv6_2 + Functions.pow(arg_trioseP, arg_kv6_3)));
    end elmt_function_4_v6_1_1;

    function elmt_function_4_v11_1
        input Real arg_CellSurface;
        input Real arg_acetate_e;
        input Real arg_acetate_i;
        input Real arg_kv11_1;
        input Real arg_kv11_2;

        output Real result;
        algorithm
            result := (arg_kv11_1 * arg_CellSurface * (arg_acetate_i - (arg_kv11_2 * arg_acetate_e)));
    end elmt_function_4_v11_1;

    function elmt_function_4_vVethanol_i_1
        input Real arg_cellvol;
        input Real arg_ethanol_i;
        input Real arg_volchangespeed;

        output Real result;
        algorithm
            result := ((arg_ethanol_i * arg_volchangespeed) / arg_cellvol);
    end elmt_function_4_vVethanol_i_1;

    function elmt_function_4_vVStl1_1_1
        input Real arg_cellvol;
        input Real arg_glycerol_i;
        input Real arg_volchangespeed;

        output Real result;
        algorithm
            result := ((arg_glycerol_i * arg_volchangespeed) / arg_cellvol);
    end elmt_function_4_vVStl1_1_1;

    function elmt_function_4_vVF16DP_1
        input Real arg_F16DP;
        input Real arg_cellvol;
        input Real arg_volchangespeed;

        output Real result;
        algorithm
            result := ((arg_F16DP * arg_volchangespeed) / arg_cellvol);
    end elmt_function_4_vVF16DP_1;

    function elmt_function_4_vVtrioseP_1
        input Real arg_cellvol;
        input Real arg_trioseP;
        input Real arg_volchangespeed;

        output Real result;
        algorithm
            result := ((arg_trioseP * arg_volchangespeed) / arg_cellvol);
    end elmt_function_4_vVtrioseP_1;

    function elmt_function_4_v13a_1
        input Real arg_CellSurface;
        input Real arg_Fps1r;
        input Real arg_glycerol_e;
        input Real arg_glycerol_i;
        input Real arg_kDiff;
        input Real arg_kv13a_1;

        output Real result;
        algorithm
            result := (arg_kv13a_1 * arg_CellSurface * arg_Fps1r * (arg_glycerol_i - (arg_kDiff * arg_glycerol_e)));
    end elmt_function_4_v13a_1;

    function elmt_Henri_Michaelis_Menten__irreversible__4__1
        input Real arg_kv8_1;
        input Real arg_kv8_2;
        input Real arg_pyruvate;

        output Real result;
        algorithm
            result := ((arg_kv8_1 * arg_pyruvate) / (arg_kv8_2 + arg_pyruvate));
    end elmt_Henri_Michaelis_Menten__irreversible__4__1;

    function elmt_function_4_v23f_1
        input Real arg_AOGi;
        input Real arg_Vm;
        input Real arg_kv23f_1;
        input Real arg_kv23f_2;
        input Real arg_kv23f_3;

        output Real result;
        algorithm
            result := (arg_AOGi * arg_kv23f_1 * Functions.pow((arg_kv23f_2 / arg_Vm), arg_kv23f_3));
    end elmt_function_4_v23f_1;

    function elmt_function_4_vVstl1mRNA_1
        input Real arg_cellvol;
        input Real arg_stl1mRNA;
        input Real arg_volchangespeed;

        output Real result;
        algorithm
            result := ((arg_stl1mRNA * arg_volchangespeed) / arg_cellvol);
    end elmt_function_4_vVstl1mRNA_1;

    function elmt_function_4_v5_1
        input Real arg_F16DP;
        input Real arg_kv5_1;
        input Real arg_kv5_2;
        input Real arg_kv5_3;
        input Real arg_kv5_4;
        input Real arg_trioseP;

        output Real result;
        algorithm
            result := ((((arg_kv5_1 * arg_F16DP) / arg_kv5_2) / (1.0 + (arg_F16DP / arg_kv5_2))) - (((arg_kv5_3 * arg_trioseP) / arg_kv5_4) / (1.0 + (arg_trioseP / arg_kv5_4))));
    end elmt_function_4_v5_1;

    function elmt_function_4_vVHog1_1
        input Real arg_Hog1;
        input Real arg_cellvol;
        input Real arg_volchangespeed;

        output Real result;
        algorithm
            result := ((arg_Hog1 * arg_volchangespeed) / arg_cellvol);
    end elmt_function_4_vVHog1_1;

    function elmt_function_4_vVgpd1mRNA_1
        input Real arg_cellvol;
        input Real arg_gpd1mRNA;
        input Real arg_volchangespeed;

        output Real result;
        algorithm
            result := ((arg_gpd1mRNA * arg_volchangespeed) / arg_cellvol);
    end elmt_function_4_vVgpd1mRNA_1;

    function elmt_function_4_v3_1
        input Real arg_G6P;
        input Real arg_kv3_1;
        input Real arg_kv3_2;
        input Real arg_kv3_3;
        input Real arg_kv3_4;
        input Real arg_trehalose;

        output Real result;
        algorithm
            result := ((((arg_kv3_1 * arg_G6P) / arg_kv3_2) - ((arg_kv3_3 * arg_trehalose) / arg_kv3_4)) / (1.0 + (arg_G6P / arg_kv3_2) + (arg_trehalose / arg_kv3_4)));
    end elmt_function_4_v3_1;

    function elmt_function_4_v13bBatch_1
        input Real arg_cellnum;
        input Real arg_initcellnum;
        input Real arg_v13bspeed;

        output Real result;
        algorithm
            result := (((arg_v13bspeed * arg_cellnum) / arg_initcellnum) - arg_v13bspeed);
    end elmt_function_4_v13bBatch_1;

    function elmt_Henri_Michaelis_Menten__irreversible__3__1
        input Real arg_kv7_1;
        input Real arg_kv7_2;
        input Real arg_trioseP;

        output Real result;
        algorithm
            result := ((arg_kv7_1 * arg_trioseP) / (arg_kv7_2 + arg_trioseP));
    end elmt_Henri_Michaelis_Menten__irreversible__3__1;

    function elmt_function_4_v10Batch_1
        input Real arg_cellnum;
        input Real arg_initcellnum;
        input Real arg_v10speed;

        output Real result;
        algorithm
            result := (((arg_v10speed * arg_cellnum) / arg_initcellnum) - arg_v10speed);
    end elmt_function_4_v10Batch_1;

    function elmt_function_4_v18f_1
        input Real arg_gpd1mRNA;
        input Real arg_kv18f_1;

        output Real result;
        algorithm
            result := (arg_kv18f_1 * arg_gpd1mRNA);
    end elmt_function_4_v18f_1;

    function elmt_function_4_vVcin_1
        input Real arg_cellvol;
        input Real arg_cin;
        input Real arg_volchangespeed;

        output Real result;
        algorithm
            result := ((arg_cin * arg_volchangespeed) / arg_cellvol);
    end elmt_function_4_vVcin_1;

    function elmt_function_4_vVStl1_1
        input Real arg_Stl1;
        input Real arg_cellvol;
        input Real arg_volchangespeed;

        output Real result;
        algorithm
            result := ((arg_Stl1 * arg_volchangespeed) / arg_cellvol);
    end elmt_function_4_vVStl1_1;

    function elmt_function_4_vVG6P_1
        input Real arg_G6P;
        input Real arg_cellvol;
        input Real arg_volchangespeed;

        output Real result;
        algorithm
            result := ((arg_G6P * arg_volchangespeed) / arg_cellvol);
    end elmt_function_4_vVG6P_1;

    function elmt_Henri_Michaelis_Menten__irreversible__1
        input Real arg_glucose_e;
        input Real arg_kv1_1;
        input Real arg_kv1_2;

        output Real result;
        algorithm
            result := ((arg_kv1_1 * arg_glucose_e) / (arg_kv1_2 + arg_glucose_e));
    end elmt_Henri_Michaelis_Menten__irreversible__1;

    function elmt_function_4_v20f_1
        input Real arg_Hog1PP;
        input Real arg_kv20f_1;
        input Real arg_kv20f_2;
        input Real arg_kv20f_3;
        input Real arg_kv20f_x;

        output Real result;
        algorithm
            result := (((arg_kv20f_1 * Functions.pow(arg_Hog1PP, arg_kv20f_x)) / (Functions.pow(arg_Hog1PP, arg_kv20f_x) + arg_kv20f_2)) + arg_kv20f_3);
    end elmt_function_4_v20f_1;

    function elmt_function_4_vVtrioseP_1_1
        input Real arg_Hog1PP;
        input Real arg_cellvol;
        input Real arg_volchangespeed;

        output Real result;
        algorithm
            result := ((arg_Hog1PP * arg_volchangespeed) / arg_cellvol);
    end elmt_function_4_vVtrioseP_1_1;

    function elmt_function_4_v12Batch_1
        input Real arg_cellnum;
        input Real arg_initcellnum;
        input Real arg_v12speed;

        output Real result;
        algorithm
            result := (((arg_v12speed * arg_cellnum) / arg_initcellnum) - arg_v12speed);
    end elmt_function_4_v12Batch_1;

    function elmt_function_4_v11Batch_1
        input Real arg_cellnum;
        input Real arg_initcellnum;
        input Real arg_v11speed;

        output Real result;
        algorithm
            result := (((arg_v11speed * arg_cellnum) / arg_initcellnum) - arg_v11speed);
    end elmt_function_4_v11Batch_1;

    function elmt_function_4_vVgluci_1
        input Real arg_cellvol;
        input Real arg_glucose_i;
        input Real arg_volchangespeed;

        output Real result;
        algorithm
            result := ((arg_glucose_i * arg_volchangespeed) / arg_cellvol);
    end elmt_function_4_vVgluci_1;

    function elmt_function_4_v14_1
        input Real arg_G6P;
        input Real arg_OsmoE;
        input Real arg_cellvol;
        input Real arg_kv14_1;
        input Real arg_kv14_2;
        input Real arg_kv14_3;
        input Real arg_kv14_4;
        input Real arg_kv14_5;

        output Real result;
        algorithm
            result := (((((arg_kv14_1 * Functions.pow(arg_cellvol, arg_kv14_3)) / (Functions.pow(arg_cellvol, arg_kv14_3) + arg_kv14_2)) * (1.0 - (arg_OsmoE / (arg_OsmoE + arg_kv14_4))) * arg_G6P) / arg_kv14_5) / (1.0 + (arg_G6P / arg_kv14_5)));
    end elmt_function_4_v14_1;

    function elmt_function_4_v12_1
        input Real arg_CellSurface;
        input Real arg_ethanol_e;
        input Real arg_ethanol_i;
        input Real arg_kv12_1;
        input Real arg_kv12_2;

        output Real result;
        algorithm
            result := (arg_kv12_1 * arg_CellSurface * (arg_ethanol_i - (arg_kv12_2 * arg_ethanol_e)));
    end elmt_function_4_v12_1;

    function elmt_function_4_v10_1
        input Real arg_CellSurface;
        input Real arg_kv10_1;
        input Real arg_kv10_2;
        input Real arg_trehalose;
        input Real arg_trehalose_e;

        output Real result;
        algorithm
            result := (arg_kv10_1 * arg_CellSurface * (arg_trehalose - (arg_kv10_2 * arg_trehalose_e)));
    end elmt_function_4_v10_1;

    function elmt_function_4_v13b_1
        input Real arg_Stl1;
        input Real arg_glycerol_e;
        input Real arg_kv13b_1;
        input Real arg_kv13b_2;

        output Real result;
        algorithm
            result := ((arg_glycerol_e * arg_kv13b_1 * arg_Stl1) / (arg_kv13b_2 + arg_glycerol_e));
    end elmt_function_4_v13b_1;

    function elmt_function_4_v1Batch_1
        input Real arg_cellnum;
        input Real arg_initcellnum;
        input Real arg_v1speed;

        output Real result;
        algorithm
            result := (((arg_v1speed * arg_cellnum) / arg_initcellnum) - arg_v1speed);
    end elmt_function_4_v1Batch_1;

    function elmt_Henri_Michaelis_Menten__irreversible__2__1
        input Real arg_glucose_i;
        input Real arg_kv2_1;
        input Real arg_kv2_2;

        output Real result;
        algorithm
            result := ((arg_kv2_1 * arg_glucose_i) / (arg_kv2_2 + arg_glucose_i));
    end elmt_Henri_Michaelis_Menten__irreversible__2__1;

    function elmt_function_4_v17f_1
        input Real arg_AOG;
        input Real arg_Hog1PP;
        input Real arg_kv17f_1;
        input Real arg_kv17f_2;
        input Real arg_kv17f_3;
        input Real arg_kv17f_4;
        input Real arg_kv17f_6;
        input Real arg_kx1;
        input Real arg_kx2;

        output Real result;
        algorithm
            result := (((arg_kv17f_1 * Functions.pow(arg_Hog1PP, arg_kx1)) / (Functions.pow(arg_Hog1PP, arg_kx1) + arg_kv17f_2)) + ((arg_kv17f_3 * Functions.pow(arg_AOG, arg_kx2)) / (Functions.pow(arg_AOG, arg_kx2) + arg_kv17f_4)) + arg_kv17f_6);
    end elmt_function_4_v17f_1;

    function elmt_function_4_v22
        input Real arg_Fps1r;
        input Real arg_Hog1PP;
        input Real arg_Turgor;
        input Real arg_kv22_1;
        input Real arg_kv22_2;
        input Real arg_kv22_3;

        output Real result;
        algorithm
            result := ((((arg_kv22_1 * (- arg_Turgor)) / (arg_kv22_3 + (- arg_Turgor))) * 1.5 * (1.0 - (arg_Hog1PP / (arg_Hog1PP + arg_kv22_2)))) - (arg_kv22_1 * arg_Fps1r));
    end elmt_function_4_v22;

    function elmt_function_4_v21f_1
        input Real arg_kv21f_1;
        input Real arg_stl1mRNA;

        output Real result;
        algorithm
            result := (arg_kv21f_1 * arg_stl1mRNA);
    end elmt_function_4_v21f_1;

    function elmt_function_4_v6b_1_1
        input Real arg_kv6b_4;
        input Real arg_kv6b_5;
        input Real arg_kv6b_x;
        input Real arg_trioseP;

        output Real result;
        algorithm
            result := (((arg_kv6b_x * arg_kv6b_4 * Functions.pow(arg_trioseP, 2.0)) / arg_kv6b_5) / (1.0 + (Functions.pow(arg_trioseP, 2.0) / arg_kv6b_5)));
    end elmt_function_4_v6b_1_1;

    function elmt_function_4_vVacetate_i_1
        input Real arg_acetate_i;
        input Real arg_cellvol;
        input Real arg_volchangespeed;

        output Real result;
        algorithm
            result := ((arg_acetate_i * arg_volchangespeed) / arg_cellvol);
    end elmt_function_4_vVacetate_i_1;

    function elmt_function_4_vVos_1
        input Real arg_CellSurface;
        input Real arg_OsmoE;
        input Real arg_Turgor;
        input Real arg_cin;
        input Real arg_glycerol_e;
        input Real arg_glycerol_i;
        input Real arg_vV_1;
        input Real arg_vV_2;
        input Real arg_vV_R;
        input Real arg_vV_T;

        output Real result;
        algorithm
            result := (arg_vV_1 * arg_CellSurface * (arg_Turgor - (arg_vV_2 * arg_vV_R * arg_vV_T * ((arg_glycerol_e + arg_OsmoE) - (arg_glycerol_i + arg_cin)))));
    end elmt_function_4_vVos_1;

    function elmt_function_4_v4_1
        input Real arg_F26DP;
        input Real arg_G6P;
        input Real arg_kv4_1;
        input Real arg_kv4_2;
        input Real arg_kv4_3;
        input Real arg_kv4_4;
        input Real arg_kv4_5;

        output Real result;
        algorithm
            result := ((((arg_kv4_2 * (1.0 - (Functions.pow(arg_F26DP, arg_kv4_5) / Functions.pow((arg_F26DP + arg_kv4_3), arg_kv4_5)))) + ((arg_kv4_1 * Functions.pow(arg_F26DP, arg_kv4_5)) / Functions.pow((arg_F26DP + arg_kv4_3), arg_kv4_5))) * Functions.pow((arg_G6P / arg_kv4_4), 2.0)) / (1.0 + Functions.pow((arg_G6P / arg_kv4_4), 2.0)));
    end elmt_function_4_v4_1;

    function elmt_function_4_v13aBatch_1
        input Real arg_cellnum;
        input Real arg_initcellnum;
        input Real arg_v13aspeed;

        output Real result;
        algorithm
            result := (((arg_v13aspeed * arg_cellnum) / arg_initcellnum) - arg_v13aspeed);
    end elmt_function_4_v13aBatch_1;


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
