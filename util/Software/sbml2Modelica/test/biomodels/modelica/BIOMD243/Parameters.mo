within BIOMD243;
class Parameters

    Real elmt_k1(unit = "") "k1";
    Real elmt_k17(unit = "") "k17";
    Real elmt_k8(unit = "") "k8";
    Real elmt_k9(unit = "") "k9";
    Real elmt_k6(unit = "") "k6";
    Real elmt_k7(unit = "") "k7";
    Real elmt_k4(unit = "") "k4";
    Real elmt_k5(unit = "") "k5";
    Real elmt_k2(unit = "") "k2";
    Real elmt_k3(unit = "") "k3";
    Real elmt_k16(unit = "") "k16";
    Real elmt_k15(unit = "") "k15";
    Real elmt_k14(unit = "") "k14";
    Real elmt_k13(unit = "") "k13";
    Real elmt_k12(unit = "") "k12";
    Real elmt_k11(unit = "") "k11";
    Real elmt_k10(unit = "") "k10";


    initial equation
        elmt_k1 = 1.0;
        elmt_k17 = 0.0064182;
        elmt_k8 = 8.044378E-4;
        elmt_k9 = 0.002249759;
        elmt_k6 = 0.9999999;
        elmt_k7 = 0.8875063;
        elmt_k4 = 1.0E-5;
        elmt_k5 = 5.946569E-4;
        elmt_k2 = 1.277248E-4;
        elmt_k3 = 0.6693316;
        elmt_k16 = 0.02229912;
        elmt_k15 = 3.684162;
        elmt_k14 = 0.3588224;
        elmt_k13 = 7.204261E-4;
        elmt_k12 = 0.1502914;
        elmt_k11 = 0.02891451;
        elmt_k10 = 0.1205258;


    equation
        der(elmt_k1) = 0;
        der(elmt_k17) = 0;
        der(elmt_k8) = 0;
        der(elmt_k9) = 0;
        der(elmt_k6) = 0;
        der(elmt_k7) = 0;
        der(elmt_k4) = 0;
        der(elmt_k5) = 0;
        der(elmt_k2) = 0;
        der(elmt_k3) = 0;
        der(elmt_k16) = 0;
        der(elmt_k15) = 0;
        der(elmt_k14) = 0;
        der(elmt_k13) = 0;
        der(elmt_k12) = 0;
        der(elmt_k11) = 0;
        der(elmt_k10) = 0;

end Parameters;
