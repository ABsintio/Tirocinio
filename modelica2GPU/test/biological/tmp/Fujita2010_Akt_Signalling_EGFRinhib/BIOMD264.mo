
model BIOMD264 "Fujita2010_Akt_Signalling_EGFRinhib"

    function pow
        input  Real x;
        input  Real power;
        output Real y;
        algorithm
            y := x^power;
    end pow;

    function piecewise
        input Real x;
        input Boolean condition;
        input Real y;
        output Real z;
        algorithm
            z := if condition then x else y;
    end piecewise;

    parameter Real pEGFR_scaleFactor = 0.000181735;
    parameter Real pAkt_scaleFactor = 60.0588;
    parameter Real pS6_scaleFactor = 49886.2;
    parameter Real EGF_conc_step = 30.0;
    parameter Real EGF_conc_pulse = 0.0;
    parameter Real EGF_conc_ramp = 0.0;
    parameter Real EGFR_turnover = 0.000106386;
    parameter Real EGF_binding_kf = 0.00673816;
    parameter Real EGF_binding_kb = 0.040749;
    parameter Real inhibitor_binding_kf = 2.43466029020655e-05;
    parameter Real inhibitor_binding_kb = 5.25096686262403e-05;
    parameter Real pulse_time = 60.0;
    parameter Real ramp_time = 3600.0;
    parameter Real k1_1 = 1.5543e-05;
    parameter Real k2_1 = 0.00517473;
    parameter Real k1_2 = 0.0528141;
    parameter Real k1_3 = 0.0997194;
    parameter Real k1_4 = 2.10189e-06;
    parameter Real k2_4 = 5.1794e-15;
    parameter Real k1_5 = 0.00121498;
    parameter Real k1_6 = 0.0327962;
    parameter Real k1_7 = 0.00113102;
    parameter Real k1_9 = 0.0192391;
    parameter Real Cell = 1.0;

    Real pEGFR_total(start=0.0);
    Real pAkt_total(start=0.0);
    Real pS6_total(start=0.0);

    Real EGF;
    Real EGFR;
    Real pEGFR;
    Real pEGFR_Akt;
    Real Akt;
    Real pAkt;
    Real S6;
    Real pAkt_S6;
    Real pS6;
    Real pro_EGFR;
    Real EGF_EGFR;
    Real EGFR_i;
    Real EGF_EGFR_i;
    Real Inhibitor;

initial equation
    EGFR = pro_EGFR / (1 + inhibitor_binding_kf * Inhibitor / (inhibitor_binding_kb + EGFR_turnover));
    pEGFR = 0.0;
    pEGFR_Akt = 0.0;
    Akt = 0.043309;
    pAkt = 0.0;
    S6 = 3.54317;
    pAkt_S6 = 0.0;
    pS6 = 0.0;
    pro_EGFR = 68190.2000000002;
    EGF_EGFR = 0.0;
    EGFR_i = pro_EGFR - EGFR;
    EGF_EGFR_i = 0.0;
    Inhibitor = 0.0;

equation
    pAkt_total = (pAkt + pAkt_S6) * pAkt_scaleFactor;
    pEGFR_total = (pEGFR + pEGFR_Akt) * pEGFR_scaleFactor;
    EGF = EGF_conc_step + piecewise(EGF_conc_pulse, time <= pulse_time, 0) + EGF_conc_ramp * time / ramp_time;
    pS6_total = pS6 * pS6_scaleFactor;
    der(EGFR) = (Cell * EGFR_turnover * pro_EGFR) - (Cell * (EGF_binding_kf * EGF * EGFR - EGF_binding_kb * EGF_EGFR)) - (Cell * EGFR_turnover * EGFR) - (Cell * (inhibitor_binding_kf * Inhibitor * EGFR - inhibitor_binding_kb * EGFR_i));
    der(pEGFR) = (Cell * k1_2 * pEGFR_Akt) + (Cell * k1_9 * EGF_EGFR) - (Cell * (k1_1 * pEGFR * Akt - k2_1 * pEGFR_Akt)) - (Cell * k1_3 * pEGFR);
    der(pEGFR_Akt) = (Cell * (k1_1 * pEGFR * Akt - k2_1 * pEGFR_Akt)) - (Cell * k1_2 * pEGFR_Akt);
    der(Akt) = (Cell * k1_6 * pAkt) - (Cell * (k1_1 * pEGFR * Akt - k2_1 * pEGFR_Akt));
    der(pAkt) = (Cell * k1_2 * pEGFR_Akt) + (Cell * k1_5 * pAkt_S6) - (Cell * (k1_4 * pAkt * S6 - k2_4 * pAkt_S6)) - (Cell * k1_6 * pAkt);
    der(S6) = (Cell * k1_7 * pS6) - (Cell * (k1_4 * pAkt * S6 - k2_4 * pAkt_S6));
    der(pAkt_S6) = (Cell * (k1_4 * pAkt * S6 - k2_4 * pAkt_S6)) - (Cell * k1_5 * pAkt_S6);
    der(pS6) = (Cell * k1_5 * pAkt_S6) - (Cell * k1_7 * pS6);
    der(pro_EGFR) = 0.0;
    der(EGF_EGFR) = (Cell * (EGF_binding_kf * EGF * EGFR - EGF_binding_kb * EGF_EGFR)) - (Cell * k1_9 * EGF_EGFR) - (Cell * (inhibitor_binding_kf * Inhibitor * EGF_EGFR - inhibitor_binding_kb * EGF_EGFR_i));
    der(EGFR_i) = (Cell * (inhibitor_binding_kf * Inhibitor * EGFR - inhibitor_binding_kb * EGFR_i)) - (Cell * (EGF_binding_kf * EGF * EGFR_i - EGF_binding_kb * EGF_EGFR_i)) - (Cell * EGFR_turnover * EGFR_i);
    der(EGF_EGFR_i) = (Cell * (inhibitor_binding_kf * Inhibitor * EGF_EGFR - inhibitor_binding_kb * EGF_EGFR_i)) + (Cell * (EGF_binding_kf * EGF * EGFR_i - EGF_binding_kb * EGF_EGFR_i)) ;
    der(Inhibitor) = 0.0;




end BIOMD264;
