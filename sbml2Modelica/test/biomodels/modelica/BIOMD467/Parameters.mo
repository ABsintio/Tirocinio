within BIOMD467;
class Parameters

    Real elmt_k1(unit = "mol-1.0.s-1.0") "k1";
    Real elmt_Km10(unit = "") "Km10";
    Real elmt_k6(unit = "mol-1.0.s-1.0") "k6";
    Real elmt_k7(unit = "s-1.0") "k7";
    Real elmt_k4(unit = "mol-1.0.s-1.0") "k4";
    Real elmt_k5(unit = "s-1.0") "k5";
    Real elmt_k2(unit = "mol-1.0.s-1.0") "k2";
    Real elmt_k3(unit = "mol-1.0.s-1.0") "k3";
    Real elmt_V10r(unit = ".s-1.0") "V10r";
    Real elmt_Km10r(unit = "") "Km10r";
    Real elmt_k1r(unit = "s-1.0") "k1r";
    Real elmt_kD(unit = "s-1.0") "kD";
    Real elmt_k2r(unit = "s-1.0") "k2r";
    Real elmt_k3r(unit = "s-1.0") "k3r";
    Real elmt_k10(unit = "s-1.0") "k10";


    initial equation
        elmt_k1 = 0.004;
        elmt_Km10 = 5.0;
        elmt_k6 = 0.002;
        elmt_k7 = 1.5;
        elmt_k4 = 0.015;
        elmt_k5 = 115.2;
        elmt_k2 = 0.08;
        elmt_k3 = 1.5E-4;
        elmt_V10r = 4.0;
        elmt_Km10r = 20.0;
        elmt_k1r = 10.3;
        elmt_kD = 9.45E-5;
        elmt_k2r = 1152.0;
        elmt_k3r = 1.5;
        elmt_k10 = 0.1;


    equation
        der(elmt_k1) = 0;
        der(elmt_Km10) = 0;
        der(elmt_k6) = 0;
        der(elmt_k7) = 0;
        der(elmt_k4) = 0;
        der(elmt_k5) = 0;
        der(elmt_k2) = 0;
        der(elmt_k3) = 0;
        der(elmt_V10r) = 0;
        der(elmt_Km10r) = 0;
        der(elmt_k1r) = 0;
        der(elmt_kD) = 0;
        der(elmt_k2r) = 0;
        der(elmt_k3r) = 0;
        der(elmt_k10) = 0;

end Parameters;
