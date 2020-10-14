within BIOMD240;
class Parameters

    input Real elmt_Dim;
    input Real elmt_DegU;
    input Real elmt_DegUP;

    Real elmt_DegU_Total(unit = "") "DegU_Total";
    Real elmt_Io(unit = "") "";
    Real elmt_p(unit = "") "";
    Real elmt_ksyn1(unit = "") "";
    Real elmt_K(unit = "") "";
    Real elmt_ratio(unit = "") "kphosratiokdephos";
    Real elmt_kdeg(unit = "") "";
    Real elmt_Irmax(unit = "") "";
    Real elmt_ksyn(unit = "") "";
    Real elmt_Kr(unit = "") "";
    Real elmt_kdegA(unit = "") "";
    Real elmt_ka(unit = "") "";
    Real elmt_Iro(unit = "") "";
    Real elmt_kphos(unit = "") "";
    Real elmt_Kdim(unit = "") "";
    Real elmt_Imax(unit = "") "";
    Real elmt_V(unit = "") "";
    Real elmt_kdegm(unit = "") "";
    Real elmt_kd(unit = "") "";
    Real elmt_kdephos(unit = "") "";
    Real elmt_q(unit = "") "";
    Real elmt_Kr1(unit = "") "";
    Real elmt_R(unit = "") "";


    initial equation
        elmt_Io = 0.004;
        elmt_p = 0.15;
        elmt_ksyn1 = 0.04;
        elmt_K = 7.0;
        elmt_ratio = 0.026666667;
        elmt_kdeg = 4.0E-4;
        elmt_Irmax = 0.4;
        elmt_ksyn = 0.04;
        elmt_Kr = 7.0;
        elmt_kdegA = 1.0E-4;
        elmt_ka = 0.025;
        elmt_Iro = 0.02;
        elmt_Kdim = 12.0;
        elmt_Imax = 0.048;
        elmt_V = 1.0;
        elmt_kdegm = 0.01;
        elmt_kd = 0.1;
        elmt_q = 0.004;
        elmt_Kr1 = 7.0;
        elmt_R = 7.0;


    equation
        elmt_DegU_Total = (elmt_DegU + elmt_DegUP + (2.0 * elmt_Dim));
        der(elmt_Io) = 0;
        der(elmt_p) = 0;
        der(elmt_ksyn1) = 0;
        der(elmt_K) = 0;
        der(elmt_ratio) = 0;
        der(elmt_kdeg) = 0;
        der(elmt_Irmax) = 0;
        der(elmt_ksyn) = 0;
        der(elmt_Kr) = 0;
        der(elmt_kdegA) = 0;
        der(elmt_ka) = 0;
        der(elmt_Iro) = 0;
        elmt_kphos = (elmt_ratio * elmt_p);
        der(elmt_Kdim) = 0;
        der(elmt_Imax) = 0;
        der(elmt_V) = 0;
        der(elmt_kdegm) = 0;
        der(elmt_kd) = 0;
        elmt_kdephos = (elmt_q / elmt_ratio);
        der(elmt_q) = 0;
        der(elmt_Kr1) = 0;
        der(elmt_R) = 0;

end Parameters;
