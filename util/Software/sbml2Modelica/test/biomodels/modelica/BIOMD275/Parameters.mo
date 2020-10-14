within BIOMD275;
class Parameters

    input Real elmt_RA;
    input Real elmt_F;

    Real elmt_kd1(unit = "m3.0.mol-1.0.s-1.0") "";
    Real elmt_m(unit = "") "";
    Real elmt_n(unit = "") "";
    Real elmt_RALDH2_0(unit = "m-3.0.") "";
    Real elmt_M_0(unit = "m-3.0.") "";
    Real elmt_kd5(unit = "s-1.0") "";
    Real elmt_kd4(unit = "s-1.0") "";
    Real elmt_kd3(unit = "s-1.0") "";
    Real elmt_kd2(unit = "s-1.0") "";
    Real elmt_rho(unit = "") "";
    Real elmt_Ka(unit = "m-3.0.") "";
    Real elmt_Ki(unit = "m-3.0.") "";
    Real elmt_alpha1(unit = "") "";
    Real elmt_alpha2(unit = "") "";
    Real elmt_Kr2(unit = "m-3.0.") "";
    Real elmt_ks3(unit = "s-1.0") "";
    Real elmt_ks2(unit = "s-1.0") "";
    Real elmt_ks1(unit = "s-1.0") "";
    Real elmt_Kr1(unit = "m-3.0.") "";
    Real elmt_vs1(unit = "m-3.0..s-1.0") "";
    Real elmt_L(unit = "") "";
    Real elmt_Vsc(unit = "m-3.0..s-1.0") "";
    Real elmt_x(unit = "") "";
    Real elmt_V0(unit = "m-3.0..s-1.0") "";


    initial equation
        elmt_kd1 = 1.0;
        elmt_m = 2.0;
        elmt_n = 2.0;
        elmt_RALDH2_0 = 7.1;
        elmt_M_0 = 5.0;
        elmt_kd5 = 0.0;
        elmt_kd4 = 1.0;
        elmt_kd3 = 1.0;
        elmt_kd2 = 0.28;
        elmt_Ka = 0.2;
        elmt_Ki = 0.2;
        elmt_Kr2 = 1.0;
        elmt_ks3 = 1.0;
        elmt_ks2 = 1.0;
        elmt_ks1 = 1.0;
        elmt_Kr1 = 1.0;
        elmt_L = 50.0;
        elmt_Vsc = 7.1;
        elmt_x = 15.0;
        elmt_V0 = 0.365;


    equation
        der(elmt_kd1) = 0;
        der(elmt_m) = 0;
        der(elmt_n) = 0;
        der(elmt_RALDH2_0) = 0;
        der(elmt_M_0) = 0;
        der(elmt_kd5) = 0;
        der(elmt_kd4) = 0;
        der(elmt_kd3) = 0;
        der(elmt_kd2) = 0;
        elmt_rho = (elmt_alpha2 / elmt_alpha1);
        der(elmt_Ka) = 0;
        der(elmt_Ki) = 0;
        elmt_alpha1 = (elmt_RA / (elmt_RA + elmt_Kr1));
        elmt_alpha2 = (elmt_F / (elmt_F + elmt_Kr2));
        der(elmt_Kr2) = 0;
        der(elmt_ks3) = 0;
        der(elmt_ks2) = 0;
        der(elmt_ks1) = 0;
        der(elmt_Kr1) = 0;
        elmt_vs1 = (elmt_ks1 * elmt_RALDH2_0 * (1.0 - (elmt_x / elmt_L)));
        der(elmt_L) = 0;
        der(elmt_Vsc) = 0;
        der(elmt_x) = 0;
        der(elmt_V0) = 0;

end Parameters;
