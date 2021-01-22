
model BIOMD498 "Mitchell2013 - Liver Iron Metabolism"

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


    function function_5
        	input Real v;
        output Real y;
    algorithm
        y :=  v;
    end function_5;


    function function_10
        	input Real substrate;
	input Real Km;
	input Real V;
        output Real y;
    algorithm
        y :=  V * substrate / (Km + substrate);
    end function_10;


    function function_3
        	input Real a;
	input Real M;
	input Real n;
	input Real K;
        output Real y;
    algorithm
        y :=  a * (1 - M^n / (K^n + M^n));
    end function_3;


    function function_2
        	input Real a;
	input Real n;
	input Real K;
	input Real M;
        output Real y;
    algorithm
        y :=  a * M^n / (K^n + M^n);
    end function_2;


    function function_7
        	input Real a;
	input Real M;
	input Real n;
	input Real K;
	input Real L;
        output Real y;
    algorithm
        y :=  a * (M^n / (K^n + M^n)) * L;
    end function_7;


    function function_4
        	input Real a;
	input Real M;
	input Real n;
	input Real K;
	input Real L;
        output Real y;
    algorithm
        y :=  a * (1 - M^n / (K^n + M^n)) * L;
    end function_4;


    function function_9
        	input Real a;
	input Real M;
	input Real K;
        output Real y;
    algorithm
        y :=  a * (M / (K + M));
    end function_9;


    function function_8
        	input Real S;
	input Real kloss;
	input Real FT1;
	input Real FT;
        output Real y;
    algorithm
        y :=  S * kloss * (1 + 0.048 * (FT1 / FT) / (1 + FT1 / FT));
    end function_8;


    function function_12
        	input Real K;
	input Real FT1;
	input Real FT;
	input Real S;
        output Real y;
    algorithm
        y :=  K * (FT1 / FT) * S;
    end function_12;


    function function_1
        	input Real a;
	input Real M;
	input Real n;
	input Real K;
	input Real S;
        output Real y;
    algorithm
        y :=  a * (M^n / (K^n + M^n)) * S;
    end function_1;


    function function_6
        	input Real E;
	input Real C;
	input Real S;
	input Real K;
        output Real y;
    algorithm
        y :=  E * C * S / (K + S);
    end function_6;


    function function_11
        	input Real basal;
	input Real a;
	input Real M;
	input Real n;
	input Real K;
	input Real a1;
	input Real M1;
	input Real K1;
        output Real y;
    algorithm
        y :=  basal + a * M^n / (K^n + M^n) + a1 * M1 / (K1 + M1);
    end function_11;


    parameter Real a_0 = 2.0;
    parameter Real n_0 = 1.0;
    parameter Real K_0 = 3e-06;
    parameter Real a_1 = 6e-12;
    parameter Real n_1 = 1.0;
    parameter Real K_1 = 1e-06;
    parameter Real k1_2 = 8.37e-06;
    parameter Real a_3 = 1e-09;
    parameter Real n_3 = 1.0;
    parameter Real K_3 = 5e-06;
    parameter Real a_4 = 4e-11;
    parameter Real n_4 = 1.0;
    parameter Real K_4 = 1e-06;
    parameter Real k1_5 = 1.597e-05;
    parameter Real a_6 = 0.0002315;
    parameter Real n_6 = 5.0;
    parameter Real K_6 = 5e-09;
    parameter Real k1_7 = 6.418e-05;
    parameter Real v_8 = 2.3469e-11;
    parameter Real v_9 = 3e-11;
    parameter Real a_10 = 3.2e-05;
    parameter Real n_10 = 1.0;
    parameter Real K_10 = 2.5e-06;
    parameter Real basal_11 = 0.0;
    parameter Real a_11 = 5e-12;
    parameter Real n_11 = 5.0;
    parameter Real K_11 = 1.35e-07;
    parameter Real a1_11 = 5e-12;
    parameter Real K1_11 = 6e-07;
    parameter Real k1_12 = 0.00056;
    parameter Real k1_13 = 1102000.0;
    parameter Real k1_14 = 0.08;
    parameter Real k1_15 = 837400.0;
    parameter Real k1_16 = 0.0009142;
    parameter Real k1_17 = 394380000000.0;
    parameter Real k1_18 = 0.0018;
    parameter Real k1_19 = 222390.0;
    parameter Real k1_20 = 0.0061;
    parameter Real k1_21 = 121400.0;
    parameter Real k1_22 = 0.003535;
    parameter Real k1_23 = 1102000.0;
    parameter Real k1_24 = 0.08;
    parameter Real k1_25 = 69600.0;
    parameter Real k1_26 = 0.024;
    parameter Real k1_27 = 0.8333;
    parameter Real k1_28 = 0.8333;
    parameter Real k1_29 = 0.0004;
    parameter Real k1_30 = 47100000000.0;
    parameter Real k1_31 = 22922.0;
    parameter Real k1_32 = 108000.0;
    parameter Real kloss_33 = 13.112;
    parameter Real a_34 = 2.312e-13;
    parameter Real n_34 = 1.0;
    parameter Real K_34 = 1e-06;
    parameter Real k1_35 = 1.203e-05;
    parameter Real K_36 = 1.203e-05;
    parameter Real k1_37 = 8.37e-07;
    parameter Real k1_38 = 8.37e-05;
    parameter Real Km_39 = 0.000125;
    parameter Real V_39 = 1.034e-05;
    parameter Real Km_40 = 1.78e-05;
    parameter Real V_40 = 2.18e-05;
    parameter Real a_41 = 2.1432e-15;
    parameter Real K_41 = 1e-09;
    parameter Real k1_42 = 3.209e-05;
    parameter Real C_43 = 17777.7;
    parameter Real K_43 = 2e-06;
    parameter Real compartment_1 = 1.0;
    parameter Real compartment_3 = 1.0;

    Real parameter_1(start=1e-07);

    Real species_7;
    Real species_24;
    Real species_25;
    Real species_26;
    Real species_1;
    Real species_5;
    Real species_2;
    Real species_4;
    Real species_6;
    Real species_43;
    Real species_3;
    Real species_12;
    Real species_8;
    Real species_9;
    Real species_15;
    Real species_16;
    Real species_17;
    Real species_18;
    Real species_19;
    Real species_10;
    Real species_11;

initial equation
    species_7 = 5e-09;
    species_24 = 0.0;
    species_25 = 1.66e-10;
    species_26 = 0.0;
    species_1 = 3.56e-11;
    species_5 = 1e-09;
    species_2 = 1.3e-06;
    species_4 = 1e-09;
    species_6 = 1.16e-06;
    species_43 = 5e-06;
    species_3 = 4e-07;
    species_12 = 0.0;
    species_8 = 2e-07;
    species_9 = 0.0;
    species_15 = 0.0;
    species_16 = 0.0;
    species_17 = 0.0;
    species_18 = 0.0;
    species_19 = 0.0;
    species_10 = 3e-06;
    species_11 = 1e-07;

equation
    parameter_1 = piecewise(1e-7, lt(-5e-13 * pow(time - 40000, 2) + 0.0001, 1e-7), -5e-13 * pow(time - 40000, 2) + 0.0001);
    der(species_7) = (compa_11rtmen_11t_1 * fun_11ction_11_11(ba_11sa_11l_11, a_11, species_18, n_11, K_11, a_111, species_19, K_111)) - (compartment_1 * k1_12 * species_7);
    der(species_24) = (compartment_1 * k1_30 * species_2 * species_25) - (compartment_1 * k1_31 * species_24) - (compartment_1 * k1_32 * species_24);
    der(species_25) = (compartment_1 * k1_31 * species_24) + (compartment_1 * k1_32 * species_24) + (compa_34rtmen_34t_1 * fun_34ction_34_3(a_34, species_6, n_34, K_34)) - (compartment_1 * k1_30 * species_2 * species_25) - (compartment_1 * k1_35 * species_25);
    der(species_26) = (compartment_1 * k1_32 * species_24) - (compartment_1 * function_8(species_26, kloss_33, species_26, species_25)) - (compartment_1 * function_12(K_36, species_26, species_25, species_25));
    der(species_1) = (compa_41rtment_1 * function_9(a_41, species_5, K_41)) - (compartment_1 * k1_42 * species_1);
    der(species_5) = (function_10(species_11, Km_39, V_39)) - (function_10(species_5, Km_40, V_40)) - (compartment_1 * function_6(species_1, C_43, species_5, K_43));
    der(species_2) = (4.0 * k1_27 * species_16) + (4.0 * k1_28 * species_19) + (compartment_1 * k1_31 * species_24) + (compartment_1 * function_8(species_26, kloss_33, species_26, species_25)) + (compartment_1 * function_12(K_36, species_26, species_25, species_25)) + (compartment_1 * function_6(species_1, C_43, species_5, K_43)) - (2.0 * fun_0ction_0_1(a_0, species_4, n_0, K_0, species_2)) - (compartment_1 * k1_29 * species_2) - (compartment_1 * k1_30 * species_2 * species_25);
    der(species_4) = (compa_3rtmen_3t_1 * fun_3ction_3_3(a_3, species_6, n_3, K_3)) - (compa_6rtmen_6t_1 * fun_6ction_6_7(a_6, species_7, n_6, K_6, species_4));
    der(species_6) = (compa_4rtmen_4t_1 * fun_4ction_4_3(a_4, species_2, n_4, K_4)) - (compartment_1 * k1_5 * species_6);
    der(species_43) = 0.0;
    der(species_3) = (compa_1rtmen_1t_3 * fun_1ction_1_2(a_1, n_1, K_1, species_6)) + (compartment_3 * k1_14 * species_9) + (compartment_3 * k1_16 * species_12) + (k1_27 * species_16) - (compartment_3 * k1_2 * species_3) - (compartment_3 * k1_13 * species_8 * species_3) - (compartment_3 * k1_15 * species_43 * species_3);
    der(species_12) = (compartment_3 * k1_15 * species_43 * species_3) + (compartment_3 * k1_22 * species_16) - (compartment_3 * k1_16 * species_12) - (compartment_3 * k1_21 * species_12 * species_43);
    der(species_8) = (compartment_3 * function_5(v_8)) + (compartment_3 * k1_14 * species_9) + (2.0 * compartment_3 * k1_18 * species_18) + (compartment_3 * k1_24 * species_17) - (compartment_3 * k1_7 * species_8) - (compartment_3 * k1_13 * species_8 * species_3) - (2.0 * compartment_3 * k1_17 * pow(species_8, 2) * species_10) - (compartment_3 * k1_23 * species_9 * species_8);
    der(species_9) = (compartment_3 * k1_13 * species_8 * species_3) + (compartment_3 * k1_24 * species_17) - (compartment_3 * k1_14 * species_9) - (compartment_3 * k1_23 * species_9 * species_8);
    der(species_15) = (compartment_3 * k1_19 * species_43 * species_10) + (compartment_3 * k1_26 * species_19) - (compartment_3 * k1_20 * species_15) - (compartment_3 * k1_25 * species_15 * species_43);
    der(species_16) = (compartment_3 * k1_21 * species_12 * species_43) - (compartment_3 * k1_22 * species_16) - (k1_27 * species_16);
    der(species_17) = (compartment_3 * k1_23 * species_9 * species_8) - (compartment_3 * k1_24 * species_17) - (compartment_3 * k1_37 * species_17);
    der(species_18) = (compartment_3 * k1_17 * pow(species_8, 2) * species_10) - (compartment_3 * k1_18 * species_18) - (compartment_3 * k1_38 * species_18);
    der(species_19) = (compartment_3 * k1_25 * species_15 * species_43) - (compartment_3 * k1_26 * species_19) - (k1_28 * species_19);
    der(species_10) = (compartment_3 * function_5(v_9)) + (compartment_3 * k1_18 * species_18) + (compartment_3 * k1_20 * species_15) + (k1_28 * species_19) - (compa_10rtmen_10t_3 * fun_10ction_10_4(a_10, species_43, n_10, K_10, species_10)) - (compartment_3 * k1_17 * pow(species_8, 2) * species_10) - (compartment_3 * k1_19 * species_43 * species_10);
    der(species_11) = 0.0;




end BIOMD498;
