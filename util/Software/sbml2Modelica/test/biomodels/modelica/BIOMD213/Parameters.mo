within BIOMD213;
class Parameters

    Real elmt_TS_Km_5_10_CH2THF(unit = "") "";
    Real elmt_SHMT_Km_Ser(unit = "") "";
    Real elmt_DHFR_Km_NADPH(unit = "") "";
    Real elmt_PGT_Vmax(unit = "") "";
    Real elmt_FTS_Km_HCOOH(unit = "") "";
    Real elmt_MS_Km_5mTHF(unit = "") "";
    Real elmt_FTS_Vmax(unit = "") "";
    Real elmt_FTS_Km_THF(unit = "") "";
    Real elmt_MS_Kd(unit = "") "";
    Real elmt_DHFR_Km_DHF(unit = "") "";
    Real elmt_MTD_Km_5_10_CH2THF(unit = "") "";
    Real elmt_FTD_Km_10fTHF(unit = "") "";
    Real elmt_MTCH_VmaxF(unit = "") "";
    Real elmt_AICART_Vmax(unit = "") "";
    Real elmt_MTCH_Km_5_10_CHTHF(unit = "") "";
    Real elmt_TS_Vmax(unit = "") "";
    Real elmt_MTD_Km_5_10_CHTHF(unit = "") "";
    Real elmt_MTD_VmaxR(unit = "") "";
    Real elmt_AICART_Km_AICAR(unit = "") "";
    Real elmt_PGT_Km_10fTHF(unit = "") "";
    Real elmt_MTCH_Km_10fTHF(unit = "") "";
    Real elmt_NE_k2(unit = "") "";
    Real elmt_MTCH_VmaxR(unit = "") "";
    Real elmt_NE_k1(unit = "") "";
    Real elmt_MTHFR_Km_NADPH(unit = "") "";
    Real elmt_SHMT_VmaxF(unit = "") "";
    Real elmt_MS_Km_Hcy(unit = "") "";
    Real elmt_FTD_Vmax(unit = "") "";
    Real elmt_SHMT_Km_THF(unit = "") "";
    Real elmt_MTD_VmaxF(unit = "") "";
    Real elmt_MTHFR_Km_5_10_CH2THF(unit = "") "";
    Real elmt_MS_Vmax(unit = "") "";
    Real elmt_AICART_Km_10fTHF(unit = "") "";
    Real elmt_SHMT_VmaxR(unit = "") "";
    Real elmt_TS_Km_dUMP(unit = "") "";
    Real elmt_MTHFR_Vmax(unit = "") "";
    Real elmt_PGT_Km_GAR(unit = "") "";
    Real elmt_DHFR_Vmax(unit = "") "";


    initial equation
        elmt_TS_Km_5_10_CH2THF = 14.0;
        elmt_SHMT_Km_Ser = 600.0;
        elmt_DHFR_Km_NADPH = 4.0;
        elmt_PGT_Vmax = 16200.0;
        elmt_FTS_Km_HCOOH = 43.0;
        elmt_MS_Km_5mTHF = 25.0;
        elmt_FTS_Vmax = 2000.0;
        elmt_FTS_Km_THF = 3.0;
        elmt_MS_Kd = 1.0;
        elmt_DHFR_Km_DHF = 0.5;
        elmt_MTD_Km_5_10_CH2THF = 2.0;
        elmt_FTD_Km_10fTHF = 20.0;
        elmt_MTCH_VmaxF = 800000.0;
        elmt_AICART_Vmax = 45000.0;
        elmt_MTCH_Km_5_10_CHTHF = 250.0;
        elmt_TS_Vmax = 50.0;
        elmt_MTD_Km_5_10_CHTHF = 10.0;
        elmt_MTD_VmaxR = 594000.0;
        elmt_AICART_Km_AICAR = 100.0;
        elmt_PGT_Km_10fTHF = 4.9;
        elmt_MTCH_Km_10fTHF = 100.0;
        elmt_NE_k2 = 12.0;
        elmt_MTCH_VmaxR = 20000.0;
        elmt_NE_k1 = 0.15;
        elmt_MTHFR_Km_NADPH = 16.0;
        elmt_SHMT_VmaxF = 40000.0;
        elmt_MS_Km_Hcy = 0.1;
        elmt_FTD_Vmax = 14000.0;
        elmt_SHMT_Km_THF = 50.0;
        elmt_MTD_VmaxF = 200000.0;
        elmt_MTHFR_Km_5_10_CH2THF = 50.0;
        elmt_MS_Vmax = 500.0;
        elmt_AICART_Km_10fTHF = 5.9;
        elmt_SHMT_VmaxR = 25000.0;
        elmt_TS_Km_dUMP = 6.3;
        elmt_MTHFR_Vmax = 6000.0;
        elmt_PGT_Km_GAR = 520.0;
        elmt_DHFR_Vmax = 50.0;


    equation
        der(elmt_TS_Km_5_10_CH2THF) = 0;
        der(elmt_SHMT_Km_Ser) = 0;
        der(elmt_DHFR_Km_NADPH) = 0;
        der(elmt_PGT_Vmax) = 0;
        der(elmt_FTS_Km_HCOOH) = 0;
        der(elmt_MS_Km_5mTHF) = 0;
        der(elmt_FTS_Vmax) = 0;
        der(elmt_FTS_Km_THF) = 0;
        der(elmt_MS_Kd) = 0;
        der(elmt_DHFR_Km_DHF) = 0;
        der(elmt_MTD_Km_5_10_CH2THF) = 0;
        der(elmt_FTD_Km_10fTHF) = 0;
        der(elmt_MTCH_VmaxF) = 0;
        der(elmt_AICART_Vmax) = 0;
        der(elmt_MTCH_Km_5_10_CHTHF) = 0;
        der(elmt_TS_Vmax) = 0;
        der(elmt_MTD_Km_5_10_CHTHF) = 0;
        der(elmt_MTD_VmaxR) = 0;
        der(elmt_AICART_Km_AICAR) = 0;
        der(elmt_PGT_Km_10fTHF) = 0;
        der(elmt_MTCH_Km_10fTHF) = 0;
        der(elmt_NE_k2) = 0;
        der(elmt_MTCH_VmaxR) = 0;
        der(elmt_NE_k1) = 0;
        der(elmt_MTHFR_Km_NADPH) = 0;
        der(elmt_SHMT_VmaxF) = 0;
        der(elmt_MS_Km_Hcy) = 0;
        der(elmt_FTD_Vmax) = 0;
        der(elmt_SHMT_Km_THF) = 0;
        der(elmt_MTD_VmaxF) = 0;
        der(elmt_MTHFR_Km_5_10_CH2THF) = 0;
        der(elmt_MS_Vmax) = 0;
        der(elmt_AICART_Km_10fTHF) = 0;
        der(elmt_SHMT_VmaxR) = 0;
        der(elmt_TS_Km_dUMP) = 0;
        der(elmt_MTHFR_Vmax) = 0;
        der(elmt_PGT_Km_GAR) = 0;
        der(elmt_DHFR_Vmax) = 0;

end Parameters;
