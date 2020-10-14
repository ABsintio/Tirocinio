within BIOMD464;
class Parameters

    Real elmt_K1(unit = "") "K1";
    Real elmt_Cao(unit = "") "Cao";
    Real elmt_K4(unit = "") "K4";
    Real elmt_K5(unit = "") "K5";
    Real elmt_K2(unit = "") "K2";
    Real elmt_K3(unit = "") "K3";
    Real elmt_K_hi(unit = "") "K_hi";
    Real elmt_fracK(unit = "") "fracK";
    Real elmt_k_CCE(unit = "mol-1.0.s-1.0") "k_CCE";
    Real elmt_dot_q_inpass(unit = ".s-1.0") "dot_q_inpass";
    Real elmt_B_T(unit = "") "B_T";
    Real elmt_dot_Vhi(unit = ".s-1.0") "dot_Vhi";
    Real elmt_k1(unit = ".s-1.0") "k1";
    Real elmt_half(unit = "") "half";
    Real elmt_dot_Vp(unit = ".s-1.0") "dot_Vp";
    Real elmt_k6(unit = "mol-1.0.s-1.0") "k6";
    Real elmt_k7(unit = "s-1.0") "k7";
    Real elmt_k4(unit = ".s-1.0") "k4";
    Real elmt_k5(unit = "mol-1.0.s-1.0") "k5";
    Real elmt_k2(unit = "s-1.0") "k2";
    Real elmt_k3(unit = "s-1.0") "k3";
    Real elmt_R_T(unit = "") "R_T";
    Real elmt_dot_Vex(unit = ".s-1.0") "dot_Vex";
    Real elmt_k_CICR(unit = "") "k_CICR";
    Real elmt_tau_I(unit = "") "tau_I";
    Real elmt_tau_II(unit = "") "tau_II";
    Real elmt_K_CICR(unit = "") "K_CICR";


    initial equation
        elmt_K1 = 0.0;
        elmt_Cao = 100.0;
        elmt_K4 = 80.0;
        elmt_K5 = 321.0;
        elmt_K2 = 200.0;
        elmt_K3 = 150.0;
        elmt_K_hi = 380.0;
        elmt_fracK = 7071067.81;
        elmt_k_CCE = 0.0;
        elmt_dot_q_inpass = 3000.0;
        elmt_B_T = 120000.0;
        elmt_dot_Vhi = 2380.0;
        elmt_k1 = 6.0E-4;
        elmt_half = 0.5;
        elmt_dot_Vp = 815.0;
        elmt_k6 = 0.05;
        elmt_k7 = 150.0;
        elmt_k4 = 2500.0;
        elmt_k5 = 5.0E-11;
        elmt_k2 = 1.0;
        elmt_k3 = 3.32;
        elmt_R_T = 44000.0;
        elmt_dot_Vex = 9165.0;
        elmt_k_CICR = 1.0;
        elmt_tau_I = 66.0;
        elmt_tau_II = 0.01;
        elmt_K_CICR = 0.0;


    equation
        der(elmt_K1) = 0;
        der(elmt_Cao) = 0;
        der(elmt_K4) = 0;
        der(elmt_K5) = 0;
        der(elmt_K2) = 0;
        der(elmt_K3) = 0;
        der(elmt_K_hi) = 0;
        der(elmt_fracK) = 0;
        der(elmt_k_CCE) = 0;
        der(elmt_dot_q_inpass) = 0;
        der(elmt_B_T) = 0;
        der(elmt_dot_Vhi) = 0;
        der(elmt_k1) = 0;
        der(elmt_half) = 0;
        der(elmt_dot_Vp) = 0;
        der(elmt_k6) = 0;
        der(elmt_k7) = 0;
        der(elmt_k4) = 0;
        der(elmt_k5) = 0;
        der(elmt_k2) = 0;
        der(elmt_k3) = 0;
        der(elmt_R_T) = 0;
        der(elmt_dot_Vex) = 0;
        der(elmt_k_CICR) = 0;
        der(elmt_tau_I) = 0;
        der(elmt_tau_II) = 0;
        der(elmt_K_CICR) = 0;

end Parameters;
