
model BIOMD225 "Westermark2003_Pancreatic_GlycOsc_basic"

    function pow
        input  Real x;
        input  Real power;
        output Real y;
        algorithm
            y := x^power;
    end pow;

    parameter Real hGK = 1.7;
    parameter Real KeqGPI = 0.3;
    parameter Real Sgk = 8.0;
    parameter Real Spfk = 4.0;
    parameter Real Sfba = 0.005;
    parameter Real Xpfk = 0.01;
    parameter Real alpha = 5.0;
    parameter Real hx = 2.5;
    parameter Real hpfk = 2.5;
    parameter Real hact = 1.0;
    parameter Real sigcorr = 1.5;
    parameter Real dw_per_ml = 0.3333;
    parameter Real min_to_sec = 60.0;
    parameter Real Vgk_min = 10.0;
    parameter Real Vpfk_min = 100.0;
    parameter Real Vfba_min = 25.0;

    Real Vgk(start=0.0);
    Real Vpfk(start=0.0);
    Real Vfba(start=0.0);

    Real GLC;
    Real G6P_F6P;
    Real F6P;
    Real FBP;
    Real G3P;

initial equation
    GLC = 10.0;
    G6P_F6P = 3.71728;
    F6P = 0.0;
    FBP = 0.00063612;
    G3P = 0.0;

equation
    Vgk = Vgk_min * dw_per_ml / min_to_sec;
    Vpfk = Vpfk_min * dw_per_ml / min_to_sec;
    Vfba = Vfba_min * dw_per_ml / min_to_sec;
    F6P = G6P_F6P * KeqGPI / (1 + KeqGPI);
    der(GLC) = 0.0;
    der(G6P_F6P) = (1.0 * Vgk * (GLC / Sgk)^hGK / (1 + (GLC / Sgk)^hGK)) - (1.0 * Vpfk * (F6P / Spfk)^(hpfk - (hpfk - hact) * (FBP / Sfba / (1 + FBP / Sfba))) / ((F6P / Spfk)^(hpfk - (hpfk - hact) * (FBP / Sfba / (1 + FBP / Sfba))) + (1 + (FBP / Xpfk)^hx) / (1 + alpha^(hpfk - (hpfk - hact) * (FBP / Sfba / (1 + FBP / Sfba))) * (FBP / Xpfk)^hx)));
    der(FBP) = (1.0 * Vpfk * (F6P / Spfk)^(hpfk - (hpfk - hact) * (FBP / Sfba / (1 + FBP / Sfba))) / ((F6P / Spfk)^(hpfk - (hpfk - hact) * (FBP / Sfba / (1 + FBP / Sfba))) + (1 + (FBP / Xpfk)^hx) / (1 + alpha^(hpfk - (hpfk - hact) * (FBP / Sfba / (1 + FBP / Sfba))) * (FBP / Xpfk)^hx))) - (1.0 * Vfba * (FBP / Sfba) / (FBP / Sfba + 1));
    der(G3P) = 0.0;



end BIOMD225;
