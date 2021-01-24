
model BIOMD499 "Vizan2013 - TGF pathway long term signaling"

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



    parameter Real parameter_1 = 0.32;
    parameter Real parameter_2 = 20.0;
    parameter Real parameter_3 = 9.36;
    parameter Real parameter_4 = 0.08;
    parameter Real parameter_5 = 0.0;
    parameter Real parameter_6 = 21.3715;
    parameter Real parameter_7 = 24.0;
    parameter Real parameter_8 = 60.0;
    parameter Real parameter_11 = 5.7;
    parameter Real parameter_12 = 4.0;
    parameter Real parameter_13 = 2.27;
    parameter Real parameter_14 = 1.0;
    parameter Real parameter_15 = 1.0;
    parameter Real parameter_16 = 0.05;
    parameter Real parameter_17 = 0.196565;
    parameter Real parameter_18 = 100.0;
    parameter Real parameter_22 = 24.5383;
    parameter Real parameter_23 = 2.0;
    parameter Real parameter_24 = 2.0;
    parameter Real parameter_25 = 0.35;
    parameter Real parameter_26 = 0.0;
    parameter Real parameter_27 = 0.0;
    parameter Real parameter_28 = 0.0;
    parameter Real Metabolite_9 = 0.559;
    parameter Real compartment_1 = 1.0;

    Real parameter_9(start=350.877192982456);
    Real parameter_10(start=0.171);
    Real parameter_19(start=9.36);
    Real parameter_20(start=1.0);
    Real parameter_21(start=0.710526315789474);

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

initial equation
    species_1 = 0.0;
    species_2 = 0.0;
    species_3 = 0.0;
    species_4 = parameter_23 * parameter_24;
    species_5 = (1 - parameter_16) / (parameter_4 + 1);
    species_6 = parameter_14 * parameter_2 * (1 + parameter_13) / (parameter_3 + parameter_13 * parameter_2);
    species_7 = (parameter_16 + parameter_4) / (1 + parameter_4);
    species_8 = 0.0;
    species_13 = 0.0;
    species_17 = 0.0;
    species_19 = parameter_15;
    species_22 = 0.0;
    species_24 = 0.0;
    species_26 = 0.0;

equation
    species_16 = (parameter_13 + 1) * species_2 - parameter_13 * species_17;
    species_18 = species_19 - species_17;
    parameter_10 = 0.171;
    parameter_9 = parameter_8 / parameter_10;
    parameter_19 = parameter_3;
    parameter_21 = parameter_16 / (1 - parameter_16) * ((parameter_4 + 1) / parameter_4);
    species_20 = species_8 - 2 * species_13 - species_17;
    species_23 = species_5 + species_7 + species_24 + species_26;
    species_25 = species_7 * (1 / (1 + parameter_21));
    species_9 = species_7 * (parameter_21 / (1 + parameter_21));
    species_10 = (parameter_13 + 1) * (parameter_14 - species_3) - parameter_13 * species_6;
    species_11 = (parameter_13 + 1) * species_1 - parameter_13 * species_13;
    species_12 = (parameter_13 + 1) * parameter_15 - parameter_13 * species_19;
    species_21 = species_12 - species_16;
    species_14 = (parameter_13 + 1) * species_3 - parameter_13 * species_8;
    species_15 = species_14 - 2 * species_11 - species_16;
    parameter_20 = (species_10 + species_14) / Metabolite_9;
    der(species_1) = 1 / (1 + parameter_13) * (parameter_9 * (parameter_13 * pow(species_20, 2) + pow(species_15, 2)) - parameter_8 * (parameter_13 * species_13 + species_11));
    der(species_2) = 1 / (parameter_13 + 1) * (parameter_9 * (parameter_13 * species_18 * species_20 + species_15 * species_21) - parameter_8 * (parameter_13 * species_17 + species_16));
    der(species_3) = 1 / (1 + parameter_13) * (parameter_13 * parameter_6 * species_26 * (parameter_17 / (parameter_17 + species_22)) * species_6 - parameter_7 * species_15);
    der(species_4) = parameter_1 * (parameter_27 + parameter_26 * species_16 - (parameter_18 * species_9 + parameter_25) * species_4);
    der(species_5) = parameter_1 * ((1 - parameter_5) * (1 - parameter_16) - (parameter_4 + (1 - parameter_28)) * species_5);
    der(species_6) = parameter_2 * species_10 - (parameter_3 + parameter_6 * species_26 * (parameter_17 / (parameter_17 + species_22))) * species_6;
    der(species_7) = parameter_1 * (parameter_4 * species_5 - (1 - parameter_28) * species_25 - parameter_18 * species_4 * species_9);
    der(species_8) = parameter_6 * species_26 * (parameter_17 / (parameter_17 + species_22)) * species_6 + parameter_2 * species_15 - parameter_3 * (species_20 + parameter_11 * (species_17 + 2 * species_13));
    der(species_13) = parameter_9 * pow(species_20, 2) - (parameter_8 + parameter_3 * parameter_11) * species_13;
    der(species_17) = parameter_9 * species_18 * species_20 - (parameter_8 + parameter_3 * parameter_11) * species_17;
    der(species_19) = parameter_19 * species_21 - parameter_3 * (species_18 + parameter_11 * species_17);
    der(species_24) = parameter_1 * (parameter_18 * species_4 * species_9 - (parameter_22 + parameter_12 * (1 - parameter_28)) * species_24);
    der(species_26) = parameter_1 * (parameter_22 * species_24 - parameter_12 * (1 - parameter_28) * species_26);
    der(species_22) = 0.0;




end BIOMD499;
