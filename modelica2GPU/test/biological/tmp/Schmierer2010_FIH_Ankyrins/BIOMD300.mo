
model BIOMD300 "Schmierer2010_FIH_Ankyrins"

    function pow
        input  Real x;
        input  Real power;
        output Real y;
        algorithm
            y := x^power;
    end pow;


    function function_1
        	input Real v;
        output Real y;
    algorithm
        y =  v;
    end function_1;


    function function_2
        	input Real kcatPH;
	input Real Ptot;
	input Real O2;
	input Real KdPH;
	input Real Htot;
	input Real HP;
        output Real y;
    algorithm
        y =  Htot * kcatPH * Ptot * O2 / (1 + O2) / (KdPH + Ptot + HP);
    end function_2;


    function vFH
        	input Real Ftot;
	input Real O2;
	input Real alpha;
	input Real H;
	input Real KiFH;
	input Real HF;
	input Real KcatFH;
        output Real y;
    algorithm
        y =  H * KcatFH * Ftot * O2 / (alpha + O2) / (KiFH + Ftot + HF);
    end vFH;


    function vFA
        	input Real Ftot;
	input Real O2;
	input Real alpha;
	input Real A;
	input Real gamma;
	input Real Atot;
	input Real KiFA;
	input Real KcatFH;
        output Real y;
    algorithm
        y =  A * KcatFH * Ftot * O2 / (alpha + O2) / (KiFA + A + gamma * (Atot - A));
    end vFA;


    function function_3
        	input Real H;
	input Real kcatPH;
	input Real Ptot;
	input Real O2;
	input Real KdPH;
	input Real HP;
        output Real y;
    algorithm
        y =  H * kcatPH * Ptot * O2 / (1 + O2) / (KdPH + Ptot + HP);
    end function_3;


    parameter Real parameter_1 = 0.33;
    parameter Real parameter_2 = 1.0;
    parameter Real parameter_3 = 1.0;
    parameter Real parameter_4 = 1.0;
    parameter Real parameter_5 = 0.3;
    parameter Real parameter_6 = 0.0;
    parameter Real parameter_8 = 500.0;
    parameter Real parameter_10 = 1.0;
    parameter Real parameter_11 = 5.0;
    parameter Real parameter_17 = 1.0;
    parameter Real parameter_18 = 1.0;
    parameter Real compartment_1 = 1.0;

    Real parameter_14(start=0.2);
    Real parameter_16(start=20.0);
    Real parameter_7(start=101.0);
    Real parameter_9(start=1.0);
    Real parameter_13(start=500.0);

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

initial equation
    species_1 = 0.0;
    species_2 = 0.0;
    species_3 = 100.0;
    species_5 = 100.0;
    species_7 = 1.0;
    species_8 = 0.2;
    species_11 = 0.0;

equation
    species_4 = species_1 - species_2;
    species_6 = species_5 - species_3;
    species_10 = 0.5 * (species_1 - species_8 - parameter_4 + sqrt(pow(parameter_4 - species_1 + species_8, 2) + 4 * species_1 * parameter_4));
    species_13 = species_2 / (parameter_5 + species_1);
    species_14 = species_1 / (parameter_5 + species_1);
    species_16 = species_3 / species_5;
    species_15 = (species_1 - species_2) / (parameter_5 + species_1);
    parameter_14 = 1 / parameter_11;
    parameter_16 = species_5 / parameter_11;
    parameter_7 = parameter_2 / parameter_3 * (parameter_3 + species_3 + parameter_6 * (species_5 - species_3));
    species_9 = 0.5 * (species_2 - species_7 - parameter_7 + sqrt(pow(parameter_7 - species_2 + species_7, 2) + 4 * species_2 * parameter_7));
    species_12 = (parameter_2 + species_9) / (parameter_7 + species_9);
    parameter_9 = parameter_3 / parameter_2 * (parameter_2 + species_9);
    parameter_13 = parameter_8 * parameter_10;
    der(species_1) = (compartment_1 * function_1(parameter_18)) - (compartment_1 * parameter_17 * species_1) - (compartment_1 * function_2(parameter_8, species_8, species_11, parameter_4, species_1, species_10));
    der(species_2) = (compartment_1 * function_1(parameter_18)) - (compartment_1 * parameter_17 * species_2) - (compartment_1 * function_3(species_2, parameter_8, species_8, species_11, parameter_4, species_10)) - (compartment_1 * vFH(species_7, species_11, parameter_1, species_2, parameter_7, species_9, parameter_13));
    der(species_3) = (compartment_1 * function_1(parameter_16)) - (compartment_1 * parameter_14 * species_3) - (compartment_1 * vFA(species_7, species_11, parameter_1, species_3, parameter_6, species_5, parameter_9, parameter_13));
    der(species_5) = 0.0;
    der(species_7) = 0.0;
    der(species_8) = 0.0;
    der(species_11) = 0.0;




end BIOMD300;
