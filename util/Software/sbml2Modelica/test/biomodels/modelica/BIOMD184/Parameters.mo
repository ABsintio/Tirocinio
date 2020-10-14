within BIOMD184;
class Parameters

    Real elmt_kp(unit = "m-3.0.") "";
    Real elmt_m(unit = "") "";
    Real elmt_n(unit = "") "";
    Real elmt_kdeg(unit = "s-1.0") "";
    Real elmt_k_CaA(unit = "m-3.0.") "";
    Real elmt_vM3(unit = "s-1.0") "";
    Real elmt_vin(unit = "m-3.0..s-1.0") "";
    Real elmt_vM2(unit = "m-3.0..s-1.0") "";
    Real elmt_k2(unit = "m-3.0.") "";
    Real elmt_kout(unit = "s-1.0") "";
    Real elmt_k_CaI(unit = "m-3.0.") "";
    Real elmt_kip3(unit = "m-3.0.") "";
    Real elmt_kf(unit = "s-1.0") "";
    Real elmt_vp(unit = "m-3.0..s-1.0") "";


    initial equation
        elmt_kp = 0.3;
        elmt_m = 2.2;
        elmt_n = 2.02;
        elmt_kdeg = 0.08;
        elmt_k_CaA = 0.15;
        elmt_vM3 = 40.0;
        elmt_vin = 0.05;
        elmt_vM2 = 15.0;
        elmt_k2 = 0.1;
        elmt_kout = 0.5;
        elmt_k_CaI = 0.15;
        elmt_kip3 = 0.1;
        elmt_kf = 0.5;
        elmt_vp = 0.05;


    equation
        der(elmt_kp) = 0;
        der(elmt_m) = 0;
        der(elmt_n) = 0;
        der(elmt_kdeg) = 0;
        der(elmt_k_CaA) = 0;
        der(elmt_vM3) = 0;
        der(elmt_vin) = 0;
        der(elmt_vM2) = 0;
        der(elmt_k2) = 0;
        der(elmt_kout) = 0;
        der(elmt_k_CaI) = 0;
        der(elmt_kip3) = 0;
        der(elmt_kf) = 0;
        der(elmt_vp) = 0;

end Parameters;
