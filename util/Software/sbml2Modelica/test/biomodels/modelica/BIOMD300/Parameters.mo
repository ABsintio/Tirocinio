within BIOMD300;
class Parameters

    input Real elmt_species_3;
    input Real elmt_species_5;
    input Real elmt_species_9;

    Real elmt_parameter_11(unit = "") "eps";
    Real elmt_parameter_10(unit = "") "w";
    Real elmt_parameter_9(unit = "") "KiFA";
    Real elmt_parameter_8(unit = "") "kcatPH";
    Real elmt_parameter_7(unit = "") "KiFH";
    Real elmt_parameter_18(unit = "") "ksyn_H";
    Real elmt_parameter_17(unit = "") "kdeg_H";
    Real elmt_parameter_16(unit = "") "ksyn_A";
    Real elmt_parameter_14(unit = "") "kdeg_A";
    Real elmt_parameter_13(unit = "") "kcatFH";
    Real elmt_parameter_6(unit = "") "gamma";
    Real elmt_parameter_5(unit = "") "KdHRE";
    Real elmt_parameter_4(unit = "") "KdPH";
    Real elmt_parameter_3(unit = "") "KdFA";
    Real elmt_parameter_2(unit = "") "KdFH";
    Real elmt_parameter_1(unit = "") "alpha";


    initial equation
        elmt_parameter_11 = 5.0;
        elmt_parameter_10 = 1.0;
        elmt_parameter_8 = 500.0;
        elmt_parameter_18 = 1.0;
        elmt_parameter_17 = 1.0;
        elmt_parameter_6 = 0.0;
        elmt_parameter_5 = 0.3;
        elmt_parameter_4 = 1.0;
        elmt_parameter_3 = 1.0;
        elmt_parameter_2 = 1.0;
        elmt_parameter_1 = 0.33;


    equation
        der(elmt_parameter_11) = 0;
        der(elmt_parameter_10) = 0;
        elmt_parameter_9 = ((elmt_parameter_3 / elmt_parameter_2) * (elmt_parameter_2 + elmt_species_9));
        der(elmt_parameter_8) = 0;
        elmt_parameter_7 = ((elmt_parameter_2 / elmt_parameter_3) * (elmt_parameter_3 + elmt_species_3 + (elmt_parameter_6 * (elmt_species_5 - elmt_species_3))));
        der(elmt_parameter_18) = 0;
        der(elmt_parameter_17) = 0;
        elmt_parameter_16 = (elmt_species_5 / elmt_parameter_11);
        elmt_parameter_14 = (1.0 / elmt_parameter_11);
        elmt_parameter_13 = (elmt_parameter_8 * elmt_parameter_10);
        der(elmt_parameter_6) = 0;
        der(elmt_parameter_5) = 0;
        der(elmt_parameter_4) = 0;
        der(elmt_parameter_3) = 0;
        der(elmt_parameter_2) = 0;
        der(elmt_parameter_1) = 0;

end Parameters;
