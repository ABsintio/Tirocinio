within BIOMD206;
class Parameters

    Real elmt_k0(unit = "m-3.0..s-1.0") "k0";
    Real elmt_k1(unit = "m3.0.mol-1.0.s-1.0") "k1";
    Real elmt_n(unit = "") "n";
    Real elmt_k8(unit = "m3.0.mol-1.0.s-1.0") "k8";
    Real elmt_k9(unit = "s-1.0") "k9";
    Real elmt_atot(unit = "m-3.0.") "atot";
    Real elmt_k6(unit = "m3.0.mol-1.0.s-1.0") "k6";
    Real elmt_k7(unit = "s-1.0") "k7";
    Real elmt_k4(unit = "m3.0.mol-1.0.s-1.0") "k4";
    Real elmt_k5(unit = "s-1.0") "k5";
    Real elmt_k2(unit = "s-1.0") "k2";
    Real elmt_ki(unit = "m-3.0.") "ki";
    Real elmt_ntot(unit = "m-3.0.") "ntot";
    Real elmt_k34(unit = "m3.0.mol-1.0.s-1.0") "k34";
    Real elmt_k33(unit = "m3.0.mol-1.0.s-1.0") "k33";
    Real elmt_k32(unit = "m3.0.mol-1.0.s-1.0") "k32";
    Real elmt_k10(unit = "s-1.0") "k10";
    Real elmt_k31(unit = "m3.0.mol-1.0.s-1.0") "k31";


    initial equation
        elmt_k0 = 50.0;
        elmt_k1 = 550.0;
        elmt_n = 4.0;
        elmt_k8 = 85.7;
        elmt_k9 = 80.0;
        elmt_atot = 4.0;
        elmt_k6 = 2000.0;
        elmt_k7 = 28.0;
        elmt_k4 = 80.0;
        elmt_k5 = 9.7;
        elmt_k2 = 9.8;
        elmt_ki = 1.0;
        elmt_ntot = 1.0;
        elmt_k34 = 23.7;
        elmt_k33 = 57823.1;
        elmt_k32 = 76411.1;
        elmt_k10 = 375.0;
        elmt_k31 = 323.8;


    equation
        der(elmt_k0) = 0;
        der(elmt_k1) = 0;
        der(elmt_n) = 0;
        der(elmt_k8) = 0;
        der(elmt_k9) = 0;
        der(elmt_atot) = 0;
        der(elmt_k6) = 0;
        der(elmt_k7) = 0;
        der(elmt_k4) = 0;
        der(elmt_k5) = 0;
        der(elmt_k2) = 0;
        der(elmt_ki) = 0;
        der(elmt_ntot) = 0;
        der(elmt_k34) = 0;
        der(elmt_k33) = 0;
        der(elmt_k32) = 0;
        der(elmt_k10) = 0;
        der(elmt_k31) = 0;

end Parameters;
