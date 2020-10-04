within BIOMD352;
class Parameters

    Real elmt_d_r(unit = "") "d_r";
    Real elmt_k_II(unit = "") "k_II";
    Real elmt_gamma_I(unit = "") "gamma_I";
    Real elmt_d_IA(unit = "") "d_IA";
    Real elmt_K_aux(unit = "") "K_aux";
    Real elmt_K_IA(unit = "") "K_IA";
    Real elmt_pi_A(unit = "") "pi_A";
    Real elmt_w_D(unit = "") "w_D";
    Real elmt_aux_basal(unit = "") "aux_basal";
    Real elmt_d_II(unit = "") "d_II";
    Real elmt_w_A(unit = "") "w_A";
    Real elmt_B_d(unit = "") "B_d";
    Real elmt_f_A(unit = "") "f_A";
    Real elmt_d_A(unit = "") "d_A";
    Real elmt_pi_I(unit = "") "pi_I";
    Real elmt_K_II(unit = "") "K_II";
    Real elmt_k_Am(unit = "") "k_Am";
    Real elmt_w_I(unit = "") "w_I";
    Real elmt_kprime_II(unit = "") "kprime_II";
    Real elmt_k_IA(unit = "") "k_IA";
    Real elmt_d_I(unit = "") "d_I";
    Real elmt_f_c(unit = "") "f_c";
    Real elmt_kprime_IA(unit = "") "kprime_IA";


    initial equation
        elmt_d_r = 0.007;
        elmt_k_II = 1.0;
        elmt_gamma_I = 10.0;
        elmt_d_IA = 0.003;
        elmt_K_aux = 1.0;
        elmt_K_IA = 10.0;
        elmt_pi_A = 1.0;
        elmt_w_D = 10.0;
        elmt_d_II = 0.003;
        elmt_w_A = 10.0;
        elmt_B_d = 100.0;
        elmt_f_A = 10.0;
        elmt_d_A = 0.003;
        elmt_pi_I = 1.0;
        elmt_K_II = 10.0;
        elmt_k_Am = 10.0;
        elmt_w_I = 10.0;
        elmt_k_IA = 1.0;
        elmt_d_I = 0.05;
        elmt_f_c = 10.0;


    equation
        der(elmt_d_r) = 0;
        der(elmt_k_II) = 0;
        der(elmt_gamma_I) = 0;
        der(elmt_d_IA) = 0;
        der(elmt_K_aux) = 0;
        der(elmt_K_IA) = 0;
        der(elmt_pi_A) = 0;
        der(elmt_w_D) = 0;
        elmt_aux_basal = (1.0 / (elmt_K_aux * (elmt_gamma_I - 1.0)));
        der(elmt_d_II) = 0;
        der(elmt_w_A) = 0;
        der(elmt_B_d) = 0;
        der(elmt_f_A) = 0;
        der(elmt_d_A) = 0;
        der(elmt_pi_I) = 0;
        der(elmt_K_II) = 0;
        der(elmt_k_Am) = 0;
        der(elmt_w_I) = 0;
        elmt_kprime_II = (elmt_K_II * elmt_k_II);
        der(elmt_k_IA) = 0;
        der(elmt_d_I) = 0;
        der(elmt_f_c) = 0;
        elmt_kprime_IA = (elmt_K_IA * elmt_k_IA);

end Parameters;
