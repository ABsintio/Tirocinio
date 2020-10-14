within BIOMD161;
class Parameters

    input Real elmt_CaCAPRI_PM_PM;
    input Real elmt_RasGRP_DAG_GM;
    input Real elmt_Activated_EGFR_PM;
    input Real elmt_PIP_PM;
    input Real elmt_Ca_RasGRP_GM_GM;
    input Real elmt_PIP2_PM;
    input Real elmt_SGS_PM;

    Real elmt_tauPIP2syn_PIP2_synthesis(unit = "") "";
    Real elmt_PIPsyndecay_PIP_synthesis(unit = "") "";
    Real elmt_Vmax_EGF_act_PLCgamma(unit = "m-2.0.s-1.0") "";
    Real elmt_dact_Ca_binds_IP3R(unit = "s-1.0") "";
    Real elmt_Rate_PIP2SynStim_PIP2_synthesis(unit = "s-1.0") "";
    Real elmt_Vmax_CAPRI_GAP(unit = "m-2.0.s-1.0") "";
    Real elmt_Vmax_RasGRP_DAG_GEF(unit = "m-2.0.s-1.0") "";
    Real elmt_kStimSynPIP2_PIP2_synthesis(unit = "s-1.0") "";
    Real elmt_KMOLE(unit = "") "";
    Real elmt_Ratebasal_PIPsyn_PIP_synthesis(unit = "s-1.0") "";
    Real elmt_Vmax_Shc_phosphorylation(unit = "m-2.0.s-1.0") "";
    Real elmt_tauPIPsyn_PIP_synthesis(unit = "") "";
    Real elmt_kBasalSynPIP_PIP_synthesis(unit = "s-1.0") "";
    Real elmt_Koff_reaction2(unit = "s-1.0") "";
    Real elmt_kStimSynPIP_PIP_synthesis(unit = "s-1.0") "";
    Real elmt_PIP2syndecay_PIP2_synthesis(unit = "") "";
    Real elmt_Kr_Ca_binds_IP3R(unit = "s-1.0") "";
    Real elmt_Rate_PIP2Synbasal_PIP2_synthesis(unit = "s-1.0") "";
    Real elmt_Kon_reaction2(unit = "m3.0.mol-1.0.s-1.0") "";
    Real elmt_Vmax_CaRasGRP_act_RasGM(unit = "m-2.0.s-1.0") "";
    Real elmt_PIP_basal_PIP_synthesis(unit = "m-2.0") "";
    Real elmt_dinh_reaction2(unit = "m-3.0.") "";
    Real elmt_PIP2_basal_PIP2_synthesis(unit = "m-2.0") "";
    Real elmt_kBasalSynPIP2_PIP2_synthesis(unit = "s-1.0") "";
    Real elmt_Vmax_Sos_act_RasPM(unit = "m-2.0.s-1.0") "";
    Real elmt_Ratestim_PIPsyn_PIP_synthesis(unit = "s-1.0") "";


    initial equation
        elmt_tauPIP2syn_PIP2_synthesis = 0.05;
        elmt_PIPsyndecay_PIP_synthesis = 10.0;
        elmt_dact_Ca_binds_IP3R = 0.2;
        elmt_kStimSynPIP2_PIP2_synthesis = 0.01;
        elmt_KMOLE = 0.00166112956810631;
        elmt_tauPIPsyn_PIP_synthesis = 0.05;
        elmt_kBasalSynPIP_PIP_synthesis = 0.0015;
        elmt_kStimSynPIP_PIP_synthesis = 0.01;
        elmt_PIP2syndecay_PIP2_synthesis = 10.0;
        elmt_Kon_reaction2 = 2.1;
        elmt_PIP_basal_PIP_synthesis = 2857.0;
        elmt_dinh_reaction2 = 0.11;
        elmt_PIP2_basal_PIP2_synthesis = 1072.0;
        elmt_kBasalSynPIP2_PIP2_synthesis = 0.045;


    equation
        der(elmt_tauPIP2syn_PIP2_synthesis) = 0;
        der(elmt_PIPsyndecay_PIP_synthesis) = 0;
        elmt_Vmax_EGF_act_PLCgamma = (0.3 * elmt_Activated_EGFR_PM);
        der(elmt_dact_Ca_binds_IP3R) = 0;
        elmt_Rate_PIP2SynStim_PIP2_synthesis = (if (time > elmt_tauPIP2syn_PIP2_synthesis) then (elmt_kStimSynPIP2_PIP2_synthesis * exp((- ((time + (- elmt_tauPIP2syn_PIP2_synthesis)) * (1.0 / elmt_PIP2syndecay_PIP2_synthesis))))) else 0.0);
        elmt_Vmax_CAPRI_GAP = (10.0 * elmt_CaCAPRI_PM_PM);
        elmt_Vmax_RasGRP_DAG_GEF = (0.05 * elmt_RasGRP_DAG_GM);
        der(elmt_kStimSynPIP2_PIP2_synthesis) = 0;
        der(elmt_KMOLE) = 0;
        elmt_Ratebasal_PIPsyn_PIP_synthesis = (if (elmt_PIP_PM < elmt_PIP_basal_PIP_synthesis) then (0.581 * elmt_kBasalSynPIP_PIP_synthesis * ((-1.0) + exp(((elmt_PIP_basal_PIP_synthesis + (- elmt_PIP_PM)) * (1.0 / elmt_PIP_basal_PIP_synthesis))))) else 0.0);
        elmt_Vmax_Shc_phosphorylation = (0.2 * elmt_Activated_EGFR_PM);
        der(elmt_tauPIPsyn_PIP_synthesis) = 0;
        der(elmt_kBasalSynPIP_PIP_synthesis) = 0;
        elmt_Koff_reaction2 = (elmt_dinh_reaction2 * elmt_Kon_reaction2);
        der(elmt_kStimSynPIP_PIP_synthesis) = 0;
        der(elmt_PIP2syndecay_PIP2_synthesis) = 0;
        elmt_Kr_Ca_binds_IP3R = (1000.0 * elmt_dact_Ca_binds_IP3R);
        elmt_Rate_PIP2Synbasal_PIP2_synthesis = (if (elmt_PIP2_PM < elmt_PIP2_basal_PIP2_synthesis) then (0.581 * elmt_kBasalSynPIP2_PIP2_synthesis * ((-1.0) + exp(((elmt_PIP2_basal_PIP2_synthesis + (- elmt_PIP2_PM)) * (1.0 / elmt_PIP2_basal_PIP2_synthesis))))) else 0.0);
        der(elmt_Kon_reaction2) = 0;
        elmt_Vmax_CaRasGRP_act_RasGM = (0.01 * elmt_Ca_RasGRP_GM_GM);
        der(elmt_PIP_basal_PIP_synthesis) = 0;
        der(elmt_dinh_reaction2) = 0;
        der(elmt_PIP2_basal_PIP2_synthesis) = 0;
        der(elmt_kBasalSynPIP2_PIP2_synthesis) = 0;
        elmt_Vmax_Sos_act_RasPM = (0.02 * elmt_SGS_PM);
        elmt_Ratestim_PIPsyn_PIP_synthesis = (if (time > elmt_tauPIPsyn_PIP_synthesis) then (elmt_kStimSynPIP_PIP_synthesis * exp((- ((time + (- elmt_tauPIPsyn_PIP_synthesis)) * (1.0 / elmt_PIPsyndecay_PIP_synthesis))))) else 0.0);

end Parameters;
