
model BIOMD213 "Nijhout2004_Folate_Cycle"

    function pow
        input  Real x;
        input  Real power;
        output Real y;
        algorithm
            y := x^power;
    end pow;

    parameter Real NE_k1 = 0.15;
    parameter Real NE_k2 = 12.0;
    parameter Real MS_Vmax = 500.0;
    parameter Real MS_Km_5mTHF = 25.0;
    parameter Real MS_Km_Hcy = 0.1;
    parameter Real MS_Kd = 1.0;
    parameter Real MTHFR_Vmax = 6000.0;
    parameter Real MTHFR_Km_NADPH = 16.0;
    parameter Real MTHFR_Km_5_10_CH2THF = 50.0;
    parameter Real FTD_Vmax = 14000.0;
    parameter Real FTD_Km_10fTHF = 20.0;
    parameter Real FTS_Vmax = 2000.0;
    parameter Real FTS_Km_HCOOH = 43.0;
    parameter Real FTS_Km_THF = 3.0;
    parameter Real AICART_Vmax = 45000.0;
    parameter Real AICART_Km_AICAR = 100.0;
    parameter Real AICART_Km_10fTHF = 5.9;
    parameter Real PGT_Vmax = 16200.0;
    parameter Real PGT_Km_GAR = 520.0;
    parameter Real PGT_Km_10fTHF = 4.9;
    parameter Real TS_Vmax = 50.0;
    parameter Real TS_Km_dUMP = 6.3;
    parameter Real TS_Km_5_10_CH2THF = 14.0;
    parameter Real DHFR_Vmax = 50.0;
    parameter Real DHFR_Km_NADPH = 4.0;
    parameter Real DHFR_Km_DHF = 0.5;
    parameter Real MTCH_VmaxF = 800000.0;
    parameter Real MTCH_Km_5_10_CHTHF = 250.0;
    parameter Real MTCH_VmaxR = 20000.0;
    parameter Real MTCH_Km_10fTHF = 100.0;
    parameter Real SHMT_VmaxF = 40000.0;
    parameter Real SHMT_Km_Ser = 600.0;
    parameter Real SHMT_Km_THF = 50.0;
    parameter Real SHMT_VmaxR = 25000.0;
    parameter Real MTD_VmaxF = 200000.0;
    parameter Real MTD_Km_5_10_CH2THF = 2.0;
    parameter Real MTD_VmaxR = 594000.0;
    parameter Real MTD_Km_5_10_CHTHF = 10.0;
    parameter Real compartment = 1.0;



    Real _5mTHF;
    Real THF;
    Real DHF;
    Real _5_10_CH2THF;
    Real _5_10_CHTHF;
    Real _10fTHF;
    Real Ser;
    Real Gly;
    Real dUMP;
    Real GAR;
    Real AICAR;
    Real HCOOH;
    Real NADPH;
    Real Hcy;

initial equation
    _5mTHF = 5.16;
    THF = 6.73;
    DHF = 0.027;
    _5_10_CH2THF = 0.94;
    _5_10_CHTHF = 1.153;
    _10fTHF = 5.99;
    Ser = 468.0;
    Gly = 1850.0;
    dUMP = 20.0;
    GAR = 10.0;
    AICAR = 2.1;
    HCOOH = 900.0;
    NADPH = 50.0;
    Hcy = 1.0;

equation

    der(_5mTHF) = (MTHFR_Vmax * (NADPH / (MTHFR_Km_NADPH + NADPH)) * (_5_10_CH2THF / (MTHFR_Km_5_10_CH2THF + _5_10_CH2THF))) - (MS_Vmax * (_5mTHF / MS_Km_5mTHF) * (Hcy / MS_Km_Hcy) / (MS_Kd / MS_Km_5mTHF + _5mTHF / MS_Km_5mTHF + Hcy / MS_Km_Hcy + _5mTHF * Hcy / (MS_Km_5mTHF * MS_Km_Hcy)));
    der(THF) = (MS_Vmax * (_5mTHF / MS_Km_5mTHF) * (Hcy / MS_Km_Hcy) / (MS_Kd / MS_Km_5mTHF + _5mTHF / MS_Km_5mTHF + Hcy / MS_Km_Hcy + _5mTHF * Hcy / (MS_Km_5mTHF * MS_Km_Hcy))) + (FTD_Vmax * (_10fTHF / (FTD_Km_10fTHF + _10fTHF))) + (AICART_Vmax * (AICAR / (AICART_Km_AICAR + AICAR)) * (_10fTHF / (AICART_Km_10fTHF + _10fTHF))) + (PGT_Vmax * (GAR / (PGT_Km_GAR + GAR)) * (_10fTHF / (PGT_Km_10fTHF + _10fTHF))) + (DHFR_Vmax * (NADPH / (DHFR_Km_NADPH + NADPH)) * (DHF / (DHFR_Km_DHF + DHF))) - (HCOOH * NE_k1 * THF - NE_k2 * _5_10_CH2THF) - (FTS_Vmax * (HCOOH / (FTS_Km_HCOOH + HCOOH)) * (THF / (FTS_Km_THF + THF))) - (SHMT_VmaxF * (Ser / (SHMT_Km_Ser + Ser)) * (THF / (SHMT_Km_THF + THF)) - SHMT_VmaxR * (Gly / (SHMT_Km_Ser + Gly)) * (_5_10_CH2THF / (SHMT_Km_THF + _5_10_CH2THF)));
    der(DHF) = (TS_Vmax * (dUMP / (TS_Km_dUMP + dUMP)) * (_5_10_CH2THF / (TS_Km_5_10_CH2THF + _5_10_CH2THF))) - (DHFR_Vmax * (NADPH / (DHFR_Km_NADPH + NADPH)) * (DHF / (DHFR_Km_DHF + DHF)));
    der(_5_10_CH2THF) = (HCOOH * NE_k1 * THF - NE_k2 * _5_10_CH2THF) + (SHMT_VmaxF * (Ser / (SHMT_Km_Ser + Ser)) * (THF / (SHMT_Km_THF + THF)) - SHMT_VmaxR * (Gly / (SHMT_Km_Ser + Gly)) * (_5_10_CH2THF / (SHMT_Km_THF + _5_10_CH2THF))) - (MTHFR_Vmax * (NADPH / (MTHFR_Km_NADPH + NADPH)) * (_5_10_CH2THF / (MTHFR_Km_5_10_CH2THF + _5_10_CH2THF))) - (TS_Vmax * (dUMP / (TS_Km_dUMP + dUMP)) * (_5_10_CH2THF / (TS_Km_5_10_CH2THF + _5_10_CH2THF))) - (MTD_VmaxF * (_5_10_CH2THF / (MTD_Km_5_10_CH2THF + _5_10_CH2THF)) - MTD_VmaxR * (_5_10_CHTHF / (MTD_Km_5_10_CHTHF + _5_10_CHTHF)));
    der(_5_10_CHTHF) = (MTD_VmaxF * (_5_10_CH2THF / (MTD_Km_5_10_CH2THF + _5_10_CH2THF)) - MTD_VmaxR * (_5_10_CHTHF / (MTD_Km_5_10_CHTHF + _5_10_CHTHF))) - (MTCH_VmaxF * (_5_10_CHTHF / (MTCH_Km_5_10_CHTHF + _5_10_CHTHF)) - MTCH_VmaxR * (_10fTHF / (MTCH_Km_10fTHF + _10fTHF)));
    der(_10fTHF) = (FTS_Vmax * (HCOOH / (FTS_Km_HCOOH + HCOOH)) * (THF / (FTS_Km_THF + THF))) + (MTCH_VmaxF * (_5_10_CHTHF / (MTCH_Km_5_10_CHTHF + _5_10_CHTHF)) - MTCH_VmaxR * (_10fTHF / (MTCH_Km_10fTHF + _10fTHF))) - (FTD_Vmax * (_10fTHF / (FTD_Km_10fTHF + _10fTHF))) - (AICART_Vmax * (AICAR / (AICART_Km_AICAR + AICAR)) * (_10fTHF / (AICART_Km_10fTHF + _10fTHF))) - (PGT_Vmax * (GAR / (PGT_Km_GAR + GAR)) * (_10fTHF / (PGT_Km_10fTHF + _10fTHF)));
    der(Ser) = 0.0;
    der(Gly) = 0.0;
    der(dUMP) = 0.0;
    der(GAR) = 0.0;
    der(AICAR) = 0.0;
    der(HCOOH) = 0.0;
    der(NADPH) = 0.0;
    der(Hcy) = 0.0;




end BIOMD213;
