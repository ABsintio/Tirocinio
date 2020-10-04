within BIOMD199;
class Parameters

    Real elmt_k1(unit = "s-1.0") "k1";
    Real elmt_k8(unit = "s-1.0") "k8";
    Real elmt_k9(unit = "s-1.0") "k9";
    Real elmt_k6(unit = "s-1.0") "k6";
    Real elmt_k7(unit = "s-1.0") "k7";
    Real elmt_k4(unit = "s-1.0") "k4";
    Real elmt_k5(unit = "m3.0.mol-1.0.s-1.0") "k5";
    Real elmt_k2(unit = "m3.0.mol-1.0.s-1.0") "k2";
    Real elmt_k10(unit = "m3.0.mol-1.0.s-1.0") "k10";
    Real elmt_k3(unit = "s-1.0") "k3";


    initial equation
        elmt_k1 = 2.6;
        elmt_k8 = 2.6;
        elmt_k9 = 1.0E-4;
        elmt_k6 = 26.0;
        elmt_k7 = 5.0;
        elmt_k4 = 2.6;
        elmt_k5 = 0.9;
        elmt_k2 = 0.9;
        elmt_k10 = 0.0013;
        elmt_k3 = 26.0;


    equation
        der(elmt_k1) = 0;
        der(elmt_k8) = 0;
        der(elmt_k9) = 0;
        der(elmt_k6) = 0;
        der(elmt_k7) = 0;
        der(elmt_k4) = 0;
        der(elmt_k5) = 0;
        der(elmt_k2) = 0;
        der(elmt_k10) = 0;
        der(elmt_k3) = 0;

end Parameters;
