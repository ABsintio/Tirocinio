within BIOMD296;
class Parameters

    input Real elmt_IPTG;

    Real elmt_K1(unit = "") "";
    Real elmt_d1(unit = "") "";
    Real elmt_d2(unit = "") "";
    Real elmt_kA2(unit = "") "";
    Real elmt_Cm(unit = "") "";
    Real elmt_D(unit = "") "";
    Real elmt_kA1(unit = "") "";
    Real elmt_kc2(unit = "") "";
    Real elmt_K2(unit = "") "";
    Real elmt_kc1(unit = "") "";
    Real elmt_dAA2(unit = "") "";
    Real elmt_dAA1(unit = "") "";


    initial equation
        elmt_K1 = 10.0;
        elmt_d2 = 0.3;
        elmt_Cm = 100.0;
        elmt_D = 0.1125;
        elmt_kA1 = 0.1;
        elmt_kc2 = 0.4;
        elmt_K2 = 10.0;
        elmt_kc1 = 0.8;
        elmt_dAA2 = 0.11;
        elmt_dAA1 = 0.017;


    equation
        der(elmt_K1) = 0;
        elmt_d1 = (0.5 + (Functions.pow(elmt_IPTG, 2.0) / (Functions.pow(5.0, 2.0) + Functions.pow(elmt_IPTG, 2.0))));
        der(elmt_d2) = 0;
        elmt_kA2 = (0.02 + (0.03 * (Functions.pow(elmt_IPTG, 2.0) / (Functions.pow(5.0, 2.0) + Functions.pow(elmt_IPTG, 2.0)))));
        der(elmt_Cm) = 0;
        der(elmt_D) = 0;
        der(elmt_kA1) = 0;
        der(elmt_kc2) = 0;
        der(elmt_K2) = 0;
        der(elmt_kc1) = 0;
        der(elmt_dAA2) = 0;
        der(elmt_dAA1) = 0;

end Parameters;
