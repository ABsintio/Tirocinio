
model BIOMD432 "Sarma2012 - Interaction topologies of MAPK cascade (M4_K2_QSS_USEQ)"

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


    function function_10
        	input Real MK_P;
	input Real MKK_PP;
	input Real MKK_P;
	input Real MK_PP;
	input Real MKK;
	input Real MK;
	input Real P2;
	input Real K10b;
	input Real K5b;
	input Real K6b;
	input Real Kse2;
	input Real K9b;
	input Real k10b;
        output Real y;
    algorithm
        y :=  k10b * P2 * MK_P / K10b / (1 + MKK_PP / K5b + MKK_P / K6b + MKK / Kse2 + MK / Kse2 + MK_P / K10b + MK_PP / K9b);
    end function_10;


    function function_2
        	input Real MKKK_P;
	input Real MKKK;
	input Real P1;
	input Real MKK_PP;
	input Real MKK_P;
	input Real MKK;
	input Real Kse1;
	input Real K2a;
	input Real K5a;
	input Real K6a;
	input Real k2a;
        output Real y;
    algorithm
        y :=  k2a * MKKK_P * P1 / K2a / (1 + MKKK_P / K2a + MKKK / Kse1 + MKK_PP / K5a + MKK_P / K6a + MKK / Kse1);
    end function_2;


    function function_3
        	input Real k3;
	input Real MKKK_P;
	input Real MKK;
	input Real K3;
	input Real MKK_P;
	input Real K4;
        output Real y;
    algorithm
        y :=  k3 * MKKK_P * MKK / K3 / (1 + MKK / K3 + MKK_P / K4);
    end function_3;


    function function_6
        	input Real P1;
	input Real MKK_P;
	input Real MKK_PP;
	input Real MK_P;
	input Real MK_PP;
	input Real MKK;
	input Real MK;
	input Real k6a;
	input Real K6a;
	input Real MKKK;
	input Real MKKK_P;
	input Real P2;
	input Real K6b;
	input Real K2a;
	input Real Kse1;
	input Real K5a;
	input Real k6b;
	input Real K5b;
	input Real Kse2;
	input Real K10b;
	input Real K9b;
        output Real y;
    algorithm
        y :=  k6a * P1 * MKK_P / K6a / (1 + MKKK_P / K2a + MKKK / Kse1 + MKK_PP / K5a + MKK_P / K6a + MKK / Kse1) + k6b * P2 * MKK_P / K6b / (1 + MKK_PP / K5b + MKK_P / K6b + MKK / Kse2 + MK / Kse2 + MK_P / K10b + MK_PP / K9b);
    end function_6;


    function function_1
        	input Real MKKK;
	input Real K1;
	input Real k1;
	input Real Sig;
        output Real y;
    algorithm
        y :=  k1 * Sig * MKKK / (K1 + MKKK);
    end function_1;


    function function_4
        	input Real k4;
	input Real MKKK_P;
	input Real MKK_P;
	input Real K4;
	input Real MKK;
	input Real K3;
        output Real y;
    algorithm
        y :=  k4 * MKKK_P * MKK_P / K4 / (1 + MKK / K3 + MKK_P / K4);
    end function_4;


    function function_5
        	input Real MKK_PP;
	input Real MKK_P;
	input Real MK_P;
	input Real MK_PP;
	input Real P1;
	input Real MKK;
	input Real MK;
	input Real k5a;
	input Real K5a;
	input Real MKKK;
	input Real MKKK_P;
	input Real k5b;
	input Real P2;
	input Real K5b;
	input Real K6a;
	input Real Kse1;
	input Real K2a;
	input Real K6b;
	input Real Kse2;
	input Real K10b;
	input Real K9b;
        output Real y;
    algorithm
        y :=  k5a * P1 * MKK_PP / K5a / (1 + MKKK_P / K2a + MKKK / Kse1 + MKK_PP / K5a + MKK_P / K6a + MKK / Kse1) + k5b * P2 * MKK_PP / K5b / (1 + MKK_PP / K5b + MKK_P / K6b + MKK / Kse2 + MK / Kse2 + MK_P / K10b + MK_PP / K9b);
    end function_5;


    function function_7
        	input Real k7;
	input Real MKK_PP;
	input Real MK;
	input Real K7;
	input Real MK_P;
	input Real K8;
        output Real y;
    algorithm
        y :=  k7 * MKK_PP * MK / K7 / (1 + MK / K7 + MK_P / K8);
    end function_7;


    function function_9
        	input Real MK_PP;
	input Real MKK_PP;
	input Real MKK_P;
	input Real MK_P;
	input Real MKK;
	input Real MK;
	input Real P2;
	input Real K9b;
	input Real K5b;
	input Real K6b;
	input Real Kse2;
	input Real K10b;
	input Real k9b;
        output Real y;
    algorithm
        y :=  k9b * P2 * MK_PP / K9b / (1 + MKK_PP / K5b + MKK_P / K6b + MKK / Kse2 + MK / Kse2 + MK_P / K10b + MK_PP / K9b);
    end function_9;


    function function_8
        	input Real k7;
	input Real MKK_PP;
	input Real MK_P;
	input Real K8;
	input Real MK;
	input Real K7;
        output Real y;
    algorithm
        y :=  k7 * MKK_PP * MK_P / K8 / (1 + MK / K7 + MK_P / K8);
    end function_8;


    parameter Real parameter_1 = 100.0;
    parameter Real parameter_2 = 54.3;
    parameter Real parameter_3 = 50.5;
    parameter Real parameter_4 = 500.0;
    parameter Real parameter_5 = 24.3;
    parameter Real parameter_6 = 108.6;
    parameter Real parameter_7 = 50.5;
    parameter Real parameter_8 = 500.0;
    parameter Real parameter_9 = 24.3;
    parameter Real parameter_10 = 108.6;
    parameter Real parameter_11 = 3e+51;
    parameter Real parameter_12 = 3e+51;
    parameter Real parameter_13 = 24.3;
    parameter Real parameter_14 = 108.6;
    parameter Real k1_0 = 1.0;
    parameter Real k2a_1 = 0.086;
    parameter Real k3_2 = 0.01;
    parameter Real k4_3 = 15.0;
    parameter Real k5a_4 = 0.092;
    parameter Real k5b_4 = 0.092;
    parameter Real k6a_5 = 0.086;
    parameter Real k6b_5 = 0.086;
    parameter Real k7_6 = 0.01;
    parameter Real k7_7 = 15.0;
    parameter Real k9b_8 = 0.092;
    parameter Real k10b_9 = 0.086;
    parameter Real compartment_1 = 1.0;
    parameter Real compartment_2 = 1.0;



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

initial equation
    species_1 = 300.0;
    species_2 = 0.0;
    species_3 = 1199.99994221325;
    species_4 = 0.0;
    species_5 = 0.0;
    species_6 = 1199.99994221325;
    species_7 = 0.0;
    species_8 = 0.0;
    species_9 = 100.0;
    species_10 = 200.0;
    species_11 = 20.0;

equation

    der(species_1) = (compartment_1 * function_2(species_2, species_1, species_9, species_5, species_4, species_3, parameter_11, parameter_2, parameter_5, parameter_6, k2a_1)) - (compartment_1 * function_1(species_1, parameter_1, k1_0, species_11));
    der(species_2) = (compartment_1 * function_1(species_1, parameter_1, k1_0, species_11)) - (compartment_1 * function_2(species_2, species_1, species_9, species_5, species_4, species_3, parameter_11, parameter_2, parameter_5, parameter_6, k2a_1));
    der(species_3) = (compartment_1 * function_6(species_9, species_4, species_5, species_7, species_8, species_3, species_6, k6a_5, parameter_6, species_1, species_2, species_10, parameter_14, parameter_2, parameter_11, parameter_5, k6b_5, parameter_13, parameter_12, parameter_10, parameter_9)) - (compartment_1 * function_3(k3_2, species_2, species_3, parameter_3, species_4, parameter_4));
    der(species_4) = (compartment_1 * function_3(k3_2, species_2, species_3, parameter_3, species_4, parameter_4)) + (compartment_1 * function_5(species_5, species_4, species_7, species_8, species_9, species_3, species_6, k5a_4, parameter_5, species_1, species_2, k5b_4, species_10, parameter_13, parameter_6, parameter_11, parameter_2, parameter_14, parameter_12, parameter_10, parameter_9)) - (compartment_1 * function_4(k4_3, species_2, species_4, parameter_4, species_3, parameter_3)) - (compartment_1 * function_6(species_9, species_4, species_5, species_7, species_8, species_3, species_6, k6a_5, parameter_6, species_1, species_2, species_10, parameter_14, parameter_2, parameter_11, parameter_5, k6b_5, parameter_13, parameter_12, parameter_10, parameter_9));
    der(species_5) = (compartment_1 * function_4(k4_3, species_2, species_4, parameter_4, species_3, parameter_3)) - (compartment_1 * function_5(species_5, species_4, species_7, species_8, species_9, species_3, species_6, k5a_4, parameter_5, species_1, species_2, k5b_4, species_10, parameter_13, parameter_6, parameter_11, parameter_2, parameter_14, parameter_12, parameter_10, parameter_9));
    der(species_6) = (compartment_1 * function_10(species_7, species_5, species_4, species_8, species_3, species_6, species_10, parameter_10, parameter_13, parameter_14, parameter_12, parameter_9, k10b_9)) - (compartment_1 * function_7(k7_6, species_5, species_6, parameter_7, species_7, parameter_8));
    der(species_7) = (compartment_1 * function_7(k7_6, species_5, species_6, parameter_7, species_7, parameter_8)) + (compartment_1 * function_9(species_8, species_9, species_4, species_7, species_3, species_6, species_10, parameter_9, parameter_13, parameter_14, parameter_12, parameter_10, k9b_8)) - (compartment_1 * function_8(k7_7, species_5, species_7, parameter_8, species_6, parameter_7)) - (compartment_1 * function_10(species_7, species_5, species_4, species_8, species_3, species_6, species_10, parameter_10, parameter_13, parameter_14, parameter_12, parameter_9, k10b_9));
    der(species_8) = (compartment_1 * function_8(k7_7, species_5, species_7, parameter_8, species_6, parameter_7)) - (compartment_1 * function_9(species_8, species_9, species_4, species_7, species_3, species_6, species_10, parameter_9, parameter_13, parameter_14, parameter_12, parameter_10, k9b_8));
    der(species_9) = 0.0;
    der(species_10) = 0.0;
    der(species_11) = 0.0;




end BIOMD432;
