within BIOMD294;
class Parameters

    input Real elmt_Iv2;
    input Real elmt_N;
    input Real elmt_R1;
    input Real elmt_R2;
    input Real elmt_V;
    input Real elmt_I2;
    input Real elmt_S;
    input Real elmt_J1;
    input Real elmt_J2;
    input Real elmt_I1;
    input Real elmt_R;

    Real elmt_beta(unit = "s-1.0") "";
    Real elmt_p(unit = "") "";
    Real elmt_R_2_frac(unit = "") "";
    Real elmt_sigmaV(unit = "s-1.0") "";
    Real elmt_l_e(unit = "") "life expectancy";
    Real elmt_eta(unit = "") "";
    Real elmt_tImm_V(unit = "") "vaccine immune period (yr)";
    Real elmt_R_frac(unit = "") "";
    Real elmt_nu(unit = "") "";
    Real elmt_tImm(unit = "") "immune period (yr)";
    Real elmt_strain2_frac(unit = "") "";
    Real elmt_mu(unit = "s-1.0") "";
    Real elmt_tau(unit = "") "";
    Real elmt_R_1_frac(unit = "") "";
    Real elmt_S_frac(unit = "") "";
    Real elmt_V_frac(unit = "") "";
    Real elmt_theta(unit = "") "";
    Real elmt_tInf(unit = "") "infectious period (d)";
    Real elmt_gamma(unit = "s-1.0") "";
    Real elmt_R0(unit = "") "";
    Real elmt_sigma(unit = "s-1.0") "";
    Real elmt_strain1_frac(unit = "") "";


    initial equation
        elmt_p = 1.0;
        elmt_l_e = 50.0;
        elmt_eta = 0.5;
        elmt_tImm_V = 50.0;
        elmt_nu = 0.5;
        elmt_tImm = 20.0;
        elmt_tau = 0.7;
        elmt_theta = 0.5;
        elmt_tInf = 21.0;
        elmt_R0 = 17.0;


    equation
        elmt_beta = (elmt_R0 * (elmt_gamma + elmt_mu));
        der(elmt_p) = 0;
        elmt_R_2_frac = ((elmt_R2 + elmt_R) / elmt_N);
        elmt_sigmaV = (1.0 / elmt_tImm_V);
        der(elmt_l_e) = 0;
        der(elmt_eta) = 0;
        der(elmt_tImm_V) = 0;
        elmt_R_frac = (elmt_R / elmt_N);
        der(elmt_nu) = 0;
        der(elmt_tImm) = 0;
        elmt_strain2_frac = ((elmt_I2 + elmt_J2 + elmt_Iv2) / elmt_N);
        elmt_mu = (1.0 / elmt_l_e);
        der(elmt_tau) = 0;
        elmt_R_1_frac = ((elmt_R1 + elmt_R) / elmt_N);
        elmt_S_frac = (elmt_S / elmt_N);
        elmt_V_frac = (elmt_V / elmt_N);
        der(elmt_theta) = 0;
        der(elmt_tInf) = 0;
        elmt_gamma = (365.0 / elmt_tInf);
        der(elmt_R0) = 0;
        elmt_sigma = (1.0 / elmt_tImm);
        elmt_strain1_frac = ((elmt_I1 + elmt_J1) / elmt_N);

end Parameters;
