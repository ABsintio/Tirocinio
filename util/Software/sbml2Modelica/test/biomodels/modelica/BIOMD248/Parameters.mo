within BIOMD248;
class Parameters

    input Real elmt_Tissue;
    input Real elmt_Capillary;
    input Real elmt_CFtis;
    input Real elmt_ATPase;
    input Real elmt_CFcap;
    input Real elmt_OxidativePhosphorylation;
    input Real elmt_CreatineKinase;

    Real elmt_Kp(unit = "m-3.0.") "Kp";
    Real elmt_Kiq(unit = "m-3.0.") "Kiq";
    Real elmt_Vmax(unit = "m-3.0..s-1.0") "Vmax";
    Real elmt_Km(unit = "m-3.0.") "Km";
    Real elmt_exercise_level(unit = "") "exercise_level";
    Real elmt_KMb(unit = "m3.0.mol-1.0") "KMb";
    Real elmt_VrCK(unit = "m-3.0..s-1.0") "VrCK";
    Real elmt_Hct(unit = "") "Hct";
    Real elmt_VmaxVH(unit = "m-3.0..s-1.0") "VmaxVH";
    Real elmt_VfCK(unit = "m-3.0..s-1.0") "VfCK";
    Real elmt_KatpaseM(unit = "s-1.0") "KatpaseM";
    Real elmt_KatpaseH(unit = "s-1.0") "KatpaseH";
    Real elmt_StO2m(unit = "") "StO2m";
    Real elmt_CmcMb(unit = "m-3.0.") "CmcMb";
    Real elmt_KatpaseE(unit = "s-1.0") "KatpaseE";
    Real elmt_Kb(unit = "m-3.0.") "Kb";
    Real elmt_CTart(unit = "m-3.0.") "CTart";
    Real elmt_PSm(unit = "m3.0.s-1.0") "PSm";
    Real elmt_dQMm(unit = "m3.0.s-1.0") "dQMm";
    Real elmt_dQMmVH(unit = "m3.0.s-1.0") "dQMmVH";
    Real elmt_StO2mW(unit = "") "StO2mW";
    Real elmt_ATPase_flux_mM(unit = "m-3.0..s-1.0") "ATPase_flux_mM";
    Real elmt_RStO2m(unit = "") "RStO2m";
    Real elmt_QRm(unit = "m3.0.s-1.0") "QRm";
    Real elmt_nH(unit = "") "nH";
    Real elmt_tauQmVH(unit = "s-1.0") "tauQmVH";
    Real elmt_dQMmM(unit = "m3.0.s-1.0") "dQMmM";
    Real elmt_dQMmH(unit = "m3.0.s-1.0") "dQMmH";
    Real elmt_Kadp(unit = "m-3.0.") "Kadp";
    Real elmt_tauQm(unit = "s-1.0") "tauQm";
    Real elmt_QWm(unit = "m3.0.s-1.0") "QWm";
    Real elmt_Qc(unit = "m3.0.s-1.0") "Qc";
    Real elmt_VmaxM(unit = "m-3.0..s-1.0") "VmaxM";
    Real elmt_Qm(unit = "m3.0.s-1.0") "Qm";
    Real elmt_CK_flux_mM(unit = "m-3.0..s-1.0") "CK_flux_mM";
    Real elmt_VmaxH(unit = "m-3.0..s-1.0") "VmaxH";
    Real elmt_CrbcHb(unit = "m-3.0.") "CrbcHb";
    Real elmt_tauQmH(unit = "s-1.0") "tauQmH";
    Real elmt_oxygen_phosph(unit = "m-3.0..s-1.0") "oxygen_phosphorilation_rate_mM";
    Real elmt_Katpase(unit = "s-1.0") "Katpase";
    Real elmt_KatpaseW(unit = "s-1.0") "KatpaseW";
    Real elmt_KatpaseVH(unit = "s-1.0") "KatpaseVH";
    Real elmt_tauQmM(unit = "s-1.0") "tauQmM";
    Real elmt_KHb(unit = "m-3.0.") "KHb";
    Real elmt_Kia(unit = "m-3.0.") "Kia";
    Real elmt_tE(unit = "s-1.0") "tE";
    Real elmt_Kib(unit = "m-3.0.") "Kib";
    Real elmt_PSE(unit = "m3.0.s-1.0") "PSE";
    Real elmt_PSR(unit = "m3.0.s-1.0") "PSR";
    Real elmt_Wmc(unit = "") "";


    initial equation
        elmt_Kp = 3.8;
        elmt_Kiq = 3.5;
        elmt_Km = 7.0E-4;
        elmt_exercise_level = 3.0;
        elmt_KMb = 308.642;
        elmt_VrCK = 3008.65837589001;
        elmt_Hct = 0.45;
        elmt_VmaxVH = 23.11702;
        elmt_VfCK = 6000.0;
        elmt_KatpaseM = 1.71080439028658;
        elmt_KatpaseH = 2.2581564;
        elmt_CmcMb = 0.5;
        elmt_Kb = 1.11;
        elmt_CTart = 9.199981;
        elmt_dQMmVH = 12.74981;
        elmt_StO2mW = 81.17123516;
        elmt_QRm = 0.688;
        elmt_nH = 2.7;
        elmt_tauQmVH = 0.42;
        elmt_dQMmM = 7.9167374;
        elmt_dQMmH = 9.42198;
        elmt_Kadp = 0.058;
        elmt_QWm = 3.118;
        elmt_Qc = 8.0;
        elmt_VmaxM = 53.5150933;
        elmt_VmaxH = 34.68714;
        elmt_CrbcHb = 5.18;
        elmt_tauQmH = 0.396;
        elmt_KatpaseW = 0.3207601;
        elmt_KatpaseVH = 3.3423645;
        elmt_tauQmM = 0.32;
        elmt_KHb = 7800.7;
        elmt_Kia = 0.135;
        elmt_tE = 3.0;
        elmt_Kib = 3.9;
        elmt_PSE = 20000.0;
        elmt_PSR = 134.2828;
        elmt_Wmc = 0.8064;


    equation
        der(elmt_Kp) = 0;
        der(elmt_Kiq) = 0;
        elmt_Vmax = (if Functions.eq(elmt_exercise_level, 1.0) then elmt_VmaxM else (if Functions.eq(elmt_exercise_level, 2.0) then elmt_VmaxH else elmt_VmaxVH));
        der(elmt_Km) = 0;
        der(elmt_exercise_level) = 0;
        der(elmt_KMb) = 0;
        der(elmt_VrCK) = 0;
        der(elmt_Hct) = 0;
        der(elmt_VmaxVH) = 0;
        der(elmt_VfCK) = 0;
        der(elmt_KatpaseM) = 0;
        der(elmt_KatpaseH) = 0;
        elmt_StO2m = ((100.0 * ((((elmt_Hct * elmt_CrbcHb * elmt_KHb * Functions.pow(elmt_CFcap, elmt_nH)) / (1.0 + (elmt_KHb * Functions.pow(elmt_CFcap, elmt_nH)))) * elmt_Capillary) + (((elmt_Wmc * elmt_CmcMb * elmt_KMb * elmt_CFtis) / (1.0 + (elmt_KMb * elmt_CFtis))) * elmt_Tissue))) / ((elmt_CrbcHb * elmt_Hct * elmt_Capillary) + (elmt_CmcMb * elmt_Wmc * elmt_Tissue)));
        der(elmt_CmcMb) = 0;
        elmt_KatpaseE = (if Functions.eq(elmt_exercise_level, 1.0) then elmt_KatpaseM else (if Functions.eq(elmt_exercise_level, 2.0) then elmt_KatpaseH else elmt_KatpaseVH));
        der(elmt_Kb) = 0;
        der(elmt_CTart) = 0;
        elmt_PSm = (elmt_PSR + ((elmt_PSE - elmt_PSR) * (1.0 - exp(((elmt_QRm - elmt_Qm) / elmt_Qc)))));
        elmt_dQMm = (if Functions.eq(elmt_exercise_level, 1.0) then elmt_dQMmM else (if Functions.eq(elmt_exercise_level, 2.0) then elmt_dQMmH else elmt_dQMmVH));
        der(elmt_dQMmVH) = 0;
        der(elmt_StO2mW) = 0;
        elmt_ATPase_flux_mM = (elmt_ATPase / elmt_Tissue);
        elmt_RStO2m = ((elmt_StO2m / elmt_StO2mW) - 1.0);
        der(elmt_QRm) = 0;
        der(elmt_nH) = 0;
        der(elmt_tauQmVH) = 0;
        der(elmt_dQMmM) = 0;
        der(elmt_dQMmH) = 0;
        der(elmt_Kadp) = 0;
        elmt_tauQm = (if Functions.eq(elmt_exercise_level, 1.0) then elmt_tauQmM else (if Functions.eq(elmt_exercise_level, 2.0) then elmt_tauQmH else elmt_tauQmVH));
        der(elmt_QWm) = 0;
        der(elmt_Qc) = 0;
        der(elmt_VmaxM) = 0;
        elmt_Qm = (if (time <= elmt_tE) then elmt_QWm else (elmt_QWm + (elmt_dQMm * (1.0 - exp(((elmt_tE - time) / elmt_tauQm))))));
        elmt_CK_flux_mM = (1.0 * (elmt_CreatineKinase / elmt_Tissue));
        der(elmt_VmaxH) = 0;
        der(elmt_CrbcHb) = 0;
        der(elmt_tauQmH) = 0;
        elmt_oxygen_phosph = ((elmt_OxidativePhosphorylation / elmt_Tissue) * 6.0);
        elmt_Katpase = (if (time <= elmt_tE) then elmt_KatpaseW else elmt_KatpaseE);
        der(elmt_KatpaseW) = 0;
        der(elmt_KatpaseVH) = 0;
        der(elmt_tauQmM) = 0;
        der(elmt_KHb) = 0;
        der(elmt_Kia) = 0;
        der(elmt_tE) = 0;
        der(elmt_Kib) = 0;
        der(elmt_PSE) = 0;
        der(elmt_PSR) = 0;
        der(elmt_Wmc) = 0;

end Parameters;
