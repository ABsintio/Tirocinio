
model BIOMD447 "Venkatraman2012 - Interplay between PLS and TSP1 in TGF-β1 activation"

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
        	input Real v;
        output Real y;
    algorithm
        y :=  v;
    end function_1;


    parameter Real parameter_1 = 0.035;
    parameter Real parameter_2 = 0.35;
    parameter Real parameter_3 = 1.4;
    parameter Real parameter_4 = 0.035;
    parameter Real parameter_5 = 24.5;
    parameter Real parameter_6 = 0.005;
    parameter Real parameter_7 = 0.35;
    parameter Real parameter_8 = 1.05;
    parameter Real parameter_9 = 17.5;
    parameter Real parameter_10 = 0.0245;
    parameter Real parameter_11 = 0.35;
    parameter Real parameter_12 = 24.5;
    parameter Real parameter_13 = 0.0105;
    parameter Real parameter_14 = 0.035;
    parameter Real parameter_15 = 0.0035;
    parameter Real parameter_16 = 0.07;
    parameter Real parameter_17 = 0.0035;
    parameter Real parameter_18 = 24.5;
    parameter Real parameter_19 = 0.21;
    parameter Real parameter_20 = 0.0525;
    parameter Real parameter_21 = 0.0175;
    parameter Real parameter_22 = 0.0035;
    parameter Real parameter_23 = 0.035;
    parameter Real compartment_1 = 1.0;



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

initial equation
    species_1 = 0.003;
    species_2 = 0.0;
    species_3 = 0.001;
    species_4 = 0.0;
    species_5 = 0.001;
    species_6 = 0.0;
    species_7 = 0.0;
    species_8 = 0.0;
    species_9 = 0.0;
    species_10 = 0.005;
    species_11 = 0.0;
    species_12 = 0.0;
    species_13 = 0.0;

equation

    der(species_1) = (compartment_1 * function_1(parameter_23)) - (compartment_1 * parameter_1 * species_3 * species_1) - (compartment_1 * parameter_3 * species_4 * species_1) - (compartment_1 * parameter_21 * species_1);
    der(species_2) = (compartment_1 * parameter_1 * species_3 * species_1) + (compartment_1 * parameter_2 * species_2 * species_3) + (compartment_1 * parameter_3 * species_4 * species_1) + (compartment_1 * parameter_4 * species_2 * species_5) + (compartment_1 * parameter_11 * species_9) - (compartment_1 * parameter_2 * species_2 * species_3) - (compartment_1 * parameter_4 * species_2 * species_5) - (compartment_1 * (parameter_9 * species_7 * species_2 - parameter_10 * species_9)) - (compartment_1 * (parameter_12 * species_10 * species_2 - parameter_13 * species_11)) - (compartment_1 * parameter_20 * species_2);
    der(species_3) = (compartment_1 * parameter_1 * species_3 * species_1) + (compartment_1 * function_1(parameter_22)) - (compartment_1 * parameter_1 * species_3 * species_1) - (compartment_1 * parameter_2 * species_2 * species_3) - (compartment_1 * (parameter_16 * species_8 * species_3 - parameter_17 * species_13)) - (compartment_1 * parameter_20 * species_3);
    der(species_4) = (compartment_1 * parameter_2 * species_2 * species_3) + (compartment_1 * parameter_3 * species_4 * species_1) - (compartment_1 * parameter_3 * species_4 * species_1) - (compartment_1 * (parameter_14 * species_8 * species_4 - parameter_15 * species_12)) - (compartment_1 * parameter_20 * species_4);
    der(species_5) = (compartment_1 * function_1(parameter_22)) - (compartment_1 * parameter_4 * species_2 * species_5) - (compartment_1 * parameter_5 * species_7 * species_5) - (compartment_1 * parameter_6 * species_5) - (compartment_1 * parameter_21 * species_5);
    der(species_6) = (compartment_1 * parameter_4 * species_2 * species_5) + (compartment_1 * parameter_5 * species_7 * species_5) + (compartment_1 * parameter_6 * species_5) + (compartment_1 * parameter_7 * species_6) + (compartment_1 * parameter_8 * species_6) - (compartment_1 * parameter_7 * species_6) - (compartment_1 * parameter_8 * species_6) - (compartment_1 * parameter_21 * species_6) - (compartment_1 * parameter_19 * species_6);
    der(species_7) = (compartment_1 * parameter_7 * species_6) - (compartment_1 * parameter_5 * species_7 * species_5) - (compartment_1 * (parameter_9 * species_7 * species_2 - parameter_10 * species_9)) - (compartment_1 * parameter_21 * species_7);
    der(species_8) = (compartment_1 * parameter_8 * species_6) - (compartment_1 * (parameter_14 * species_8 * species_4 - parameter_15 * species_12)) - (compartment_1 * (parameter_16 * species_8 * species_3 - parameter_17 * species_13)) - (compartment_1 * parameter_21 * species_8);
    der(species_9) = (compartment_1 * (parameter_9 * species_7 * species_2 - parameter_10 * species_9)) - (compartment_1 * parameter_11 * species_9) - (compartment_1 * parameter_21 * species_9) - (compartment_1 * parameter_18 * species_9);
    der(species_10) = (compartment_1 * function_1(parameter_22)) - (compartment_1 * (parameter_12 * species_10 * species_2 - parameter_13 * species_11)) - (compartment_1 * parameter_21 * species_10);
    der(species_11) = (compartment_1 * (parameter_12 * species_10 * species_2 - parameter_13 * species_11)) - (compartment_1 * parameter_21 * species_11);
    der(species_12) = (compartment_1 * (parameter_14 * species_8 * species_4 - parameter_15 * species_12)) - (compartment_1 * parameter_21 * species_12);
    der(species_13) = (compartment_1 * (parameter_16 * species_8 * species_3 - parameter_17 * species_13)) - (compartment_1 * parameter_21 * species_13);




end BIOMD447;
