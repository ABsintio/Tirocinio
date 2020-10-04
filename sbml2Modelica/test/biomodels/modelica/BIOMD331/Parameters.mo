within BIOMD331;
class Parameters

    Real elmt_p(unit = "") "p";
    Real elmt_K19(unit = "") "K19";
    Real elmt_K17(unit = "") "K17";
    Real elmt_K9(unit = "") "K9";
    Real elmt_K6(unit = "") "K6";
    Real elmt_K4(unit = "") "K4";
    Real elmt_k_enz(unit = "") "k_enz";
    Real elmt_k16(unit = "") "k16";
    Real elmt_k14(unit = "") "k14";
    Real elmt_k13(unit = "") "k13";
    Real elmt_k12(unit = "") "k12";
    Real elmt_k10(unit = "") "k10";
    Real elmt_K21(unit = "") "K21";
    Real elmt_k1(unit = "") "k1";
    Real elmt_KM(unit = "") "KM";
    Real elmt_k18(unit = "") "k18";
    Real elmt_k8(unit = "") "k8";
    Real elmt_k7(unit = "") "k7";
    Real elmt_k5(unit = "") "k5";
    Real elmt_k_rem(unit = "") "k_rem";
    Real elmt_k2(unit = "") "k2";
    Real elmt_k3(unit = "") "k3";
    Real elmt_k_inact(unit = "") "k_inact";
    Real elmt_k_act(unit = "") "k_act";
    Real elmt_K15(unit = "") "K15";
    Real elmt_K11(unit = "") "K11";
    Real elmt_k20(unit = "") "k20";


    initial equation
        elmt_p = 4.0;
        elmt_K19 = 3.5;
        elmt_K17 = 0.05;
        elmt_K9 = 29.09;
        elmt_K6 = 1.18;
        elmt_K4 = 0.09;
        elmt_k_enz = 3.0;
        elmt_k16 = 7.0;
        elmt_k14 = 153.0;
        elmt_k13 = 13.4;
        elmt_k12 = 2.8;
        elmt_k10 = 0.7;
        elmt_K21 = 4.5;
        elmt_k1 = 0.01;
        elmt_KM = 0.62;
        elmt_k18 = 79.0;
        elmt_k8 = 32.24;
        elmt_k7 = 2.08;
        elmt_k5 = 4.88;
        elmt_k_rem = 3.0;
        elmt_k2 = 1.65;
        elmt_k3 = 0.64;
        elmt_k_inact = 0.4;
        elmt_k_act = 5.0;
        elmt_K15 = 0.16;
        elmt_K11 = 3.0;
        elmt_k20 = 0.81;


    equation
        der(elmt_p) = 0;
        der(elmt_K19) = 0;
        der(elmt_K17) = 0;
        der(elmt_K9) = 0;
        der(elmt_K6) = 0;
        der(elmt_K4) = 0;
        der(elmt_k_enz) = 0;
        der(elmt_k16) = 0;
        der(elmt_k14) = 0;
        der(elmt_k13) = 0;
        der(elmt_k12) = 0;
        der(elmt_k10) = 0;
        der(elmt_K21) = 0;
        der(elmt_k1) = 0;
        der(elmt_KM) = 0;
        der(elmt_k18) = 0;
        der(elmt_k8) = 0;
        der(elmt_k7) = 0;
        der(elmt_k5) = 0;
        der(elmt_k_rem) = 0;
        der(elmt_k2) = 0;
        der(elmt_k3) = 0;
        der(elmt_k_inact) = 0;
        der(elmt_k_act) = 0;
        der(elmt_K15) = 0;
        der(elmt_K11) = 0;
        der(elmt_k20) = 0;

end Parameters;
