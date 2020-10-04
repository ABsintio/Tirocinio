within BIOMD198;
class Parameters

    input Real elmt_NO_sGCslow;
    input Real elmt_NO_sGCfast;
    input Real elmt_NO_sGCfast_5coord;
    input Real elmt_NO_sGCslow_5coord;
    input Real elmt_NO_sGCslow_6coord;
    input Real elmt_sGCfast;
    input Real elmt_NO_sGCfast_6coord;
    input Real elmt_sGCslow;
    input Real elmt_NO_sGCslow_6coord_NO_int;

    Real elmt_k1(unit = "m3.0.mol-1.0.s-1.0") "k1";
    Real elmt_e5c(unit = "m2.0.mol-1.0") "ext_5coord";
    Real elmt_k8(unit = "s-1.0") "k8";
    Real elmt_k9(unit = "m3.0.mol-1.0.s-1.0") "k9";
    Real elmt_k6(unit = "m3.0.mol-1.0.s-1.0") "k6";
    Real elmt_k7(unit = "s-1.0") "k7";
    Real elmt_k4(unit = "s-1.0") "k4";
    Real elmt_k5(unit = "s-1.0") "k5";
    Real elmt_e6c_NO(unit = "m2.0.mol-1.0") "ext_6coord_NO";
    Real elmt_k2(unit = "s-1.0") "k2";
    Real elmt_k3(unit = "s-1.0") "k3";
    Real elmt_ext(unit = "m-1.0") "extinction";
    Real elmt_e5c_NO(unit = "m2.0.mol-1.0") "ext_5coord_NO";
    Real elmt_k12(unit = "s-1.0") "k12";
    Real elmt_k11(unit = "s-1.0") "k11";
    Real elmt_k10(unit = "s-1.0") "k10";


    initial equation
        elmt_k1 = 700.0;
        elmt_e5c = 0.11;
        elmt_k8 = 850.0;
        elmt_k9 = 5.0;
        elmt_k6 = 700.0;
        elmt_k7 = 800.0;
        elmt_k4 = 20.0;
        elmt_k5 = 0.2;
        elmt_e6c_NO = 0.064;
        elmt_k2 = 800.0;
        elmt_k3 = 850.0;
        elmt_e5c_NO = 0.025;
        elmt_k12 = 0.02;
        elmt_k11 = 1.6;
        elmt_k10 = 25.0;


    equation
        der(elmt_k1) = 0;
        der(elmt_e5c) = 0;
        der(elmt_k8) = 0;
        der(elmt_k9) = 0;
        der(elmt_k6) = 0;
        der(elmt_k7) = 0;
        der(elmt_k4) = 0;
        der(elmt_k5) = 0;
        der(elmt_e6c_NO) = 0;
        der(elmt_k2) = 0;
        der(elmt_k3) = 0;
        elmt_ext = ((elmt_e5c * (elmt_sGCfast + elmt_NO_sGCfast + elmt_sGCslow + elmt_NO_sGCslow)) + (elmt_e5c_NO * (elmt_NO_sGCfast_5coord + elmt_NO_sGCslow_5coord)) + (elmt_e6c_NO * (elmt_NO_sGCfast_6coord + elmt_NO_sGCslow_6coord + elmt_NO_sGCslow_6coord_NO_int)));
        der(elmt_e5c_NO) = 0;
        der(elmt_k12) = 0;
        der(elmt_k11) = 0;
        der(elmt_k10) = 0;

end Parameters;
