within BIOMD116;
class Parameters

    Real elmt_parameter_11(unit = "") "kd";
    Real elmt_parameter_10(unit = "") "k23x";
    Real elmt_parameter_9(unit = "") "k12x";
    Real elmt_parameter_8(unit = "") "Kmx";
    Real elmt_parameter_7(unit = "") "S1";
    Real elmt_parameter_19(unit = "") "Kmxy";
    Real elmt_parameter_18(unit = "") "k23y";
    Real elmt_parameter_17(unit = "") "k12y";
    Real elmt_parameter_16(unit = "") "Kmy";
    Real elmt_parameter_15(unit = "") "ky";
    Real elmt_parameter_14(unit = "") "S2";
    Real elmt_parameter_13(unit = "") "Kmyx";
    Real elmt_parameter_12(unit = "") "ka";
    Real elmt_parameter_6(unit = "") "kx";
    Real elmt_parameter_5(unit = "") "Y3T";
    Real elmt_parameter_4(unit = "") "Y2T";
    Real elmt_parameter_3(unit = "") "Y1T";
    Real elmt_parameter_2(unit = "") "X3T";
    Real elmt_parameter_1(unit = "") "X2T";
    Real elmt_parameter_0(unit = "") "X1T";


    initial equation
        elmt_parameter_11 = 1.0;
        elmt_parameter_10 = 1.0;
        elmt_parameter_9 = 1.0;
        elmt_parameter_8 = 1.0;
        elmt_parameter_7 = 8.5;
        elmt_parameter_19 = 1.0;
        elmt_parameter_18 = 1.0;
        elmt_parameter_17 = 1.0;
        elmt_parameter_16 = 1.0;
        elmt_parameter_15 = 1.0;
        elmt_parameter_14 = 5.0;
        elmt_parameter_13 = 1.0;
        elmt_parameter_12 = 0.0;
        elmt_parameter_6 = 1.0;
        elmt_parameter_5 = 10.0;
        elmt_parameter_4 = 10.0;
        elmt_parameter_3 = 10.0;
        elmt_parameter_2 = 10.0;
        elmt_parameter_1 = 10.0;
        elmt_parameter_0 = 10.0;


    equation
        der(elmt_parameter_11) = 0;
        der(elmt_parameter_10) = 0;
        der(elmt_parameter_9) = 0;
        der(elmt_parameter_8) = 0;
        der(elmt_parameter_7) = 0;
        der(elmt_parameter_19) = 0;
        der(elmt_parameter_18) = 0;
        der(elmt_parameter_17) = 0;
        der(elmt_parameter_16) = 0;
        der(elmt_parameter_15) = 0;
        der(elmt_parameter_14) = 0;
        der(elmt_parameter_13) = 0;
        der(elmt_parameter_12) = 0;
        der(elmt_parameter_6) = 0;
        der(elmt_parameter_5) = 0;
        der(elmt_parameter_4) = 0;
        der(elmt_parameter_3) = 0;
        der(elmt_parameter_2) = 0;
        der(elmt_parameter_1) = 0;
        der(elmt_parameter_0) = 0;

end Parameters;
