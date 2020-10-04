within BIOMD249;
class Parameters

    input Real elmt_I_2p;
    input Real elmt_N;
    input Real elmt_I_1p;
    input Real elmt_R_2;
    input Real elmt_R_1;
    input Real elmt_R_p;
    input Real elmt_I_1;
    input Real elmt_S;
    input Real elmt_I_2;

    Real elmt_beta_1(unit = "s-1.0") "";
    Real elmt_l_e(unit = "") "life expectancy";
    Real elmt_beta_2(unit = "s-1.0") "";
    Real elmt_gamma_2(unit = "s-1.0") "";
    Real elmt_gamma_1(unit = "s-1.0") "";
    Real elmt_tInf_1(unit = "") "infectious period 1";
    Real elmt_tInf_2(unit = "") "infectious period 2";
    Real elmt_R1_frac(unit = "") "";
    Real elmt_tImm(unit = "") "immune period";
    Real elmt_mu(unit = "s-1.0") "";
    Real elmt_Rp_frac(unit = "") "";
    Real elmt_I_2_frac(unit = "") "";
    Real elmt_Lambda_2(unit = "s-1.0") "";
    Real elmt_psi(unit = "") "";
    Real elmt_Lambda_1(unit = "s-1.0") "";
    Real elmt_S_frac(unit = "") "";
    Real elmt_R2_frac(unit = "") "";
    Real elmt_R0_1(unit = "") "";
    Real elmt_sigma(unit = "s-1.0") "";
    Real elmt_R0_2(unit = "") "";
    Real elmt_I_1_frac(unit = "") "";


    initial equation
        elmt_l_e = 50.0;
        elmt_tInf_1 = 21.0;
        elmt_tInf_2 = 21.0;
        elmt_tImm = 20.0;
        elmt_psi = 0.2;
        elmt_R0_1 = 17.0;
        elmt_R0_2 = 17.0;


    equation
        elmt_beta_1 = (elmt_R0_1 * elmt_gamma_1);
        der(elmt_l_e) = 0;
        elmt_beta_2 = (elmt_R0_2 * elmt_gamma_2);
        elmt_gamma_2 = (365.0 / elmt_tInf_2);
        elmt_gamma_1 = (365.0 / elmt_tInf_1);
        der(elmt_tInf_1) = 0;
        der(elmt_tInf_2) = 0;
        elmt_R1_frac = ((elmt_R_1 + elmt_R_p) / elmt_N);
        der(elmt_tImm) = 0;
        elmt_mu = (1.0 / elmt_l_e);
        elmt_Rp_frac = (elmt_R_p / elmt_N);
        elmt_I_2_frac = ((elmt_I_2 + elmt_I_2p) / elmt_N);
        elmt_Lambda_2 = ((elmt_beta_2 * (elmt_I_2 + elmt_I_2p)) / elmt_N);
        der(elmt_psi) = 0;
        elmt_Lambda_1 = ((elmt_beta_1 * (elmt_I_1 + elmt_I_1p)) / elmt_N);
        elmt_S_frac = (elmt_S / elmt_N);
        elmt_R2_frac = ((elmt_R_2 + elmt_R_p) / elmt_N);
        der(elmt_R0_1) = 0;
        elmt_sigma = (1.0 / elmt_tImm);
        der(elmt_R0_2) = 0;
        elmt_I_1_frac = ((elmt_I_1 + elmt_I_1p) / elmt_N);

end Parameters;
