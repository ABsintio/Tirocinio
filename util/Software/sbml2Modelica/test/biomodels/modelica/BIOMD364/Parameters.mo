within BIOMD364;
class Parameters

    Real elmt_k4a(unit = "") "k4a";
    Real elmt_j3a(unit = "") "j3a";
    Real elmt_k1(unit = "") "k1";
    Real elmt_k7a(unit = "") "k7a";
    Real elmt_k8a(unit = "") "k8a";
    Real elmt_j7a(unit = "") "j7a";
    Real elmt_k8(unit = "") "k8";
    Real elmt_j7(unit = "") "j7";
    Real elmt_k9(unit = "") "k9";
    Real elmt_k6(unit = "") "k6";
    Real elmt_j5(unit = "") "j5";
    Real elmt_k7(unit = "") "k7";
    Real elmt_k4(unit = "") "k4";
    Real elmt_j3(unit = "") "j3";
    Real elmt_k5(unit = "") "k5";
    Real elmt_k2(unit = "") "k2";
    Real elmt_kC2(unit = "") "kC2";
    Real elmt_j1(unit = "") "j1";
    Real elmt_k3(unit = "") "k3";
    Real elmt_k3a(unit = "") "k3a";
    Real elmt_kC1(unit = "") "kC1";
    Real elmt_k10(unit = "") "k10";


    initial equation
        elmt_k4a = 209.9;
        elmt_j3a = 0.185;
        elmt_k1 = 91.8;
        elmt_k7a = 4.7;
        elmt_k8a = 42.6;
        elmt_j7a = 2.66E-5;
        elmt_k8 = 0.00599;
        elmt_j7 = 4.46E-9;
        elmt_k9 = 3.12E-8;
        elmt_k6 = 32.3;
        elmt_j5 = 21.8;
        elmt_k7 = 6.76E-8;
        elmt_k4 = 38.1;
        elmt_j3 = 1.58E-6;
        elmt_k5 = 5.16;
        elmt_k2 = 82.4;
        elmt_kC2 = 0.031;
        elmt_j1 = 33.4;
        elmt_k3 = 38.1;
        elmt_k3a = 151.5;
        elmt_kC1 = 2.39E-6;
        elmt_k10 = 7.23E-10;


    equation
        der(elmt_k4a) = 0;
        der(elmt_j3a) = 0;
        der(elmt_k1) = 0;
        der(elmt_k7a) = 0;
        der(elmt_k8a) = 0;
        der(elmt_j7a) = 0;
        der(elmt_k8) = 0;
        der(elmt_j7) = 0;
        der(elmt_k9) = 0;
        der(elmt_k6) = 0;
        der(elmt_j5) = 0;
        der(elmt_k7) = 0;
        der(elmt_k4) = 0;
        der(elmt_j3) = 0;
        der(elmt_k5) = 0;
        der(elmt_k2) = 0;
        der(elmt_kC2) = 0;
        der(elmt_j1) = 0;
        der(elmt_k3) = 0;
        der(elmt_k3a) = 0;
        der(elmt_kC1) = 0;
        der(elmt_k10) = 0;

end Parameters;
