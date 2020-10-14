within BIOMD165;
class Parameters

    input Real elmt_Propranolol_cell;
    input Real elmt_GsAC_cell;
    input Real elmt_AKARp_cell;
    input Real elmt_AKAR_cell;
    input Real elmt_light_spot_cell;
    input Real elmt_PKAC_AKAR_cell;
    input Real elmt_PP_AKARp_cell;
    input Real elmt_L_cell;
    input Real elmt_FskAC_cell;

    Real elmt_light_cAMP_photolysis(unit = "m-3.0.") "";
    Real elmt_tauPropranolol(unit = "") "";
    Real elmt_Propranolol_pipette(unit = "") "";
    Real elmt_Kr_inhibit_PDE(unit = "s-1.0") "";
    Real elmt_Ratio_AKARp_AKARtot(unit = "") "";
    Real elmt_toff_global_light_cAMP_photolysis(unit = "") "";
    Real elmt_k_ac_gsa_cAMP_synthesis_GsAC(unit = "s-1.0") "";
    Real elmt_ton_local_light_cAMP_photolysis(unit = "") "";
    Real elmt_toff_local_light_cAMP_photolysis(unit = "") "";
    Real elmt_t_propadd(unit = "") "";
    Real elmt_ar_for_add_Ligand(unit = "") "";
    Real elmt_t_Ladd(unit = "") "";
    Real elmt_Vmax_cAMP_synthesis_GsAC(unit = "m-3.0..s-1.0") "";
    Real elmt_kfsk_cAMP_synthesis_FskAC(unit = "s-1.0") "";
    Real elmt_ton_global_light_cAMP_photolysis(unit = "") "";
    Real elmt_Vmax_cAMP_synthesis_FskAC(unit = "m-3.0..s-1.0") "";
    Real elmt_Kf_inhibit_PDE(unit = "m3.0.mol-1.0.s-1.0") "";
    Real elmt_tauL(unit = "") "";
    Real elmt_L_pipette(unit = "") "";
    Real elmt_ar_for_add_propranolol(unit = "") "";


    initial equation
        elmt_tauPropranolol = 1.0;
        elmt_Propranolol_pipette = 1.0;
        elmt_toff_global_light_cAMP_photolysis = 2165.0;
        elmt_k_ac_gsa_cAMP_synthesis_GsAC = 2.5;
        elmt_ton_local_light_cAMP_photolysis = 0.0;
        elmt_toff_local_light_cAMP_photolysis = 0.0;
        elmt_t_propadd = 2420.0;
        elmt_t_Ladd = 2160.0;
        elmt_kfsk_cAMP_synthesis_FskAC = 7.3;
        elmt_ton_global_light_cAMP_photolysis = 2160.0;
        elmt_tauL = 1.0;
        elmt_L_pipette = 0.1;


    equation
        elmt_light_cAMP_photolysis = ((if ((time > elmt_ton_global_light_cAMP_photolysis) and (time < elmt_toff_global_light_cAMP_photolysis)) then 1.0 else 0.0) + (if ((time > elmt_ton_local_light_cAMP_photolysis) and (time < elmt_toff_local_light_cAMP_photolysis)) then elmt_light_spot_cell else 0.0));
        der(elmt_tauPropranolol) = 0;
        der(elmt_Propranolol_pipette) = 0;
        elmt_Kr_inhibit_PDE = (if (time > 1000.0) then 30000.0 else 0.0);
        elmt_Ratio_AKARp_AKARtot = (elmt_AKARp_cell / (elmt_AKAR_cell + elmt_AKARp_cell + elmt_PKAC_AKAR_cell + elmt_PP_AKARp_cell));
        der(elmt_toff_global_light_cAMP_photolysis) = 0;
        der(elmt_k_ac_gsa_cAMP_synthesis_GsAC) = 0;
        der(elmt_ton_local_light_cAMP_photolysis) = 0;
        der(elmt_toff_local_light_cAMP_photolysis) = 0;
        der(elmt_t_propadd) = 0;
        elmt_ar_for_add_Ligand = (if (time > elmt_t_Ladd) then ((elmt_L_pipette + (- elmt_L_cell)) * (1.0 / elmt_tauL)) else 0.0);
        der(elmt_t_Ladd) = 0;
        elmt_Vmax_cAMP_synthesis_GsAC = (elmt_k_ac_gsa_cAMP_synthesis_GsAC * elmt_GsAC_cell);
        der(elmt_kfsk_cAMP_synthesis_FskAC) = 0;
        der(elmt_ton_global_light_cAMP_photolysis) = 0;
        elmt_Vmax_cAMP_synthesis_FskAC = (elmt_kfsk_cAMP_synthesis_FskAC * elmt_FskAC_cell);
        elmt_Kf_inhibit_PDE = (if (time > 1000.0) then 1000.0 else 0.0);
        der(elmt_tauL) = 0;
        der(elmt_L_pipette) = 0;
        elmt_ar_for_add_propranolol = (if (time > elmt_t_propadd) then ((elmt_Propranolol_pipette + (- elmt_Propranolol_cell)) * (1.0 / elmt_tauPropranolol)) else 0.0);

end Parameters;
