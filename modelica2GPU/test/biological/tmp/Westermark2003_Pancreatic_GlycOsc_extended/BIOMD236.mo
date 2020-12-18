
model BIOMD236 "Westermark2003_Pancreatic_GlycOsc_extended"

    function pow
        input  Real x;
        input  Real power;
        output Real y;
        algorithm
            y := x^power;
    end pow;

    parameter Real hGK = 1.7;
    parameter Real KeqGPI = 0.3;
    parameter Real KeqTPI = 0.045455;
    parameter Real Sgk = 8.0;
    parameter Real Spfk = 4.0;
    parameter Real Sfba = 0.005;
    parameter Real Sgapdh = 0.005;
    parameter Real Xpfk = 0.01;
    parameter Real alpha = 5.0;
    parameter Real hx = 2.5;
    parameter Real hpfk = 2.5;
    parameter Real hact = 1.0;
    parameter Real dw_per_ml = 0.3333;
    parameter Real min_to_sec = 60.0;
    parameter Real Vgk_min = 10.0;
    parameter Real Vpfk_min = 100.0;
    parameter Real Vfba_min = 25.0;
    parameter Real Vgapdh_min = 250.0;
    parameter Real Pfba = 0.5;
    parameter Real Qfba = 0.275;
    parameter Real KeqFBA = 0.1;
    parameter Real cell = 1.0;

    Real Vgk(start=0.0);
    Real Vpfk(start=0.0);
    Real Vfba(start=0.0);
    Real Vgapdh(start=0.0);
    Real sigma(start=0.0);

    Real GLC;
    Real G6P_F6P;
    Real F6P;
    Real FBP;
    Real G3P;
    Real DHAP;
    Real DHAP_G3P;

initial equation
    GLC = 10.0;
    G6P_F6P = 3.71728;
    FBP = 0.00063612;
    DHAP_G3P = 0.00262966;

equation
    sigma = F6P / Spfk;
    Vgk = Vgk_min * dw_per_ml / min_to_sec;
    Vpfk = Vpfk_min * dw_per_ml / min_to_sec;
    Vfba = Vfba_min * dw_per_ml / min_to_sec;
    Vgapdh = Vgapdh_min * dw_per_ml / min_to_sec;
    F6P = G6P_F6P * KeqGPI / (1 + KeqGPI);
    G3P = DHAP_G3P * KeqTPI / (1 + KeqTPI);
    DHAP = DHAP_G3P - G3P;
    der(GLC) = 0.0;
    der(G6P_F6P) = (cell * Vgk * (GLC / Sgk)^hGK / (1 + (GLC / Sgk)^hGK)) - (cell * Vpfk * (F6P / Spfk)^(hpfk - (hpfk - hact) * (FBP / Sfba / (1 + FBP / Sfba))) / ((F6P / Spfk)^(hpfk - (hpfk - hact) * (FBP / Sfba / (1 + FBP / Sfba))) + (1 + (FBP / Xpfk)^hx) / (1 + alpha^(hpfk - (hpfk - hact) * (FBP / Sfba / (1 + FBP / Sfba))) * (FBP / Xpfk)^hx)));
    der(FBP) = (cell * Vpfk * (F6P / Spfk)^(hpfk - (hpfk - hact) * (FBP / Sfba / (1 + FBP / Sfba))) / ((F6P / Spfk)^(hpfk - (hpfk - hact) * (FBP / Sfba / (1 + FBP / Sfba))) + (1 + (FBP / Xpfk)^hx) / (1 + alpha^(hpfk - (hpfk - hact) * (FBP / Sfba / (1 + FBP / Sfba))) * (FBP / Xpfk)^hx))) - (cell * Vfba * (FBP / Sfba - G3P * DHAP / (Pfba * Qfba * KeqFBA)) / (1 + FBP / Sfba + DHAP / Qfba + G3P * DHAP / (Pfba * Qfba)));
    der(DHAP_G3P) = (2.0 * cell * Vfba * (FBP / Sfba - G3P * DHAP / (Pfba * Qfba * KeqFBA)) / (1 + FBP / Sfba + DHAP / Qfba + G3P * DHAP / (Pfba * Qfba))) - (cell * Vgapdh * G3P / (Sgapdh + G3P));




end BIOMD236;
