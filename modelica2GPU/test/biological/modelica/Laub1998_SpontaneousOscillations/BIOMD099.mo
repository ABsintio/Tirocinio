
model BIOMD099 "Laub1998_SpontaneousOscillations"

    function pow
        input  Real x;
        input  Real power;
        output Real y;
        algorithm
            y := x^power;
    end pow;

    parameter Real parameter_0 = 1.4;
    parameter Real parameter_1 = 0.9;
    parameter Real parameter_2 = 2.5;
    parameter Real parameter_3 = 1.5;
    parameter Real parameter_4 = 0.6;
    parameter Real parameter_5 = 0.8;
    parameter Real parameter_6 = 2.0;
    parameter Real parameter_7 = 1.3;
    parameter Real parameter_8 = 0.29;
    parameter Real parameter_9 = 1.0;
    parameter Real parameter_10 = 0.6;
    parameter Real parameter_11 = 3.1;
    parameter Real parameter_12 = 33.0;
    parameter Real parameter_13 = 4.5;
    parameter Real compartment_0 = 1.0;
    parameter Real compartment_1 = 1.0;



    Real species_0;
    Real species_1;
    Real species_2;
    Real species_3;
    Real species_4;
    Real species_5;
    Real species_6;

initial equation
    species_0 = 0.0;
    species_1 = 1.0;
    species_2 = 1.0;
    species_3 = 2.5;
    species_4 = 1.4;
    species_5 = 1.5;
    species_6 = 1.6;

equation

    der(species_0) = (compartment_0 * parameter_10 * species_4) - (compartment_0 * parameter_11 * species_0);
    der(species_1) = (compartment_1 * parameter_8 * species_4) - (compartment_1 * parameter_9 * species_1 * species_3);
    der(species_2) = (compartment_1 * parameter_2 * species_1) - (compartment_1 * parameter_3 * species_2);
    der(species_3) = (compartment_1 * parameter_6) - (compartment_1 * parameter_7 * species_3 * species_6);
    der(species_4) = (compartment_1 * parameter_0 * species_6) - (compartment_1 * parameter_1 * species_4);
    der(species_5) = (compartment_1 * parameter_12 * species_0) - (compartment_1 * parameter_13 * species_5 * species_2);
    der(species_6) = (compartment_1 * parameter_4 * species_5) - (compartment_1 * parameter_5 * species_6 * species_2);




end BIOMD099;
