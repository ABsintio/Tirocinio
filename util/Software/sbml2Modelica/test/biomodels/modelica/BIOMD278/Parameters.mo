within BIOMD278;
class Parameters

    input Real elmt_C;
    input Real elmt_R;
    input Real elmt_B;

    Real elmt_C_s(unit = "") "C_s";
    Real elmt_kO(unit = "") "kO";
    Real elmt_r_L(unit = "") "r_L";
    Real elmt_k_P(unit = "") "k_P";
    Real elmt_Pbar(unit = "") "Pbar";
    Real elmt_f0(unit = "") "f0";
    Real elmt_K_L_P(unit = "") "K_L_P";
    Real elmt_K_O_P(unit = "") "K_O_P";
    Real elmt_D_B(unit = "") "D_B";
    Real elmt_D_C(unit = "") "D_C";
    Real elmt_D_A(unit = "") "D_A";
    Real elmt_D_R(unit = "") "D_R";
    Real elmt_k1(unit = "") "k1";
    Real elmt_I_L(unit = "") "I_L";
    Real elmt_K(unit = "") "K";
    Real elmt_Phi_C(unit = "") "Phi_C";
    Real elmt_P_O(unit = "") "P_O";
    Real elmt_k6(unit = "") "k6";
    Real elmt_k4(unit = "") "k4";
    Real elmt_k5(unit = "") "k5";
    Real elmt_Phi_L(unit = "") "Phi_L";
    Real elmt_I_O(unit = "") "I_O";
    Real elmt_k2(unit = "") "k2";
    Real elmt_I_P(unit = "") "I_P";
    Real elmt_k3(unit = "") "k3";
    Real elmt_d_B(unit = "") "d_B";
    Real elmt_Phi_P(unit = "") "Phi_P";
    Real elmt_S_P(unit = "") "S_P";
    Real elmt_P_S(unit = "") "P_S";
    Real elmt_k_B(unit = "") "k_B";


    initial equation
        elmt_C_s = 0.005;
        elmt_kO = 0.35;
        elmt_r_L = 1000.0;
        elmt_k_P = 86.0;
        elmt_f0 = 0.05;
        elmt_K_L_P = 3000000.0;
        elmt_K_O_P = 200000.0;
        elmt_D_C = 0.0021;
        elmt_D_A = 0.7;
        elmt_D_R = 7.0E-4;
        elmt_k1 = 0.01;
        elmt_I_L = 0.0;
        elmt_K = 10.0;
        elmt_k6 = 3.0;
        elmt_k4 = 0.017;
        elmt_k5 = 0.02;
        elmt_I_O = 0.0;
        elmt_k2 = 10.0;
        elmt_I_P = 0.0;
        elmt_k3 = 5.8E-4;
        elmt_d_B = 0.7;
        elmt_S_P = 250.0;
        elmt_k_B = 0.189;


    equation
        der(elmt_C_s) = 0;
        der(elmt_kO) = 0;
        der(elmt_r_L) = 0;
        der(elmt_k_P) = 0;
        elmt_Pbar = (elmt_I_P / elmt_k_P);
        der(elmt_f0) = 0;
        der(elmt_K_L_P) = 0;
        der(elmt_K_O_P) = 0;
        elmt_D_B = (elmt_f0 * elmt_d_B);
        der(elmt_D_C) = 0;
        der(elmt_D_A) = 0;
        der(elmt_D_R) = 0;
        der(elmt_k1) = 0;
        der(elmt_I_L) = 0;
        der(elmt_K) = 0;
        elmt_Phi_C = ((elmt_C + (elmt_f0 * elmt_C_s)) / (elmt_C + elmt_C_s));
        elmt_P_O = (elmt_S_P / elmt_k_P);
        der(elmt_k6) = 0;
        der(elmt_k4) = 0;
        der(elmt_k5) = 0;
        elmt_Phi_L = ((((elmt_k3 / elmt_k4) * elmt_K_L_P * elmt_Phi_P * elmt_B) / (1.0 + ((elmt_k3 * elmt_K) / elmt_k4) + ((elmt_k1 / (elmt_k2 * elmt_kO)) * (elmt_I_O + ((elmt_K_O_P * elmt_R) / elmt_Phi_P))))) * (1.0 + (elmt_I_L / elmt_r_L)));
        der(elmt_I_O) = 0;
        der(elmt_k2) = 0;
        der(elmt_I_P) = 0;
        der(elmt_k3) = 0;
        der(elmt_d_B) = 0;
        elmt_Phi_P = ((elmt_Pbar + elmt_P_O) / (elmt_Pbar + elmt_P_S));
        der(elmt_S_P) = 0;
        elmt_P_S = (elmt_k6 / elmt_k5);
        der(elmt_k_B) = 0;

end Parameters;
