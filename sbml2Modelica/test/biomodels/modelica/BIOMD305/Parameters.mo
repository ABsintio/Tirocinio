within BIOMD305;
class Parameters

    input Real elmt_Fw_1st_step;
    input Real elmt_back_step1;
    input Real elmt_back_step2;
    input Real elmt_Fw_2nd_step;
    input Real elmt_S0;
    input Real elmt_S1;
    input Real elmt_ATP;
    input Real elmt_fwd_step2;
    input Real elmt_fwd_step1;
    input Real elmt_Bw_1st_step;
    input Real elmt_Bw_2nd_step;

    Real elmt_V_ave(unit = "") "";
    Real elmt_k_4(unit = "") "";
    Real elmt_k_3(unit = "") "";
    Real elmt_k_2(unit = "") "";
    Real elmt_k_1(unit = "") "";
    Real elmt_Force(unit = "") "";
    Real elmt_kT(unit = "") "";
    Real elmt_d(unit = "") "";
    Real elmt_th_3(unit = "") "";
    Real elmt_tau(unit = "") "";
    Real elmt_th_2(unit = "") "";
    Real elmt_th_4(unit = "") "";
    Real elmt_S_tot(unit = "") "";
    Real elmt_V(unit = "") "";
    Real elmt_th_1(unit = "") "";


    initial equation
        elmt_k_4 = 6.0E-6;
        elmt_k_3 = 5.0E-6;
        elmt_k_2 = 12.0;
        elmt_k_1 = 0.7;
        elmt_Force = 0.0;
        elmt_kT = 4.1164;
        elmt_d = 36.0;
        elmt_th_3 = 0.58;
        elmt_th_2 = 0.045;
        elmt_th_4 = 0.385;
        elmt_th_1 = (-0.01);


    equation
        elmt_V_ave = ((elmt_d * (((elmt_fwd_step1 + elmt_fwd_step2) / 2.0) - ((elmt_back_step1 + elmt_back_step2) / 2.0))) / (elmt_S_tot * time));
        der(elmt_k_4) = 0;
        der(elmt_k_3) = 0;
        der(elmt_k_2) = 0;
        der(elmt_k_1) = 0;
        der(elmt_Force) = 0;
        der(elmt_kT) = 0;
        der(elmt_d) = 0;
        der(elmt_th_3) = 0;
        elmt_tau = (((elmt_k_1 * elmt_ATP * exp((((- elmt_th_1) * elmt_Force * elmt_d) / elmt_kT))) + (elmt_k_2 * exp((((- elmt_th_2) * elmt_Force * elmt_d) / elmt_kT))) + (elmt_k_3 * elmt_ATP * exp(((elmt_th_3 * elmt_Force * elmt_d) / elmt_kT))) + (elmt_k_4 * exp(((elmt_th_4 * elmt_Force * elmt_d) / elmt_kT)))) / ((elmt_k_1 * elmt_ATP * exp((((- elmt_th_1) * elmt_Force * elmt_d) / elmt_kT)) * elmt_k_2 * exp((((- elmt_th_2) * elmt_Force * elmt_d) / elmt_kT))) + (elmt_k_3 * elmt_ATP * exp(((elmt_th_3 * elmt_Force * elmt_d) / elmt_kT)) * elmt_k_4 * exp(((elmt_th_4 * elmt_Force * elmt_d) / elmt_kT)))));
        der(elmt_th_2) = 0;
        der(elmt_th_4) = 0;
        elmt_S_tot = (elmt_S0 + elmt_S1);
        elmt_V = ((elmt_d * (((elmt_Fw_1st_step + elmt_Fw_2nd_step) / 2.0) - ((elmt_Bw_1st_step + elmt_Bw_2nd_step) / 2.0))) / elmt_S_tot);
        der(elmt_th_1) = 0;

end Parameters;
