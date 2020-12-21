
model BIOMD085 "Maurya2005_GTPaseCycle_reducedOrder"

    function pow
        input  Real x;
        input  Real power;
        output Real y;
        algorithm
            y := x^power;
    end pow;

    parameter Real k1_reaction_1 = 529000.0;
    parameter Real k2_reaction_1 = 8.38e-06;
    parameter Real k1_reaction_3 = 0.013;
    parameter Real k2_reaction_3 = 9.03e-07;
    parameter Real k1_reaction_4 = 0.0001;
    parameter Real k2_reaction_4 = 62.3;
    parameter Real k1_reaction_5 = 853000.0;
    parameter Real k2_reaction_5 = 0.00468;
    parameter Real k1_reaction_6 = 132000000.0;
    parameter Real k2_reaction_6 = 1.28;
    parameter Real k1_reaction_7 = 386000.0;
    parameter Real k2_reaction_7 = 0.0408;
    parameter Real k1_reaction_8 = 64100.0;
    parameter Real k2_reaction_8 = 0.95;
    parameter Real k1_reaction_9 = 94700000.0;
    parameter Real k2_reaction_9 = 0.00227;
    parameter Real k1_reaction_10 = 0.013;
    parameter Real k2_reaction_10 = 2.22e-09;
    parameter Real k1_reaction_11 = 2.0;
    parameter Real k2_reaction_11 = 1470000.0;
    parameter Real k1_reaction_13 = 25.0;
    parameter Real k2_reaction_13 = 0.244;
    parameter Real k1_reaction_14 = 0.0001;
    parameter Real k2_reaction_14 = 3.83;
    parameter Real k1_reaction_16 = 3960000000.0;
    parameter Real k2_reaction_16 = 5.43e-05;
    parameter Real k1_reaction_17 = 1620000.0;
    parameter Real k2_reaction_17 = 0.00875;
    parameter Real k1_reaction_19 = 6300000.0;
    parameter Real k2_reaction_19 = 0.478;
    parameter Real k1_reaction_20 = 25.0;
    parameter Real k2_reaction_20 = 0.00297;
    parameter Real k1_reaction_23 = 2.75;
    parameter Real k2_reaction_23 = 2940.0;
    parameter Real compartment_0 = 1.0;

    Real parameter_0(start=0.0);
    Real parameter_1(start=0.0);

    Real species_0;
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
    species_0 = 0.0;
    species_1 = 1e-08;
    species_2 = 0.0;
    species_3 = 0.000468;
    species_4 = 1e-05;
    species_5 = 0.0;
    species_6 = 0.0;
    species_7 = 0.0044;
    species_8 = 0.000149;
    species_9 = 0.0;
    species_10 = 0.0;
    species_11 = 0.0;
    species_12 = 0.0;
    species_13 = 0.0;
    species_14 = 0.0;
    species_15 = 0.0;
    species_16 = 0.0;

equation
    parameter_0 = (species_5 + species_10 + species_15 + species_11) / 1e-8;
    parameter_1 = (25 * species_15 + 25 * species_11 + 0.013 * species_10 + 0.013 * species_5) / 10e-9;
    der(species_0) =  - (compartment_0 * (k1_reaction_7 * species_5 * species_0 - k2_reaction_7 * species_11)) - (compartment_0 * (k1_reaction_8 * species_6 * species_0 - k2_reaction_8 * species_12)) - (compartment_0 * (k1_reaction_19 * species_10 * species_0 - k2_reaction_19 * species_15));
    der(species_1) = (compartment_0 * (k1_reaction_4 * species_6 - k2_reaction_4 * species_1 * species_8)) - (compartment_0 * (k1_reaction_1 * species_1 * species_3 - k2_reaction_1 * species_5));
    der(species_2) = (compartment_0 * (k1_reaction_14 * species_12 - k2_reaction_14 * species_2 * species_8)) - (compartment_0 * (k1_reaction_16 * species_2 * species_4 - k2_reaction_16 * species_14));
    der(species_3) =  - (compartment_0 * (k1_reaction_1 * species_1 * species_3 - k2_reaction_1 * species_5)) - (compartment_0 * (k1_reaction_5 * species_9 * species_3 - k2_reaction_5 * species_10)) - (compartment_0 * (k1_reaction_17 * species_14 * species_3 - k2_reaction_17 * species_15));
    der(species_4) =  - (compartment_0 * (k1_reaction_6 * species_5 * species_4 - k2_reaction_6 * species_10)) - (compartment_0 * (k1_reaction_9 * species_6 * species_4 - k2_reaction_9 * species_13)) - (compartment_0 * (k1_reaction_16 * species_2 * species_4 - k2_reaction_16 * species_14));
    der(species_5) = (compartment_0 * (k1_reaction_1 * species_1 * species_3 - k2_reaction_1 * species_5)) - (compartment_0 * (k1_reaction_3 * species_5 - k2_reaction_3 * species_6 * species_7)) - (compartment_0 * (k1_reaction_6 * species_5 * species_4 - k2_reaction_6 * species_10)) - (compartment_0 * (k1_reaction_7 * species_5 * species_0 - k2_reaction_7 * species_11));
    der(species_6) = (compartment_0 * (k1_reaction_3 * species_5 - k2_reaction_3 * species_6 * species_7)) - (compartment_0 * (k1_reaction_4 * species_6 - k2_reaction_4 * species_1 * species_8)) - (compartment_0 * (k1_reaction_8 * species_6 * species_0 - k2_reaction_8 * species_12)) - (compartment_0 * (k1_reaction_9 * species_6 * species_4 - k2_reaction_9 * species_13));
    der(species_7) = (compartment_0 * (k1_reaction_3 * species_5 - k2_reaction_3 * species_6 * species_7)) + (compartment_0 * (k1_reaction_10 * species_10 - k2_reaction_10 * species_13 * species_7)) + (compartment_0 * (k1_reaction_13 * species_11 - k2_reaction_13 * species_12 * species_7)) + (compartment_0 * (k1_reaction_20 * species_15 - k2_reaction_20 * species_16 * species_7)) ;
    der(species_8) = (compartment_0 * (k1_reaction_4 * species_6 - k2_reaction_4 * species_1 * species_8)) + (compartment_0 * (k1_reaction_11 * species_13 - k2_reaction_11 * species_9 * species_8)) + (compartment_0 * (k1_reaction_14 * species_12 - k2_reaction_14 * species_2 * species_8)) + (compartment_0 * (k1_reaction_23 * species_16 - k2_reaction_23 * species_14 * species_8)) ;
    der(species_9) = (compartment_0 * (k1_reaction_11 * species_13 - k2_reaction_11 * species_9 * species_8)) - (compartment_0 * (k1_reaction_5 * species_9 * species_3 - k2_reaction_5 * species_10));
    der(species_10) = (compartment_0 * (k1_reaction_5 * species_9 * species_3 - k2_reaction_5 * species_10)) + (compartment_0 * (k1_reaction_6 * species_5 * species_4 - k2_reaction_6 * species_10)) - (compartment_0 * (k1_reaction_10 * species_10 - k2_reaction_10 * species_13 * species_7)) - (compartment_0 * (k1_reaction_19 * species_10 * species_0 - k2_reaction_19 * species_15));
    der(species_11) = (compartment_0 * (k1_reaction_7 * species_5 * species_0 - k2_reaction_7 * species_11)) - (compartment_0 * (k1_reaction_13 * species_11 - k2_reaction_13 * species_12 * species_7));
    der(species_12) = (compartment_0 * (k1_reaction_8 * species_6 * species_0 - k2_reaction_8 * species_12)) + (compartment_0 * (k1_reaction_13 * species_11 - k2_reaction_13 * species_12 * species_7)) - (compartment_0 * (k1_reaction_14 * species_12 - k2_reaction_14 * species_2 * species_8));
    der(species_13) = (compartment_0 * (k1_reaction_9 * species_6 * species_4 - k2_reaction_9 * species_13)) + (compartment_0 * (k1_reaction_10 * species_10 - k2_reaction_10 * species_13 * species_7)) - (compartment_0 * (k1_reaction_11 * species_13 - k2_reaction_11 * species_9 * species_8));
    der(species_14) = (compartment_0 * (k1_reaction_16 * species_2 * species_4 - k2_reaction_16 * species_14)) + (compartment_0 * (k1_reaction_23 * species_16 - k2_reaction_23 * species_14 * species_8)) - (compartment_0 * (k1_reaction_17 * species_14 * species_3 - k2_reaction_17 * species_15));
    der(species_15) = (compartment_0 * (k1_reaction_17 * species_14 * species_3 - k2_reaction_17 * species_15)) + (compartment_0 * (k1_reaction_19 * species_10 * species_0 - k2_reaction_19 * species_15)) - (compartment_0 * (k1_reaction_20 * species_15 - k2_reaction_20 * species_16 * species_7));
    der(species_16) = (compartment_0 * (k1_reaction_20 * species_15 - k2_reaction_20 * species_16 * species_7)) - (compartment_0 * (k1_reaction_23 * species_16 - k2_reaction_23 * species_14 * species_8));




end BIOMD085;
