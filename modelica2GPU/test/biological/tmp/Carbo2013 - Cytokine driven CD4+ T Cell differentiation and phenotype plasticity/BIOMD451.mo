
model BIOMD451 "Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity"

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


    function function_1
        	input Real Vf;
	input Real r1;
	input Real r2;
	input Real K;
	input Real n;
	input Real I;
	input Real Vr;
	input Real p;
        output Real y;
    algorithm
        y :=  Vf * r1 * r2 * (K^n / (I^n + K^n)) - Vr * p;
    end function_1;


    function function_2
        	input Real Vf;
	input Real r1;
	input Real A;
	input Real n;
	input Real K;
	input Real Vr;
	input Real p;
        output Real y;
    algorithm
        y :=  Vf * r1 * (1 + A^n / (A^n + K^n)) - Vr * p;
    end function_2;


    function function_3
        	input Real Vf;
	input Real r1;
	input Real r2;
	input Real K1;
	input Real n1;
	input Real I1;
	input Real K2;
	input Real n2;
	input Real I2;
	input Real Vr;
	input Real p;
        output Real y;
    algorithm
        y :=  Vf * r1 * r2 * (K1^n1 / (I1^n1 + K1^n1)) * (K2^n2 / (I2^n2 + K2^n2)) - Vr * p;
    end function_3;


    function function_4
        	input Real Vf;
	input Real K1;
	input Real n1;
	input Real I1;
	input Real K2;
	input Real n2;
	input Real I2;
	input Real A;
	input Real n3;
	input Real K3;
	input Real Vr;
	input Real p;
	input Real r1;
	input Real r2;
        output Real y;
    algorithm
        y :=  Vf * r1 * r2 * (K1^n1 / (I1^n1 + K1^n1)) * (K2^n2 / (I2^n2 + K2^n2)) * (1 + A^n3 / (A^n3 + K3^n3)) - Vr * p;
    end function_4;


    function function_6
        	input Real Vf;
	input Real r1;
	input Real K;
	input Real n;
	input Real I;
	input Real A1;
	input Real n1;
	input Real K1;
	input Real A2;
	input Real n2;
	input Real K2;
	input Real A3;
	input Real n3;
	input Real K3;
	input Real Vr;
	input Real p;
        output Real y;
    algorithm
        y :=  Vf * r1 * (K^n / (I^n + K^n)) * (A1^n1 / (A1^n1 + K1^n1) + A2^n2 / (A2^n2 + K2^n2) + A3^n3 / (A3^n3 + K3^n3)) - Vr * p;
    end function_6;


    function function_7
        	input Real Vf;
	input Real r1;
	input Real K1;
	input Real n1;
	input Real I1;
	input Real K2;
	input Real n2;
	input Real I2;
	input Real K3;
	input Real n3;
	input Real I3;
	input Real A1;
	input Real n4;
	input Real K4;
	input Real A2;
	input Real n5;
	input Real K5;
	input Real A3;
	input Real n6;
	input Real K6;
	input Real Vr;
	input Real p;
        output Real y;
    algorithm
        y :=  Vf * r1 * (K1^n1 / (I1^n1 + K1^n1)) * (K2^n2 / (I2^n2 + K2^n2)) * (K3^n3 / (I3^n3 + K3^n3)) * (A1^n4 / (A1^n4 + K4^n4) + A2^n5 / (A2^n5 + K5^n5) + A3^n6 / (A3^n6 + K6^n6)) - Vr * p;
    end function_7;


    function function_8
        	input Real Vf;
	input Real r1;
	input Real K1;
	input Real n1;
	input Real I1;
	input Real K2;
	input Real n2;
	input Real I2;
	input Real A;
	input Real n3;
	input Real K3;
	input Real Vr;
	input Real p;
        output Real y;
    algorithm
        y :=  Vf * r1 * (K1^n1 / (I1^n1 + K1^n1)) * (K2^n2 / (I2^n2 + K2^n2)) * (1 + A^n3 / (A^n3 + K3^n3)) - Vr * p;
    end function_8;


    function function_9
        	input Real Vf;
	input Real r1;
	input Real A1;
	input Real n1;
	input Real K1;
	input Real A2;
	input Real n2;
	input Real K2;
	input Real Vr;
	input Real p;
        output Real y;
    algorithm
        y :=  Vf * r1 * (A1^n1 / (A1^n1 + K1^n1)) * (A2^n2 / (A2^n2 + K2^n2)) - Vr * p;
    end function_9;


    function function_10
        	input Real Vf;
	input Real r1;
	input Real K1;
	input Real n1;
	input Real I1;
	input Real K2;
	input Real n2;
	input Real I2;
	input Real K3;
	input Real n3;
	input Real I3;
	input Real A1;
	input Real n4;
	input Real K4;
	input Real A2;
	input Real n5;
	input Real K5;
	input Real Vr;
	input Real p;
        output Real y;
    algorithm
        y :=  Vf * r1 * (K1^n1 / (I1^n1 + K1^n1)) * (K2^n2 / (I2^n2 + K2^n2)) * (K3^n3 / (I3^n3 + K3^n3)) * (A1^n4 / (A1^n4 + K4^n4) + A2^n5 / (A2^n5 + K5^n5)) - Vr * p;
    end function_10;


    function function_12
        	input Real Vf;
	input Real r1;
	input Real K;
	input Real n;
	input Real I;
	input Real A1;
	input Real n1;
	input Real K1;
	input Real A2;
	input Real n2;
	input Real K2;
	input Real A3;
	input Real n3;
	input Real K3;
	input Real A4;
	input Real n4;
	input Real K4;
	input Real Vr;
	input Real p;
        output Real y;
    algorithm
        y :=  Vf * r1 * (K^n / (I^n + K^n)) * (A1^n1 / (A1^n1 + K1^n1) + A2^n2 / (A2^n2 + K2^n2) + A3^n3 / (A3^n3 + K3^n3) + A4^n4 / (A4^n4 + K4^n4)) - Vr * p;
    end function_12;


    function function_14
        	input Real Vf;
	input Real r1;
	input Real r2;
	input Real K;
	input Real n;
	input Real I;
	input Real A;
	input Real n1;
	input Real K1;
	input Real Vr;
	input Real p;
        output Real y;
    algorithm
        y :=  Vf * r1 * r2 * (K^n / (I^n + K^n)) * (1 + A^n1 / (A^n1 + K1^n1)) - Vr * p;
    end function_14;


    function function_11
        	input Real Vf;
	input Real r1;
	input Real K1;
	input Real n1;
	input Real I1;
	input Real K2;
	input Real n2;
	input Real I2;
	input Real K3;
	input Real n3;
	input Real I3;
	input Real A1;
	input Real n4;
	input Real K4;
	input Real A2;
	input Real n5;
	input Real K5;
	input Real A3;
	input Real n6;
	input Real K6;
	input Real A4;
	input Real n7;
	input Real K7;
	input Real Vr;
	input Real p;
        output Real y;
    algorithm
        y :=  Vf * r1 * (K1^n1 / (I1^n1 + K1^n1)) * (K2^n2 / (I2^n2 + K2^n2)) * (K3^n3 / (I3^n3 + K3^n3)) * (A1^n4 / (A1^n4 + K4^n4) + A2^n5 / (A2^n5 + K5^n5) + A3^n6 / (A3^n6 + K6^n6) + A4^n7 / (A4^n7 + K7^n7)) - Vr * p;
    end function_11;


    function function_5
        	input Real Vf;
	input Real r1;
	input Real K1;
	input Real n1;
	input Real I1;
	input Real K2;
	input Real n2;
	input Real I2;
	input Real A1;
	input Real n3;
	input Real K3;
	input Real A2;
	input Real n4;
	input Real K4;
	input Real Vr;
	input Real p;
        output Real y;
    algorithm
        y :=  Vf * r1 * (K1^n1 / (I1^n1 + K1^n1)) * (K2^n2 / (I2^n2 + K2^n2)) * (A1^n3 / (A1^n3 + K3^n3) + A2^n4 / (A2^n4 + K4^n4)) - Vr * p;
    end function_5;


    function function_13
        	input Real Vf;
	input Real r1;
	input Real K1;
	input Real n1;
	input Real I1;
	input Real K2;
	input Real n2;
	input Real I2;
	input Real A1;
	input Real n3;
	input Real K3;
	input Real A2;
	input Real n4;
	input Real K4;
	input Real A3;
	input Real n5;
	input Real K5;
	input Real Vr;
	input Real p;
        output Real y;
    algorithm
        y :=  Vf * r1 * (K1^n1 / (I1^n1 + K1^n1)) * (K2^n2 / (I2^n2 + K2^n2)) * (A1^n3 / (A1^n3 + K3^n3) + A2^n4 / (A2^n4 + K4^n4) + A3^n5 / (A3^n5 + K5^n5)) - Vr * p;
    end function_13;


    function function_15
        	input Real Vf;
	input Real r1;
	input Real K;
	input Real n;
	input Real I;
	input Real A1;
	input Real n1;
	input Real K1;
	input Real Vr;
	input Real p;
        output Real y;
    algorithm
        y :=  Vf * r1 * (K^n / (I^n + K^n)) * (A1^n1 / (A1^n1 + K1^n1)) - Vr * p;
    end function_15;


    function function_16
        	input Real V;
	input Real pool;
	input Real n;
	input Real ext;
	input Real k;
        output Real y;
    algorithm
        y :=  V * (pool^n / (pool^n + ext^n + 0.001) - k * ext);
    end function_16;


    parameter Real parameter_1 = 2.0;
    parameter Real parameter_2 = 0.00850607781012331;
    parameter Real ModelValue_5 = parameter_2;
    parameter Real Vf_0 = 0.1;
    parameter Real K_0 = 0.138094;
    parameter Real Vr_0 = 0.1;
    parameter Real Vf_1 = 0.1;
    parameter Real K_1 = 2.01676;
    parameter Real Vr_1 = 0.1;
    parameter Real k1_2 = 0.1;
    parameter Real Vf_3 = 0.1;
    parameter Real K1_3 = 2.94611;
    parameter Real K2_3 = 0.743847;
    parameter Real Vr_3 = 0.1;
    parameter Real Vf_4 = 0.1;
    parameter Real K1_4 = 0.1;
    parameter Real K2_4 = 98.9482;
    parameter Real K3_4 = 0.0539426;
    parameter Real Vr_4 = 0.1;
    parameter Real Vf_5 = 0.1;
    parameter Real K1_5 = 0.125481;
    parameter Real K2_5 = 0.896854;
    parameter Real K3_5 = 0.031433;
    parameter Real K4_5 = 66.6168;
    parameter Real Vr_5 = 0.1;
    parameter Real Vf_6 = 0.1;
    parameter Real K_6 = 0.263953;
    parameter Real Vr_6 = 0.1;
    parameter Real k1_7 = 0.1;
    parameter Real Vf_8 = 0.1;
    parameter Real K_8 = 0.1;
    parameter Real K1_8 = 5.04432;
    parameter Real K2_8 = 0.0705365;
    parameter Real K3_8 = 14.9778;
    parameter Real Vr_8 = 0.1;
    parameter Real Vf_9 = 0.1;
    parameter Real K1_9 = 0.501917;
    parameter Real K2_9 = 0.812366;
    parameter Real K3_9 = 0.1;
    parameter Real K4_9 = 0.001477;
    parameter Real K5_9 = 100.0;
    parameter Real K6_9 = 0.230841;
    parameter Real Vr_9 = 0.1;
    parameter Real Vf_10 = 0.1;
    parameter Real K1_10 = 0.916783;
    parameter Real K2_10 = 1.33537;
    parameter Real K3_10 = 3.58849;
    parameter Real K4_10 = 0.727962;
    parameter Real K5_10 = 6.97805;
    parameter Real Vr_10 = 0.1;
    parameter Real Vf_11 = 0.1;
    parameter Real K1_11 = 0.1;
    parameter Real K2_11 = 0.004433;
    parameter Real K3_11 = 99.987;
    parameter Real Vr_11 = 0.1;
    parameter Real Vf_12 = 0.1;
    parameter Real K1_12 = 7.83763;
    parameter Real K2_12 = 0.667462;
    parameter Real Vr_12 = 0.1;
    parameter Real k1_13 = 0.1;
    parameter Real Vf_14 = 0.1;
    parameter Real K_14 = 13.0657;
    parameter Real Vr_14 = 0.1;
    parameter Real Vf_15 = 0.1;
    parameter Real K1_15 = 0.210399;
    parameter Real K2_15 = 56.3452;
    parameter Real K3_15 = 98.0373;
    parameter Real K4_15 = 0.855534;
    parameter Real K5_15 = 4.32731;
    parameter Real Vr_15 = 0.1;
    parameter Real Vf_16 = 0.1;
    parameter Real K1_16 = 0.199351;
    parameter Real K2_16 = 9.61521;
    parameter Real K3_16 = 0.214012;
    parameter Real K4_16 = 0.321065;
    parameter Real K5_16 = 0.1;
    parameter Real Vr_16 = 0.1;
    parameter Real Vf_17 = 0.1;
    parameter Real K_17 = 0.1;
    parameter Real n1_17 = 0.004304;
    parameter Real K1_17 = 0.1;
    parameter Real Vr_17 = 0.1;
    parameter Real k1_18 = 0.1;
    parameter Real k2_18 = 0.1;
    parameter Real Vf_19 = 0.1;
    parameter Real K_19 = 0.374591;
    parameter Real Vr_19 = 0.1;
    parameter Real Vf_20 = 0.1;
    parameter Real K1_20 = 100.0;
    parameter Real K2_20 = 0.354892;
    parameter Real K3_20 = 1.31281;
    parameter Real K4_20 = 0.000679025;
    parameter Real K5_20 = 2.07945;
    parameter Real K6_20 = 100.0;
    parameter Real K7_20 = 1.93254e-07;
    parameter Real Vr_20 = 0.1;
    parameter Real k1_21 = 0.1;
    parameter Real k2_21 = 0.1;
    parameter Real k1_22 = 0.1;
    parameter Real k2_22 = 0.1;
    parameter Real Vf_23 = 0.1;
    parameter Real K_23 = 0.1;
    parameter Real K1_23 = 0.636796;
    parameter Real K2_23 = 39.018;
    parameter Real K3_23 = 2.26986;
    parameter Real K4_23 = 0.137545;
    parameter Real Vr_23 = 0.1;
    parameter Real Vf_24 = 0.2249;
    parameter Real K1_24 = 9722.09;
    parameter Real K2_24 = 0.703778;
    parameter Real K3_24 = 1.24123;
    parameter Real K4_24 = 997.263;
    parameter Real Vr_24 = 0.1;
    parameter Real Vf_25 = 0.1;
    parameter Real K_25 = 0.240705;
    parameter Real K1_25 = 8.14189;
    parameter Real Vr_25 = 0.1;
    parameter Real k1_26 = 0.1;
    parameter Real k1_27 = 0.1;
    parameter Real k2_27 = 0.1;
    parameter Real Vf_28 = 0.1;
    parameter Real K_28 = 4.66107;
    parameter Real Vr_28 = 0.1;
    parameter Real Vf_29 = 0.1;
    parameter Real K_29 = 0.1;
    parameter Real K1_29 = 25.5354;
    parameter Real Vr_29 = 0.1;
    parameter Real Vf_30 = 0.1;
    parameter Real K_30 = 0.118892;
    parameter Real Vr_30 = 0.1;
    parameter Real k1_31 = 0.1;
    parameter Real k2_31 = 0.1;
    parameter Real Vf_32 = 0.1;
    parameter Real K_32 = 0.1;
    parameter Real K1_32 = 0.1;
    parameter Real Vr_32 = 0.1;
    parameter Real k1_33 = 0.1;
    parameter Real k1_34 = 0.1;
    parameter Real k1_35 = 0.1;
    parameter Real k1_36 = 0.1;
    parameter Real k1_37 = 0.1;
    parameter Real k1_38 = 0.184881;
    parameter Real k2_38 = 0.1896;
    parameter Real k1_39 = 0.1;
    parameter Real Vf_40 = 0.225095;
    parameter Real K_40 = 0.1;
    parameter Real K1_40 = 1.62893;
    parameter Real K2_40 = 0.526832;
    parameter Real K3_40 = 5.47889;
    parameter Real Vr_40 = 0.1;
    parameter Real V_41 = 0.1;
    parameter Real k_41 = 0.5;
    parameter Real V_42 = 0.1;
    parameter Real k_42 = 0.5;
    parameter Real V_43 = 0.1;
    parameter Real k_43 = 0.1;
    parameter Real V_44 = 0.1;
    parameter Real k_44 = 0.1;
    parameter Real V_45 = 0.1;
    parameter Real k_45 = 0.1;
    parameter Real V_46 = 0.1;
    parameter Real k_46 = 0.1;
    parameter Real V_47 = 0.1;
    parameter Real k_47 = 0.1;
    parameter Real V_48 = 0.1;
    parameter Real k_48 = 0.1;
    parameter Real V_49 = 0.1;
    parameter Real k_49 = 0.1;
    parameter Real V_50 = 0.1;
    parameter Real k_50 = 0.1;
    parameter Real V_51 = 0.1;
    parameter Real k_51 = 0.1;
    parameter Real Vf_52 = 0.1;
    parameter Real K_52 = 0.508159;
    parameter Real K1_52 = 0.1;
    parameter Real K2_52 = 0.00125893;
    parameter Real K3_52 = 0.645162;
    parameter Real K4_52 = 100.0;
    parameter Real Vr_52 = 0.1;
    parameter Real default = 1.0;
    parameter Real c1 = 1.0;

    Real parameter_3(start=0.0);
    Real parameter_4(start=0.0);

    Real s22;
    Real s11;
    Real s51;
    Real s55;
    Real s30;
    Real s87;
    Real s89;
    Real s90;
    Real species_1;
    Real species_2;
    Real species_12;
    Real species_13;
    Real species_14;
    Real species_15;
    Real species_16;
    Real species_17;
    Real species_18;
    Real species_19;
    Real species_20;
    Real species_21;
    Real species_22;
    Real species_23;
    Real species_24;
    Real species_25;
    Real species_26;
    Real species_27;
    Real s48;
    Real s47;
    Real s46;
    Real s45;
    Real s44;
    Real s43;
    Real s38;
    Real s37;
    Real s36;
    Real s33;
    Real s32;
    Real s31;
    Real s25;
    Real s24;
    Real s14;
    Real s13;
    Real s12;
    Real s3;
    Real s2;
    Real s1;
    Real s52;
    Real s54;
    Real s53;
    Real s58;
    Real s59;
    Real s62;
    Real s63;
    Real s65;
    Real s10;
    Real s20;
    Real s67;
    Real s21;
    Real s68;
    Real s69;
    Real s28;
    Real s70;
    Real s26;
    Real s57;
    Real s73;
    Real s74;
    Real s75;
    Real s50;
    Real s49;
    Real s76;
    Real s39;
    Real s77;
    Real s78;
    Real s79;
    Real s29;
    Real s27;
    Real s80;
    Real s81;
    Real s35;
    Real s34;
    Real s82;
    Real s85;
    Real s83;
    Real s86;
    Real s40;
    Real species_8;
    Real species_9;
    Real species_10;
    Real species_11;
    Real species_4;
    Real species_3;
    Real species_5;
    Real species_6;
    Real species_7;

initial equation
    s22 = species_18;
    s11 = species_17;
    s51 = species_19;
    s55 = species_20;
    s30 = species_26;
    s87 = species_25;
    s89 = species_24;
    s90 = species_23;
    species_1 = species_21;
    species_2 = species_22;
    species_12 = species_16;
    species_13 = 1.0;
    species_14 = 1.0;
    species_15 = 1.0;
    species_16 = 0.0;
    species_17 = 0.0;
    species_18 = 0.0;
    species_19 = 0.0;
    species_20 = 0.0;
    species_21 = 0.0;
    species_22 = 0.0;
    species_23 = 1.0;
    species_24 = 0.0;
    species_25 = 1.0;
    species_26 = 0.0;
    species_27 = 1.0;
    s48 = 0.0;
    s47 = 0.9999999518;
    s46 = 0.0;
    s45 = 0.0;
    s44 = 0.999999951844375;
    s43 = 0.0;
    s38 = 0.0;
    s37 = 0.999999951844375;
    s36 = 0.0;
    s33 = 0.0;
    s32 = 0.999999951844375;
    s31 = 0.0;
    s25 = 0.0;
    s24 = 0.999999951844375;
    s14 = 0.0;
    s13 = 0.999999951844375;
    s12 = 0.0;
    s3 = 0.0;
    s2 = 0.999999951844375;
    s1 = 0.0;
    s52 = 0.0;
    s54 = 0.0;
    s53 = 0.999999951844375;
    s58 = 0.999999951844375;
    s59 = 0.0;
    s62 = 0.999999951844375;
    s63 = 0.0;
    s65 = 0.5;
    s10 = 0.0;
    s20 = 0.0;
    s67 = 0.999999951844375;
    s21 = 0.0;
    s68 = 0.0;
    s69 = 0.5;
    s28 = 0.0;
    s70 = 0.999999951844375;
    s26 = 0.0;
    s57 = 0.0;
    s73 = 0.0;
    s74 = 0.0;
    s75 = 0.999999951844375;
    s50 = 0.0;
    s49 = 0.0;
    s76 = 0.999999951844375;
    s39 = 0.0;
    s77 = 0.999999951844375;
    s78 = 0.999999951844375;
    s79 = 0.999999951844375;
    s29 = 0.0;
    s27 = 0.0;
    s80 = 0.999999951844375;
    s81 = 0.999999951844375;
    s35 = 0.0;
    s34 = 0.0;
    s82 = 1.0;
    s85 = 0.08;
    s83 = 0.0;
    s86 = 0.9999999518;
    s40 = 0.0;
    species_8 = 0.9999999518;
    species_9 = 0.9999999518;
    species_10 = 0.5;
    species_11 = 0.5;
    species_4 = 0.9999999518;
    species_3 = 0.0;
    species_5 = 0.9999999518;
    species_6 = 0.999999951844375;
    species_7 = 0.999999951844375;

equation
    parameter_3 = s40 / ModelValue_5;
    parameter_4 = s73 / ModelValue_5;
    der(s22) = (k1_7 * s68) + (default * function_16(V_43, species_18, parameter_1, s22, k_43)) - (function_1(Vf_6, s22, s24, K_6, parameter_1, s29, Vr_6, s25));
    der(s11) = (k1_2 * s12) + (default * function_16(V_42, species_17, parameter_1, s11, k_42)) - (function_3(Vf_3, s11, s13, K1_3, parameter_1, s34, K2_3, parameter_1, s83, Vr_3, s14));
    der(s51) = (k1_26 * s52) + (default * function_16(V_44, species_19, parameter_1, s51, k_44)) - (function_14(Vf_25, s51, s53, K_25, parameter_1, s39, species_3, parameter_1, K_251, Vr_25, s54));
    der(s55) = (default * function_16(V_45, species_20, parameter_1, s55, k_45)) - (k1_27 * s55 - k2_27 * s57);
    der(s30) = (k1_13 * s31) + (default * function_16(V_51, species_26, parameter_1, s30, k_51)) - (function_1(Vf_14, s30, s32, K_14, parameter_1, s29, Vr_14, s33));
    der(s87) = (k1_33 * s43) + (default * function_16(V_50, species_25, parameter_1, s87, k_50)) - (k1_21 * s87 * s44 - k2_21 * s45);
    der(s89) = (k1_34 * s36) + (default * function_16(V_49, species_24, parameter_1, s89, k_49)) - (k1_18 * s89 * s37 - k2_18 * s38);
    der(s90) = (k1_35 * s46) + (default * function_16(V_48, species_23, parameter_1, s90, k_48)) - (k1_22 * s90 * s47 - k2_22 * s48);
    der(species_1) = (k1_37 * s73) - (k1_38 * species_1 * species_4 - k2_38 * species_3);
    der(species_2) = (k1_36 * s74) + (default * function_16(V_47, species_22, parameter_1, species_2, k_47)) - (k1_31 * species_2 * s62 - k2_31 * s63);
    der(species_12) = (k1_39 * s1) + (default * function_16(V_41, species_16, parameter_1, species_12, k_41)) - (function_1(Vf_0, species_12, s2, K_0, parameter_1, s34, Vr_0, s3));
    der(species_13) = 0.0;
    der(species_14) = 0.0;
    der(species_15) = 0.0;
    der(species_16) = 0.0;
    der(species_17) = 0.0;
    der(species_18) = 0.0;
    der(species_19) = 0.0;
    der(species_20) = 0.0;
    der(species_21) = 0.0;
    der(species_22) = 0.0;
    der(species_23) = 0.0;
    der(species_24) = 0.0;
    der(species_25) = 0.0;
    der(species_26) = 0.0;
    der(species_27) = 0.0;
    der(s48) = (k1_22 * s90 * s47 - k2_22 * s48) ;
    der(s47) =  - (k1_22 * s90 * s47 - k2_22 * s48);
    der(s46) =  - (k1_35 * s46);
    der(s45) = (k1_21 * s87 * s44 - k2_21 * s45) ;
    der(s44) =  - (k1_21 * s87 * s44 - k2_21 * s45);
    der(s43) =  - (k1_33 * s43);
    der(s38) = (k1_18 * s89 * s37 - k2_18 * s38) ;
    der(s37) =  - (k1_18 * s89 * s37 - k2_18 * s38);
    der(s36) =  - (k1_34 * s36);
    der(s33) = (function_1(Vf_14, s30, s32, K_14, parameter_1, s29, Vr_14, s33)) ;
    der(s32) =  - (function_1(Vf_14, s30, s32, K_14, parameter_1, s29, Vr_14, s33));
    der(s31) = (function_13(Vf_15, species_15, K1_15, parameter_1, s26, K2_15, parameter_1, species_13, s31, parameter_1, K3_15, s35, parameter_1, K4_15, s39, parameter_1, K5_15, Vr_15, s31)) - (k1_13 * s31);
    der(s25) = (function_1(Vf_6, s22, s24, K_6, parameter_1, s29, Vr_6, s25)) ;
    der(s24) =  - (function_1(Vf_6, s22, s24, K_6, parameter_1, s29, Vr_6, s25));
    der(s14) = (function_3(Vf_3, s11, s13, K1_3, parameter_1, s34, K2_3, parameter_1, s83, Vr_3, s14)) ;
    der(s13) =  - (function_3(Vf_3, s11, s13, K1_3, parameter_1, s34, K2_3, parameter_1, s83, Vr_3, s14));
    der(s12) =  - (k1_2 * s12);
    der(s3) = (function_1(Vf_0, species_12, s2, K_0, parameter_1, s34, Vr_0, s3)) ;
    der(s2) =  - (function_1(Vf_0, species_12, s2, K_0, parameter_1, s34, Vr_0, s3));
    der(s1) =  - (k1_39 * s1);
    der(s52) = (c1 * function_2(Vf_30, species_6, s49, parameter_1, K_30, Vr_30, s52)) - (k1_26 * s52);
    der(s54) = (function_14(Vf_25, s51, s53, K_25, parameter_1, s39, species_3, parameter_1, K_251, Vr_25, s54)) ;
    der(s53) =  - (function_14(Vf_25, s51, s53, K_25, parameter_1, s39, species_3, parameter_1, K_251, Vr_25, s54));
    der(s58) =  - (c1 * function_1(Vf_28, s57, s58, K_28, parameter_1, s27, Vr_28, s59));
    der(s59) = (c1 * function_1(Vf_28, s57, s58, K_28, parameter_1, s27, Vr_28, s59)) ;
    der(s62) =  - (k1_31 * species_2 * s62 - k2_31 * s63);
    der(s63) = (k1_31 * species_2 * s62 - k2_31 * s63) ;
    der(s65) = 0.0;
    der(s10) = (c1 * function_2(Vf_1, s65, s3, parameter_1, K_1, Vr_1, s10)) ;
    der(s20) = (c1 * function_4(Vf_4, K1_4, parameter_1, s83, K2_4, parameter_1, s40, s10, parameter_1, K3_4, Vr_4, s20, species_10, species_11)) ;
    der(s67) = 0.0;
    der(s21) = (c1 * function_5(Vf_5, s67, K1_5, parameter_1, s54, K2_5, parameter_1, s35, s14, parameter_1, K3_5, s59, parameter_1, K4_5, Vr_5, s21)) ;
    der(s68) = (c1 * function_7(Vf_9, species_5, K1_9, parameter_1, species_14, K2_9, parameter_1, s49, K3_9, parameter_1, s83, s21, parameter_1, K4_9, s20, parameter_1, K5_9, s27, parameter_1, K6_9, Vr_9, s68)) - (k1_7 * s68);
    der(s69) = 0.0;
    der(s28) = (c1 * function_8(Vf_11, s69, K1_11, parameter_1, s83, K2_11, parameter_1, s29, s25, parameter_1, K3_11, Vr_11, s28)) ;
    der(s70) = 0.0;
    der(s26) = (c1 * function_6(Vf_8, s70, K_8, parameter_1, s83, s54, parameter_1, K_81, s25, parameter_1, K_82, s28, parameter_1, K_83, Vr_8, s26)) ;
    der(s57) = (k1_27 * s55 - k2_27 * s57) + (c1 * function_14(Vf_29, species_9, species_8, K_29, parameter_1, s83, s48, parameter_1, K_291, Vr_29, s57)) - (c1 * function_1(Vf_28, s57, s58, K_28, parameter_1, s27, Vr_28, s59));
    der(s73) = (c1 * function_6(Vf_40, species_7, K_40, parameter_1, s83, s59, parameter_1, K_401, s50, parameter_1, K_402, s21, parameter_1, K_403, Vr_40, s73)) + (function_16(V_46, species_21, parameter_1, s73, k_46)) - (k1_37 * s73);
    der(s74) = (function_12(Vf_52, species_27, K_52, parameter_1, s59, s83, parameter_1, K_521, s54, parameter_1, K_522, s35, parameter_1, K_523, s39, parameter_1, K_524, Vr_52, s74)) - (k1_36 * s74);
    der(s75) = 0.0;
    der(s50) = (c1 * function_5(Vf_24, s75, K1_24, parameter_1, s40, K2_24, parameter_1, s83, s49, parameter_1, K3_24, s45, parameter_1, K4_24, Vr_24, s50)) ;
    der(s49) = (c1 * function_12(Vf_23, s76, K_23, parameter_1, s83, s54, parameter_1, K_231, s59, parameter_1, K_232, s63, parameter_1, K_233, s48, parameter_1, K_234, Vr_23, s49)) ;
    der(s76) = 0.0;
    der(s39) = (c1 * function_2(Vf_19, s77, s38, parameter_1, K_19, Vr_19, s39)) ;
    der(s77) = 0.0;
    der(s78) = 0.0;
    der(s79) = 0.0;
    der(s29) = (c1 * function_9(Vf_12, s79, s26, parameter_1, K1_12, s27, parameter_1, K2_12, Vr_12, s29)) ;
    der(s27) = (c1 * function_13(Vf_10, s80, K1_10, parameter_1, s45, K2_10, parameter_1, s49, s21, parameter_1, K3_10, s26, parameter_1, K4_10, s27, parameter_1, K5_10, Vr_10, s27)) ;
    der(s80) = 0.0;
    der(s81) = 0.0;
    der(s35) = (c1 * function_10(Vf_16, s81, K1_16, parameter_1, s27, K2_16, parameter_1, s49, K3_16, parameter_1, s45, s34, parameter_1, K4_16, s83, parameter_1, K5_16, Vr_16, s35)) ;
    der(s34) = (c1 * function_15(Vf_17, s82, K_17, parameter_1, s25, s33, n1_17, K_171, Vr_17, s34)) ;
    der(s82) = 0.0;
    der(s85) =  - (c1 * function_14(Vf_32, s85, s86, K_32, parameter_1, s25, s33, parameter_1, K_321, Vr_32, s83));
    der(s83) = (c1 * function_14(Vf_32, s85, s86, K_32, parameter_1, s25, s33, parameter_1, K_321, Vr_32, s83)) ;
    der(s86) = 0.0;
    der(s40) = (c1 * function_11(Vf_20, s78, K1_20, parameter_1, s34, K2_20, parameter_1, s49, K3_20, parameter_1, s48, s45, parameter_1, K4_20, s26, parameter_1, K5_20, s39, parameter_1, K6_20, s83, parameter_1, K7_20, Vr_20, s40)) ;
    der(species_8) = 0.0;
    der(species_9) = 0.0;
    der(species_10) = 0.0;
    der(species_11) = 0.0;
    der(species_4) =  - (k1_38 * species_1 * species_4 - k2_38 * species_3);
    der(species_3) = (k1_38 * species_1 * species_4 - k2_38 * species_3) ;
    der(species_5) = 0.0;
    der(species_6) = 0.0;
    der(species_7) = 0.0;




end BIOMD451;
