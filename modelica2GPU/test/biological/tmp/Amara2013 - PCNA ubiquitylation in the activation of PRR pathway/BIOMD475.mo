
model BIOMD475 "Amara2013 - PCNA ubiquitylation in the activation of PRR pathway"

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



    parameter Real k1_0 = 1.5e-08;
    parameter Real k1_1 = 0.01;
    parameter Real k1_2 = 1000.0;
    parameter Real k1_3 = 2.5e-07;
    parameter Real k1_4 = 100000.0;
    parameter Real k1_5 = 1000.0;
    parameter Real k1_6 = 0.0351;
    parameter Real k1_7 = 0.01;
    parameter Real k1_8 = 0.01;
    parameter Real k1_9 = 1.0;
    parameter Real k1_10 = 100000.0;
    parameter Real k1_11 = 5e-06;
    parameter Real k1_12 = 0.005;
    parameter Real k1_13 = 0.078;
    parameter Real k1_14 = 1e-10;
    parameter Real k1_15 = 0.05;
    parameter Real k1_16 = 7.5e-06;
    parameter Real k1_17 = 5e-06;
    parameter Real k1_18 = 0.078;
    parameter Real k1_19 = 1e-10;
    parameter Real k1_20 = 0.005;
    parameter Real k1_21 = 0.005;
    parameter Real k1_22 = 3e-08;
    parameter Real k1_23 = 0.0008;
    parameter Real k1_24 = 0.005;
    parameter Real compartment_1 = 1.0;

    Real parameter_1(start=0.0);

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
    Real species_17;
    Real species_18;
    Real species_19;
    Real species_20;
    Real species_21;
    Real species_22;
    Real species_23;

initial equation
    species_1 = 1001.0;
    species_2 = 7480.0;
    species_3 = 0.0;
    species_4 = 0.0;
    species_5 = 206.0;
    species_6 = 194.0;
    species_7 = 0.0;
    species_8 = 8698.0;
    species_9 = 0.0;
    species_10 = 0.0;
    species_11 = 0.0;
    species_12 = 0.0;
    species_13 = 1520.0;
    species_14 = 0.0;
    species_15 = 0.0;
    species_16 = 0.0;
    species_17 = 0.0;
    species_18 = 193.0;
    species_19 = 0.0;
    species_20 = 0.0;
    species_21 = 0.0;
    species_22 = 0.0;
    species_23 = 0.0;

equation
    parameter_1 = species_12 + species_19 + species_22 + species_11 + species_14 + species_17 + species_21 + species_20 + species_16;
    der(species_1) =  - (compartment_1 * k1_0 * species_2 * species_1);
    der(species_2) =  - (compartment_1 * k1_0 * species_2 * species_1);
    der(species_3) = (compartment_1 * k1_0 * species_2 * species_1) + (compartment_1 * k1_5 * species_9) - (compartment_1 * k1_4 * species_3 * species_4);
    der(species_4) = (compartment_1 * k1_1 * pow(species_5, 2)) + (compartment_1 * k1_5 * species_9) + (compartment_1 * k1_9 * species_11) - (compartment_1 * k1_2 * species_4) - (compartment_1 * k1_4 * species_3 * species_4);
    der(species_5) = (2.0 * compartment_1 * k1_2 * species_4) - (2.0 * compartment_1 * k1_1 * pow(species_5, 2));
    der(species_6) = (compartment_1 * k1_8 * species_10) - (compartment_1 * k1_3 * species_6 * species_8);
    der(species_7) = (compartment_1 * k1_3 * species_6 * species_8) + (compartment_1 * k1_7 * species_10) - (compartment_1 * k1_6 * species_7 * species_9);
    der(species_8) = (compartment_1 * k1_22 * species_12) + (2.0 * compartment_1 * k1_23 * species_19) + (3.0 * compartment_1 * k1_24 * species_22) - (compartment_1 * k1_3 * species_6 * species_8) - (compartment_1 * k1_10 * species_8 * species_18);
    der(species_9) = (compartment_1 * k1_4 * species_3 * species_4) + (compartment_1 * k1_7 * species_10) - (compartment_1 * k1_5 * species_9) - (compartment_1 * k1_6 * species_7 * species_9);
    der(species_10) = (compartment_1 * k1_6 * species_7 * species_9) - (compartment_1 * k1_7 * species_10) - (compartment_1 * k1_8 * species_10);
    der(species_11) = (compartment_1 * k1_8 * species_10) - (compartment_1 * k1_9 * species_11);
    der(species_12) = (compartment_1 * k1_9 * species_11) + (compartment_1 * k1_12 * species_14) - (compartment_1 * k1_11 * species_12 * species_13) - (compartment_1 * k1_22 * species_12);
    der(species_13) = (compartment_1 * k1_12 * species_14) + (compartment_1 * k1_16 * species_17) + (compartment_1 * k1_21 * species_21) - (compartment_1 * k1_11 * species_12 * species_13) - (compartment_1 * k1_17 * species_13 * species_19);
    der(species_14) = (compartment_1 * k1_11 * species_12 * species_13) + (compartment_1 * k1_14 * species_16) - (compartment_1 * k1_12 * species_14) - (compartment_1 * k1_13 * species_14 * species_15);
    der(species_15) = (compartment_1 * k1_10 * species_8 * species_18) + (compartment_1 * k1_14 * species_16) + (compartment_1 * k1_19 * species_20) - (compartment_1 * k1_13 * species_14 * species_15) - (compartment_1 * k1_18 * species_15 * species_17);
    der(species_16) = (compartment_1 * k1_13 * species_14 * species_15) - (compartment_1 * k1_14 * species_16) - (compartment_1 * k1_15 * species_16);
    der(species_17) = (compartment_1 * k1_15 * species_16) + (compartment_1 * k1_17 * species_13 * species_19) + (compartment_1 * k1_19 * species_20) - (compartment_1 * k1_16 * species_17) - (compartment_1 * k1_18 * species_15 * species_17);
    der(species_18) = (compartment_1 * k1_15 * species_16) + (compartment_1 * k1_20 * species_20) - (compartment_1 * k1_10 * species_8 * species_18);
    der(species_19) = (compartment_1 * k1_16 * species_17) - (compartment_1 * k1_17 * species_13 * species_19) - (compartment_1 * k1_23 * species_19);
    der(species_20) = (compartment_1 * k1_18 * species_15 * species_17) - (compartment_1 * k1_19 * species_20) - (compartment_1 * k1_20 * species_20);
    der(species_21) = (compartment_1 * k1_20 * species_20) - (compartment_1 * k1_21 * species_21);
    der(species_22) = (compartment_1 * k1_21 * species_21) - (compartment_1 * k1_24 * species_22);
    der(species_23) = (compartment_1 * k1_22 * species_12) + (compartment_1 * k1_23 * species_19) + (compartment_1 * k1_24 * species_22) ;




end BIOMD475;
