
model BIOMD415 "Mellor2012_LipooxygenasePathway"

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
        	input Real substrate;
	input Real Km;
	input Real V;
        output Real y;
    algorithm
        y :=  V * substrate / (Km + substrate);
    end function_1;


    parameter Real parameter_1 = 0.49;
    parameter Real parameter_2 = 0.00825;
    parameter Real parameter_3 = 0.49;
    parameter Real parameter_4 = 0.039;
    parameter Real parameter_5 = 0.49;
    parameter Real parameter_6 = 0.00255;
    parameter Real parameter_7 = 0.05;
    parameter Real parameter_8 = 0.285;
    parameter Real compartment_1 = 1.0;

    Real parameter_9(start=0.038475);

    Real species_1;
    Real species_7;
    Real species_8;
    Real species_9;
    Real species_10;
    Real species_11;
    Real species_12;
    Real species_13;
    Real species_14;
    Real species_15;

initial equation
    species_1 = 6.69999967735732e-05;
    species_7 = 0.0;
    species_8 = 0.0;
    species_9 = 0.0;
    species_10 = 0.0;
    species_11 = 0.0;
    species_12 = 0.0;
    species_13 = 0.0;
    species_14 = 0.0;
    species_15 = 0.0;

equation
    parameter_9 = 0.135 * parameter_8;
    der(species_1) =  - (compartment_1 * function_1(species_1, parameter_1, parameter_2)) - (compartment_1 * function_1(species_1, parameter_3, parameter_4)) - (compartment_1 * function_1(species_1, parameter_5, parameter_6));
    der(species_7) = (0.574 * compartment_1 * function_1(species_1, parameter_1, parameter_2)) + (0.751 * compartment_1 * function_1(species_1, parameter_3, parameter_4)) + (0.068 * compartment_1 * function_1(species_1, parameter_5, parameter_6)) - (compartment_1 * function_1(species_7, parameter_7, parameter_8));
    der(species_8) = (0.144 * compartment_1 * function_1(species_1, parameter_1, parameter_2)) + (0.023 * compartment_1 * function_1(species_1, parameter_3, parameter_4)) + (0.059 * compartment_1 * function_1(species_1, parameter_5, parameter_6)) - (compartment_1 * function_1(species_8, parameter_7, parameter_9));
    der(species_9) = (0.05 * compartment_1 * function_1(species_1, parameter_1, parameter_2)) + (0.025 * compartment_1 * function_1(species_1, parameter_3, parameter_4)) + (0.136 * compartment_1 * function_1(species_1, parameter_5, parameter_6)) ;
    der(species_10) = (0.012 * compartment_1 * function_1(species_1, parameter_1, parameter_2)) + (0.015 * compartment_1 * function_1(species_1, parameter_3, parameter_4)) + (0.107 * compartment_1 * function_1(species_1, parameter_5, parameter_6)) ;
    der(species_11) = (0.162 * compartment_1 * function_1(species_1, parameter_1, parameter_2)) + (0.127 * compartment_1 * function_1(species_1, parameter_3, parameter_4)) + (0.218 * compartment_1 * function_1(species_1, parameter_5, parameter_6)) ;
    der(species_12) = (0.04 * compartment_1 * function_1(species_1, parameter_1, parameter_2)) + (0.026 * compartment_1 * function_1(species_1, parameter_3, parameter_4)) + (0.218 * compartment_1 * function_1(species_1, parameter_5, parameter_6)) ;
    der(species_13) = (0.014 * compartment_1 * function_1(species_1, parameter_1, parameter_2)) + (0.018 * compartment_1 * function_1(species_1, parameter_3, parameter_4)) + (0.098 * compartment_1 * function_1(species_1, parameter_5, parameter_6)) ;
    der(species_14) = (0.004 * compartment_1 * function_1(species_1, parameter_1, parameter_2)) + (0.016 * compartment_1 * function_1(species_1, parameter_3, parameter_4)) + (0.097 * compartment_1 * function_1(species_1, parameter_5, parameter_6)) ;
    der(species_15) = (compartment_1 * function_1(species_7, parameter_7, parameter_8)) + (compartment_1 * function_1(species_8, parameter_7, parameter_9)) ;




end BIOMD415;
