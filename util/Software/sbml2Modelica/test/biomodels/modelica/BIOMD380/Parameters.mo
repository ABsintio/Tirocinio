within BIOMD380;
class Parameters

    input Real elmt_udg;
    input Real elmt_g1p;
    input Real elmt_g6p;
    input Real elmt_glc;
    input Real elmt_t6p;
    input Real elmt_trh;

    Real elmt_heat(unit = "") "heat";
    Real elmt_g1p_change(unit = "") "log10 change in glucose 1-phosphate";
    Real elmt_t6p_0(unit = "m-3.0.") "";
    Real elmt_g6p_0(unit = "m-3.0.") "";
    Real elmt_glc_change(unit = "") "log10 change in glucose";
    Real elmt_g1p_0(unit = "m-3.0.") "";
    Real elmt_g6p_change(unit = "") "log10 change in glucose 6-phosphate";
    Real elmt_trh_0(unit = "m-3.0.") "";
    Real elmt_t6p_change(unit = "") "log10 change in trehalose 6-phosphate";
    Real elmt_glc_0(unit = "m-3.0.") "";
    Real elmt_trh_change(unit = "") "log10 change in trehalose";
    Real elmt_udg_change(unit = "") "log10 change in UDP glucose";
    Real elmt_udg_0(unit = "m-3.0.") "";


    initial equation
        elmt_heat = 0.0;
        elmt_t6p_0 = 0.02;
        elmt_g6p_0 = 2.675;
        elmt_g1p_0 = 0.1;
        elmt_trh_0 = 0.05;
        elmt_glc_0 = 0.09765;
        elmt_udg_0 = 0.7;


    equation
        der(elmt_heat) = 0;
        elmt_g1p_change = Functions.logarithm(10.0, (elmt_g1p / elmt_g1p_0));
        der(elmt_t6p_0) = 0;
        der(elmt_g6p_0) = 0;
        elmt_glc_change = Functions.logarithm(10.0, (elmt_glc / elmt_glc_0));
        der(elmt_g1p_0) = 0;
        elmt_g6p_change = Functions.logarithm(10.0, (elmt_g6p / elmt_g6p_0));
        der(elmt_trh_0) = 0;
        elmt_t6p_change = Functions.logarithm(10.0, (elmt_t6p / elmt_t6p_0));
        der(elmt_glc_0) = 0;
        elmt_trh_change = Functions.logarithm(10.0, (elmt_trh / elmt_trh_0));
        elmt_udg_change = Functions.logarithm(10.0, (elmt_udg / elmt_udg_0));
        der(elmt_udg_0) = 0;

end Parameters;
