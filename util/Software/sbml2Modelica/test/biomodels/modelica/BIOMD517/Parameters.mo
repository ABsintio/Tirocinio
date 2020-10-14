within BIOMD517;
class Parameters

    input Real elmt_N3;
    input Real elmt_N1;
    input Real elmt_N2;
    input Real elmt_N0;

    Real elmt_K(unit = "") "capacity";
    Real elmt_q03(unit = "") "";
    Real elmt_K0X(unit = "") "";
    Real elmt_p03(unit = "") "";
    Real elmt_r1(unit = "s-1.0") "";
    Real elmt_K2X(unit = "") "";
    Real elmt_p01(unit = "") "";
    Real elmt_p12(unit = "") "";
    Real elmt_K1X(unit = "") "";
    Real elmt_d1(unit = "s-1.0") "";
    Real elmt_d2(unit = "s-1.0") "";
    Real elmt_f1(unit = "s-1.0") "N1 division rate";
    Real elmt_d0(unit = "s-1.0") "";
    Real elmt_f0(unit = "s-1.0") "N0 division rate";
    Real elmt_d3(unit = "s-1.0") "";
    Real elmt_p00(unit = "") "";
    Real elmt_p11(unit = "") "";
    Real elmt_r0(unit = "s-1.0") "";
    Real elmt_K03(unit = "") "";
    Real elmt_T(unit = "") "cellularity";


    initial equation
        elmt_K = 106.090440772217;
        elmt_q03 = 0.9351494412;
        elmt_K0X = 0.153646265911768;
        elmt_r1 = 10.58581849;
        elmt_K2X = 2.70405837954268;
        elmt_p01 = 0.6313780928;
        elmt_p12 = 0.8050459589;
        elmt_K1X = 15.3645644864404;
        elmt_d1 = 0.5480597115;
        elmt_d2 = 1.888676618;
        elmt_d0 = 0.02;
        elmt_d3 = 0.1677359306;
        elmt_r0 = 1.998624424;
        elmt_K03 = 0.783656669828271;


    equation
        der(elmt_K) = 0;
        der(elmt_q03) = 0;
        der(elmt_K0X) = 0;
        elmt_p03 = ((elmt_q03 * elmt_K03) / (elmt_N3 + elmt_K03));
        der(elmt_r1) = 0;
        der(elmt_K2X) = 0;
        der(elmt_p01) = 0;
        der(elmt_p12) = 0;
        der(elmt_K1X) = 0;
        der(elmt_d1) = 0;
        der(elmt_d2) = 0;
        elmt_f1 = (elmt_r1 * elmt_N1 * (1.0 - (elmt_T / elmt_K)));
        der(elmt_d0) = 0;
        elmt_f0 = (elmt_r0 * elmt_N0 * (1.0 - (elmt_T / elmt_K)));
        der(elmt_d3) = 0;
        elmt_p00 = ((1.0 - elmt_p01) - elmt_p03);
        elmt_p11 = (1.0 - elmt_p12);
        der(elmt_r0) = 0;
        der(elmt_K03) = 0;
        elmt_T = (elmt_N0 + elmt_N1 + elmt_N2 + elmt_N3);

end Parameters;
