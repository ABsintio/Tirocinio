within BIOMD242;
class Parameters

    input Real elmt_R_1;
    input Real elmt_RS_1;

    Real elmt_pS_1(unit = "") "pS";
    Real elmt_dD_1(unit = "") "dD";
    Real elmt_dE_1(unit = "") "dE";
    Real elmt_dtheta_1(unit = "") "dtheta";
    Real elmt_pX_1(unit = "") "pX";
    Real elmt_k1_1(unit = "") "k1";
    Real elmt_k2_1(unit = "") "k2";
    Real elmt_k3_1(unit = "") "k3";
    Real elmt_qE_1(unit = "") "qE";
    Real elmt_qD_1(unit = "") "qD";
    Real elmt_dX_1(unit = "") "dX";
    Real elmt_aF_1(unit = "") "aF";
    Real elmt_aE_1(unit = "") "aE";
    Real elmt_aD_1(unit = "") "aD";
    Real elmt_RT_1(unit = "") "RT";
    Real elmt_f_1(unit = "") "f";
    Real elmt_Rb_phos(unit = "") "Rb_phosphorylated";
    Real elmt_qX_1(unit = "") "qX";
    Real elmt_fC_1_1(unit = "") "fe";
    Real elmt_g_1(unit = "") "g";
    Real elmt_pD_1(unit = "") "pD";
    Real elmt_atheta_1(unit = "") "atheta";
    Real elmt_qtheta_1(unit = "") "qtheta";
    Real elmt_GF_1(unit = "") "GF";
    Real elmt_aX_1(unit = "") "aX";
    Real elmt_pE_1(unit = "") "pE";


    initial equation
        elmt_pS_1 = 0.6;
        elmt_dD_1 = 0.4;
        elmt_dE_1 = 0.2;
        elmt_dtheta_1 = 0.12;
        elmt_pX_1 = 0.48;
        elmt_k1_1 = 0.05;
        elmt_k2_1 = 1000.0;
        elmt_k3_1 = 1.5;
        elmt_qE_1 = 0.6;
        elmt_qD_1 = 0.6;
        elmt_dX_1 = 1.04;
        elmt_aF_1 = 0.9;
        elmt_aE_1 = 0.16;
        elmt_aD_1 = 0.4;
        elmt_RT_1 = 2.5;
        elmt_f_1 = 0.35;
        elmt_qX_1 = 0.8;
        elmt_fC_1_1 = 0.003;
        elmt_g_1 = 0.528;
        elmt_pD_1 = 0.48;
        elmt_atheta_1 = 0.05;
        elmt_qtheta_1 = 0.3;
        elmt_GF_1 = 6.3;
        elmt_aX_1 = 0.08;
        elmt_pE_1 = 0.096;


    equation
        der(elmt_pS_1) = 0;
        der(elmt_dD_1) = 0;
        der(elmt_dE_1) = 0;
        der(elmt_dtheta_1) = 0;
        der(elmt_pX_1) = 0;
        der(elmt_k1_1) = 0;
        der(elmt_k2_1) = 0;
        der(elmt_k3_1) = 0;
        der(elmt_qE_1) = 0;
        der(elmt_qD_1) = 0;
        der(elmt_dX_1) = 0;
        der(elmt_aF_1) = 0;
        der(elmt_aE_1) = 0;
        der(elmt_aD_1) = 0;
        der(elmt_RT_1) = 0;
        der(elmt_f_1) = 0;
        elmt_Rb_phos = ((elmt_RT_1 - elmt_RS_1) - elmt_R_1);
        der(elmt_qX_1) = 0;
        der(elmt_fC_1_1) = 0;
        der(elmt_g_1) = 0;
        der(elmt_pD_1) = 0;
        der(elmt_atheta_1) = 0;
        der(elmt_qtheta_1) = 0;
        der(elmt_GF_1) = 0;
        der(elmt_aX_1) = 0;
        der(elmt_pE_1) = 0;

end Parameters;
