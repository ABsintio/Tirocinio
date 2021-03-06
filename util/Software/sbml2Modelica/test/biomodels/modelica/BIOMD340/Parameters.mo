within BIOMD340;
class Parameters

    input Boolean elmt_heparin_administration;
    input Real assign_elmt_heparin_infusion;


    Real elmt_d_Pg(unit = "") "d_Pg";
    Real elmt_d_VK2(unit = "") "d_VK2";
    Real elmt_d_VIII(unit = "") "d_VIII";
    Real elmt_d_Pk(unit = "") "d_Pk";
    Real elmt_VIII0(unit = "") "VIII(0)";
    Real elmt_d_X(unit = "") "d_X";
    Real elmt_d_II(unit = "") "d_II";
    Real elmt_d_V(unit = "") "d_V";
    Real elmt_vitaminK_k21_Vc(unit = "") "vitaminK_k21/Vc";
    Real elmt_XII0(unit = "") "XII(0)";
    Real elmt_IC50(unit = "") "IC50";
    Real elmt_vitaminK_Vc(unit = "") "vitaminK_Vc";
    Real elmt_d_IX(unit = "") "d_IX";
    Real elmt_VKO0(unit = "") "VKO(0)";
    Real elmt_d_Tmod(unit = "") "d_Tmod";
    Real elmt_I_max(unit = "") "I_max";
    Real elmt_R1(unit = "") "R1";
    Real elmt_R2(unit = "") "R2";
    Real elmt_warfarin_CL(unit = "") "warfarin_CL";
    Real elmt_XI0(unit = "") "XI(0)";
    Real elmt_Tmod0(unit = "") "Tmod(0)";
    Real elmt_XIII0(unit = "") "XIII(0)";
    Real elmt_d_PS(unit = "") "d_PS";
    Real elmt_heparin_bolus(unit = "") "heparin_bolus";
    Real elmt_warfarin_daily_dose(unit = "") "warfarin_daily_dose";
    Real elmt_IX0(unit = "") "IX(0)";
    Real elmt_Fg0(unit = "") "Fg(0)";
    Real elmt_d_VKO(unit = "") "d_VKO";
    Real elmt_V0(unit = "") "V(0)";
    Real elmt_Pk0(unit = "") "Pk(0)";
    Real elmt_warfarin_Vd(unit = "") "warfarin_Vd";
    Real elmt_VKH20(unit = "") "VKH2(0)";
    Real elmt_d_XIII(unit = "") "d_XIII";
    Real elmt_d_Fg(unit = "") "d_Fg";
    Real elmt_Pg0(unit = "") "Pg(0)";
    Real elmt_VII0(unit = "") "VII(0)";
    Real elmt_II0(unit = "") "II(0)";
    Real elmt_PS0(unit = "") "PS(0)";
    Real elmt_warfarin_ka(unit = "") "warfarin_ka";
    Real elmt_d_XI(unit = "") "d_XI";
    Real elmt_TFPI0(unit = "") "TFPI(0)";
    Real elmt_d_PC(unit = "") "d_PC";
    Real elmt_warfarin_ke(unit = "") "warfarin_ke";
    Real elmt_d_VK(unit = "") "d_VK";
    Real elmt_heparin_infusion_duration_hr(unit = "") "heparin_infusion_duration [hr]";
    Real elmt_heparin_ke(unit = "") "heparin_ke";
    Real elmt_PC0(unit = "") "PC(0)";
    Real elmt_VK0(unit = "") "VK(0)";
    Real elmt_d_TFPI(unit = "") "d_TFPI";
    Real elmt_d_VKH2(unit = "") "d_VKH2";
    Real elmt_c46(unit = "") "c46";
    Real elmt_c45(unit = "") "c45";
    Real elmt_c44(unit = "") "c44";
    Real elmt_vitaminK_k12(unit = "") "vitaminK_k12";
    Real elmt_d_XII(unit = "") "d_XII";
    Real elmt_heparin_infusion(unit = "") "heparin_infusion";
    Real elmt_X0(unit = "") "X(0)";
    Real elmt_d_VII(unit = "") "d_VII";


    initial equation
        elmt_d_Pg = 0.05;
        elmt_d_VK2 = 0.0228;
        elmt_d_VIII = 0.058;
        elmt_d_Pk = 0.05;
        elmt_VIII0 = 0.7;
        elmt_d_X = 0.018;
        elmt_d_II = 0.01;
        elmt_d_V = 0.043;
        elmt_vitaminK_k21_Vc = (0.0122 / elmt_vitaminK_Vc);
        elmt_XII0 = 375.0;
        elmt_IC50 = 0.34;
        elmt_vitaminK_Vc = 24.0;
        elmt_d_IX = 0.029;
        elmt_VKO0 = 0.1;
        elmt_d_Tmod = 0.05;
        elmt_I_max = 1.0;
        elmt_R1 = 0.140845070422535;
        elmt_R2 = 1.0;
        elmt_warfarin_CL = 0.2;
        elmt_XI0 = 30.6;
        elmt_Tmod0 = 50.0;
        elmt_XIII0 = 70.3;
        elmt_d_PS = 0.0165;
        elmt_heparin_bolus = 0.0;
        elmt_warfarin_daily_dose = 4.0;
        elmt_IX0 = 89.6;
        elmt_Fg0 = 8945.5;
        elmt_d_VKO = ((elmt_d_VK2 * elmt_VK0) / elmt_VKO0);
        elmt_V0 = 26.7;
        elmt_Pk0 = 450.0;
        elmt_warfarin_Vd = 10.0;
        elmt_VKH20 = 0.1;
        elmt_d_XIII = 0.0036;
        elmt_d_Fg = 0.032;
        elmt_Pg0 = 2154.3;
        elmt_VII0 = 10.0;
        elmt_II0 = 1394.4;
        elmt_PS0 = 300.0;
        elmt_warfarin_ka = 1.0;
        elmt_d_XI = 0.1;
        elmt_TFPI0 = 2.5;
        elmt_d_PC = 0.05;
        elmt_warfarin_ke = (elmt_warfarin_CL / elmt_warfarin_Vd);
        elmt_d_VK = 0.2052;
        elmt_heparin_infusion_duration_hr = 24.0;
        elmt_heparin_ke = 0.693;
        elmt_PC0 = 60.0;
        elmt_VK0 = 1.0;
        elmt_d_TFPI = 20.0;
        elmt_d_VKH2 = ((elmt_d_VK2 * elmt_VK0) / elmt_VKH20);
        elmt_c46 = (elmt_c45 * elmt_R2);
        elmt_c45 = 0.85;
        elmt_c44 = (elmt_c45 * elmt_R1);
        elmt_vitaminK_k12 = 0.0587;
        elmt_d_XII = 0.012;
        elmt_heparin_infusion = 0.0;
        elmt_X0 = 174.3;
        elmt_d_VII = 0.12;


    equation
        der(elmt_d_Pg) = 0;
        der(elmt_d_VK2) = 0;
        der(elmt_d_VIII) = 0;
        der(elmt_d_Pk) = 0;
        der(elmt_VIII0) = 0;
        der(elmt_d_X) = 0;
        der(elmt_d_II) = 0;
        der(elmt_d_V) = 0;
        der(elmt_vitaminK_k21_Vc) = 0;
        der(elmt_XII0) = 0;
        der(elmt_IC50) = 0;
        der(elmt_vitaminK_Vc) = 0;
        der(elmt_d_IX) = 0;
        der(elmt_VKO0) = 0;
        der(elmt_d_Tmod) = 0;
        der(elmt_I_max) = 0;
        der(elmt_R1) = 0;
        der(elmt_R2) = 0;
        der(elmt_warfarin_CL) = 0;
        der(elmt_XI0) = 0;
        der(elmt_Tmod0) = 0;
        der(elmt_XIII0) = 0;
        der(elmt_d_PS) = 0;
        der(elmt_heparin_bolus) = 0;
        der(elmt_warfarin_daily_dose) = 0;
        der(elmt_IX0) = 0;
        der(elmt_Fg0) = 0;
        der(elmt_d_VKO) = 0;
        der(elmt_V0) = 0;
        der(elmt_Pk0) = 0;
        der(elmt_warfarin_Vd) = 0;
        der(elmt_VKH20) = 0;
        der(elmt_d_XIII) = 0;
        der(elmt_d_Fg) = 0;
        der(elmt_Pg0) = 0;
        der(elmt_VII0) = 0;
        der(elmt_II0) = 0;
        der(elmt_PS0) = 0;
        der(elmt_warfarin_ka) = 0;
        der(elmt_d_XI) = 0;
        der(elmt_TFPI0) = 0;
        der(elmt_d_PC) = 0;
        der(elmt_warfarin_ke) = 0;
        der(elmt_d_VK) = 0;
        der(elmt_heparin_infusion_duration_hr) = 0;
        der(elmt_heparin_ke) = 0;
        der(elmt_PC0) = 0;
        der(elmt_VK0) = 0;
        der(elmt_d_TFPI) = 0;
        der(elmt_d_VKH2) = 0;
        der(elmt_c46) = 0;
        der(elmt_c45) = 0;
        der(elmt_c44) = 0;
        der(elmt_vitaminK_k12) = 0;
        der(elmt_d_XII) = 0;
        der(elmt_heparin_infusion) = 0.0;
        der(elmt_X0) = 0;
        der(elmt_d_VII) = 0;

        when elmt_heparin_administration then
            reinit(elmt_heparin_infusion, assign_elmt_heparin_infusion);
        end when;
end Parameters;
