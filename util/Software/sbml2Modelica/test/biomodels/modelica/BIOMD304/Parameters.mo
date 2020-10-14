within BIOMD304;
class Parameters

    input Real elmt_n1;
    input Real elmt_V_membrane;
    input Real elmt_c;
    input Real elmt_h1;
    input Real elmt_x1;

    Real elmt_i_L(unit = "") "i_L";
    Real elmt_V_Ca(unit = "") "V_Ca";
    Real elmt_i_K(unit = "") "i_K";
    Real elmt_g_L(unit = "") "g_L";
    Real elmt_g_Ca(unit = "") "g_Ca";
    Real elmt_g_K(unit = "") "g_K";
    Real elmt_i_K_Ca(unit = "") "i_K_Ca";
    Real elmt_i_Ca(unit = "") "i_Ca";
    Real elmt_g_I(unit = "") "g_I";
    Real elmt_tau_x(unit = "") "tau_x";
    Real elmt_f(unit = "") "f";
    Real elmt_g_T(unit = "") "g_T";
    Real elmt_K_p(unit = "") "K_p";
    Real elmt_x_infinity(unit = "") "x_infinity";
    Real elmt_a(unit = "") "a";
    Real elmt_m_infinity(unit = "") "m_infinity";
    Real elmt_b(unit = "") "b";
    Real elmt_alpha_m(unit = "") "alpha_m";
    Real elmt_alpha_n(unit = "") "alpha_n";
    Real elmt_tau_h(unit = "") "tau_h";
    Real elmt_i_Na(unit = "") "i_Na";
    Real elmt_alpha_h(unit = "") "alpha_h";
    Real elmt_tau_n(unit = "") "tau_n";
    Real elmt_beta_n(unit = "") "beta_n";
    Real elmt_n_infinity(unit = "") "n_infinity";
    Real elmt_h_infinity(unit = "") "h_infinity";
    Real elmt_V_I(unit = "") "V_I";
    Real elmt_g_K_Ca(unit = "") "g_K_Ca";
    Real elmt_V_L(unit = "") "V_L";
    Real elmt_V_K(unit = "") "V_K";
    Real elmt_K_c(unit = "") "K_c";
    Real elmt_Vs(unit = "") "Vs";
    Real elmt_beta_h(unit = "") "beta_h";
    Real elmt_beta_m(unit = "") "beta_m";


    initial equation
        elmt_V_Ca = 140.0;
        elmt_g_L = 0.003;
        elmt_g_Ca = 0.004;
        elmt_g_K = 0.3;
        elmt_g_I = 4.0;
        elmt_tau_x = 235.0;
        elmt_f = 3.0E-4;
        elmt_g_T = 0.01;
        elmt_K_p = 0.5;
        elmt_a = 1.209;
        elmt_b = 78.714;
        elmt_V_I = 30.0;
        elmt_g_K_Ca = 0.03;
        elmt_V_L = (-40.0);
        elmt_V_K = (-75.0);
        elmt_K_c = 0.0085;


    equation
        elmt_i_L = (elmt_g_L * (elmt_V_L - elmt_V_membrane));
        der(elmt_V_Ca) = 0;
        elmt_i_K = (elmt_g_K * Functions.pow(elmt_n1, 4.0) * (elmt_V_K - elmt_V_membrane));
        der(elmt_g_L) = 0;
        der(elmt_g_Ca) = 0;
        der(elmt_g_K) = 0;
        elmt_i_K_Ca = (((elmt_g_K_Ca * elmt_c) / (elmt_K_p + elmt_c)) * (elmt_V_K - elmt_V_membrane));
        elmt_i_Ca = (elmt_g_T * elmt_x1 * (elmt_V_I - elmt_V_membrane));
        der(elmt_g_I) = 0;
        der(elmt_tau_x) = 0;
        der(elmt_f) = 0;
        der(elmt_g_T) = 0;
        der(elmt_K_p) = 0;
        elmt_x_infinity = (1.0 / (exp((0.15 * ((- elmt_V_membrane) - 50.0))) + 1.0));
        der(elmt_a) = 0;
        elmt_m_infinity = (elmt_alpha_m / (elmt_alpha_m + elmt_beta_m));
        der(elmt_b) = 0;
        elmt_alpha_m = ((0.1 * (50.0 - elmt_Vs)) / (exp(((50.0 - elmt_Vs) / 10.0)) - 1.0));
        elmt_alpha_n = ((0.01 * (55.0 - elmt_Vs)) / (exp(((55.0 - elmt_Vs) / 10.0)) - 1.0));
        elmt_tau_h = (12.5 / (elmt_alpha_h + elmt_beta_h));
        elmt_i_Na = (elmt_g_I * Functions.pow(elmt_m_infinity, 3.0) * elmt_h1 * (elmt_V_I - elmt_V_membrane));
        elmt_alpha_h = (0.07 * exp(((25.0 - elmt_Vs) / 20.0)));
        elmt_tau_n = (12.5 / (elmt_alpha_n + elmt_beta_n));
        elmt_beta_n = (0.125 * exp(((45.0 - elmt_Vs) / 80.0)));
        elmt_n_infinity = (elmt_alpha_n / (elmt_alpha_n + elmt_beta_n));
        elmt_h_infinity = (elmt_alpha_h / (elmt_alpha_h + elmt_beta_h));
        der(elmt_V_I) = 0;
        der(elmt_g_K_Ca) = 0;
        der(elmt_V_L) = 0;
        der(elmt_V_K) = 0;
        der(elmt_K_c) = 0;
        elmt_Vs = ((elmt_a * elmt_V_membrane) + elmt_b);
        elmt_beta_h = (1.0 / (exp(((55.0 - elmt_Vs) / 10.0)) + 1.0));
        elmt_beta_m = (4.0 * exp(((25.0 - elmt_Vs) / 18.0)));

end Parameters;
