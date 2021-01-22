
model BIOMD444 "Sarma2012 - Oscillations in MAPK cascade (S2n)"

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


    function function_4_1_1
        	input Real A;
	input Real K1;
	input Real Ka;
	input Real V1;
	input Real species_0;
	input Real species_7;
        output Real y;
    algorithm
        y :=  (V1 * species_0 / K1 / (1 + species_0 / K1)) * ((1 + A * species_7 / Ka) / (1 + species_7 / Ka));
    end function_4_1_1;


    function function_4_3_1
        	input Real K3;
	input Real KI;
	input Real k3;
	input Real species_1;
	input Real species_2;
	input Real species_3;
	input Real species_7;
        output Real y;
    algorithm
        y :=  k3 * species_1 * species_2 / K3 / ((1 + species_2 / K3 + species_3 / K3) * (1 + species_7 / KI));
    end function_4_3_1;


    function function_4_4_1
        	input Real K4;
	input Real KI;
	input Real k4;
	input Real species_1;
	input Real species_2;
	input Real species_3;
	input Real species_7;
        output Real y;
    algorithm
        y :=  k4 * species_1 * species_3 / K4 / ((1 + species_2 / K4 + species_3 / K4) * (1 + species_7 / KI));
    end function_4_4_1;


    function function_4_7_1
        	input Real K7;
	input Real k7;
	input Real species_4;
	input Real species_5;
	input Real species_6;
        output Real y;
    algorithm
        y :=  k7 * species_4 * species_5 / K7 / (1 + species_5 / K7 + species_6 / K7);
    end function_4_7_1;


    function function_4_8_1
        	input Real K8;
	input Real k8;
	input Real species_4;
	input Real species_5;
	input Real species_6;
        output Real y;
    algorithm
        y :=  k8 * species_4 * species_6 / K8 / (1 + species_5 / K8 + species_6 / K8);
    end function_4_8_1;


    function function_4_2_1
        	input Real K2;
	input Real k2;
	input Real species_1;
	input Real species_8;
        output Real y;
    algorithm
        y :=  k2 * species_8 * species_1 / K2 / (1 + species_1 / K2);
    end function_4_2_1;


    function function_4_5_1
        	input Real K5;
	input Real k5;
	input Real species_3;
	input Real species_4;
	input Real species_9;
        output Real y;
    algorithm
        y :=  k5 * species_9 * species_4 / K5 / (1 + species_4 / K5 + species_3 / K5);
    end function_4_5_1;


    function function_4_6_1
        	input Real K6;
	input Real k6;
	input Real species_3;
	input Real species_4;
	input Real species_9;
        output Real y;
    algorithm
        y :=  k6 * species_9 * species_3 / K6 / (1 + species_4 / K6 + species_3 / K6);
    end function_4_6_1;


    function function_4_9_1
        	input Real K9;
	input Real k9;
	input Real species_10;
	input Real species_6;
	input Real species_7;
        output Real y;
    algorithm
        y :=  k9 * species_10 * species_7 / K9 / (1 + species_7 / K9 + species_6 / K9);
    end function_4_9_1;


    function function_4_10_1
        	input Real K10;
	input Real k10;
	input Real species_10;
	input Real species_6;
	input Real species_7;
        output Real y;
    algorithm
        y :=  k10 * species_10 * species_6 / K10 / (1 + species_7 / K10 + species_6 / K10);
    end function_4_10_1;


    function function_2
        	input Real V12;
	input Real M_PP_n;
	input Real n12;
	input Real K12;
        output Real y;
    algorithm
        y :=  V12 * M_PP_n^n12 / (K12^n12 + M_PP_n^n12);
    end function_2;


    function function_3
        	input Real k15;
	input Real P3mRNA;
        output Real y;
    algorithm
        y :=  k15 * P3mRNA;
    end function_3;


    function function_1
        	input Real k11f;
	input Real ppERK_c;
	input Real k11b;
	input Real ppERK_n;
        output Real y;
    algorithm
        y :=  k11f * ppERK_c - k11b * ppERK_n;
    end function_1;


    function function_4
        	input Real k21;
	input Real P3_n;
	input Real M_PP_n;
	input Real K21;
	input Real M_P_n;
	input Real K21i;
        output Real y;
    algorithm
        y :=  k21 * P3_n * M_PP_n / K21 / (1 + M_PP_n / K21 + M_P_n / K21i);
    end function_4;


    function function_5
        	input Real k22;
	input Real P3_n;
	input Real M_P_n;
	input Real K22;
	input Real M_PP_n;
	input Real K22i;
        output Real y;
    algorithm
        y :=  k22 * P3_n * M_P_n / K22 / (1 + M_P_n / K22 + M_PP_n / K22i);
    end function_5;


    parameter Real parameter_1 = 0.022;
    parameter Real A_0 = 100.0;
    parameter Real K1_0 = 15.0;
    parameter Real Ka_0 = 500.0;
    parameter Real V1_0 = 6.0;
    parameter Real K3_1 = 20.0;
    parameter Real KI_1 = 9.0;
    parameter Real k3_1 = 0.1;
    parameter Real K4_2 = 20.0;
    parameter Real KI_2 = 9.0;
    parameter Real k4_2 = 0.1;
    parameter Real K7_3 = 20.0;
    parameter Real k7_3 = 0.1;
    parameter Real K8_4 = 20.0;
    parameter Real k8_4 = 0.1;
    parameter Real K2_5 = 100.0;
    parameter Real k2_5 = 0.1;
    parameter Real K5_6 = 20.0;
    parameter Real k5_6 = 0.02;
    parameter Real K6_7 = 20.0;
    parameter Real k6_7 = 0.02;
    parameter Real K9_8 = 20.0;
    parameter Real k9_8 = 0.02;
    parameter Real K10_9 = 20.0;
    parameter Real k10_9 = 0.02;
    parameter Real k11f_10 = 10.34;
    parameter Real k11b_10 = 2.86;
    parameter Real V12_11 = 29.24;
    parameter Real n12_11 = 3.97;
    parameter Real K12_11 = 169.0;
    parameter Real k1_12 = 0.022;
    parameter Real k1_13 = 0.0078;
    parameter Real k15_14 = 0.0012;
    parameter Real k1_15 = 22.56;
    parameter Real k2_15 = 15.4;
    parameter Real k1_16 = 0.00025;
    parameter Real k1_17 = 0.00025;
    parameter Real k1_18 = 10.34;
    parameter Real k2_18 = 2.86;
    parameter Real k1_19 = 10.34;
    parameter Real k2_19 = 2.86;
    parameter Real k21_20 = 0.68;
    parameter Real K21_20 = 10300.0;
    parameter Real K21i_20 = 87.0;
    parameter Real k22_21 = 0.31;
    parameter Real K22_21 = 87.0;
    parameter Real K22i_21 = 10300.0;
    parameter Real compartment_0 = 1.0;



    Real species_0;
    Real species_1;
    Real species_2;
    Real species_3;
    Real species_4;
    Real species_5;
    Real species_6;
    Real species_7;
    Real species_8;
    Real species_9;
    Real species_10;
    Real species_11;
    Real species_12;
    Real species_13;
    Real species_14;
    Real species_15;
    Real species_16;
    Real species_17;

initial equation
    species_0 = 999.999903688753;
    species_1 = 0.0;
    species_2 = 3999.9998073775;
    species_3 = 0.0;
    species_4 = 0.0;
    species_5 = 999.999903688753;
    species_6 = 0.0;
    species_7 = 0.0;
    species_8 = 99.9999903688752;
    species_9 = 499.999951844377;
    species_10 = 499.999975922188;
    species_11 = 0.0;
    species_12 = 0.0;
    species_13 = 0.0;
    species_14 = 0.0;
    species_15 = 0.0;
    species_16 = 0.0;
    species_17 = 0.0;

equation

    der(species_0) = (compartment_0 * function_4_2_1(K2_5, k2_5, species_1, species_8)) - (compartment_0 * function_4_1_1(A_0, K1_0, Ka_0, V1_0, species_0, species_7));
    der(species_1) = (compartment_0 * function_4_1_1(A_0, K1_0, Ka_0, V1_0, species_0, species_7)) - (compartment_0 * function_4_2_1(K2_5, k2_5, species_1, species_8));
    der(species_2) = (compartment_0 * function_4_6_1(K6_7, k6_7, species_3, species_4, species_9)) - (compartment_0 * function_4_3_1(K3_1, KI_1, k3_1, species_1, species_2, species_3, species_7));
    der(species_3) = (compartment_0 * function_4_3_1(K3_1, KI_1, k3_1, species_1, species_2, species_3, species_7)) + (compartment_0 * function_4_5_1(K5_6, k5_6, species_3, species_4, species_9)) - (compartment_0 * function_4_4_1(K4_2, KI_2, k4_2, species_1, species_2, species_3, species_7)) - (compartment_0 * function_4_6_1(K6_7, k6_7, species_3, species_4, species_9));
    der(species_4) = (compartment_0 * function_4_4_1(K4_2, KI_2, k4_2, species_1, species_2, species_3, species_7)) - (compartment_0 * function_4_5_1(K5_6, k5_6, species_3, species_4, species_9));
    der(species_5) = (compartment_0 * function_4_10_1(K10_9, k10_9, species_10, species_6, species_7)) - (compartment_0 * function_4_7_1(K7_3, k7_3, species_4, species_5, species_6)) - (compartment_0 * (k1_18 * species_5 - k2_18 * species_16));
    der(species_6) = (compartment_0 * function_4_7_1(K7_3, k7_3, species_4, species_5, species_6)) + (compartment_0 * function_4_9_1(K9_8, k9_8, species_10, species_6, species_7)) - (compartment_0 * function_4_8_1(K8_4, k8_4, species_4, species_5, species_6)) - (compartment_0 * function_4_10_1(K10_9, k10_9, species_10, species_6, species_7)) - (compartment_0 * (k1_19 * species_6 - k2_19 * species_17));
    der(species_7) = (compartment_0 * function_4_8_1(K8_4, k8_4, species_4, species_5, species_6)) - (compartment_0 * function_4_9_1(K9_8, k9_8, species_10, species_6, species_7)) - (compartment_0 * function_1(k11f_10, species_7, k11b_10, species_11));
    der(species_8) = 0.0;
    der(species_9) = 0.0;
    der(species_10) = 0.0;
    der(species_11) = (compartment_0 * function_1(k11f_10, species_7, k11b_10, species_11)) - (compartment_0 * function_4(k21_20, species_15, species_11, K21_20, species_17, K21i_20));
    der(species_12) = (compartment_0 * function_2(V12_11, species_11, n12_11, K12_11)) - (compartment_0 * k1_12 * species_12);
    der(species_13) = (compartment_0 * k1_12 * species_12) - (compartment_0 * k1_13 * species_13);
    der(species_14) = (compartment_0 * function_3(k15_14, species_13)) - (compartment_0 * (k1_15 * species_14 - k2_15 * species_15)) - (compartment_0 * k1_16 * species_14);
    der(species_15) = (compartment_0 * (k1_15 * species_14 - k2_15 * species_15)) - (compartment_0 * k1_17 * species_15);
    der(species_16) = (compartment_0 * (k1_18 * species_5 - k2_18 * species_16)) + (compartment_0 * function_5(k22_21, species_15, species_17, K22_21, species_11, K22i_21)) ;
    der(species_17) = (compartment_0 * (k1_19 * species_6 - k2_19 * species_17)) + (compartment_0 * function_4(k21_20, species_15, species_11, K21_20, species_17, K21i_20)) - (compartment_0 * function_5(k22_21, species_15, species_17, K22_21, species_11, K22i_21));




end BIOMD444;
