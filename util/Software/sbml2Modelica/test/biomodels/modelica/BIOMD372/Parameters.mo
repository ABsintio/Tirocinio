within BIOMD372;
class Parameters

    input Real elmt_Ii;
    input Real elmt_G;
    input Real elmt_x3;
    input Real elmt_Ip;

    Real elmt_f2_G(unit = "") "f2_G";
    Real elmt_f1_G(unit = "") "f1_G";
    Real elmt_f3_G(unit = "") "f3_G";
    Real elmt_C1(unit = "") "C1";
    Real elmt_G_conc(unit = "") "G_conc";
    Real elmt_ti(unit = "") "ti";
    Real elmt_td(unit = "") "td";
    Real elmt_a1(unit = "") "a1";
    Real elmt_U0(unit = "") "U0";
    Real elmt_tp(unit = "") "tp";
    Real elmt_alpha(unit = "") "alpha";
    Real elmt_Um(unit = "") "Um";
    Real elmt_beta(unit = "") "beta";
    Real elmt_f5_x3(unit = "") "f5_x3";
    Real elmt_Ub(unit = "") "Ub";
    Real elmt_E(unit = "") "E";
    Real elmt_Ii_conc(unit = "") "Ii_conc";
    Real elmt_Rg(unit = "") "Rg";
    Real elmt_Vi(unit = "") "Vi";
    Real elmt_Vg(unit = "") "Vg";
    Real elmt_C4(unit = "") "C4";
    Real elmt_C5(unit = "") "C5";
    Real elmt_C2(unit = "") "C2";
    Real elmt_C3(unit = "") "C3";
    Real elmt_Rm(unit = "") "Rm";
    Real elmt_Vp(unit = "") "Vp";
    Real elmt_Gin(unit = "") "Gin";
    Real elmt_f4_Ii(unit = "") "f4_Ii";
    Real elmt_Ip_conc(unit = "") "Ip_conc";


    initial equation
        elmt_C1 = 2000.0;
        elmt_ti = 100.0;
        elmt_td = 36.0;
        elmt_a1 = 300.0;
        elmt_U0 = 40.0;
        elmt_tp = 6.0;
        elmt_alpha = 0.29;
        elmt_Um = 940.0;
        elmt_beta = 1.77;
        elmt_Ub = 72.0;
        elmt_E = 0.2;
        elmt_Rg = 180.0;
        elmt_Vi = 11.0;
        elmt_Vg = 10.0;
        elmt_C4 = 80.0;
        elmt_C5 = 26.0;
        elmt_C2 = 144.0;
        elmt_C3 = 1000.0;
        elmt_Rm = 210.0;
        elmt_Vp = 3.0;
        elmt_Gin = 216.0;


    equation
        elmt_f2_G = (elmt_Ub * (1.0 - exp(((- elmt_G) / (elmt_C2 * elmt_Vg)))));
        elmt_f1_G = (elmt_Rm / (1.0 + exp(((elmt_C1 - (elmt_G / elmt_Vg)) / elmt_a1))));
        elmt_f3_G = (elmt_G / (elmt_C3 * elmt_Vg));
        der(elmt_C1) = 0;
        elmt_G_conc = (elmt_G / (elmt_Vg * 10.0));
        der(elmt_ti) = 0;
        der(elmt_td) = 0;
        der(elmt_a1) = 0;
        der(elmt_U0) = 0;
        der(elmt_tp) = 0;
        der(elmt_alpha) = 0;
        der(elmt_Um) = 0;
        der(elmt_beta) = 0;
        elmt_f5_x3 = (elmt_Rg / (1.0 + exp((elmt_alpha * (((elmt_x3 * 1.0) / elmt_Vp) - elmt_C5)))));
        der(elmt_Ub) = 0;
        der(elmt_E) = 0;
        elmt_Ii_conc = (elmt_Ii / elmt_Vi);
        der(elmt_Rg) = 0;
        der(elmt_Vi) = 0;
        der(elmt_Vg) = 0;
        der(elmt_C4) = 0;
        der(elmt_C5) = 0;
        der(elmt_C2) = 0;
        der(elmt_C3) = 0;
        der(elmt_Rm) = 0;
        der(elmt_Vp) = 0;
        der(elmt_Gin) = 0;
        elmt_f4_Ii = (elmt_U0 + ((elmt_Um - elmt_U0) / (1.0 + exp(((- elmt_beta) * log(((elmt_Ii / elmt_C4) * ((1.0 / elmt_Vi) + (1.0 / (elmt_E * elmt_ti))))))))));
        elmt_Ip_conc = (elmt_Ip / elmt_Vp);

end Parameters;
