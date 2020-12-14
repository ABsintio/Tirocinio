
model BIOMD219 "Singh2006_TCA_mtu_model1"

    function pow
        input  Real x;
        input  Real power;
        output Real y;
        algorithm
            y := x^power;
    end pow;

    parameter Real Vf_cs_CS = 64.8;
    parameter Real Kaca_cs_CS = 0.05;
    parameter Real Koaa_cs_CS = 0.012;
    parameter Real Vr_cs_CS = 0.648;
    parameter Real Kcoa_cs_CS = 0.5;
    parameter Real Kcit_cs_CS = 0.12;
    parameter Real Vf_acn_ACN = 31.2;
    parameter Real Kcit_acn_ACN = 1.7;
    parameter Real Vr_acn_ACN = 0.312;
    parameter Real Kicit_acn_ACN = 0.7;
    parameter Real Vf_icd1_ICD1 = 10.2;
    parameter Real Kicit_icd1_ICD1 = 0.03;
    parameter Real Vr_icd1_ICD1 = 0.102;
    parameter Real Kakg_icd1_ICD1 = 0.3;
    parameter Real Vf_icd2_ICD2 = 9.965;
    parameter Real Kicit_icd2_ICD2 = 0.06;
    parameter Real Vr_icd2_ICD2 = 0.09965;
    parameter Real Kakg_icd2_ICD2 = 0.6;
    parameter Real Vf_kdh_KDH = 57.344;
    parameter Real Kakg_kdh_KDH = 0.1;
    parameter Real Vr_kdh_KDH = 0.57344;
    parameter Real Ksca_kdh_KDH = 1.0;
    parameter Real Vf_kgd_KGD = 48.3;
    parameter Real Kakg_kgd_KGD = 0.48;
    parameter Real Vr_kgd_KGD = 0.483;
    parameter Real Kssa_kgd_KGD = 4.8;
    parameter Real Vf_ssadh_SSADH = 6.51;
    parameter Real Kssa_ssadh_SSADH = 0.015;
    parameter Real Vr_ssadh_SSADH = 0.0651;
    parameter Real Ksuc_ssadh_SSADH = 0.15;
    parameter Real Vf_scas_ScAS = 1.2;
    parameter Real Ksca_scas_ScAS = 0.02;
    parameter Real Vr_scas_ScAS = 0.012;
    parameter Real Ksuc_scas_ScAS = 5.0;
    parameter Real Vf_sdh_SDH = 1.02;
    parameter Real Ksuc_sdh_SDH = 0.12;
    parameter Real Vr_sdh_SDH = 1.02;
    parameter Real Kfa_sdh_SDH = 0.15;
    parameter Real Vf_fum_FUM = 87.7;
    parameter Real Kfa_fum_FUM = 0.25;
    parameter Real Vr_fum_FUM = 87.7;
    parameter Real Kmal_fum_FUM = 2.38;
    parameter Real Vf_mdh_MDH = 184.0;
    parameter Real Kmal_mdh_MDH = 0.833;
    parameter Real Vr_mdh_MDH = 184.0;
    parameter Real Koaa_mdh_MDH = 0.0443;
    parameter Real Vf_icl1_ICL1 = 1.172;
    parameter Real Kicit_icl1_ICL1 = 0.145;
    parameter Real Vr_icl1_ICL1 = 0.01172;
    parameter Real Ksuc_icl1_ICL1 = 0.59;
    parameter Real Kgly_icl1_ICL1 = 0.13;
    parameter Real Vf_icl2_ICL2 = 0.391;
    parameter Real Kicit_icl2_ICL2 = 1.3;
    parameter Real Vr_icl2_ICL2 = 0.00391;
    parameter Real Ksuc_icl2_ICL2 = 5.9;
    parameter Real Kgly_icl2_ICL2 = 1.3;
    parameter Real Vf_ms_MS = 20.0;
    parameter Real Kgly_ms_MS = 0.057;
    parameter Real Kaca_ms_MS = 0.03;
    parameter Real Vr_ms_MS = 0.2;
    parameter Real Kmal_ms_MS = 1.0;
    parameter Real Kcoa_ms_MS = 0.1;
    parameter Real Vf_icd1_SYN = 10.2;
    parameter Real Kicit_icd1_SYN = 0.03;
    parameter Real Vr_icd1_SYN = 0.102;
    parameter Real Kakg_icd1_SYN = 0.3;
    parameter Real Vf_icd2_SYN = 9.965;
    parameter Real Kicit_icd2_SYN = 0.06;
    parameter Real Vr_icd2_SYN = 0.09965;
    parameter Real Kakg_icd2_SYN = 0.6;



    Real aca;
    Real oaa;
    Real coa;
    Real cit;
    Real icit;
    Real akg;
    Real ssa;
    Real suc;
    Real sca;
    Real fa;
    Real mal;
    Real gly;
    Real biosyn;

initial equation
    aca = 0.5;
    oaa = 0.0003;
    coa = 0.0001;
    cit = 3.4;
    icit = 0.06;
    akg = 0.96;
    ssa = 0.03;
    suc = 2.464;
    sca = 0.04;
    fa = 0.08528;
    mal = 0.408;
    gly = 0.114;
    biosyn = 0.1;

equation

    der(aca) = 0.0;
    der(oaa) = 0.0;
    der(coa) = 0.0;
    der(cit) = (1.0 * ((Vf_cs_CS * (aca / Kaca_cs_CS) * (oaa / Koaa_cs_CS) - Vr_cs_CS * (coa / Kcoa_cs_CS) * (cit / Kcit_cs_CS)) / ((1 + aca / Kaca_cs_CS + coa / Kcoa_cs_CS) * (1 + oaa / Koaa_cs_CS + cit / Kcit_cs_CS)))) - (1.0 * ((Vf_acn_ACN * (cit / Kcit_acn_ACN) - Vr_acn_ACN * (icit / Kicit_acn_ACN)) / (1 + cit / Kcit_acn_ACN + icit / Kicit_acn_ACN)));
    der(icit) = (1.0 * ((Vf_acn_ACN * (cit / Kcit_acn_ACN) - Vr_acn_ACN * (icit / Kicit_acn_ACN)) / (1 + cit / Kcit_acn_ACN + icit / Kicit_acn_ACN))) - (1.0 * ((Vf_icd1_ICD1 * (icit / Kicit_icd1_ICD1) - Vr_icd1_ICD1 * (akg / Kakg_icd1_ICD1)) / (1 + icit / Kicit_icd1_ICD1 + akg / Kakg_icd1_ICD1))) - (1.0 * ((Vf_icd2_ICD2 * (icit / Kicit_icd2_ICD2) - Vr_icd2_ICD2 * (akg / Kakg_icd2_ICD2)) / (1 + icit / Kicit_icd2_ICD2 + akg / Kakg_icd2_ICD2))) - (1.0 * ((Vf_icl1_ICL1 * (icit / Kicit_icl1_ICL1) - Vr_icl1_ICL1 * (suc / Ksuc_icl1_ICL1) * (gly / Kgly_icl1_ICL1)) / (1 + icit / Kicit_icl1_ICL1 + suc / Ksuc_icl1_ICL1 + gly / Kgly_icl1_ICL1 + (icit / Kicit_icl1_ICL1) * (suc / Ksuc_icl1_ICL1) + (suc / Ksuc_icl1_ICL1) * (gly / Kgly_icl1_ICL1)))) - (1.0 * ((Vf_icl2_ICL2 * (icit / Kicit_icl2_ICL2) - Vr_icl2_ICL2 * (suc / Ksuc_icl2_ICL2) * (gly / Kgly_icl2_ICL2)) / (1 + icit / Kicit_icl2_ICL2 + suc / Ksuc_icl2_ICL2 + gly / Kgly_icl2_ICL2 + (icit / Kicit_icl2_ICL2) * (suc / Ksuc_icl2_ICL2) + (suc / Ksuc_icl2_ICL2) * (gly / Kgly_icl2_ICL2))));
    der(akg) = (1.0 * ((Vf_icd1_ICD1 * (icit / Kicit_icd1_ICD1) - Vr_icd1_ICD1 * (akg / Kakg_icd1_ICD1)) / (1 + icit / Kicit_icd1_ICD1 + akg / Kakg_icd1_ICD1))) + (1.0 * ((Vf_icd2_ICD2 * (icit / Kicit_icd2_ICD2) - Vr_icd2_ICD2 * (akg / Kakg_icd2_ICD2)) / (1 + icit / Kicit_icd2_ICD2 + akg / Kakg_icd2_ICD2))) - (1.0 * ((Vf_kdh_KDH * (akg / Kakg_kdh_KDH) - Vr_kdh_KDH * (sca / Ksca_kdh_KDH)) / (1 + akg / Kakg_kdh_KDH + sca / Ksca_kdh_KDH))) - (1.0 * ((Vf_kgd_KGD * (akg / Kakg_kgd_KGD) - Vr_kgd_KGD * (ssa / Kssa_kgd_KGD)) / (1 + akg / Kakg_kgd_KGD + ssa / Kssa_kgd_KGD))) - (1.0 * 0.0341 * ((Vf_icd1_SYN * (icit / Kicit_icd1_SYN) - Vr_icd1_SYN * (akg / Kakg_icd1_SYN)) / (1 + icit / Kicit_icd1_SYN + akg / Kakg_icd1_SYN) + (Vf_icd2_SYN * (icit / Kicit_icd2_SYN) - Vr_icd2_SYN * (akg / Kakg_icd2_SYN)) / (1 + icit / Kicit_icd2_SYN + akg / Kakg_icd2_SYN)));
    der(ssa) = (1.0 * ((Vf_kgd_KGD * (akg / Kakg_kgd_KGD) - Vr_kgd_KGD * (ssa / Kssa_kgd_KGD)) / (1 + akg / Kakg_kgd_KGD + ssa / Kssa_kgd_KGD))) - (1.0 * ((Vf_ssadh_SSADH * (ssa / Kssa_ssadh_SSADH) - Vr_ssadh_SSADH * (suc / Ksuc_ssadh_SSADH)) / (1 + ssa / Kssa_ssadh_SSADH + suc / Ksuc_ssadh_SSADH)));
    der(suc) = (1.0 * ((Vf_ssadh_SSADH * (ssa / Kssa_ssadh_SSADH) - Vr_ssadh_SSADH * (suc / Ksuc_ssadh_SSADH)) / (1 + ssa / Kssa_ssadh_SSADH + suc / Ksuc_ssadh_SSADH))) + (1.0 * ((Vf_scas_ScAS * (sca / Ksca_scas_ScAS) - Vr_scas_ScAS * (suc / Ksuc_scas_ScAS)) / (1 + sca / Ksca_scas_ScAS + suc / Ksuc_scas_ScAS))) + (1.0 * ((Vf_icl1_ICL1 * (icit / Kicit_icl1_ICL1) - Vr_icl1_ICL1 * (suc / Ksuc_icl1_ICL1) * (gly / Kgly_icl1_ICL1)) / (1 + icit / Kicit_icl1_ICL1 + suc / Ksuc_icl1_ICL1 + gly / Kgly_icl1_ICL1 + (icit / Kicit_icl1_ICL1) * (suc / Ksuc_icl1_ICL1) + (suc / Ksuc_icl1_ICL1) * (gly / Kgly_icl1_ICL1)))) + (1.0 * ((Vf_icl2_ICL2 * (icit / Kicit_icl2_ICL2) - Vr_icl2_ICL2 * (suc / Ksuc_icl2_ICL2) * (gly / Kgly_icl2_ICL2)) / (1 + icit / Kicit_icl2_ICL2 + suc / Ksuc_icl2_ICL2 + gly / Kgly_icl2_ICL2 + (icit / Kicit_icl2_ICL2) * (suc / Ksuc_icl2_ICL2) + (suc / Ksuc_icl2_ICL2) * (gly / Kgly_icl2_ICL2)))) - (1.0 * ((Vf_sdh_SDH * (suc / Ksuc_sdh_SDH) - Vr_sdh_SDH * (fa / Kfa_sdh_SDH)) / (1 + suc / Ksuc_sdh_SDH + fa / Kfa_sdh_SDH)));
    der(sca) = (1.0 * ((Vf_kdh_KDH * (akg / Kakg_kdh_KDH) - Vr_kdh_KDH * (sca / Ksca_kdh_KDH)) / (1 + akg / Kakg_kdh_KDH + sca / Ksca_kdh_KDH))) - (1.0 * ((Vf_scas_ScAS * (sca / Ksca_scas_ScAS) - Vr_scas_ScAS * (suc / Ksuc_scas_ScAS)) / (1 + sca / Ksca_scas_ScAS + suc / Ksuc_scas_ScAS)));
    der(fa) = (1.0 * ((Vf_sdh_SDH * (suc / Ksuc_sdh_SDH) - Vr_sdh_SDH * (fa / Kfa_sdh_SDH)) / (1 + suc / Ksuc_sdh_SDH + fa / Kfa_sdh_SDH))) - (1.0 * ((Vf_fum_FUM * (fa / Kfa_fum_FUM) - Vr_fum_FUM * (mal / Kmal_fum_FUM)) / (1 + fa / Kfa_fum_FUM + mal / Kmal_fum_FUM)));
    der(mal) = (1.0 * ((Vf_fum_FUM * (fa / Kfa_fum_FUM) - Vr_fum_FUM * (mal / Kmal_fum_FUM)) / (1 + fa / Kfa_fum_FUM + mal / Kmal_fum_FUM))) + (1.0 * ((Vf_ms_MS * (gly / Kgly_ms_MS) * (aca / Kaca_ms_MS) - Vr_ms_MS * (mal / Kmal_ms_MS) * (coa / Kcoa_ms_MS)) / ((1 + gly / Kgly_ms_MS + mal / Kmal_ms_MS) * (1 + aca / Kaca_ms_MS + coa / Kcoa_ms_MS)))) - (1.0 * ((Vf_mdh_MDH * (mal / Kmal_mdh_MDH) - Vr_mdh_MDH * (oaa / Koaa_mdh_MDH)) / (1 + mal / Kmal_mdh_MDH + oaa / Koaa_mdh_MDH)));
    der(gly) = (1.0 * ((Vf_icl1_ICL1 * (icit / Kicit_icl1_ICL1) - Vr_icl1_ICL1 * (suc / Ksuc_icl1_ICL1) * (gly / Kgly_icl1_ICL1)) / (1 + icit / Kicit_icl1_ICL1 + suc / Ksuc_icl1_ICL1 + gly / Kgly_icl1_ICL1 + (icit / Kicit_icl1_ICL1) * (suc / Ksuc_icl1_ICL1) + (suc / Ksuc_icl1_ICL1) * (gly / Kgly_icl1_ICL1)))) + (1.0 * ((Vf_icl2_ICL2 * (icit / Kicit_icl2_ICL2) - Vr_icl2_ICL2 * (suc / Ksuc_icl2_ICL2) * (gly / Kgly_icl2_ICL2)) / (1 + icit / Kicit_icl2_ICL2 + suc / Ksuc_icl2_ICL2 + gly / Kgly_icl2_ICL2 + (icit / Kicit_icl2_ICL2) * (suc / Ksuc_icl2_ICL2) + (suc / Ksuc_icl2_ICL2) * (gly / Kgly_icl2_ICL2)))) - (1.0 * ((Vf_ms_MS * (gly / Kgly_ms_MS) * (aca / Kaca_ms_MS) - Vr_ms_MS * (mal / Kmal_ms_MS) * (coa / Kcoa_ms_MS)) / ((1 + gly / Kgly_ms_MS + mal / Kmal_ms_MS) * (1 + aca / Kaca_ms_MS + coa / Kcoa_ms_MS))));
    der(biosyn) = 0.0;




end BIOMD219;
