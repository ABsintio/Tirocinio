within BIOMD241;
class Parameters

    input Real elmt_C_t;
    input Real elmt_C_e;

    input Boolean elmt_coffecup;
    input Real assign_elmt_cups;


    Real elmt_t_half(unit = "") "t_half";
    Real elmt_bodyweight(unit = "") "bodyweight";
    Real elmt_t_lag(unit = "") "t_lag";
    Real elmt_E_0(unit = "") "E_0";
    Real elmt_t_int(unit = "") "t_intervall";
    Real elmt_cups(unit = "") "cups";
    Real elmt_E(unit = "") "MAP";
    Real elmt_F(unit = "") "F";
    Real elmt_k_eo(unit = "s-1.0") "k_eo";
    Real elmt_CL(unit = "") "CL";
    Real elmt_T_50(unit = ".m-3.0") "T_50";
    Real elmt_V_C(unit = "kg-1.0.m3.0") "V_C";
    Real elmt_k_tol(unit = "s-1.0") "k_tol";
    Real elmt_cupsize(unit = "") "cupsize";
    Real elmt_k_a(unit = "s-1.0") "k_a";
    Real elmt_k12(unit = "s-1.0") "k12";
    Real elmt_S(unit = "kg-1.0.m4.0") "S";
    Real elmt_k10(unit = "s-1.0") "k10";
    Real elmt_k21(unit = "s-1.0") "k21";


    initial equation
        elmt_t_half = 3.98;
        elmt_bodyweight = 80.0;
        elmt_t_lag = 0.15;
        elmt_E_0 = 83.3;
        elmt_t_int = 2.0;
        elmt_cups = 0.0;
        elmt_F = 0.984;
        elmt_k_eo = 2.03;
        elmt_CL = 0.11;
        elmt_T_50 = 0.26;
        elmt_V_C = 0.32;
        elmt_k_tol = 0.75;
        elmt_cupsize = 90.0;
        elmt_k_a = 12.0;
        elmt_k12 = 1.64;
        elmt_S = 19.07;
        elmt_k10 = 0.34;
        elmt_k21 = 1.19;


    equation
        der(elmt_t_half) = 0;
        der(elmt_bodyweight) = 0;
        der(elmt_t_lag) = 0;
        der(elmt_E_0) = 0;
        der(elmt_t_int) = 0;
        der(elmt_cups) = 0.0;
        elmt_E = (elmt_E_0 + ((elmt_S * elmt_C_e) / (1.0 + (elmt_C_t / elmt_T_50))));
        der(elmt_F) = 0;
        der(elmt_k_eo) = 0;
        der(elmt_CL) = 0;
        der(elmt_T_50) = 0;
        der(elmt_V_C) = 0;
        der(elmt_k_tol) = 0;
        der(elmt_cupsize) = 0;
        der(elmt_k_a) = 0;
        der(elmt_k12) = 0;
        der(elmt_S) = 0;
        der(elmt_k10) = 0;
        der(elmt_k21) = 0;

        when elmt_coffecup then
            reinit(elmt_cups, assign_elmt_cups);
        end when;
end Parameters;
