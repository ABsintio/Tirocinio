within BIOMD578;
class Parameters

    input Real elmt_Ga_GTP_a_PDE_a_Ga_GTP;
    input Real elmt_Ca2_free;
    input Real elmt_PDE_a_Ga_GTP;
    input Real elmt_Ga_GTP_PDE_a_Ga_GTP;
    input Real elmt_cGMP;

    Real elmt_kRK1_0(unit = "") "kRK1_0";
    Real elmt_kRrecyc(unit = "") "kRrecyc";
    Real elmt_omega(unit = "") "omega";
    Real elmt_kA5(unit = "") "kA5";
    Real elmt_kA4(unit = "") "kA4";
    Real elmt_kA3(unit = "") "kA3";
    Real elmt_kA2(unit = "") "kA2";
    Real elmt_Kc1(unit = "") "Kc1";
    Real elmt_kPDEshutoff(unit = "") "kPDEshutoff";
    Real elmt_Kc2(unit = "") "Kc2";
    Real elmt_ArrTot(unit = "") "ArrTot";
    Real elmt_flashDur(unit = "") "flashDur";
    Real elmt_kRK1_5(unit = "") "kRK1_5";
    Real elmt_kRK1_6(unit = "") "kRK1_6";
    Real elmt_kRK3_ATP(unit = "") "kRK3_ATP";
    Real elmt_kRGS1(unit = "") "kRGS1";
    Real elmt_kRK1_3(unit = "") "kRK1_3";
    Real elmt_kRK1_4(unit = "") "kRK1_4";
    Real elmt_kRK1_1(unit = "") "kRK1_1";
    Real elmt_flashDel(unit = "") "flashDel";
    Real elmt_kRGS2(unit = "") "kRGS2";
    Real elmt_kRK1_2(unit = "") "kRK1_2";
    Real elmt_k1(unit = "") "k1";
    Real elmt_kG2ops(unit = "") "kG2ops";
    Real elmt_Ca2dark(unit = "") "Ca2dark";
    Real elmt_predur(unit = "") "predur";
    Real elmt_m_Arr(unit = "") "m_Arr";
    Real elmt_k2(unit = "") "k2";
    Real elmt_Ca2_0(unit = "") "Ca2_0";
    Real elmt_kOps(unit = "") "kOps";
    Real elmt_stimulus(unit = "") "stimulus";
    Real elmt_flashMag(unit = "") "flashMag";
    Real elmt_ktherm(unit = "") "ktherm";
    Real elmt_dur(unit = "") "dur";
    Real elmt_flash0Mag(unit = "") "flash0Mag";
    Real elmt_deltaJ(unit = "") "deltaJ";
    Real elmt_del(unit = "") "del";
    Real elmt_preflash(unit = "") "preflash";
    Real elmt_RGStot(unit = "") "RGStot";
    Real elmt_kArr(unit = "") "kArr";
    Real elmt_kGrecyc(unit = "") "kGrecyc";
    Real elmt_kG5_GTP(unit = "") "kG5_GTP";
    Real elmt_alfamax(unit = "") "alfamax";
    Real elmt_gammaCa(unit = "") "gammaCa";
    Real elmt_flashBG(unit = "") "flashBG";
    Real elmt_testflash(unit = "") "testflash";
    Real elmt_kGpre2(unit = "") "kGpre2";
    Real elmt_kGpre1(unit = "") "kGpre1";
    Real elmt_Rtot(unit = "") "Rtot";
    Real elmt_kRK4(unit = "") "kRK4";
    Real elmt_kG1ops(unit = "") "kG1ops";
    Real elmt_kRec1(unit = "") "kRec1";
    Real elmt_kRec4(unit = "") "kRec4";
    Real elmt_PDEtot(unit = "") "PDEtot";
    Real elmt_kRec2(unit = "") "kRec2";
    Real elmt_kRec3(unit = "") "kRec3";
    Real elmt_kA1_2(unit = "") "kA1_2";
    Real elmt_kA1_1(unit = "") "kA1_1";
    Real elmt_kA1_4(unit = "") "kA1_4";
    Real elmt_Gtot(unit = "") "Gtot";
    Real elmt_numConcFactor(unit = "") "numConcFactor";
    Real elmt_kA1_3(unit = "") "kA1_3";
    Real elmt_background(unit = "") "background";
    Real elmt_mag(unit = "") "mag";
    Real elmt_Jdark(unit = "") "Jdark";
    Real elmt_ncg(unit = "") "ncg";
    Real elmt_J(unit = "") "J";
    Real elmt_E(unit = "") "E";
    Real elmt_F(unit = "") "F";
    Real elmt_fCa(unit = "") "fCa";
    Real elmt_eT(unit = "") "eT";
    Real elmt_kP1_rev(unit = "") "kP1_rev";
    Real elmt_kRK2(unit = "") "kRK2";
    Real elmt_kG3(unit = "") "kG3";
    Real elmt_kG2(unit = "") "kG2";
    Real elmt_omega_G(unit = "") "omega_G";
    Real elmt_Vcyto(unit = "") "Vcyto";
    Real elmt_betadark(unit = "") "betadark";
    Real elmt_premag(unit = "") "premag";
    Real elmt_otherstimulus(unit = "") "otherstimulus";
    Real elmt_kG7(unit = "") "kG7";
    Real elmt_kG6(unit = "") "kG6";
    Real elmt_kG4_GDP(unit = "") "kG4_GDP";
    Real elmt_kG1_3(unit = "") "kG1_3";
    Real elmt_kG1_4(unit = "") "kG1_4";
    Real elmt_kG1_5(unit = "") "kG1_5";
    Real elmt_kG1_6(unit = "") "kG1_6";
    Real elmt_kG1_0(unit = "") "kG1_0";
    Real elmt_kP4(unit = "") "kP4";
    Real elmt_kP3(unit = "") "kP3";
    Real elmt_kG1_1(unit = "") "kG1_1";
    Real elmt_kP2(unit = "") "kP2";
    Real elmt_kG1_2(unit = "") "kG1_2";
    Real elmt_kP1(unit = "") "kP1";
    Real elmt_m2(unit = "") "m2";
    Real elmt_m1(unit = "") "m1";
    Real elmt_kGshutoff(unit = "") "kGshutoff";
    Real elmt_kA1_6(unit = "") "kA1_6";
    Real elmt_kA1_5(unit = "") "kA1_5";
    Real elmt_flash0Dur(unit = "") "flash0Dur";
    Real elmt_betasub(unit = "") "betasub";
    Real elmt_Ca2_frac(unit = "") "Ca2_frac";
    Real elmt_cGMPdark(unit = "") "cGMPdark";


    initial equation
        elmt_kRK1_0 = 0.1724;
        elmt_kRrecyc = 7.0E-4;
        elmt_omega = 2.5;
        elmt_kA5 = 0.424;
        elmt_kA4 = 2.9965E-7;
        elmt_kA3 = 1.1651;
        elmt_kA2 = 0.026;
        elmt_Kc1 = 0.171;
        elmt_kPDEshutoff = 0.1;
        elmt_Kc2 = 0.059;
        elmt_ArrTot = 7074600.0;
        elmt_flashDur = 0.001;
        elmt_kRK3_ATP = 4000.0;
        elmt_kRGS1 = 4.8182E-5;
        elmt_flashDel = 0.0;
        elmt_kRGS2 = 98.0;
        elmt_k1 = 9.37059;
        elmt_Ca2dark = 0.25;
        elmt_m_Arr = 9.5475E-6;
        elmt_k2 = 46.412;
        elmt_Ca2_0 = 0.023;
        elmt_kOps = 6.1172E-13;
        elmt_flashMag = 0.0;
        elmt_ktherm = 0.0238;
        elmt_flash0Mag = 0.0;
        elmt_RGStot = 100000.0;
        elmt_kArr = 9.9147E-6;
        elmt_kGrecyc = 2.0;
        elmt_kG5_GTP = 3500.0;
        elmt_alfamax = 60.0;
        elmt_gammaCa = 981.3558;
        elmt_flashBG = 0.0;
        elmt_Rtot = 1.0E8;
        elmt_kRK4 = 250.0;
        elmt_kRec1 = 0.011;
        elmt_kRec4 = 0.610084;
        elmt_PDEtot = 2000000.0;
        elmt_kRec2 = 0.05;
        elmt_kRec3 = 4.1081E-4;
        elmt_Gtot = 1.0E7;
        elmt_Jdark = 14.87;
        elmt_ncg = 3.8;
        elmt_F = 96485.34;
        elmt_fCa = 0.12;
        elmt_eT = 400.0;
        elmt_kP1_rev = 0.0;
        elmt_kRK2 = 250.0;
        elmt_kG3 = 8500.0;
        elmt_kG2 = 2200.0;
        elmt_omega_G = 0.6;
        elmt_Vcyto = 0.03916;
        elmt_betadark = 3.19;
        elmt_otherstimulus = 0.0;
        elmt_kG7 = 200.0;
        elmt_kG6 = 8500.0;
        elmt_kG4_GDP = 400.0;
        elmt_kG1_0 = 0.001;
        elmt_kP4 = 21.088;
        elmt_kP3 = 1.4983E-9;
        elmt_kP2 = 940.7;
        elmt_kP1 = 0.05497;
        elmt_m2 = 1.5;
        elmt_m1 = 3.0;
        elmt_kGshutoff = 0.05;
        elmt_flash0Dur = 0.001;
        elmt_betasub = 0.0021826;
        elmt_cGMPdark = 6.4944;


    equation
        der(elmt_kRK1_0) = 0;
        der(elmt_kRrecyc) = 0;
        der(elmt_omega) = 0;
        der(elmt_kA5) = 0;
        der(elmt_kA4) = 0;
        der(elmt_kA3) = 0;
        der(elmt_kA2) = 0;
        der(elmt_Kc1) = 0;
        der(elmt_kPDEshutoff) = 0;
        der(elmt_Kc2) = 0;
        der(elmt_ArrTot) = 0;
        der(elmt_flashDur) = 0;
        elmt_kRK1_5 = (elmt_kRK1_0 * exp(((- elmt_omega) * 5.0)));
        elmt_kRK1_6 = 0.0;
        der(elmt_kRK3_ATP) = 0;
        der(elmt_kRGS1) = 0;
        elmt_kRK1_3 = (elmt_kRK1_0 * exp(((- elmt_omega) * 3.0)));
        elmt_kRK1_4 = (elmt_kRK1_0 * exp(((- elmt_omega) * 4.0)));
        elmt_kRK1_1 = (elmt_kRK1_0 * exp((- elmt_omega)));
        der(elmt_flashDel) = 0;
        der(elmt_kRGS2) = 0;
        elmt_kRK1_2 = (elmt_kRK1_0 * exp(((- elmt_omega) * 2.0)));
        der(elmt_k1) = 0;
        elmt_kG2ops = (elmt_kG2 * 3.0);
        der(elmt_Ca2dark) = 0;
        elmt_predur = elmt_flash0Dur;
        der(elmt_m_Arr) = 0;
        der(elmt_k2) = 0;
        der(elmt_Ca2_0) = 0;
        der(elmt_kOps) = 0;
        elmt_stimulus = (elmt_background + elmt_preflash + elmt_testflash + elmt_otherstimulus);
        der(elmt_flashMag) = 0;
        der(elmt_ktherm) = 0;
        elmt_dur = elmt_flashDur;
        der(elmt_flash0Mag) = 0;
        elmt_deltaJ = (elmt_Jdark - elmt_J);
        elmt_del = elmt_flashDel;
        elmt_preflash = (if (time <= elmt_predur) then elmt_premag else 0.0);
        der(elmt_RGStot) = 0;
        der(elmt_kArr) = 0;
        der(elmt_kGrecyc) = 0;
        der(elmt_kG5_GTP) = 0;
        der(elmt_alfamax) = 0;
        der(elmt_gammaCa) = 0;
        der(elmt_flashBG) = 0;
        elmt_testflash = (if ((time >= elmt_del) and (time <= (elmt_del + elmt_dur))) then elmt_mag else 0.0);
        elmt_kGpre2 = (elmt_kG2 * 315.0);
        elmt_kGpre1 = (elmt_kG1_0 * 1.6);
        der(elmt_Rtot) = 0;
        der(elmt_kRK4) = 0;
        elmt_kG1ops = (elmt_kG1_0 * 1.9);
        der(elmt_kRec1) = 0;
        der(elmt_kRec4) = 0;
        der(elmt_PDEtot) = 0;
        der(elmt_kRec2) = 0;
        der(elmt_kRec3) = 0;
        elmt_kA1_2 = (elmt_kArr + (1.0 * elmt_m_Arr));
        elmt_kA1_1 = elmt_kArr;
        elmt_kA1_4 = (elmt_kArr + (3.0 * elmt_m_Arr));
        der(elmt_Gtot) = 0;
        elmt_numConcFactor = (1.0 / (602200.0 * elmt_Vcyto));
        elmt_kA1_3 = (elmt_kArr + (2.0 * elmt_m_Arr));
        elmt_background = elmt_flashBG;
        elmt_mag = (elmt_flashMag / elmt_flashDur);
        der(elmt_Jdark) = 0;
        der(elmt_ncg) = 0;
        elmt_J = (((2.0 / (2.0 + elmt_fCa)) * Functions.pow((elmt_cGMP / elmt_cGMPdark), elmt_ncg) * elmt_Jdark) + ((elmt_fCa / (elmt_fCa + 2.0)) * elmt_Ca2_frac * elmt_Jdark));
        elmt_E = (elmt_PDE_a_Ga_GTP + (2.0 * elmt_Ga_GTP_a_PDE_a_Ga_GTP) + elmt_Ga_GTP_PDE_a_Ga_GTP);
        der(elmt_F) = 0;
        der(elmt_fCa) = 0;
        der(elmt_eT) = 0;
        der(elmt_kP1_rev) = 0;
        der(elmt_kRK2) = 0;
        der(elmt_kG3) = 0;
        der(elmt_kG2) = 0;
        der(elmt_omega_G) = 0;
        der(elmt_Vcyto) = 0;
        der(elmt_betadark) = 0;
        elmt_premag = (elmt_flash0Mag / elmt_flash0Dur);
        der(elmt_otherstimulus) = 0;
        der(elmt_kG7) = 0;
        der(elmt_kG6) = 0;
        der(elmt_kG4_GDP) = 0;
        elmt_kG1_3 = (elmt_kG1_0 * exp(((- elmt_omega_G) * 3.0)));
        elmt_kG1_4 = (elmt_kG1_0 * exp(((- elmt_omega_G) * 4.0)));
        elmt_kG1_5 = (elmt_kG1_0 * exp(((- elmt_omega_G) * 5.0)));
        elmt_kG1_6 = (elmt_kG1_0 * exp(((- elmt_omega_G) * 6.0)));
        der(elmt_kG1_0) = 0;
        der(elmt_kP4) = 0;
        der(elmt_kP3) = 0;
        elmt_kG1_1 = (elmt_kG1_0 * exp((- elmt_omega_G)));
        der(elmt_kP2) = 0;
        elmt_kG1_2 = (elmt_kG1_0 * exp(((- elmt_omega_G) * 2.0)));
        der(elmt_kP1) = 0;
        der(elmt_m2) = 0;
        der(elmt_m1) = 0;
        der(elmt_kGshutoff) = 0;
        elmt_kA1_6 = (elmt_kArr + (3.0 * elmt_m_Arr));
        elmt_kA1_5 = (elmt_kArr + (3.0 * elmt_m_Arr));
        der(elmt_flash0Dur) = 0;
        der(elmt_betasub) = 0;
        elmt_Ca2_frac = ((elmt_Ca2_free - elmt_Ca2_0) / (elmt_Ca2dark - elmt_Ca2_0));
        der(elmt_cGMPdark) = 0;

end Parameters;
