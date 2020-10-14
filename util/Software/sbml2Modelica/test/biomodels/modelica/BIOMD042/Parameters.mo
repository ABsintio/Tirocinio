within BIOMD042;
class Parameters

    Real elmt_k5b(unit = "") "";
    Real elmt_k9f(unit = "") "";
    Real elmt_k9b(unit = "") "";
    Real elmt_K2ATP(unit = "") "";
    Real elmt_k3f(unit = "") "";
    Real elmt_k5f(unit = "") "";
    Real elmt_K2(unit = "") "";
    Real elmt_k3b(unit = "") "";
    Real elmt_K7PYR(unit = "") "";
    Real elmt_K6ADP(unit = "") "";
    Real elmt_K1ATP(unit = "") "";
    Real elmt_flow(unit = "") "";
    Real elmt_k10(unit = "") "";
    Real elmt_k8b(unit = "") "";
    Real elmt_V7(unit = "") "";
    Real elmt_K1GLC(unit = "") "";
    Real elmt_V6(unit = "") "";
    Real elmt_k2(unit = "") "";
    Real elmt_k8f(unit = "") "";
    Real elmt_K4NAD(unit = "") "";
    Real elmt_V4(unit = "") "";
    Real elmt_V1(unit = "") "";
    Real elmt_V2(unit = "") "";
    Real elmt_K4GAP(unit = "") "";
    Real elmt_K6PEP(unit = "") "";


    initial equation
        elmt_k5b = 0.5;
        elmt_k9f = 10.0;
        elmt_k9b = 10.0;
        elmt_K2ATP = 0.01;
        elmt_k3f = 1.0;
        elmt_k5f = 1.0;
        elmt_K2 = 0.0016;
        elmt_k3b = 50.0;
        elmt_K7PYR = 0.3;
        elmt_K6ADP = 0.3;
        elmt_K1ATP = 0.063;
        elmt_flow = 0.011;
        elmt_k10 = 0.05;
        elmt_k8b = 1.43E-4;
        elmt_V7 = 2.0;
        elmt_K1GLC = 0.1;
        elmt_V6 = 10.0;
        elmt_k2 = 0.017;
        elmt_k8f = 1.0;
        elmt_K4NAD = 1.0;
        elmt_V4 = 10.0;
        elmt_V1 = 0.5;
        elmt_V2 = 1.5;
        elmt_K4GAP = 1.0;
        elmt_K6PEP = 0.2;


    equation
        der(elmt_k5b) = 0;
        der(elmt_k9f) = 0;
        der(elmt_k9b) = 0;
        der(elmt_K2ATP) = 0;
        der(elmt_k3f) = 0;
        der(elmt_k5f) = 0;
        der(elmt_K2) = 0;
        der(elmt_k3b) = 0;
        der(elmt_K7PYR) = 0;
        der(elmt_K6ADP) = 0;
        der(elmt_K1ATP) = 0;
        der(elmt_flow) = 0;
        der(elmt_k10) = 0;
        der(elmt_k8b) = 0;
        der(elmt_V7) = 0;
        der(elmt_K1GLC) = 0;
        der(elmt_V6) = 0;
        der(elmt_k2) = 0;
        der(elmt_k8f) = 0;
        der(elmt_K4NAD) = 0;
        der(elmt_V4) = 0;
        der(elmt_V1) = 0;
        der(elmt_V2) = 0;
        der(elmt_K4GAP) = 0;
        der(elmt_K6PEP) = 0;

end Parameters;
