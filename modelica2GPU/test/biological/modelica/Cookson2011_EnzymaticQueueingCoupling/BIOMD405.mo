
model BIOMD405 "Cookson2011_EnzymaticQueueingCoupling"

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


    parameter Real parameter_1 = 500.0;
    parameter Real parameter_2 = 500.0;
    parameter Real parameter_3 = 10.0;
    parameter Real parameter_4 = 1000.0;
    parameter Real parameter_5 = 0.03465735902799;
    parameter Real compartment_1 = 1.0;



    Real species_1;
    Real species_2;
    Real species_3;
    Real species_4;
    Real species_5;
    Real species_6;

initial equation
    species_1 = 0.0;
    species_2 = 0.0;
    species_3 = 0.0;
    species_4 = 0.0;
    species_5 = 100.0;
    species_6 = 1.0;

equation

    der(species_1) = (compartment_1 * function_1(parameter_1)) - (compartment_1 * parameter_4 * species_1 * species_5) - (compartment_1 * parameter_5 * species_1);
    der(species_2) = (compartment_1 * function_1(parameter_2)) - (compartment_1 * parameter_4 * species_2 * species_5) - (compartment_1 * parameter_5 * species_2);
    der(species_3) = (compartment_1 * parameter_4 * species_1 * species_5) - (compartment_1 * parameter_3 * species_3);
    der(species_4) = (compartment_1 * parameter_4 * species_2 * species_5) - (compartment_1 * parameter_3 * species_4);
    der(species_5) = (compartment_1 * parameter_3 * species_3) + (compartment_1 * parameter_3 * species_4) - (compartment_1 * parameter_4 * species_1 * species_5) - (compartment_1 * parameter_4 * species_2 * species_5);
    der(species_6) = 0.0;




end BIOMD405;
