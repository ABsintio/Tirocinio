
model BIOMD372 "Tolic2000_InsulinGlucoseFeedback"

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



    parameter Real Vp = 3.0;
    parameter Real Vi = 11.0;
    parameter Real Vg = 10.0;
    parameter Real E = 0.2;
    parameter Real tp = 6.0;
    parameter Real td = 36.0;
    parameter Real Rm = 210.0;
    parameter Real C1 = 2000.0;
    parameter Real a1 = 300.0;
    parameter Real ti = 100.0;
    parameter Real Gin = 216.0;
    parameter Real C2 = 144.0;
    parameter Real C3 = 1000.0;
    parameter Real C4 = 80.0;
    parameter Real C5 = 26.0;
    parameter Real U0 = 40.0;
    parameter Real Um = 940.0;
    parameter Real Ub = 72.0;
    parameter Real beta = 1.77;
    parameter Real Rg = 180.0;
    parameter Real alpha = 0.29;
    parameter Real COMpartment = 1.0;

    Real Ip_conc(start=31.12147233);
    Real f1_G(start=15.174877041143);
    Real Ii_conc(start=22.1169562090909);
    Real G_conc(start=123.4261665);
    Real f2_G(start=71.9863579104227);
    Real f3_G(start=1.234261665);
    Real f4_Ii(start=204.190214963962);
    Real f5_x3(start=12.7950632297315);

    Real x1;
    Real x2;
    Real x3;
    Real G;
    Real Ii;
    Real Ip;

initial equation
    x1 = 110.420253;
    x2 = 112.7601171;
    x3 = 104.5878705;
    G = 12342.61665;
    Ii = 243.2865183;
    Ip = 93.36441699;

equation
    f1_G = Rm / (1 + exp((C1 - G / Vg) / a1));
    Ip_conc = Ip / Vp;
    Ii_conc = Ii / Vi;
    G_conc = G / (Vg * 10);
    f2_G = Ub * (1 - exp(-G / (C2 * Vg)));
    f3_G = G / (C3 * Vg);
    f4_Ii = U0 + (Um - U0) / (1 + exp(-beta * log(Ii / C4 * (1 / Vi + 1 / (E * ti)))));
    f5_x3 = Rg / (1 + exp(alpha * (x3 * 1 / Vp - C5)));
    der(Ip) = f1_G - (E * (Ip / Vp - Ii / Vi) + Ip / tp);
    der(Ii) = E * (Ip / Vp - Ii / Vi) - Ii / ti;
    der(G) = Gin + f5_x3 -(f2_G + f3_G * f4_Ii);
    der(x3) = 3 / td * (x2 - x3);
    der(x1) = 3 / td * (Ip / 1 - x1);
    der(x2) = 3 / td * (x1 - x2);




end BIOMD372;
