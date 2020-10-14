within BIOMD594;
class Parameters

    Real elmt_K45P(unit = "") "K45P";
    Real elmt_KcgP(unit = "") "KcgP";
    Real elmt_RT(unit = "") "RT";
    Real elmt_UbMax(unit = "") "UbMax";
    Real elmt_Ltot(unit = "") "Ltot";
    Real elmt_floc(unit = "") "floc";
    Real elmt_CblFactor(unit = "") "CblFactor";
    Real elmt_kucgM(unit = "") "kucgM";
    Real elmt_kb45(unit = "") "kb45";
    Real elmt_kb68(unit = "") "kb68";
    Real elmt_ku45M(unit = "") "ku45M";
    Real elmt_PYMax(unit = "") "PYMax";
    Real elmt_kkinbase(unit = "") "kkinbase";
    Real elmt_kptp(unit = "") "kptp";
    Real elmt_ku68(unit = "") "ku68";
    Real elmt_ku45(unit = "") "ku45";
    Real elmt_K45(unit = "") "K45";
    Real elmt_kb68P(unit = "") "kb68P";
    Real elmt_kkin68(unit = "") "kkin68";
    Real elmt_kbcg(unit = "") "kbcg";
    Real elmt_CblT(unit = "") "CblT";
    Real elmt_Grb2T(unit = "") "Grb2T";
    Real elmt_ku68M(unit = "") "ku68M";
    Real elmt_kkin(unit = "") "kkin";
    Real elmt_Kcg(unit = "") "Kcg";
    Real elmt_kucg(unit = "") "kucg";
    Real elmt_xT(unit = "") "xT";
    Real elmt_kptp68(unit = "") "kptp68";
    Real elmt_kbcgP(unit = "") "kbcgP";
    Real elmt_nH(unit = "") "nH";
    Real elmt_kb45P(unit = "") "kb45P";
    Real elmt_CblWT(unit = "") "CblWT";


    initial equation
        elmt_RT = 0.833;
        elmt_UbMax = 0.014306;
        elmt_Ltot = 0.0;
        elmt_floc = 20000.0;
        elmt_CblFactor = 1.0;
        elmt_PYMax = 2.279493223;
        elmt_kkinbase = 0.0759155;
        elmt_kptp = 0.016;
        elmt_ku45 = 0.001011;
        elmt_K45 = 0.201361;
        elmt_CblT = 0.01464;
        elmt_Grb2T = 3.32;
        elmt_Kcg = 0.006356;
        elmt_kucg = 0.309271;
        elmt_xT = 4.59181;
        elmt_nH = 1.13;
        elmt_CblWT = 0.01464;


    equation
        elmt_K45P = (elmt_K45 / elmt_floc);
        elmt_KcgP = (elmt_Kcg / elmt_floc);
        der(elmt_RT) = 0;
        der(elmt_UbMax) = 0;
        der(elmt_Ltot) = 0;
        der(elmt_floc) = 0;
        der(elmt_CblFactor) = 0;
        elmt_kucgM = elmt_kucg;
        elmt_kb45 = (elmt_ku45 / elmt_K45);
        elmt_kb68 = elmt_kb45;
        elmt_ku45M = elmt_ku45;
        der(elmt_PYMax) = 0;
        der(elmt_kkinbase) = 0;
        der(elmt_kptp) = 0;
        elmt_ku68 = elmt_ku45;
        der(elmt_ku45) = 0;
        der(elmt_K45) = 0;
        elmt_kb68P = elmt_kb45P;
        elmt_kkin68 = elmt_kkin;
        elmt_kbcg = (elmt_kucg / elmt_Kcg);
        der(elmt_CblT) = 0;
        der(elmt_Grb2T) = 0;
        elmt_ku68M = elmt_ku45M;
        elmt_kkin = (elmt_kkinbase * (Functions.pow(elmt_Ltot, elmt_nH) / (Functions.pow(elmt_Ltot, elmt_nH) + Functions.pow(elmt_xT, elmt_nH))));
        der(elmt_Kcg) = 0;
        der(elmt_kucg) = 0;
        der(elmt_xT) = 0;
        elmt_kptp68 = elmt_kptp;
        elmt_kbcgP = (elmt_kucgM / elmt_KcgP);
        der(elmt_nH) = 0;
        elmt_kb45P = (elmt_ku45M / elmt_K45P);
        der(elmt_CblWT) = 0;

end Parameters;
