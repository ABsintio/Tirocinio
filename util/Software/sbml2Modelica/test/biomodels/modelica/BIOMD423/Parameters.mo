within BIOMD423;
class Parameters

    input Real elmt_IRp;
    input Real elmt_IRSiP;
    input Real elmt_IRiP;
    input Real elmt_IRins;
    input Real elmt_IR;

    Real elmt_measIRS1(unit = "") "measIRS1";
    Real elmt_km3(unit = "") "km3";
    Real elmt_k1f(unit = "") "k1f";
    Real elmt_IRmem(unit = "") "IRmem";
    Real elmt_k1e(unit = "") "k1e";
    Real elmt_k1d(unit = "") "k1d";
    Real elmt_k1c(unit = "") "k1c";
    Real elmt_k1b(unit = "") "k1b";
    Real elmt_k1a(unit = "") "k1a";
    Real elmt_k3(unit = "") "k3";
    Real elmt_k1aBasic(unit = "") "k1aBasic";
    Real elmt_km23(unit = "") "km23";
    Real elmt_k1g(unit = "") "k1g";
    Real elmt_km2(unit = "") "km2";
    Real elmt_measIRp(unit = "") "measIRp";
    Real elmt_ins(unit = "") "ins";
    Real elmt_k1r(unit = "") "k1r";
    Real elmt_k22(unit = "") "k22";
    Real elmt_k21(unit = "") "k21";


    initial equation
        elmt_km3 = 0.132671;
        elmt_k1f = 119.353;
        elmt_k1e = 5.25027E-5;
        elmt_k1d = 4.78844;
        elmt_k1c = 0.574266;
        elmt_k1b = 3.4699E-6;
        elmt_k1a = 0.153418;
        elmt_k3 = 8.62917E-5;
        elmt_k1aBasic = 0.0383389;
        elmt_km23 = 88.9096;
        elmt_k1g = 4.14899;
        elmt_km2 = 262759.0;
        elmt_ins = 100.0;
        elmt_k1r = 37954.7;
        elmt_k22 = 1.7252E-6;
        elmt_k21 = 538004.0;


    equation
        elmt_measIRS1 = elmt_IRSiP;
        der(elmt_km3) = 0;
        der(elmt_k1f) = 0;
        elmt_IRmem = (elmt_IRp + elmt_IRins + elmt_IR);
        der(elmt_k1e) = 0;
        der(elmt_k1d) = 0;
        der(elmt_k1c) = 0;
        der(elmt_k1b) = 0;
        der(elmt_k1a) = 0;
        der(elmt_k3) = 0;
        der(elmt_k1aBasic) = 0;
        der(elmt_km23) = 0;
        der(elmt_k1g) = 0;
        der(elmt_km2) = 0;
        elmt_measIRp = (elmt_IRp + elmt_IRiP);
        der(elmt_ins) = 0;
        der(elmt_k1r) = 0;
        der(elmt_k22) = 0;
        der(elmt_k21) = 0;

end Parameters;
