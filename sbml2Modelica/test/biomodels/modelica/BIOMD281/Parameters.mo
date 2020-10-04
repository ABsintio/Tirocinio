within BIOMD281;
class Parameters

    input Real elmt_ETG;
    input Real elmt_TP2;
    input Real elmt_XSP;
    input Real elmt_TP1;
    input Real elmt_GAP;
    input Real elmt_MOX;
    input Real elmt_DHA;
    input Real elmt_ENG;
    input Real elmt_DPH;
    input Real elmt_GPP;
    input Real elmt_XI;
    input Real elmt_DPN;
    input Real elmt_GLU;
    input Real elmt_PPP;
    input Real elmt_OXY;
    input Real elmt_ADP;
    input Real elmt_ETZ;
    input Real elmt_GLP;
    input Real elmt_ENZ;
    input Real elmt_DBP;
    input Real elmt_PUE;
    input Real elmt_MOB;
    input Real elmt_DGA;
    input Real elmt_DIH;
    input Real elmt_MOD;
    input Real elmt_XSI;
    input Real elmt_LAC;
    input Real elmt_PID;
    input Real elmt_PYR;
    input Real elmt_DIN;
    input Real elmt_PGA;
    input Real elmt_AGP;

    Real elmt_XSI_0(unit = "") "relative XSI";
    Real elmt_ENZ_0(unit = "") "relative ENZ";
    Real elmt_DPN_0(unit = "") "relative DPN";
    Real elmt_ETZ_0(unit = "") "relative ETZ";
    Real elmt_PYR_0(unit = "") "relative PYR";
    Real elmt_XSP_0(unit = "") "relative XSP";
    Real elmt_ADP_0(unit = "") "relative ADP";
    Real elmt_PUE_0(unit = "") "relative PUE";
    Real elmt_DBP_0(unit = "") "relative DBP";
    Real elmt_TP1_0(unit = "") "relative TP1";
    Real elmt_GAP_0(unit = "") "relative GAP";
    Real elmt_DGA_0(unit = "") "relative DGA";
    Real elmt_PID_0(unit = "") "relative PID";
    Real elmt_PGA_0(unit = "") "relative PGA";
    Real elmt_TP2_0(unit = "") "relative TP2";
    Real elmt_LAC_0(unit = "") "relative LAC";
    Real elmt_DIN_0(unit = "") "relative DIN";
    Real elmt_ETG_0(unit = "") "relative ETG";
    Real elmt_GLU_0(unit = "") "relative GLU";
    Real elmt_PPP_0(unit = "") "relative PPP";
    Real elmt_ENG_0(unit = "") "relative ENG";
    Real elmt_XI_0(unit = "") "relative XI";
    Real elmt_MOB_0(unit = "") "relative MOB";
    Real elmt_DIH_0(unit = "") "relative DIH";
    Real elmt_MOD_0(unit = "") "relative MOD";
    Real elmt_GPP_0(unit = "") "relative GPP";
    Real elmt_DPH_0(unit = "") "relative DPH";
    Real elmt_AGP_0(unit = "") "relative AGP";
    Real elmt_DHA_0(unit = "") "relative DHA";
    Real elmt_OXY_0(unit = "") "relative OXY";
    Real elmt_MOX_0(unit = "") "relative MOX";
    Real elmt_GLP_0(unit = "") "relative GLP";


    initial equation


    equation
        elmt_XSI_0 = (elmt_XSI / 6.0E-5);
        elmt_ENZ_0 = (elmt_ENZ / 1.02E-5);
        elmt_DPN_0 = (elmt_DPN / 2.5E-4);
        elmt_ETZ_0 = (elmt_ETZ / 1.0E-5);
        elmt_PYR_0 = (elmt_PYR / 0.002);
        elmt_XSP_0 = (elmt_XSP / 6.0E-5);
        elmt_ADP_0 = (elmt_ADP / 0.001);
        elmt_PUE_0 = (elmt_PUE / 3.06E-6);
        elmt_DBP_0 = (elmt_DBP / 0.025);
        elmt_TP1_0 = (elmt_TP1 / 0.0015);
        elmt_GAP_0 = (elmt_GAP / 2.0E-4);
        elmt_DGA_0 = (elmt_DGA / 2.0E-4);
        elmt_PID_0 = (elmt_PID / 0.005);
        elmt_PGA_0 = (elmt_PGA / 2.0E-4);
        elmt_TP2_0 = (elmt_TP2 / 0.0015);
        elmt_LAC_0 = (elmt_LAC / 0.0012);
        elmt_DIN_0 = (elmt_DIN / 7.0E-5);
        elmt_ETG_0 = (elmt_ETG / 1.0E-5);
        elmt_GLU_0 = (elmt_GLU / 0.003);
        elmt_PPP_0 = (elmt_PPP / 3.06);
        elmt_ENG_0 = (elmt_ENG / 1.02E-5);
        elmt_XI_0 = (elmt_XI / 6.0E-5);
        elmt_MOB_0 = (elmt_MOB / 1.0E-4);
        elmt_DIH_0 = (elmt_DIH / 7.0E-5);
        elmt_MOD_0 = (elmt_MOD / 5.0E-5);
        elmt_GPP_0 = (elmt_GPP / 0.001);
        elmt_DPH_0 = (elmt_DPH / 2.0E-4);
        elmt_AGP_0 = (elmt_AGP / 0.0013);
        elmt_DHA_0 = (elmt_DHA / 0.0013);
        elmt_OXY_0 = (elmt_OXY / 5.0E-4);
        elmt_MOX_0 = (elmt_MOX / 5.0E-5);
        elmt_GLP_0 = (elmt_GLP / 0.001);

end Parameters;
