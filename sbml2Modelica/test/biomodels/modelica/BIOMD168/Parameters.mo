within BIOMD168;
class Parameters

    input Real elmt_R_1;
    input Real elmt_RS_1;

    Real elmt_f_1(unit = "") "f";
    Real elmt_pS_1(unit = "") "pS";
    Real elmt_dD_1(unit = "") "dD";
    Real elmt_dE_1(unit = "") "dE";
    Real elmt_theta_1(unit = "") "theta";
    Real elmt_af_1(unit = "") "af";
    Real elmt_k_1(unit = "") "k";
    Real elmt_pX_1(unit = "") "pX";
    Real elmt_qX_1(unit = "") "qX";
    Real elmt_g_1(unit = "") "g";
    Real elmt_qE_1(unit = "") "qE";
    Real elmt_pD_1(unit = "") "pD";
    Real elmt_qD_1(unit = "") "qD";
    Real elmt_unpho_RB(unit = "") "";
    Real elmt_GF_1(unit = "") "GF";
    Real elmt_dX_1(unit = "") "dX";
    Real elmt_aE_1(unit = "") "aE";
    Real elmt_aD_1(unit = "") "aD";
    Real elmt_aX_1(unit = "") "aX";
    Real elmt_RT_1(unit = "") "RT";
    Real elmt_pE_1(unit = "") "pE";


    initial equation
        elmt_f_1 = 0.2;
        elmt_pS_1 = 0.6;
        elmt_dD_1 = 0.4;
        elmt_dE_1 = 0.2;
        elmt_theta_1 = 1.5;
        elmt_af_1 = 0.9;
        elmt_k_1 = 0.05;
        elmt_pX_1 = 0.48;
        elmt_qX_1 = 0.8;
        elmt_g_1 = 0.528;
        elmt_qE_1 = 0.6;
        elmt_pD_1 = 0.48;
        elmt_qD_1 = 0.6;
        elmt_GF_1 = 6.3;
        elmt_dX_1 = 1.04;
        elmt_aE_1 = 0.16;
        elmt_aD_1 = 0.4;
        elmt_aX_1 = 0.08;
        elmt_RT_1 = 2.5;
        elmt_pE_1 = 0.096;


    equation
        der(elmt_f_1) = 0;
        der(elmt_pS_1) = 0;
        der(elmt_dD_1) = 0;
        der(elmt_dE_1) = 0;
        der(elmt_theta_1) = 0;
        der(elmt_af_1) = 0;
        der(elmt_k_1) = 0;
        der(elmt_pX_1) = 0;
        der(elmt_qX_1) = 0;
        der(elmt_g_1) = 0;
        der(elmt_qE_1) = 0;
        der(elmt_pD_1) = 0;
        der(elmt_qD_1) = 0;
        elmt_unpho_RB = (elmt_R_1 + elmt_RS_1);
        der(elmt_GF_1) = 0;
        der(elmt_dX_1) = 0;
        der(elmt_aE_1) = 0;
        der(elmt_aD_1) = 0;
        der(elmt_aX_1) = 0;
        der(elmt_RT_1) = 0;
        der(elmt_pE_1) = 0;

end Parameters;
