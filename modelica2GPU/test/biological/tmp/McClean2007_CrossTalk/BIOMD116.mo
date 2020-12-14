
model BIOMD116 "McClean2007_CrossTalk"

    function pow
        input  Real x;
        input  Real power;
        output Real y;
        algorithm
            y := x^power;
    end pow;

    parameter Real parameter_0 = 10.0;
    parameter Real parameter_1 = 10.0;
    parameter Real parameter_2 = 10.0;
    parameter Real parameter_3 = 10.0;
    parameter Real parameter_4 = 10.0;
    parameter Real parameter_5 = 10.0;
    parameter Real parameter_6 = 1.0;
    parameter Real parameter_7 = 8.5;
    parameter Real parameter_8 = 1.0;
    parameter Real parameter_9 = 1.0;
    parameter Real parameter_10 = 1.0;
    parameter Real parameter_11 = 1.0;
    parameter Real parameter_12 = 0.0;
    parameter Real parameter_13 = 1.0;
    parameter Real parameter_14 = 5.0;
    parameter Real parameter_15 = 1.0;
    parameter Real parameter_16 = 1.0;
    parameter Real parameter_17 = 1.0;
    parameter Real parameter_18 = 1.0;
    parameter Real parameter_19 = 1.0;



    Real species_0;
    Real species_1;
    Real species_2;
    Real species_3;
    Real species_4;
    Real species_5;

initial equation
    species_0 = 1.023667;
    species_1 = 2.154231;
    species_2 = 6.271793;
    species_3 = 3.203692;
    species_4 = 8.232192;
    species_5 = 9.312021;

equation

    der(species_0) = ((1.0 * parameter_6 * parameter_7 / (1 + parameter_7 / parameter_8)) * (parameter_0 - species_0)) - (1.0 * parameter_9 * species_0 * (parameter_1 - species_1)) - (1.0 * parameter_12 * species_0 * (parameter_4 - species_4));
    der(species_1) = (1.0 * parameter_9 * species_0 * (parameter_1 - species_1)) + (1.0 * parameter_12 * species_3 * (parameter_1 - species_1)) - (1.0 * parameter_10 * species_1 * (parameter_2 - species_2));
    der(species_2) = (1.0 * parameter_10 * species_1 * (parameter_2 - species_2)) - (1.0 * parameter_11 * species_5 * species_2 / (1 + species_2 / parameter_13));
    der(species_3) = ((1.0 * parameter_15 * parameter_14 / (1 + parameter_14 / parameter_16)) * (parameter_3 - species_3)) - (1.0 * parameter_17 * species_3 * (parameter_4 - species_4)) - (1.0 * parameter_12 * species_3 * (parameter_1 - species_1));
    der(species_4) = (1.0 * parameter_17 * species_3 * (parameter_4 - species_4)) + (1.0 * parameter_12 * species_0 * (parameter_4 - species_4)) - (1.0 * parameter_18 * species_4 * (parameter_5 - species_5));
    der(species_5) = (1.0 * parameter_18 * species_4 * (parameter_5 - species_5)) - (1.0 * parameter_11 * species_5 * species_2 / (1 + species_5 / parameter_19));




end BIOMD116;
