
model BIOMD431 "Sarma2012 - Interaction topologies of MAPK cascade (M4_K2_PSEQ)"

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



    parameter Real parameter_1 = 0.0;
    parameter Real k1_0 = 0.02;
    parameter Real k2_0 = 1.0;
    parameter Real k1_1 = 0.01;
    parameter Real k1_2 = 0.032;
    parameter Real k2_2 = 1.0;
    parameter Real k1_3 = 15.0;
    parameter Real k1_4 = 0.045;
    parameter Real k2_4 = 1.0;
    parameter Real k1_5 = 0.092;
    parameter Real k1_6 = 0.01;
    parameter Real k2_6 = 1.0;
    parameter Real k1_7 = 0.5;
    parameter Real k1_8 = 0.086;
    parameter Real k2_8 = 0.005;
    parameter Real k1_9 = 0.02;
    parameter Real k2_9 = 1.0;
    parameter Real k1_10 = 0.01;
    parameter Real k1_11 = 0.032;
    parameter Real k2_11 = 1.0;
    parameter Real k1_12 = 15.0;
    parameter Real k1_13 = 0.045;
    parameter Real k2_13 = 1.0;
    parameter Real k1_14 = 0.092;
    parameter Real k1_15 = 0.01;
    parameter Real k2_15 = 1.0;
    parameter Real k1_16 = 0.5;
    parameter Real k1_17 = 0.086;
    parameter Real k2_17 = 0.005;
    parameter Real k1_18 = 0.02;
    parameter Real k2_18 = 1.0;
    parameter Real k1_19 = 1.0;
    parameter Real k1_20 = 0.02;
    parameter Real k2_20 = 1.0;
    parameter Real k1_21 = 0.5;
    parameter Real k1_22 = 0.045;
    parameter Real k2_22 = 1.0;
    parameter Real k1_23 = 0.092;
    parameter Real k1_24 = 0.01;
    parameter Real k2_24 = 1.0;
    parameter Real k1_25 = 0.5;
    parameter Real k1_26 = 0.086;
    parameter Real k2_26 = 0.005;
    parameter Real k1_27 = 0.086;
    parameter Real k2_27 = 0.005;
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
    Real species_24;
    Real species_25;
    Real species_26;
    Real species_27;

initial equation
    species_1 = 1200.0;
    species_2 = 0.0;
    species_3 = 0.0;
    species_4 = 0.0;
    species_5 = 0.0;
    species_6 = 0.0;
    species_7 = 1200.0;
    species_8 = 0.0;
    species_9 = 0.0;
    species_10 = 0.0;
    species_11 = 0.0;
    species_12 = 0.0;
    species_13 = 200.0;
    species_14 = 0.0;
    species_15 = 0.0;
    species_16 = 300.0;
    species_17 = 0.0;
    species_18 = 10.0;
    species_19 = 0.0;
    species_20 = 100.0;
    species_21 = 0.0;
    species_22 = 0.0;
    species_23 = 0.0;
    species_24 = 0.0;
    species_25 = 0.0;
    species_26 = 0.0;
    species_27 = 0.0;

equation

    der(species_1) = (compartment_1 * (k1_8 * species_23 - k2_8 * species_1 * species_13)) - (compartment_1 * (k1_0 * species_1 * species_2 - k2_0 * species_3));
    der(species_2) = (compartment_1 * k1_1 * species_3) + (compartment_1 * k1_3 * species_5) + (compartment_1 * k1_12 * species_11) - (compartment_1 * (k1_0 * species_1 * species_2 - k2_0 * species_3)) - (compartment_1 * (k1_2 * species_4 * species_2 - k2_2 * species_5)) - (compartment_1 * (k1_13 * species_2 * species_13 - k2_13 * species_12)) - (compartment_1 * (k1_22 * species_2 * species_20 - k2_22 * species_24));
    der(species_3) = (compartment_1 * (k1_0 * species_1 * species_2 - k2_0 * species_3)) - (compartment_1 * k1_1 * species_3);
    der(species_4) = (compartment_1 * k1_1 * species_3) + (compartment_1 * k1_5 * species_21) - (compartment_1 * (k1_2 * species_4 * species_2 - k2_2 * species_5)) - (compartment_1 * (k1_6 * species_4 * species_13 - k2_6 * species_22));
    der(species_5) = (compartment_1 * (k1_2 * species_4 * species_2 - k2_2 * species_5)) - (compartment_1 * k1_3 * species_5);
    der(species_6) = (compartment_1 * k1_3 * species_5) - (compartment_1 * (k1_4 * species_6 * species_13 - k2_4 * species_21));
    der(species_7) = (compartment_1 * (k1_17 * species_15 - k2_17 * species_7 * species_13)) + (compartment_1 * (k1_26 * species_26 - k2_26 * species_7 * species_20)) - (compartment_1 * (k1_9 * species_7 * species_8 - k2_9 * species_9));
    der(species_8) = (compartment_1 * k1_10 * species_9) + (compartment_1 * k1_12 * species_11) + (compartment_1 * k1_19 * species_17) - (compartment_1 * (k1_9 * species_7 * species_8 - k2_9 * species_9)) - (compartment_1 * (k1_11 * species_10 * species_8 - k2_11 * species_11)) - (compartment_1 * (k1_20 * species_8 * species_20 - k2_20 * species_19));
    der(species_9) = (compartment_1 * (k1_9 * species_7 * species_8 - k2_9 * species_9)) - (compartment_1 * k1_10 * species_9);
    der(species_10) = (compartment_1 * k1_10 * species_9) + (compartment_1 * k1_14 * species_12) + (compartment_1 * k1_23 * species_24) - (compartment_1 * (k1_11 * species_10 * species_8 - k2_11 * species_11)) - (compartment_1 * (k1_15 * species_10 * species_13 - k2_15 * species_14)) - (compartment_1 * (k1_24 * species_10 * species_20 - k2_24 * species_25));
    der(species_11) = (compartment_1 * (k1_11 * species_10 * species_8 - k2_11 * species_11)) - (compartment_1 * k1_12 * species_11);
    der(species_12) = (compartment_1 * (k1_13 * species_2 * species_13 - k2_13 * species_12)) - (compartment_1 * k1_14 * species_12);
    der(species_13) = (compartment_1 * k1_5 * species_21) + (compartment_1 * (k1_8 * species_23 - k2_8 * species_1 * species_13)) + (compartment_1 * k1_14 * species_12) + (compartment_1 * (k1_17 * species_15 - k2_17 * species_7 * species_13)) - (compartment_1 * (k1_4 * species_6 * species_13 - k2_4 * species_21)) - (compartment_1 * (k1_6 * species_4 * species_13 - k2_6 * species_22)) - (compartment_1 * (k1_13 * species_2 * species_13 - k2_13 * species_12)) - (compartment_1 * (k1_15 * species_10 * species_13 - k2_15 * species_14));
    der(species_14) = (compartment_1 * (k1_15 * species_10 * species_13 - k2_15 * species_14)) - (compartment_1 * k1_16 * species_14);
    der(species_15) = (compartment_1 * k1_16 * species_14) - (compartment_1 * (k1_17 * species_15 - k2_17 * species_7 * species_13));
    der(species_16) = (compartment_1 * (k1_27 * species_27 - k2_27 * species_16 * species_20)) - (compartment_1 * (k1_18 * species_16 * species_18 - k2_18 * species_17));
    der(species_17) = (compartment_1 * (k1_18 * species_16 * species_18 - k2_18 * species_17)) - (compartment_1 * k1_19 * species_17);
    der(species_18) = (compartment_1 * k1_19 * species_17) - (compartment_1 * (k1_18 * species_16 * species_18 - k2_18 * species_17));
    der(species_19) = (compartment_1 * (k1_20 * species_8 * species_20 - k2_20 * species_19)) - (compartment_1 * k1_21 * species_19);
    der(species_20) = (compartment_1 * k1_23 * species_24) + (compartment_1 * (k1_26 * species_26 - k2_26 * species_7 * species_20)) + (compartment_1 * (k1_27 * species_27 - k2_27 * species_16 * species_20)) - (compartment_1 * (k1_20 * species_8 * species_20 - k2_20 * species_19)) - (compartment_1 * (k1_22 * species_2 * species_20 - k2_22 * species_24)) - (compartment_1 * (k1_24 * species_10 * species_20 - k2_24 * species_25));
    der(species_21) = (compartment_1 * (k1_4 * species_6 * species_13 - k2_4 * species_21)) - (compartment_1 * k1_5 * species_21);
    der(species_22) = (compartment_1 * (k1_6 * species_4 * species_13 - k2_6 * species_22)) - (compartment_1 * k1_7 * species_22);
    der(species_23) = (compartment_1 * k1_7 * species_22) - (compartment_1 * (k1_8 * species_23 - k2_8 * species_1 * species_13));
    der(species_24) = (compartment_1 * (k1_22 * species_2 * species_20 - k2_22 * species_24)) - (compartment_1 * k1_23 * species_24);
    der(species_25) = (compartment_1 * (k1_24 * species_10 * species_20 - k2_24 * species_25)) - (compartment_1 * k1_25 * species_25);
    der(species_26) = (compartment_1 * k1_25 * species_25) - (compartment_1 * (k1_26 * species_26 - k2_26 * species_7 * species_20));
    der(species_27) = (compartment_1 * k1_21 * species_19) - (compartment_1 * (k1_27 * species_27 - k2_27 * species_16 * species_20));




end BIOMD431;
