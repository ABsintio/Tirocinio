within BIOMD357;
class Parameters

    Real elmt_k4a(unit = "") "k4a";
    Real elmt_j3a(unit = "") "j3a";
    Real elmt_k1(unit = "") "k1";
    Real elmt_k7a(unit = "") "k7a";
    Real elmt_k8a(unit = "") "k8a";
    Real elmt_j7a(unit = "") "j7a";
    Real elmt_k6(unit = "") "k6";
    Real elmt_j5(unit = "") "j5";
    Real elmt_k5(unit = "") "k5";
    Real elmt_k2(unit = "") "k2";
    Real elmt_j1(unit = "") "j1";
    Real elmt_k3a(unit = "") "k3a";


    initial equation
        elmt_k4a = 209.9;
        elmt_j3a = 0.185;
        elmt_k1 = 91.8;
        elmt_k7a = 4.7;
        elmt_k8a = 42.6;
        elmt_j7a = 2.66E-5;
        elmt_k6 = 32.3;
        elmt_j5 = 21.8;
        elmt_k5 = 5.16;
        elmt_k2 = 82.4;
        elmt_j1 = 33.4;
        elmt_k3a = 151.5;


    equation
        der(elmt_k4a) = 0;
        der(elmt_j3a) = 0;
        der(elmt_k1) = 0;
        der(elmt_k7a) = 0;
        der(elmt_k8a) = 0;
        der(elmt_j7a) = 0;
        der(elmt_k6) = 0;
        der(elmt_j5) = 0;
        der(elmt_k5) = 0;
        der(elmt_k2) = 0;
        der(elmt_j1) = 0;
        der(elmt_k3a) = 0;

end Parameters;
