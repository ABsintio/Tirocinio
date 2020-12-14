
model BIOMD222 "Singh2006_TCA_Ecoli_glucose"

    function pow
        input  Real x;
        input  Real power;
        output Real y;
        algorithm
            y := x^power;
    end pow;

    parameter Real Vf_cs_CS = 91.2;
    parameter Real Kaca_cs_CS = 0.03;
    parameter Real Koaa_cs_CS = 0.07;
    parameter Real Vr_cs_CS = 0.912;
    parameter Real Kcoa_cs_CS = 0.3;
    parameter Real Kcit_cs_CS = 0.7;
    parameter Real Vf_acn_ACN = 91.2;
    parameter Real Kcit_acn_ACN = 1.7;
    parameter Real Vr_acn_ACN = 0.912;
    parameter Real Kicit_acn_ACN = 3.33;
    parameter Real Vf_icd_ICD = 14.72;
    parameter Real Kicit_icd_ICD = 0.008;
    parameter Real Vr_icd_ICD = 0.1472;
    parameter Real Kakg_icd_ICD = 0.13;
    parameter Real Vf_kdh_KDH = 35.84;
    parameter Real Kakg_kdh_KDH = 0.1;
    parameter Real Vr_kdh_KDH = 0.3584;
    parameter Real Ksca_kdh_KDH = 1.0;
    parameter Real Vf_scas_ScAS = 3.5;
    parameter Real Ksca_scas_ScAS = 0.02;
    parameter Real Vr_scas_ScAS = 0.035;
    parameter Real Ksuc_scas_ScAS = 5.0;
    parameter Real Vf_sdh_SDH = 7.38;
    parameter Real Ksuc_sdh_SDH = 0.02;
    parameter Real Vr_sdh_SDH = 7.31;
    parameter Real Kfa_sdh_SDH = 0.4;
    parameter Real Vf_fum_FUM = 44.64;
    parameter Real Kfa_fum_FUM = 0.15;
    parameter Real Vr_fum_FUM = 37.2;
    parameter Real Kmal_fum_FUM = 0.04;
    parameter Real Vf_mdh_MDH = 356.64;
    parameter Real Kmal_mdh_MDH = 2.6;
    parameter Real Vr_mdh_MDH = 353.11;
    parameter Real Koaa_mdh_MDH = 0.04;
    parameter Real Vf_icl_ICL = 1.9;
    parameter Real Kicit_icl_ICL = 0.604;
    parameter Real Vr_icl_ICL = 0.019;
    parameter Real Ksuc_icl_ICL = 0.59;
    parameter Real Kgly_icl_ICL = 0.13;
    parameter Real Vf_ms_MS = 1.9;
    parameter Real Kgly_ms_MS = 2.0;
    parameter Real Kaca_ms_MS = 0.01;
    parameter Real Vr_ms_MS = 0.019;
    parameter Real Kmal_ms_MS = 1.0;
    parameter Real Kcoa_ms_MS = 0.1;
    parameter Real Vf_icd_SYN = 14.72;
    parameter Real Kicit_icd_SYN = 0.008;
    parameter Real Vr_icd_SYN = 0.1472;
    parameter Real Kakg_icd_SYN = 0.13;



    Real aca;
    Real oaa;
    Real coa;
    Real cit;
    Real icit;
    Real akg;
    Real sca;
    Real suc;
    Real fa;
    Real mal;
    Real gly;
    Real biosyn;

initial equation
    aca = 0.5;
    oaa = 0.004;
    coa = 0.0001;
    cit = 3.0;
    icit = 0.018;
    akg = 0.2;
    sca = 0.04;
    suc = 0.6;
    fa = 0.3;
    mal = 1.8;
    gly = 4.0;
    biosyn = 0.1;

equation

    der(aca) = 0.0;
    der(oaa) = 0.0;
    der(coa) = 0.0;
    der(cit) = (1.0 * ((Vf_cs_CS * (aca / Kaca_cs_CS) * (oaa / Koaa_cs_CS) - Vr_cs_CS * (coa / Kcoa_cs_CS) * (cit / Kcit_cs_CS)) / ((1 + aca / Kaca_cs_CS + coa / Kcoa_cs_CS) * (1 + oaa / Koaa_cs_CS + cit / Kcit_cs_CS)))) - (1.0 * ((Vf_acn_ACN * (cit / Kcit_acn_ACN) - Vr_acn_ACN * (icit / Kicit_acn_ACN)) / (1 + cit / Kcit_acn_ACN + icit / Kicit_acn_ACN)));
    der(icit) = (1.0 * ((Vf_acn_ACN * (cit / Kcit_acn_ACN) - Vr_acn_ACN * (icit / Kicit_acn_ACN)) / (1 + cit / Kcit_acn_ACN + icit / Kicit_acn_ACN))) - (1.0 * ((Vf_icd_ICD * (icit / Kicit_icd_ICD) - Vr_icd_ICD * (akg / Kakg_icd_ICD)) / (1 + icit / Kicit_icd_ICD + akg / Kakg_icd_ICD))) - (1.0 * ((Vf_icl_ICL * (icit / Kicit_icl_ICL) - Vr_icl_ICL * (suc / Ksuc_icl_ICL) * (gly / Kgly_icl_ICL)) / (1 + icit / Kicit_icl_ICL + suc / Ksuc_icl_ICL + gly / Kgly_icl_ICL + (icit / Kicit_icl_ICL) * (suc / Ksuc_icl_ICL) + (suc / Ksuc_icl_ICL) * (gly / Kgly_icl_ICL))));
    der(akg) = (1.0 * ((Vf_icd_ICD * (icit / Kicit_icd_ICD) - Vr_icd_ICD * (akg / Kakg_icd_ICD)) / (1 + icit / Kicit_icd_ICD + akg / Kakg_icd_ICD))) - (1.0 * ((Vf_kdh_KDH * (akg / Kakg_kdh_KDH) - Vr_kdh_KDH * (sca / Ksca_kdh_KDH)) / (1 + akg / Kakg_kdh_KDH + sca / Ksca_kdh_KDH))) - (1.0 * 0.188 * ((Vf_icd_SYN * (icit / Kicit_icd_SYN) - Vr_icd_SYN * (akg / Kakg_icd_SYN)) / (1 + icit / Kicit_icd_SYN + akg / Kakg_icd_SYN)));
    der(sca) = (1.0 * ((Vf_kdh_KDH * (akg / Kakg_kdh_KDH) - Vr_kdh_KDH * (sca / Ksca_kdh_KDH)) / (1 + akg / Kakg_kdh_KDH + sca / Ksca_kdh_KDH))) - (1.0 * ((Vf_scas_ScAS * (sca / Ksca_scas_ScAS) - Vr_scas_ScAS * (suc / Ksuc_scas_ScAS)) / (1 + sca / Ksca_scas_ScAS + suc / Ksuc_scas_ScAS)));
    der(suc) = (1.0 * ((Vf_scas_ScAS * (sca / Ksca_scas_ScAS) - Vr_scas_ScAS * (suc / Ksuc_scas_ScAS)) / (1 + sca / Ksca_scas_ScAS + suc / Ksuc_scas_ScAS))) + (1.0 * ((Vf_icl_ICL * (icit / Kicit_icl_ICL) - Vr_icl_ICL * (suc / Ksuc_icl_ICL) * (gly / Kgly_icl_ICL)) / (1 + icit / Kicit_icl_ICL + suc / Ksuc_icl_ICL + gly / Kgly_icl_ICL + (icit / Kicit_icl_ICL) * (suc / Ksuc_icl_ICL) + (suc / Ksuc_icl_ICL) * (gly / Kgly_icl_ICL)))) - (1.0 * ((Vf_sdh_SDH * (suc / Ksuc_sdh_SDH) - Vr_sdh_SDH * (fa / Kfa_sdh_SDH)) / (1 + suc / Ksuc_sdh_SDH + fa / Kfa_sdh_SDH)));
    der(fa) = (1.0 * ((Vf_sdh_SDH * (suc / Ksuc_sdh_SDH) - Vr_sdh_SDH * (fa / Kfa_sdh_SDH)) / (1 + suc / Ksuc_sdh_SDH + fa / Kfa_sdh_SDH))) - (1.0 * ((Vf_fum_FUM * (fa / Kfa_fum_FUM) - Vr_fum_FUM * (mal / Kmal_fum_FUM)) / (1 + fa / Kfa_fum_FUM + mal / Kmal_fum_FUM)));
    der(mal) = (1.0 * ((Vf_fum_FUM * (fa / Kfa_fum_FUM) - Vr_fum_FUM * (mal / Kmal_fum_FUM)) / (1 + fa / Kfa_fum_FUM + mal / Kmal_fum_FUM))) + (1.0 * ((Vf_ms_MS * (gly / Kgly_ms_MS) * (aca / Kaca_ms_MS) - Vr_ms_MS * (mal / Kmal_ms_MS) * (coa / Kcoa_ms_MS)) / ((1 + gly / Kgly_ms_MS + mal / Kmal_ms_MS) * (1 + aca / Kaca_ms_MS + coa / Kcoa_ms_MS)))) - (1.0 * ((Vf_mdh_MDH * (mal / Kmal_mdh_MDH) - Vr_mdh_MDH * (oaa / Koaa_mdh_MDH)) / (1 + mal / Kmal_mdh_MDH + oaa / Koaa_mdh_MDH)));
    der(gly) = (1.0 * ((Vf_icl_ICL * (icit / Kicit_icl_ICL) - Vr_icl_ICL * (suc / Ksuc_icl_ICL) * (gly / Kgly_icl_ICL)) / (1 + icit / Kicit_icl_ICL + suc / Ksuc_icl_ICL + gly / Kgly_icl_ICL + (icit / Kicit_icl_ICL) * (suc / Ksuc_icl_ICL) + (suc / Ksuc_icl_ICL) * (gly / Kgly_icl_ICL)))) - (1.0 * ((Vf_ms_MS * (gly / Kgly_ms_MS) * (aca / Kaca_ms_MS) - Vr_ms_MS * (mal / Kmal_ms_MS) * (coa / Kcoa_ms_MS)) / ((1 + gly / Kgly_ms_MS + mal / Kmal_ms_MS) * (1 + aca / Kaca_ms_MS + coa / Kcoa_ms_MS))));
    der(biosyn) = 0.0;



end BIOMD222;
