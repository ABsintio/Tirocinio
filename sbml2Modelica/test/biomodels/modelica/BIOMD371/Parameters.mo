within BIOMD371;
class Parameters

    input Real elmt_n;
    input Real elmt_V_membrane;
    input Real elmt_s;

    Real elmt_p(unit = "") "p";
    Real elmt_i_K_ATP(unit = "") "i_K_ATP";
    Real elmt_V_Ca(unit = "") "V_Ca";
    Real elmt_i_K(unit = "") "i_K";
    Real elmt_g_Ca(unit = "") "g_Ca";
    Real elmt_g_K(unit = "") "g_K";
    Real elmt_i_Ca(unit = "") "i_Ca";
    Real elmt_m_infinity(unit = "") "m_infinity";
    Real elmt_V_n(unit = "") "V_n";
    Real elmt_tau_s(unit = "") "tau_s";
    Real elmt_V_m(unit = "") "V_m";
    Real elmt_theta_s(unit = "") "theta_s";
    Real elmt_tau_membrane(unit = "") "tau";
    Real elmt_V_s(unit = "") "V_s";
    Real elmt_tau_potassium_current_n_gate(unit = "") "tau_2";
    Real elmt_theta_m(unit = "") "theta_m";
    Real elmt_lamda(unit = "") "lamda";
    Real elmt_n_infinity(unit = "") "n_infinity";
    Real elmt_theta_n(unit = "") "theta_n";
    Real elmt_i_s(unit = "") "i_s";
    Real elmt_g_s(unit = "") "g_s";
    Real elmt_g_K_ATP(unit = "") "g_K_ATP";
    Real elmt_V_K(unit = "") "V_K";
    Real elmt_s_infinity(unit = "") "s_infinity";


    initial equation
        elmt_p = 0.5;
        elmt_V_Ca = 25.0;
        elmt_g_Ca = 3.6;
        elmt_g_K = 10.0;
        elmt_V_n = (-17.0);
        elmt_tau_s = 20000.0;
        elmt_V_m = (-20.0);
        elmt_theta_s = 8.0;
        elmt_tau_membrane = 20.0;
        elmt_V_s = (-22.0);
        elmt_tau_potassium_current_n_gate = 20.0;
        elmt_theta_m = 12.0;
        elmt_lamda = 0.8;
        elmt_theta_n = 5.6;
        elmt_g_s = 4.0;
        elmt_g_K_ATP = 1.2;
        elmt_V_K = (-75.0);


    equation
        der(elmt_p) = 0;
        elmt_i_K_ATP = (elmt_g_K_ATP * elmt_p * (elmt_V_membrane - elmt_V_K));
        der(elmt_V_Ca) = 0;
        elmt_i_K = (elmt_g_K * elmt_n * (elmt_V_membrane - elmt_V_K));
        der(elmt_g_Ca) = 0;
        der(elmt_g_K) = 0;
        elmt_i_Ca = (elmt_g_Ca * elmt_m_infinity * (elmt_V_membrane - elmt_V_Ca));
        elmt_m_infinity = (1.0 / (1.0 + exp(((elmt_V_m - elmt_V_membrane) / elmt_theta_m))));
        der(elmt_V_n) = 0;
        der(elmt_tau_s) = 0;
        der(elmt_V_m) = 0;
        der(elmt_theta_s) = 0;
        der(elmt_tau_membrane) = 0;
        der(elmt_V_s) = 0;
        der(elmt_tau_potassium_current_n_gate) = 0;
        der(elmt_theta_m) = 0;
        der(elmt_lamda) = 0;
        elmt_n_infinity = (1.0 / (1.0 + exp(((elmt_V_n - elmt_V_membrane) / elmt_theta_n))));
        der(elmt_theta_n) = 0;
        elmt_i_s = (elmt_g_s * elmt_s * (elmt_V_membrane - elmt_V_K));
        der(elmt_g_s) = 0;
        der(elmt_g_K_ATP) = 0;
        der(elmt_V_K) = 0;
        elmt_s_infinity = (1.0 / (1.0 + exp(((elmt_V_s - elmt_V_membrane) / elmt_theta_s))));

end Parameters;
