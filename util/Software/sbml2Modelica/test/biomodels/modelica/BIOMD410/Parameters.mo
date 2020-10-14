within BIOMD410;
class Parameters

    input Real elmt_species_6;
    input Real elmt__99;
    input Real elmt__11;
    input Real elmt_species_4;
    input Real elmt_species_5;
    input Real elmt_species_8;
    input Real elmt__5;
    input Real elmt_species_16;
    input Real elmt__19;
    input Real elmt_species_17;
    input Real elmt_species_18;
    input Real elmt_species_19;
    input Real elmt__129;
    input Real elmt__15;
    input Real elmt__105;
    input Real elmt__13;
    input Real elmt__147;
    input Real elmt_species_11;
    input Real elmt__9;
    input Real elmt__181;
    input Real elmt__21;
    input Real elmt_species_26;
    input Real elmt_species_27;
    input Real elmt__27;
    input Real elmt_species_2;
    input Real elmt_species_3;
    input Real elmt__25;
    input Real elmt_species_1;
    input Real elmt_species_20;
    input Real elmt_species_21;
    input Real elmt__198;
    input Real elmt_species_23;
    input Real elmt__174;
    input Real elmt__153;

    Real elmt_parameter_10(unit = "") "allSmad4nuc";
    Real elmt_parameter_9(unit = "") "allSmad4cyt";
    Real elmt_parameter_8(unit = "") "allSmad3";
    Real elmt_parameter_7(unit = "") "allPSmad3";
    Real elmt_parameter_6(unit = "") "allSmad4";
    Real elmt_parameter_5(unit = "") "allSmad2";
    Real elmt_parameter_4(unit = "") "allSmurf2";
    Real elmt_parameter_3(unit = "") "allSmad7";
    Real elmt_parameter_2(unit = "") "allSnoN";
    Real elmt_parameter_1(unit = "") "TGFbeta";


    initial equation
        elmt_parameter_1 = 0.01;


    equation
        elmt_parameter_10 = (elmt_species_11 + elmt__5 + elmt__9 + elmt__13 + elmt_species_18 + elmt_species_16 + elmt_species_18 + elmt_species_19 + elmt_species_21 + elmt_species_23 + elmt_species_26 + elmt_species_26 + elmt_species_27);
        elmt_parameter_9 = (elmt__147 + elmt__153 + elmt_species_6);
        elmt_parameter_8 = (elmt_species_3 + elmt_species_4 + elmt_species_5 + elmt_species_6 + elmt_species_8 + elmt_species_17 + elmt_species_18 + elmt_species_20 + elmt_species_21 + elmt_species_26 + elmt_species_27);
        elmt_parameter_7 = (elmt_species_4 + elmt_species_6 + elmt_species_18 + elmt_species_20 + elmt_species_21 + elmt_species_26);
        elmt_parameter_6 = (elmt__147 + elmt__153 + elmt_species_6 + elmt__5 + elmt__9 + elmt_species_18 + elmt__13 + elmt_species_16 + elmt_species_19 + elmt_species_21 + elmt_species_27 + elmt_species_26 + elmt_species_23);
        elmt_parameter_5 = (elmt__99 + elmt__105 + elmt__129 + elmt__153 + elmt__9 + elmt__13 + elmt__19 + elmt__21 + elmt_species_19);
        elmt_parameter_4 = (elmt__181 + elmt_species_1 + elmt__15 + elmt__27);
        elmt_parameter_3 = (elmt__174 + elmt__181 + elmt__198 + elmt__25 + elmt__27);
        elmt_parameter_2 = (elmt_species_2 + elmt__11 + elmt_species_16 + elmt_species_16);
        der(elmt_parameter_1) = 0;

end Parameters;
