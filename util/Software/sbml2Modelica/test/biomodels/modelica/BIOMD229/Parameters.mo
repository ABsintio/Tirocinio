within BIOMD229;
class Parameters

    Real elmt_k1(unit = "") "k1";
    Real elmt_k8(unit = "") "k8";
    Real elmt_k9(unit = "") "k9";
    Real elmt_k6(unit = "") "k6";
    Real elmt_k7(unit = "") "k7";
    Real elmt_k4(unit = "") "k4";
    Real elmt_k5(unit = "") "k5";
    Real elmt_k2(unit = "") "k2";
    Real elmt_k3(unit = "") "k3";
    Real elmt_k14(unit = "") "k14";
    Real elmt_k13(unit = "") "k13";
    Real elmt_k12(unit = "") "k12";
    Real elmt_k11(unit = "") "k11";
    Real elmt_k10(unit = "") "k10";


    initial equation
        elmt_k1 = 2.0;
        elmt_k8 = 1.3;
        elmt_k9 = 0.3;
        elmt_k6 = 0.8;
        elmt_k7 = 1.0;
        elmt_k4 = 1.5;
        elmt_k5 = 0.6;
        elmt_k2 = 0.9;
        elmt_k3 = 2.5;
        elmt_k14 = 4.5;
        elmt_k13 = 23.0;
        elmt_k12 = 4.9;
        elmt_k11 = 0.7;
        elmt_k10 = 0.8;


    equation
        der(elmt_k1) = 0;
        der(elmt_k8) = 0;
        der(elmt_k9) = 0;
        der(elmt_k6) = 0;
        der(elmt_k7) = 0;
        der(elmt_k4) = 0;
        der(elmt_k5) = 0;
        der(elmt_k2) = 0;
        der(elmt_k3) = 0;
        der(elmt_k14) = 0;
        der(elmt_k13) = 0;
        der(elmt_k12) = 0;
        der(elmt_k11) = 0;
        der(elmt_k10) = 0;

end Parameters;
