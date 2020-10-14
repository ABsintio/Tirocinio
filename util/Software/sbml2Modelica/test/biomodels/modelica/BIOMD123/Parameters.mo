within BIOMD123;
class Parameters

    Real elmt_k1(unit = "") "";
    Real elmt_k19(unit = "") "";
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
    Real elmt_k16(unit = "") "";
    Real elmt_k15(unit = "") "";
    Real elmt_k14(unit = "") "";
    Real elmt_k13(unit = "") "";
    Real elmt_k12(unit = "") "";
    Real elmt_k11(unit = "") "";
    Real elmt_k22(unit = "") "";
    Real elmt_k10(unit = "") "";
    Real elmt_k21(unit = "") "";
    Real elmt_k20(unit = "") "";


    initial equation
        elmt_k1 = 2.56E-5;
        elmt_k19 = 1.0;
        elmt_k18 = 9.6E-4;
        elmt_k17 = 0.0015;
        elmt_k8 = 0.5;
        elmt_k9 = 0.5;
        elmt_k6 = 9.2E-4;
        elmt_k7 = 0.005;
        elmt_k4 = 0.5;
        elmt_k5 = 0.0019;
        elmt_k2 = 0.00256;
        elmt_k3 = 0.005;
        elmt_k16 = 6.63;
        elmt_k15 = 0.00168;
        elmt_k14 = 0.00256;
        elmt_k13 = 0.5;
        elmt_k12 = 0.00168;
        elmt_k11 = 6.63;
        elmt_k22 = 0.5;
        elmt_k10 = 0.005;
        elmt_k21 = 0.21;
        elmt_k20 = 1.0;


    equation
        der(elmt_k1) = 0;
        der(elmt_k19) = 0;
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
        der(elmt_k16) = 0;
        der(elmt_k15) = 0;
        der(elmt_k14) = 0;
        der(elmt_k13) = 0;
        der(elmt_k12) = 0;
        der(elmt_k11) = 0;
        der(elmt_k22) = 0;
        der(elmt_k10) = 0;
        der(elmt_k21) = 0;
        der(elmt_k20) = 0;

end Parameters;
