
model BIOMD323 "Kim2011_Oscillator_SimpleIII"

    function pow
        input  Real x;
        input  Real power;
        output Real y;
        algorithm
            y := x^power;
    end pow;


    function function_1
        	input Real V;
	input Real Shalve;
	input Real h;
	input Real substrate;
        output Real y;
    algorithm
        y :=  V / (Shalve^h + substrate^h);
    end function_1;


    function function_3
        	input Real x;
	input Real beta;
        output Real y;
    algorithm
        y :=  x / beta / (1 + x / beta);
    end function_3;


    parameter Real parameter_1 = 1.0;
    parameter Real parameter_2 = 0.3;
    parameter Real parameter_3 = 5.0;
    parameter Real Shalve_0 = 1.0;
    parameter Real Shalve_1 = 1.0;
    parameter Real Shalve_2 = 1.0;
    parameter Real compartment_1 = 1.0;



    Real species_1;
    Real species_2;
    Real species_3;

initial equation
    species_1 = 0.0;
    species_2 = 0.0;
    species_3 = 0.33;

equation

    der(species_1) = (compartment_1 * function_1(parameter_1, Shalve_0, parameter_3, species_1)) + (compartment_1 * function_1(parameter_1, Shalve_1, parameter_3, species_2)) - (compartment_1 * function_1(parameter_1, Shalve_0, parameter_3, species_1)) - (compartment_1 * function_3(species_1, parameter_2));
    der(species_2) = (compartment_1 * function_1(parameter_1, Shalve_1, parameter_3, species_2)) + (compartment_1 * function_1(parameter_1, Shalve_2, parameter_3, species_3)) - (compartment_1 * function_1(parameter_1, Shalve_1, parameter_3, species_2)) - (compartment_1 * function_3(species_2, parameter_2));
    der(species_3) = (compartment_1 * function_1(parameter_1, Shalve_0, parameter_3, species_1)) + (compartment_1 * function_1(parameter_1, Shalve_2, parameter_3, species_3)) - (compartment_1 * function_1(parameter_1, Shalve_2, parameter_3, species_3)) - (compartment_1 * function_3(species_3, parameter_2));




end BIOMD323;
