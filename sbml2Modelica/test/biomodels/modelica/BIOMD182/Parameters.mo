within BIOMD182;
class Parameters

    input Real elmt_B_Raf_active_cyto;
    input Real elmt_GRK_cyto;
    input Real elmt_PTP_PKA_cyto;
    input Real elmt_PP2A_cyto;
    input Real elmt_PDE_high_km_cyto;
    input Real elmt_GRK_bg_cyto;
    input Real elmt_PKA_cyto;
    input Real elmt_PDE4_cyto;
    input Real elmt_AC_active_cyto_mem;
    input Real elmt_PTP_cyto;
    input Real elmt_PDE4_P_cyto;
    input Real elmt_PTP_PP_cyto;
    input Real elmt_PP_PDE_cyto;
    input Real elmt_AC_cyto_mem;
    input Real elmt_MEK_active_cyto;

    Real elmt_kcat_PTP(unit = "s-1.0") "";
    Real elmt_Vmax_PKA_P_PDE(unit = "m-3.0..s-1.0") "";
    Real elmt_Vmax_PTP(unit = "m-3.0..s-1.0") "";
    Real elmt_Vmax_PPase_mek(unit = "m-3.0..s-1.0") "";
    Real elmt_Vmax_GRK_bg_GRK_bg(unit = "m-2.0.s-1.0") "";
    Real elmt_kcat_PPase_mek(unit = "s-1.0") "";
    Real elmt_Vmax_PKA_P_PTP(unit = "m-3.0..s-1.0") "";
    Real elmt_Vmax_pde4_p_pde4_p(unit = "m-3.0..s-1.0") "";
    Real elmt_kcat_PKA_P_PTP(unit = "s-1.0") "";
    Real elmt_Vmax_AC_basal_AC_basal(unit = "m-2.0.s-1.0") "";
    Real elmt_kcat_pp_ptp_pp_ptp(unit = "s-1.0") "";
    Real elmt_Vmax_pp2a_4_pp2a_4(unit = "m-3.0..s-1.0") "";
    Real elmt_Vmax_PDE4_PDE4(unit = "m-3.0..s-1.0") "";
    Real elmt_Vmax_PPase_MAPK(unit = "m-3.0..s-1.0") "";
    Real elmt_KMOLE(unit = "m-6.0.") "";
    Real elmt_kcat_PKA_activates_Raf(unit = "s-1.0") "";
    Real elmt_Vmax_grk_GRK(unit = "m-2.0.s-1.0") "";
    Real elmt_Vmax_pp_ptp(unit = "m-3.0..s-1.0") "";
    Real elmt_kcat_PTP_PKA(unit = "s-1.0") "";
    Real elmt_Vmax_MEK_activates_MAPK(unit = "m-3.0..s-1.0") "";
    Real elmt_kcat_PPase_MAPK(unit = "s-1.0") "";
    Real elmt_Vmax_PTP_PKA(unit = "m-3.0..s-1.0") "";
    Real elmt_Vmax_PPase_Raf(unit = "m-3.0..s-1.0") "";
    Real elmt_kcat_PPase_Raf(unit = "s-1.0") "";
    Real elmt_Vmax_PKA_activates_Raf(unit = "m-3.0..s-1.0") "";
    Real elmt_Vmax_Raf_activates_MEK(unit = "m-3.0..s-1.0") "";
    Real elmt_Vmax_AC_active_AC_active(unit = "m-2.0.s-1.0") "";
    Real elmt_Vmax_highKM_PDE(unit = "m-3.0..s-1.0") "";


    initial equation
        elmt_kcat_PTP = 1.06;
        elmt_kcat_PPase_mek = 5.0;
        elmt_kcat_PKA_P_PTP = 0.2;
        elmt_kcat_pp_ptp_pp_ptp = 5.0;
        elmt_KMOLE = 0.00166112956810631;
        elmt_kcat_PKA_activates_Raf = 10.0;
        elmt_kcat_PTP_PKA = 0.1;
        elmt_kcat_PPase_MAPK = 0.636;
        elmt_kcat_PPase_Raf = 5.0;


    equation
        der(elmt_kcat_PTP) = 0;
        elmt_Vmax_PKA_P_PDE = (10.0 * 0.00166112956810631 * elmt_PKA_cyto);
        elmt_Vmax_PTP = (elmt_kcat_PTP * 0.00166112956810631 * elmt_PTP_cyto);
        elmt_Vmax_PPase_mek = (elmt_kcat_PPase_mek * 0.00166112956810631 * elmt_PP2A_cyto);
        elmt_Vmax_GRK_bg_GRK_bg = (1.34 * 0.00166112956810631 * elmt_GRK_bg_cyto);
        der(elmt_kcat_PPase_mek) = 0;
        elmt_Vmax_PKA_P_PTP = (elmt_kcat_PKA_P_PTP * 0.00166112956810631 * elmt_PKA_cyto);
        elmt_Vmax_pde4_p_pde4_p = (20.0 * 0.00166112956810631 * elmt_PDE4_P_cyto);
        der(elmt_kcat_PKA_P_PTP) = 0;
        elmt_Vmax_AC_basal_AC_basal = (0.2 * elmt_AC_cyto_mem);
        der(elmt_kcat_pp_ptp_pp_ptp) = 0;
        elmt_Vmax_pp2a_4_pp2a_4 = (5.0 * 0.00166112956810631 * elmt_PP_PDE_cyto);
        elmt_Vmax_PDE4_PDE4 = (8.0 * 0.00166112956810631 * elmt_PDE4_cyto);
        elmt_Vmax_PPase_MAPK = (elmt_kcat_PPase_MAPK * 0.00166112956810631 * elmt_PP2A_cyto);
        der(elmt_KMOLE) = 0;
        der(elmt_kcat_PKA_activates_Raf) = 0;
        elmt_Vmax_grk_GRK = (0.104 * 0.00166112956810631 * elmt_GRK_cyto);
        elmt_Vmax_pp_ptp = (elmt_kcat_pp_ptp_pp_ptp * 0.00166112956810631 * elmt_PTP_PP_cyto);
        der(elmt_kcat_PTP_PKA) = 0;
        elmt_Vmax_MEK_activates_MAPK = (0.15 * 0.00166112956810631 * elmt_MEK_active_cyto);
        der(elmt_kcat_PPase_MAPK) = 0;
        elmt_Vmax_PTP_PKA = (elmt_kcat_PTP_PKA * 0.00166112956810631 * elmt_PTP_PKA_cyto);
        elmt_Vmax_PPase_Raf = (elmt_kcat_PPase_Raf * 0.00166112956810631 * elmt_PP2A_cyto);
        der(elmt_kcat_PPase_Raf) = 0;
        elmt_Vmax_PKA_activates_Raf = (elmt_kcat_PKA_activates_Raf * 0.00166112956810631 * elmt_PKA_cyto);
        elmt_Vmax_Raf_activates_MEK = (0.105 * 0.00166112956810631 * elmt_B_Raf_active_cyto);
        elmt_Vmax_AC_active_AC_active = (8.5 * elmt_AC_active_cyto_mem);
        elmt_Vmax_highKM_PDE = (8.0 * 0.00166112956810631 * elmt_PDE_high_km_cyto);

end Parameters;
