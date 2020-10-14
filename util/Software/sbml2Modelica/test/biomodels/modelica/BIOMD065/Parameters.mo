within BIOMD065;
class Parameters

    Real elmt_gamma_L(unit = "") "";
    Real elmt_K_L(unit = "") "";
    Real elmt_tau_B(unit = "") "";
    Real elmt_gamma_0(unit = "") "";
    Real elmt_K(unit = "") "";
    Real elmt_alpha_A(unit = "") "";
    Real elmt_gamma_P(unit = "") "";
    Real elmt_gamma_M(unit = "") "";
    Real elmt_K_Le(unit = "") "";
    Real elmt_K_1(unit = "") "";
    Real elmt_mu(unit = "") "";
    Real elmt_alpha_M(unit = "") "";
    Real elmt_tau_P(unit = "") "";
    Real elmt_beta_A(unit = "") "";
    Real elmt_alpha_L(unit = "") "";
    Real elmt_alpha_P(unit = "") "";
    Real elmt_beta_L1(unit = "") "";
    Real elmt_gamma_B(unit = "") "";
    Real elmt_K_A(unit = "") "";
    Real elmt_gamma_A(unit = "") "";
    Real elmt_alpha_B(unit = "") "";
    Real elmt_K_L1(unit = "") "";
    Real elmt_tau_M(unit = "") "";


    initial equation
        elmt_gamma_L = 0.0;
        elmt_K_L = 0.97;
        elmt_tau_B = 2.0;
        elmt_gamma_0 = 7.25E-7;
        elmt_K = 7200.0;
        elmt_alpha_A = 17600.0;
        elmt_gamma_P = 0.65;
        elmt_gamma_M = 0.411;
        elmt_K_Le = 0.26;
        elmt_K_1 = 25200.0;
        elmt_mu = 0.0226;
        elmt_alpha_M = 9.97E-4;
        elmt_tau_P = 0.83;
        elmt_beta_A = 21500.0;
        elmt_alpha_L = 2880.0;
        elmt_alpha_P = 10.0;
        elmt_beta_L1 = 2650.0;
        elmt_gamma_B = 8.33E-4;
        elmt_K_A = 1.95;
        elmt_gamma_A = 0.52;
        elmt_alpha_B = 0.0166;
        elmt_K_L1 = 1.81;
        elmt_tau_M = 0.1;


    equation
        der(elmt_gamma_L) = 0;
        der(elmt_K_L) = 0;
        der(elmt_tau_B) = 0;
        der(elmt_gamma_0) = 0;
        der(elmt_K) = 0;
        der(elmt_alpha_A) = 0;
        der(elmt_gamma_P) = 0;
        der(elmt_gamma_M) = 0;
        der(elmt_K_Le) = 0;
        der(elmt_K_1) = 0;
        der(elmt_mu) = 0;
        der(elmt_alpha_M) = 0;
        der(elmt_tau_P) = 0;
        der(elmt_beta_A) = 0;
        der(elmt_alpha_L) = 0;
        der(elmt_alpha_P) = 0;
        der(elmt_beta_L1) = 0;
        der(elmt_gamma_B) = 0;
        der(elmt_K_A) = 0;
        der(elmt_gamma_A) = 0;
        der(elmt_alpha_B) = 0;
        der(elmt_K_L1) = 0;
        der(elmt_tau_M) = 0;

end Parameters;
