within BIOMD067;
class Parameters

    Real elmt_Keq(unit = "") "";
    Real elmt_Kg3(unit = "") "";
    Real elmt_k1(unit = "") "";
    Real elmt_Kg1(unit = "") "";
    Real elmt_Kg2(unit = "") "";
    Real elmt_n(unit = "") "";
    Real elmt_kAck_r(unit = "") "";
    Real elmt_H(unit = "") "";
    Real elmt_C(unit = "") "";
    Real elmt_k2(unit = "") "";
    Real elmt_k3(unit = "") "";
    Real elmt_S0(unit = "") "";
    Real elmt_KM1(unit = "") "";
    Real elmt_alpha3(unit = "") "";
    Real elmt_KM2(unit = "") "";
    Real elmt_alpha1(unit = "") "";
    Real elmt_alpha2(unit = "") "";
    Real elmt_kTCA(unit = "") "";
    Real elmt_kAck_f(unit = "") "";
    Real elmt_kd(unit = "") "";
    Real elmt_alpha0(unit = "") "";


    initial equation
        elmt_Keq = 5.0E-4;
        elmt_Kg3 = 0.001;
        elmt_k1 = 80.0;
        elmt_Kg1 = 10.0;
        elmt_Kg2 = 10.0;
        elmt_n = 2.0;
        elmt_kAck_r = 1.0;
        elmt_H = 1.0E-7;
        elmt_C = 100.0;
        elmt_k2 = 0.8;
        elmt_k3 = 0.01;
        elmt_S0 = 0.5;
        elmt_KM1 = 0.06;
        elmt_alpha3 = 2.0;
        elmt_KM2 = 0.1;
        elmt_alpha1 = 0.1;
        elmt_alpha2 = 2.0;
        elmt_kTCA = 10.0;
        elmt_kAck_f = 1.0;
        elmt_kd = 0.06;
        elmt_alpha0 = 0.0;


    equation
        der(elmt_Keq) = 0;
        der(elmt_Kg3) = 0;
        der(elmt_k1) = 0;
        der(elmt_Kg1) = 0;
        der(elmt_Kg2) = 0;
        der(elmt_n) = 0;
        der(elmt_kAck_r) = 0;
        der(elmt_H) = 0;
        der(elmt_C) = 0;
        der(elmt_k2) = 0;
        der(elmt_k3) = 0;
        der(elmt_S0) = 0;
        der(elmt_KM1) = 0;
        der(elmt_alpha3) = 0;
        der(elmt_KM2) = 0;
        der(elmt_alpha1) = 0;
        der(elmt_alpha2) = 0;
        der(elmt_kTCA) = 0;
        der(elmt_kAck_f) = 0;
        der(elmt_kd) = 0;
        der(elmt_alpha0) = 0;

end Parameters;
