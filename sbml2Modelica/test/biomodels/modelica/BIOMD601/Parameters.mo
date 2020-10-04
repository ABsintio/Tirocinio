within BIOMD601;
class Parameters

    input Real elmt_mwd805cc43_4a96_472f_a894_c119a6aa895f;
    input Real elmt_mwe1a0a651_d2d5_4f75_8d45_9336c60eb9a6;
    input Real elmt_mw168e0d8a_b9f7_4d4c_b437_a81206c5d381;

    Real elmt_parameter_11(unit = "") "kf";
    Real elmt_parameter_22(unit = "") "KC";
    Real elmt_parameter_10(unit = "") "nf";
    Real elmt_parameter_9(unit = "") "B";
    Real elmt_parameter_8(unit = "") "ns";
    Real elmt_parameter_7(unit = "") "Ks";
    Real elmt_parameter_15(unit = "") "csq";
    Real elmt_parameter_26(unit = "") "Xi";
    Real elmt_parameter_14(unit = "") "KR";
    Real elmt_parameter_25(unit = "") "Ca_SR_basal";
    Real elmt_parameter_24(unit = "") "PE";
    Real elmt_parameter_23(unit = "") "Po";
    Real elmt_parameter_6(unit = "") "nv";
    Real elmt_parameter_5(unit = "") "gamma";
    Real elmt_parameter_4(unit = "") "Ca_i_basal";
    Real elmt_parameter_3(unit = "") "c";
    Real elmt_parameter_2(unit = "") "b";
    Real elmt_parameter_1(unit = "") "a";


    initial equation
        elmt_parameter_11 = 4000.0;
        elmt_parameter_10 = 1.8;
        elmt_parameter_9 = 100.0;
        elmt_parameter_8 = 2.0;
        elmt_parameter_7 = 3.0E-7;
        elmt_parameter_15 = 10.0;
        elmt_parameter_14 = 1.515E-4;
        elmt_parameter_25 = 1.5E-4;
        elmt_parameter_6 = 1.7;
        elmt_parameter_5 = 0.052;
        elmt_parameter_4 = 7.5E-6;
        elmt_parameter_3 = 1.125E-5;
        elmt_parameter_2 = 65.0;
        elmt_parameter_1 = 35.0;


    equation
        der(elmt_parameter_11) = 0;
        elmt_parameter_22 = Functions.pow(((elmt_parameter_2 * Functions.pow(elmt_parameter_5, elmt_parameter_6) * Functions.pow((elmt_parameter_4 / elmt_parameter_9), elmt_parameter_10) * (elmt_parameter_25 - (elmt_parameter_4 / elmt_parameter_9)) * ((Functions.pow((elmt_parameter_4 / elmt_parameter_9), elmt_parameter_8) + Functions.pow(elmt_parameter_7, elmt_parameter_8)) / (elmt_parameter_3 * Functions.pow((elmt_parameter_4 / elmt_parameter_9), elmt_parameter_8)))) - Functions.pow((elmt_parameter_4 / elmt_parameter_9), elmt_parameter_10)), (1.0 / elmt_parameter_10));
        der(elmt_parameter_10) = 0;
        der(elmt_parameter_9) = 0;
        der(elmt_parameter_8) = 0;
        der(elmt_parameter_7) = 0;
        der(elmt_parameter_15) = 0;
        elmt_parameter_26 = (elmt_mwd805cc43_4a96_472f_a894_c119a6aa895f + elmt_parameter_24 + elmt_parameter_14);
        der(elmt_parameter_14) = 0;
        der(elmt_parameter_25) = 0;
        elmt_parameter_24 = (elmt_parameter_15 * (elmt_parameter_14 - elmt_parameter_25));
        elmt_parameter_23 = (Functions.pow((elmt_mwe1a0a651_d2d5_4f75_8d45_9336c60eb9a6 * (1.0 + (elmt_parameter_11 * elmt_mw168e0d8a_b9f7_4d4c_b437_a81206c5d381))), elmt_parameter_10) / (Functions.pow(elmt_parameter_22, elmt_parameter_10) + Functions.pow((elmt_mwe1a0a651_d2d5_4f75_8d45_9336c60eb9a6 * (1.0 + (elmt_parameter_11 * elmt_mw168e0d8a_b9f7_4d4c_b437_a81206c5d381))), elmt_parameter_10)));
        der(elmt_parameter_6) = 0;
        der(elmt_parameter_5) = 0;
        der(elmt_parameter_4) = 0;
        der(elmt_parameter_3) = 0;
        der(elmt_parameter_2) = 0;
        der(elmt_parameter_1) = 0;

end Parameters;
