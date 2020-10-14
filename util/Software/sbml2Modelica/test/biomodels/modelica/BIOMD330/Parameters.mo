within BIOMD330;
class Parameters

    Real elmt_k1(unit = "") "k1";
    Real elmt_K19(unit = "") "K19";
    Real elmt_K17(unit = "") "K17";
    Real elmt_k18(unit = "") "k18";
    Real elmt_k8(unit = "") "k8";
    Real elmt_K9(unit = "") "K9";
    Real elmt_K6(unit = "") "K6";
    Real elmt_k7(unit = "") "k7";
    Real elmt_K4(unit = "") "K4";
    Real elmt_k5(unit = "") "k5";
    Real elmt_k2(unit = "") "k2";
    Real elmt_k3(unit = "") "k3";
    Real elmt_K15(unit = "") "K15";
    Real elmt_k16(unit = "") "k16";
    Real elmt_k14(unit = "") "k14";
    Real elmt_k13(unit = "") "k13";
    Real elmt_K11(unit = "") "K11";
    Real elmt_k12(unit = "") "k12";
    Real elmt_k10(unit = "") "k10";
    Real elmt_k20(unit = "") "k20";
    Real elmt_K21(unit = "") "K21";


    initial equation
        elmt_k1 = 0.35;
        elmt_K19 = 2.0;
        elmt_K17 = 0.05;
        elmt_k18 = 79.0;
        elmt_k8 = 32.24;
        elmt_K9 = 29.09;
        elmt_K6 = 0.7;
        elmt_k7 = 5.82;
        elmt_K4 = 0.783;
        elmt_k5 = 1.24;
        elmt_k2 = 0.0;
        elmt_k3 = 1.0E-4;
        elmt_K15 = 0.16;
        elmt_k16 = 20.9;
        elmt_k14 = 149.0;
        elmt_k13 = 0.0;
        elmt_K11 = 2.667;
        elmt_k12 = 0.76;
        elmt_k10 = 0.93;
        elmt_k20 = 1.5;
        elmt_K21 = 1.5;


    equation
        der(elmt_k1) = 0;
        der(elmt_K19) = 0;
        der(elmt_K17) = 0;
        der(elmt_k18) = 0;
        der(elmt_k8) = 0;
        der(elmt_K9) = 0;
        der(elmt_K6) = 0;
        der(elmt_k7) = 0;
        der(elmt_K4) = 0;
        der(elmt_k5) = 0;
        der(elmt_k2) = 0;
        der(elmt_k3) = 0;
        der(elmt_K15) = 0;
        der(elmt_k16) = 0;
        der(elmt_k14) = 0;
        der(elmt_k13) = 0;
        der(elmt_K11) = 0;
        der(elmt_k12) = 0;
        der(elmt_k10) = 0;
        der(elmt_k20) = 0;
        der(elmt_K21) = 0;

end Parameters;
