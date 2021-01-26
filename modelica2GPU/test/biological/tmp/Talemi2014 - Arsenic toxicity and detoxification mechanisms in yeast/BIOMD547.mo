
model BIOMD547 "Talemi2014 - Arsenic toxicity and detoxification mechanisms in yeast"

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


    function function_3
        	input Real S;
	input Real M;
	input Real k;
	input Real ko;
        output Real y;
    algorithm
        y :=  k * ko * M * S;
    end function_3;


    function function_7
        	input Real M;
	input Real k;
	input Real ko;
        output Real y;
    algorithm
        y :=  k * ko * M;
    end function_7;


    function function_6
        	input Real Substrate;
	input Real k;
	input Real Mod1;
	input Real Mod;
	input Real k1;
	input Real kb;
        output Real y;
    algorithm
        y :=  Substrate * (k * Mod1 + k1 * Mod + kb);
    end function_6;


    function function_2
        	input Real k;
	input Real ko;
	input Real sub;
	input Real sub2;
        output Real y;
    algorithm
        y :=  k * ko * sub * sub2;
    end function_2;


    function function_1
        	input Real V;
	input Real Mod;
	input Real k;
	input Real Ex;
	input Real In;
        output Real y;
    algorithm
        y :=  (36 * pi)^(1 / 3) * V^(2 / 3) * Mod * k * (Ex - In);
    end function_1;


    function function_8
        	input Real V;
	input Real k;
	input Real Sub;
        output Real y;
    algorithm
        y :=  (36 * pi)^(1 / 3) * V^(2 / 3) * k * Sub;
    end function_8;


    function function_4
        	input Real ko;
	input Real Mod;
	input Real k;
	input Real V;
	input Real Sub;
        output Real y;
    algorithm
        y :=  ko * Mod * k * (36 * pi)^(1 / 3) * V^(2 / 3) * Sub;
    end function_4;


    function function_5
        	input Real V;
	input Real Mod;
	input Real Vmax;
	input Real Sub;
	input Real Km;
        output Real y;
    algorithm
        y :=  (36 * pi)^(1 / 3) * V^(2 / 3) * Mod * Vmax * Sub / (Km + Sub);
    end function_5;


    parameter Real parameter_5 = 100.0;
    parameter Real parameter_6 = 1000.0;
    parameter Real parameter_7 = 0.0;
    parameter Real parameter_8 = 3600.0;
    parameter Real parameter_9 = 30.0;
    parameter Real parameter_11 = 74.9216;
    parameter Real parameter_1 = 0.0299643;
    parameter Real parameter_4 = 13.1549;
    parameter Real parameter_19 = 1600.0;
    parameter Real parameter_20 = 5.99924;
    parameter Real parameter_21 = 2.82037;
    parameter Real parameter_23 = 1.0;
    parameter Real parameter_24 = 20.0;
    parameter Real parameter_25 = 1.0;
    parameter Real parameter_26 = 0.0757274;
    parameter Real parameter_27 = 161.334;
    parameter Real parameter_28 = 1.0;
    parameter Real parameter_29 = 0.000257134;
    parameter Real parameter_30 = 1102.15;
    parameter Real parameter_31 = 0.0730991;
    parameter Real parameter_32 = 0.0719168;
    parameter Real parameter_33 = 0.00215551;
    parameter Real parameter_34 = 1.0;
    parameter Real parameter_35 = 5.16159e-06;
    parameter Real parameter_36 = 3.49703e-06;
    parameter Real parameter_37 = 1.92773e-07;
    parameter Real parameter_38 = 1.0;
    parameter Real parameter_39 = 0.202797;
    parameter Real parameter_40 = 6.1432;
    parameter Real parameter_41 = 0.00880734;
    parameter Real parameter_42 = 0.000656918;
    parameter Real parameter_43 = 9.01422e-13;
    parameter Real Compartment_3 = compartment_4;
    parameter Real Metabolite_9 = species_1;
    parameter Real Metabolite_6 = species_14;
    parameter Real Metabolite_5 = species_11;
    parameter Real Metabolite_0 = species_6;
    parameter Real Compartment_2 = compartment_1;
    parameter Real ModelValue_13 = parameter_1;
    parameter Real ModelValue_22 = parameter_23;
    parameter Real compartment_2 = 1.0;
    parameter Real compartment_3 = 1.0;
    parameter Real compartment_1 = 1.0;
    parameter Real compartment_4 = 1.0;

    Real parameter_10(start=2.23608418558333);
    Real parameter_13(start=0.0295675846752);
    Real parameter_14(start=0.396414424956046);
    Real parameter_15(start=1.56171831472237);
    Real parameter_16(start=0.248383861229718);
    Real parameter_17(start=0.613679067652423);
    Real parameter_18(start=94.4848375418143);
    Real parameter_2(start=2.16561157822054e-17);
    Real parameter_3(start=0.0760172717109222);
    Real parameter_12(start=0.167);
    Real parameter_22(start=1.0);
    Real Asngpermil_ex(start=0.374608);

    Real species_6;
    Real species_5;
    Real species_10;
    Real species_9;
    Real species_15;
    Real species_11;
    Real species_14;
    Real species_4;
    Real species_3;
    Real species_1;
    Real species_2;
    Real species_7;

initial equation
    species_5 = piecewise(0.013151, parameter_25 > 0, 0.013151 * parameter_24) * compartment_3;
    species_10 = piecewise((species_9 / compartment_3) * (species_1 / compartment_4) * parameter_26 / parameter_27, parameter_28 > 0, 0) * compartment_3;
    species_9 = piecewise(0.167 / ((species_1 / compartment_4) * parameter_26 / parameter_27 + 1), parameter_28 > 0, 0.167) * compartment_3;
    species_15 = ((species_11 / compartment_3) * (parameter_29 * (species_1 / compartment_4) + parameter_30 * (species_10 / compartment_3) + parameter_31) / parameter_32) * compartment_3;
    species_11 = (0.03 / ((parameter_29 * (species_1 / compartment_4) + parameter_30 * (species_10 / compartment_3) + parameter_31) / parameter_32 + 1)) * compartment_3;
    species_14 = piecewise((species_11 / compartment_3) * parameter_33 * (species_6 / compartment_2 - species_1 / compartment_4) / (parameter_34 * (species_1 / compartment_4) / (parameter_35 + species_1 / compartment_4)), parameter_25 > 0, 0) * compartment_3;
    species_4 = piecewise(parameter_36 * (species_5 / compartment_3) * (species_3 / compartment_4) / parameter_37, parameter_38 > 0, 0) * compartment_1;
    species_3 = (parameter_39 * parameter_22 * (species_1 / compartment_4) * (species_7 / compartment_4) / parameter_40) * compartment_4;
    species_1 = piecewise(parameter_4, parameter_25 > 0, 100) * compartment_4;
    species_2 = (parameter_41 * (species_1 / compartment_4) / parameter_42) * compartment_4;
    species_7 = piecewise(parameter_19 * parameter_22, parameter_25 > 0, piecewise(parameter_19 * parameter_21, parameter_28 > 0, parameter_19 * parameter_20)) * compartment_4;

equation
    parameter_10 = (species_1 / compartment_4 + species_2 / compartment_4 + species_3 / compartment_4) * Compartment_3 * parameter_11 * pow(10, 9) + species_4 / compartment_1 * Compartment_2 * parameter_11 * pow(10, 9);
    parameter_13 = species_1 / compartment_4 * Compartment_3 * parameter_11 * pow(10, 9);
    parameter_14 = species_2 / compartment_4 * Compartment_3 * parameter_11 * pow(10, 9);
    parameter_15 = species_3 / compartment_4 * Compartment_3 * parameter_11 * pow(10, 9);
    species_6 = piecewise(parameter_5, lt(time, parameter_7), piecewise((parameter_5 + parameter_6) * exp((parameter_8 - time) / parameter_9), gt(time, parameter_8), parameter_5 + parameter_6 * (1 - exp((parameter_7 - time) / parameter_9)))) * compartment_2;
    parameter_16 = species_4 / compartment_1 * Compartment_2 * parameter_11 * pow(10, 9);
    parameter_18 = 100 * (species_15 / compartment_3) / ModelValue_13;
    parameter_2 = parameter_43 * Metabolite_6 / Metabolite_9;
    parameter_3 = piecewise(parameter_33 * Metabolite_5 * (Metabolite_0 - Metabolite_9) / (Metabolite_6 * Metabolite_9), gt(parameter_25, 0), 0);
    parameter_12 = species_9 / compartment_3 + species_10 / compartment_3;
    parameter_17 = 100 * (species_10 / compartment_3) / parameter_12;
    parameter_22 = piecewise(1, gt(ModelValue_22, 0), 0.2175);
    Asngpermil_ex = species_6 / compartment_2 * compartment_3 * parameter_11 * pow(10, 9);
    der(species_5) = 0.0;
    der(species_10) = (compartment_3 * function_3(species_9 / compartment_3, species_1 / compartment_4, parameter_26, parameter_28)) - (parameter_27 * species_10);
    der(species_9) = (parameter_27 * species_10) - (compartment_3 * function_3(species_9 / compartment_3, species_1 / compartment_4, parameter_26, parameter_28));
    der(species_15) = (compartment_3 * function_6(species_11 / compartment_3, parameter_29, species_1 / compartment_4, species_10 / compartment_3, parameter_30, parameter_31)) - (parameter_32 * species_15);
    der(species_11) = (parameter_32 * species_15) - (compartment_3 * function_6(species_11 / compartment_3, parameter_29, species_1 / compartment_4, species_10 / compartment_3, parameter_30, parameter_31));
    der(species_14) = (compartment_3 * function_7(species_1 / compartment_4, parameter_2, parameter_25)) - (parameter_43 * species_14);
    der(species_4) = (function_4(parameter_38, species_5 / compartment_3, parameter_36, compartment_1, species_3 / compartment_4)) - (function_8(compartment_1, parameter_37, species_4 / compartment_1));
    der(species_3) = (compartment_4 * function_2(parameter_39, parameter_22, species_1 / compartment_4, species_7 / compartment_4)) + (function_8(compartment_1, parameter_37, species_4 / compartment_1)) - (function_4(parameter_38, species_5 / compartment_3, parameter_36, compartment_1, species_3 / compartment_4)) - (parameter_40 * species_3);
    der(species_1) = (function_1(compartment_3, species_11 / compartment_3, parameter_33, species_6 / compartment_2, species_1 / compartment_4)) + (parameter_42 * species_2) + (parameter_40 * species_3) - (parameter_41 * species_1) - (compartment_4 * function_2(parameter_39, parameter_22, species_1 / compartment_4, species_7 / compartment_4)) - (function_5(compartment_3, species_14 / compartment_3, parameter_34, species_1 / compartment_4, parameter_35));
    der(species_2) = (parameter_41 * species_1) - (parameter_42 * species_2);
    der(species_7) = (parameter_40 * species_3) - (compartment_4 * function_2(parameter_39, parameter_22, species_1 / compartment_4, species_7 / compartment_4));




end BIOMD547;
