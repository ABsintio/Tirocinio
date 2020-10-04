within BIOMD343;
class Parameters

    Real elmt_kyanna(unit = "") "kyanna";
    Real elmt_km3(unit = "") "km3";
    Real elmt_k1f(unit = "") "k1f";
    Real elmt_k1e(unit = "") "k1e";
    Real elmt_k1d(unit = "") "k1d";
    Real elmt_k1c(unit = "") "k1c";
    Real elmt_k1b(unit = "") "k1b";
    Real elmt_k1a(unit = "") "k1a";
    Real elmt_k3(unit = "") "k3";
    Real elmt_k1abasic(unit = "") "k1abasic";
    Real elmt_ky2(unit = "") "ky2";
    Real elmt_ky1(unit = "") "ky1";
    Real elmt_k1g(unit = "") "k1g";
    Real elmt_km2(unit = "") "km2";
    Real elmt_ins(unit = "") "ins";
    Real elmt_kyDosR(unit = "") "kyDosR";
    Real elmt_k1r(unit = "") "k1r";
    Real elmt_k22(unit = "") "k22";
    Real elmt_k21(unit = "") "k21";


    initial equation
        elmt_kyanna = 16760.1203140926;
        elmt_km3 = 0.1131073982;
        elmt_k1f = 20.0726035037;
        elmt_k1e = 4.38334E-5;
        elmt_k1d = 1580.6782649401;
        elmt_k1c = 0.3635167928;
        elmt_k1b = 0.02000224505;
        elmt_k1a = 0.3892881852;
        elmt_k3 = 1.6286590231;
        elmt_k1abasic = 0.012452744;
        elmt_ky2 = 8936.219557405;
        elmt_ky1 = 152.9631668536;
        elmt_k1g = 286.6994648072;
        elmt_km2 = 32.5942371891;
        elmt_ins = 100.0;
        elmt_kyDosR = 13740.4321729991;
        elmt_k1r = 3.6327773442;
        elmt_k22 = 0.036381619;
        elmt_k21 = 1.6722503302;


    equation
        der(elmt_kyanna) = 0;
        der(elmt_km3) = 0;
        der(elmt_k1f) = 0;
        der(elmt_k1e) = 0;
        der(elmt_k1d) = 0;
        der(elmt_k1c) = 0;
        der(elmt_k1b) = 0;
        der(elmt_k1a) = 0;
        der(elmt_k3) = 0;
        der(elmt_k1abasic) = 0;
        der(elmt_ky2) = 0;
        der(elmt_ky1) = 0;
        der(elmt_k1g) = 0;
        der(elmt_km2) = 0;
        der(elmt_ins) = 0;
        der(elmt_kyDosR) = 0;
        der(elmt_k1r) = 0;
        der(elmt_k22) = 0;
        der(elmt_k21) = 0;

end Parameters;
