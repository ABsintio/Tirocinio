within BIOMD143;
class Parameters

    Real elmt_Ko(unit = "") "";
    Real elmt_k16(unit = "") "";
    Real elmt_k15(unit = "") "";
    Real elmt_k14(unit = "") "";
    Real elmt_k13(unit = "") "";
    Real elmt_V(unit = "") "";
    Real elmt_k12(unit = "") "";
    Real elmt_k11(unit = "") "";
    Real elmt_k10(unit = "") "";
    Real elmt_kminus13(unit = "") "";
    Real elmt_k1(unit = "") "";
    Real elmt_kminus1(unit = "") "";
    Real elmt_L(unit = "") "";
    Real elmt_Knadph(unit = "") "";
    Real elmt_k18(unit = "") "";
    Real elmt_k17(unit = "") "";
    Real elmt_k8(unit = "") "";
    Real elmt_k9(unit = "") "";
    Real elmt_k6(unit = "") "";
    Real elmt_k7(unit = "") "";
    Real elmt_k4(unit = "") "";
    Real elmt_k5(unit = "") "";
    Real elmt_k2(unit = "") "";
    Real elmt_k3(unit = "") "";


    initial equation
        elmt_Ko = 1.5;
        elmt_k16 = 10.0;
        elmt_k15 = 30.0;
        elmt_k14 = 30.0;
        elmt_k13 = 12.5;
        elmt_V = 288.0;
        elmt_k12 = 25.0;
        elmt_k11 = 60.0;
        elmt_k10 = 10.0;
        elmt_kminus13 = 0.045;
        elmt_k1 = 50.0;
        elmt_kminus1 = 58.0;
        elmt_L = 550.0;
        elmt_Knadph = 60.0;
        elmt_k18 = 2.0;
        elmt_k17 = 10.0;
        elmt_k8 = 50.0;
        elmt_k9 = 500.0;
        elmt_k6 = 0.1;
        elmt_k7 = 1.0E-6;
        elmt_k4 = 20.0;
        elmt_k5 = 10.0;
        elmt_k2 = 10.0;
        elmt_k3 = 0.004;


    equation
        der(elmt_Ko) = 0;
        der(elmt_k16) = 0;
        der(elmt_k15) = 0;
        der(elmt_k14) = 0;
        der(elmt_k13) = 0;
        der(elmt_V) = 0;
        der(elmt_k12) = 0;
        der(elmt_k11) = 0;
        der(elmt_k10) = 0;
        der(elmt_kminus13) = 0;
        der(elmt_k1) = 0;
        der(elmt_kminus1) = 0;
        der(elmt_L) = 0;
        der(elmt_Knadph) = 0;
        der(elmt_k18) = 0;
        der(elmt_k17) = 0;
        der(elmt_k8) = 0;
        der(elmt_k9) = 0;
        der(elmt_k6) = 0;
        der(elmt_k7) = 0;
        der(elmt_k4) = 0;
        der(elmt_k5) = 0;
        der(elmt_k2) = 0;
        der(elmt_k3) = 0;

end Parameters;
