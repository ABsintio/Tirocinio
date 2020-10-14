within BIOMD145;
class Parameters

    input Real elmt_DG;
    input Real elmt_Galpha_GTP;
    input Real elmt_APLC;
    input Real elmt_Ca_Cyt;
    input Real elmt_Ca_ER;
    input Real elmt_IP3;

    Real elmt_Kp(unit = "") "";
    Real elmt_Ker(unit = "") "";
    Real elmt_m(unit = "") "";
    Real elmt_n(unit = "") "";
    Real elmt_Rer(unit = "") "";
    Real elmt_Kr(unit = "") "";
    Real elmt_Rcyt1(unit = "") "";
    Real elmt_Kc1(unit = "") "";
    Real elmt_Ks(unit = "") "";
    Real elmt_Rcyt2(unit = "") "";
    Real elmt_Kc2(unit = "") "";
    Real elmt_Rgalpha_gtp(unit = "") "";
    Real elmt_Kg(unit = "") "";
    Real elmt_Kd(unit = "") "";
    Real elmt_k11(unit = "") "";
    Real elmt_Raplc(unit = "") "";
    Real elmt_Rpkc(unit = "") "";
    Real elmt_k10(unit = "") "";
    Real elmt_k0(unit = "") "";
    Real elmt_k1(unit = "") "";
    Real elmt_Rdg(unit = "") "";
    Real elmt_k8(unit = "") "";
    Real elmt_k9(unit = "") "";
    Real elmt_k6(unit = "") "";
    Real elmt_k7(unit = "") "";
    Real elmt_k4(unit = "") "";
    Real elmt_k5(unit = "") "";
    Real elmt_k2(unit = "") "";
    Real elmt_k3(unit = "") "";
    Real elmt_Rip3(unit = "") "";
    Real elmt_Cplc_total(unit = "") "";
    Real elmt_w(unit = "") "";


    initial equation
        elmt_Kp = 4.0;
        elmt_Ker = 75.0;
        elmt_m = 2.0;
        elmt_n = 4.0;
        elmt_Kr = 200.0;
        elmt_Kc1 = 1000.0;
        elmt_Ks = 25.0;
        elmt_Kc2 = 2000.0;
        elmt_Kg = 25.0;
        elmt_Kd = 10.0;
        elmt_k11 = 260.0;
        elmt_k10 = 3000.0;
        elmt_k0 = 0.1;
        elmt_k1 = 3.4;
        elmt_k8 = 10500.0;
        elmt_k9 = 600.0;
        elmt_k6 = 14.0;
        elmt_k7 = 2.0;
        elmt_k4 = 1.2;
        elmt_k5 = 0.12;
        elmt_k2 = 4.0;
        elmt_k3 = 4.5;
        elmt_Cplc_total = 10.0;
        elmt_w = 3.0;


    equation
        der(elmt_Kp) = 0;
        der(elmt_Ker) = 0;
        der(elmt_m) = 0;
        der(elmt_n) = 0;
        elmt_Rer = (Functions.pow(elmt_Ca_ER, elmt_w) / (Functions.pow(elmt_Ker, elmt_w) + Functions.pow(elmt_Ca_ER, elmt_w)));
        der(elmt_Kr) = 0;
        elmt_Rcyt1 = (elmt_Ca_Cyt / (elmt_Kc1 + elmt_Ca_Cyt));
        der(elmt_Kc1) = 0;
        der(elmt_Ks) = 0;
        elmt_Rcyt2 = (elmt_Ca_Cyt / (elmt_Kc2 + elmt_Ca_Cyt));
        der(elmt_Kc2) = 0;
        elmt_Rgalpha_gtp = (Functions.pow(elmt_Galpha_GTP, elmt_n) / (Functions.pow(elmt_Kg, elmt_n) + Functions.pow(elmt_Galpha_GTP, elmt_n)));
        der(elmt_Kg) = 0;
        der(elmt_Kd) = 0;
        der(elmt_k11) = 0;
        elmt_Raplc = (elmt_APLC / (elmt_Kp + elmt_APLC));
        elmt_Rpkc = (((elmt_DG / (elmt_Kd + elmt_DG)) * elmt_Ca_Cyt) / (elmt_Kr + elmt_Ca_Cyt));
        der(elmt_k10) = 0;
        der(elmt_k0) = 0;
        der(elmt_k1) = 0;
        elmt_Rdg = (Functions.pow(elmt_DG, elmt_m) / (Functions.pow(elmt_Kd, elmt_m) + Functions.pow(elmt_DG, elmt_m)));
        der(elmt_k8) = 0;
        der(elmt_k9) = 0;
        der(elmt_k6) = 0;
        der(elmt_k7) = 0;
        der(elmt_k4) = 0;
        der(elmt_k5) = 0;
        der(elmt_k2) = 0;
        der(elmt_k3) = 0;
        elmt_Rip3 = (Functions.pow(elmt_IP3, 3.0) / (Functions.pow(elmt_Ks, 3.0) + Functions.pow(elmt_IP3, 3.0)));
        der(elmt_Cplc_total) = 0;
        der(elmt_w) = 0;

end Parameters;
