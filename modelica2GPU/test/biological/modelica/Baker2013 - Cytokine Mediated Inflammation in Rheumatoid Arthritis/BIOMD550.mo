
model BIOMD550 "Baker2013 - Cytokine Mediated Inflammation in Rheumatoid Arthritis"

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



    parameter Real parameter_1 = 0.025;
    parameter Real parameter_2 = 1.0;
    parameter Real parameter_3 = 0.5;
    parameter Real parameter_4 = 3.5;
    parameter Real parameter_5 = 1.25;
    parameter Real compartment_1 = 1.0;



    Real species_1;
    Real species_2;

initial equation
    species_1 = 0.00577667577789773;
    species_2 = 0.0203298264712407;

equation

    der(species_1) = -species_1 + parameter_4 * (pow(species_2, 2) / (pow(parameter_3, 2) + pow(species_2, 2)));
    der(species_2) = -parameter_5 * species_2 + 1 / (1 + pow(species_1, 2)) * (parameter_1 + parameter_2 * (pow(species_2, 2) / (1 + pow(species_2, 2))));




end BIOMD550;
