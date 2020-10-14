within BIOMD365;
class Parameters

    Real elmt_k1(unit = "") "k1";
    Real elmt_k8(unit = "") "k8";
    Real elmt_k9(unit = "") "k9";
    Real elmt_k6(unit = "") "k6";
    Real elmt_k7(unit = "") "k7";
    Real elmt_k5(unit = "") "k5";
    Real elmt_k2(unit = "") "k2";
    Real elmt_k10(unit = "") "k10";
    Real elmt_k3(unit = "") "k3";


    initial equation
        elmt_k1 = 1.0E8;
        elmt_k8 = 2570.0;
        elmt_k9 = 1.72E-5;
        elmt_k6 = 5.2E-4;
        elmt_k7 = 0.028;
        elmt_k5 = 1.0;
        elmt_k2 = 0.7;
        elmt_k10 = 2630.0;
        elmt_k3 = 0.064;


    equation
        der(elmt_k1) = 0;
        der(elmt_k8) = 0;
        der(elmt_k9) = 0;
        der(elmt_k6) = 0;
        der(elmt_k7) = 0;
        der(elmt_k5) = 0;
        der(elmt_k2) = 0;
        der(elmt_k10) = 0;
        der(elmt_k3) = 0;

end Parameters;
