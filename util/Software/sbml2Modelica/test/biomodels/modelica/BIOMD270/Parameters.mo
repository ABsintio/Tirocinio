within BIOMD270;
class Parameters

    input Real elmt_SOS;
    input Real elmt_ppMEK1;
    input Real elmt_pJAK2;
    input Real elmt_ppMEK2;
    input Real elmt_ppERK2;
    input Real elmt_mSOS;
    input Real elmt_pEpoR;
    input Real elmt_ppERK1;
    input Real elmt_pSOS;

    Real elmt_pSOS_dephosphorylation(unit = "s-1.0") "";
    Real elmt_rescaled_SOS(unit = "") "rescaled_SOS";
    Real elmt_Second_MEK_dephosphorylation(unit = "s-1.0") "";
    Real elmt_Second_ERK2_phosphorylation_by_ppMEK(unit = "m2.0.s-1.0") "";
    Real elmt_First_ERK_dephosphorylation(unit = "s-1.0") "";
    Real elmt_Second_MEK2_phosphorylation_by_pRaf(unit = "m2.0.s-1.0") "";
    Real elmt_SHP1_activation_by_pEpoR(unit = "m2.0.s-1.0") "";
    Real elmt_rescaled_ppMEK2(unit = "") "rescaled_ppMEK2";
    Real elmt_Second_ERK1_phosphorylation_by_ppMEK(unit = "m2.0.s-1.0") "";
    Real elmt_First_MEK2_phosphorylation_by_pRaf(unit = "m2.0.s-1.0") "";
    Real elmt_First_ERK1_phosphorylation_by_ppMEK(unit = "m2.0.s-1.0") "";
    Real elmt_ppERK_neg_feedback_on_mSOS(unit = "m2.0.s-1.0") "";
    Real elmt_mSOS_induced_Raf_phosphorylation(unit = "m2.0.s-1.0") "";
    Real elmt_First_ERK2_phosphorylation_by_ppMEK(unit = "m2.0.s-1.0") "";
    Real elmt_rescaled_ppERK2(unit = "") "rescaled_ppERK2";
    Real elmt_rescaled_ppERK1(unit = "") "rescaled_ppERK1";
    Real elmt_JAK2_phosphorylation_by_Epo(unit = "m3.0.s-1.0") "";
    Real elmt_SHP1_delay(unit = "s-1.0") "";
    Real elmt_rescaled_mSOS(unit = "") "rescaled_mSOS";
    Real elmt_EpoR_phosphorylation_by_pJAK2(unit = "m2.0.s-1.0") "";
    Real elmt_pJAK2_dephosphorylation_by_actSHP1(unit = "m2.0.s-1.0") "";
    Real elmt_pRaf_dephosphorylation(unit = "s-1.0") "";
    Real elmt_rescaled_pEpoR(unit = "") "rescaled_pEpoR";
    Real elmt_First_MEK_dephosphorylation(unit = "s-1.0") "";
    Real elmt_scale_pJAK2(unit = "m2.0") "scale_pJAK2";
    Real elmt_scale_ppERK(unit = "m2.0") "scale_ppERK";
    Real elmt_Second_ERK_dephosphorylation(unit = "s-1.0") "";
    Real elmt_mSOS_release_from_membrane(unit = "s-1.0") "";
    Real elmt_scale_SOS(unit = "m2.0") "scale_SOS";
    Real elmt_rescaled_ppMEK1(unit = "") "rescaled_ppMEK1";
    Real elmt_actSHP1_deactivation(unit = "s-1.0") "";
    Real elmt_pEpoR_dephosphorylation_by_actSHP1(unit = "m2.0.s-1.0") "";
    Real elmt_scale_ppMEK(unit = "m2.0") "scale_ppMEK";
    Real elmt_Second_MEK1_phosphorylation_by_pRaf(unit = "m2.0.s-1.0") "";
    Real elmt_scale_pEpoR(unit = "m2.0") "scale_pEpoR";
    Real elmt_rescaled_pSOS(unit = "") "rescaled_pSOS";
    Real elmt_SOS_recruitment_by_pEpoR(unit = "m2.0.s-1.0") "";
    Real elmt_First_MEK1_phosphorylation_by_pRaf(unit = "m2.0.s-1.0") "";
    Real elmt_rescaled_pJAK2(unit = "") "rescaled_pJAK2";


    initial equation
        elmt_pSOS_dephosphorylation = 0.124944;
        elmt_Second_MEK_dephosphorylation = 0.0732724;
        elmt_Second_ERK2_phosphorylation_by_ppMEK = 53.0816;
        elmt_First_ERK_dephosphorylation = 39.0886;
        elmt_Second_MEK2_phosphorylation_by_pRaf = 215.158;
        elmt_SHP1_activation_by_pEpoR = 0.408408;
        elmt_Second_ERK1_phosphorylation_by_ppMEK = 59.5251;
        elmt_First_MEK2_phosphorylation_by_pRaf = 3.11919;
        elmt_First_ERK1_phosphorylation_by_ppMEK = 2.4927;
        elmt_ppERK_neg_feedback_on_mSOS = 5122.68;
        elmt_mSOS_induced_Raf_phosphorylation = 0.144515;
        elmt_First_ERK2_phosphorylation_by_ppMEK = 2.44361;
        elmt_JAK2_phosphorylation_by_Epo = 0.0122149;
        elmt_SHP1_delay = 0.408408;
        elmt_EpoR_phosphorylation_by_pJAK2 = 3.15714;
        elmt_pJAK2_dephosphorylation_by_actSHP1 = 0.368384;
        elmt_pRaf_dephosphorylation = 0.374228;
        elmt_First_MEK_dephosphorylation = 0.130937;
        elmt_scale_pJAK2 = 0.21008;
        elmt_scale_ppERK = 13.5981;
        elmt_Second_ERK_dephosphorylation = 3.00453;
        elmt_mSOS_release_from_membrane = 15.5956;
        elmt_scale_SOS = 1.10228;
        elmt_actSHP1_deactivation = 0.0248773;
        elmt_pEpoR_dephosphorylation_by_actSHP1 = 1.19995;
        elmt_scale_ppMEK = 40.5364;
        elmt_Second_MEK1_phosphorylation_by_pRaf = 667.957;
        elmt_scale_pEpoR = 0.493312;
        elmt_SOS_recruitment_by_pEpoR = 0.10271;
        elmt_First_MEK1_phosphorylation_by_pRaf = 0.687193;


    equation
        der(elmt_pSOS_dephosphorylation) = 0;
        elmt_rescaled_SOS = (elmt_scale_SOS * elmt_SOS);
        der(elmt_Second_MEK_dephosphorylation) = 0;
        der(elmt_Second_ERK2_phosphorylation_by_ppMEK) = 0;
        der(elmt_First_ERK_dephosphorylation) = 0;
        der(elmt_Second_MEK2_phosphorylation_by_pRaf) = 0;
        der(elmt_SHP1_activation_by_pEpoR) = 0;
        elmt_rescaled_ppMEK2 = (elmt_scale_ppMEK * elmt_ppMEK2);
        der(elmt_Second_ERK1_phosphorylation_by_ppMEK) = 0;
        der(elmt_First_MEK2_phosphorylation_by_pRaf) = 0;
        der(elmt_First_ERK1_phosphorylation_by_ppMEK) = 0;
        der(elmt_ppERK_neg_feedback_on_mSOS) = 0;
        der(elmt_mSOS_induced_Raf_phosphorylation) = 0;
        der(elmt_First_ERK2_phosphorylation_by_ppMEK) = 0;
        elmt_rescaled_ppERK2 = (elmt_scale_ppERK * elmt_ppERK2);
        elmt_rescaled_ppERK1 = (elmt_scale_ppERK * elmt_ppERK1);
        der(elmt_JAK2_phosphorylation_by_Epo) = 0;
        der(elmt_SHP1_delay) = 0;
        elmt_rescaled_mSOS = (elmt_scale_SOS * elmt_mSOS);
        der(elmt_EpoR_phosphorylation_by_pJAK2) = 0;
        der(elmt_pJAK2_dephosphorylation_by_actSHP1) = 0;
        der(elmt_pRaf_dephosphorylation) = 0;
        elmt_rescaled_pEpoR = (elmt_scale_pEpoR * elmt_pEpoR);
        der(elmt_First_MEK_dephosphorylation) = 0;
        der(elmt_scale_pJAK2) = 0;
        der(elmt_scale_ppERK) = 0;
        der(elmt_Second_ERK_dephosphorylation) = 0;
        der(elmt_mSOS_release_from_membrane) = 0;
        der(elmt_scale_SOS) = 0;
        elmt_rescaled_ppMEK1 = (elmt_scale_ppMEK * elmt_ppMEK1);
        der(elmt_actSHP1_deactivation) = 0;
        der(elmt_pEpoR_dephosphorylation_by_actSHP1) = 0;
        der(elmt_scale_ppMEK) = 0;
        der(elmt_Second_MEK1_phosphorylation_by_pRaf) = 0;
        der(elmt_scale_pEpoR) = 0;
        elmt_rescaled_pSOS = (elmt_scale_SOS * elmt_pSOS);
        der(elmt_SOS_recruitment_by_pEpoR) = 0;
        der(elmt_First_MEK1_phosphorylation_by_pRaf) = 0;
        elmt_rescaled_pJAK2 = (elmt_scale_pJAK2 * elmt_pJAK2);

end Parameters;
