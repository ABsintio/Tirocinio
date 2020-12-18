
model BIOMD263 "Fujita2010_Akt_Signalling_NGF"

    function pow
        input  Real x;
        input  Real power;
        output Real y;
        algorithm
            y := x^power;
    end pow;

    parameter Real pTrkA_scaleFactor = 0.848783474941268;
    parameter Real pAkt_scaleFactor = 2.42381211094508;
    parameter Real pS6_scaleFactor = 0.525842718263069;
    parameter Real NGF_conc_step = 0.0;
    parameter Real NGF_conc_pulse = 0.0;
    parameter Real NGF_conc_ramp = 30.0;
    parameter Real TrkA_turnover = 0.0011032440769796;
    parameter Real pulse_time = 60.0;
    parameter Real ramp_time = 3600.0;
    parameter Real k1_0 = 0.00269408;
    parameter Real k2_0 = 0.0133747;
    parameter Real k1_1 = 0.0882701;
    parameter Real k2_1 = 1.47518e-10;
    parameter Real k1_2 = 0.0202517;
    parameter Real k1_3 = 0.0684084;
    parameter Real k1_4 = 68.3666;
    parameter Real k2_4 = 5.23519;
    parameter Real k1_5 = 0.0056515;
    parameter Real k1_6 = 1.28135;
    parameter Real k1_7 = 0.000293167;
    parameter Real k1_9 = 0.00833178;
    parameter Real Cell = 1.0;

    Real pTrkA_total(start=0.0);
    Real pAkt_total(start=0.0);
    Real pS6_total(start=0.0);

    Real NGF;
    Real TrkA;
    Real pTrkA;
    Real pTrkA_Akt;
    Real Akt;
    Real pAkt;
    Real S6;
    Real pAkt_S6;
    Real pS6;
    Real pro_TrkA;
    Real NGF_TrkA;

initial equation
    TrkA = 8.52065090518276;
    pTrkA = 0.0;
    pTrkA_Akt = 0.0;
    Akt = 1.15594897919397;
    pAkt = 0.0;
    S6 = 3.552336039555;
    pAkt_S6 = 0.0;
    pS6 = 0.0;
    pro_TrkA = 8.52065090518276;
    NGF_TrkA = 0.0;

equation
    pS6_total = pS6 * pS6_scaleFactor;
    pAkt_total = (pAkt + pAkt_S6) * pAkt_scaleFactor;
    pTrkA_total = (pTrkA + pTrkA_Akt) * pTrkA_scaleFactor;
    NGF = NGF_conc_step + piecewise(NGF_conc_pulse, leq(time, pulse_time), 0) + NGF_conc_ramp * time / ramp_time;
    der(TrkA) = (Cell * TrkA_turnover * pro_TrkA) - (Cell * (k1_0 * NGF * TrkA - k2_0 * NGF_TrkA)) - (Cell * TrkA_turnover * TrkA);
    der(pTrkA) = (Cell * k1_2 * pTrkA_Akt) + (Cell * k1_9 * NGF_TrkA) - (Cell * (k1_1 * pTrkA * Akt - k2_1 * pTrkA_Akt)) - (Cell * k1_3 * pTrkA);
    der(pTrkA_Akt) = (Cell * (k1_1 * pTrkA * Akt - k2_1 * pTrkA_Akt)) - (Cell * k1_2 * pTrkA_Akt);
    der(Akt) = (Cell * k1_6 * pAkt) - (Cell * (k1_1 * pTrkA * Akt - k2_1 * pTrkA_Akt));
    der(pAkt) = (Cell * k1_2 * pTrkA_Akt) + (Cell * k1_5 * pAkt_S6) - (Cell * (k1_4 * pAkt * S6 - k2_4 * pAkt_S6)) - (Cell * k1_6 * pAkt);
    der(S6) = (Cell * k1_7 * pS6) - (Cell * (k1_4 * pAkt * S6 - k2_4 * pAkt_S6));
    der(pAkt_S6) = (Cell * (k1_4 * pAkt * S6 - k2_4 * pAkt_S6)) - (Cell * k1_5 * pAkt_S6);
    der(pS6) = (Cell * k1_5 * pAkt_S6) - (Cell * k1_7 * pS6);
    der(pro_TrkA) = 0.0;
    der(NGF_TrkA) = (Cell * (k1_0 * NGF * TrkA - k2_0 * NGF_TrkA)) - (Cell * k1_9 * NGF_TrkA);




end BIOMD263;
