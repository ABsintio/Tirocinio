within BIOMD099;
class Parameters

    Real elmt_parameter_11(unit = "") "k12";
    Real elmt_parameter_10(unit = "") "k11";
    Real elmt_parameter_9(unit = "") "k10";
    Real elmt_parameter_8(unit = "") "k9";
    Real elmt_parameter_7(unit = "") "k8";
    Real elmt_parameter_13(unit = "") "k14";
    Real elmt_parameter_12(unit = "") "k13";
    Real elmt_parameter_6(unit = "") "k7";
    Real elmt_parameter_5(unit = "") "k6";
    Real elmt_parameter_4(unit = "") "k5";
    Real elmt_parameter_3(unit = "") "k4";
    Real elmt_parameter_2(unit = "") "k3";
    Real elmt_parameter_1(unit = "") "k2";
    Real elmt_parameter_0(unit = "") "k1";


    initial equation
        elmt_parameter_11 = 3.1;
        elmt_parameter_10 = 0.6;
        elmt_parameter_9 = 1.0;
        elmt_parameter_8 = 0.29;
        elmt_parameter_7 = 1.3;
        elmt_parameter_13 = 4.5;
        elmt_parameter_12 = 33.0;
        elmt_parameter_6 = 2.0;
        elmt_parameter_5 = 0.8;
        elmt_parameter_4 = 0.6;
        elmt_parameter_3 = 1.5;
        elmt_parameter_2 = 2.5;
        elmt_parameter_1 = 0.9;
        elmt_parameter_0 = 1.4;


    equation
        der(elmt_parameter_11) = 0;
        der(elmt_parameter_10) = 0;
        der(elmt_parameter_9) = 0;
        der(elmt_parameter_8) = 0;
        der(elmt_parameter_7) = 0;
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
