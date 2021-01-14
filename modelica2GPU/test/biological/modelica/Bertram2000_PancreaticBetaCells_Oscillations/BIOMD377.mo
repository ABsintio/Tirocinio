
model BIOMD377 "Bertram2000_PancreaticBetaCells_Oscillations"

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



    parameter Real Cm = 4524.0;
    parameter Real Vm = -22.0;
    parameter Real VCa = 100.0;
    parameter Real gCa = 280.0;
    parameter Real sm = 7.5;
    parameter Real VK = -80.0;
    parameter Real gK = 1300.0;
    parameter Real lambda = 1.1;
    parameter Real tnbar = 8.3;
    parameter Real Vn = -9.0;
    parameter Real sn = 10.0;
    parameter Real gs1 = 20.0;
    parameter Real Vs1 = -40.0;
    parameter Real ss1 = 0.5;
    parameter Real taus1 = 1000.0;
    parameter Real Vs2 = -42.0;
    parameter Real ss2 = 0.4;
    parameter Real gs2 = 32.0;
    parameter Real taus2 = 120000.0;
    parameter Real gl = 25.0;
    parameter Real Vl = -40.0;
    parameter Real Compartment = 1.0;

    Real minf(start=0.0573241758988688);
    Real ICa(start=-2295.26000299071);
    Real IK(start=1443.0);
    Real taun(start=8.03194764300286);
    Real ninf(start=0.0322954646984505);
    Real Is1(start=74.0);
    Real s1inf(start=0.00247262315663477);
    Real s2inf(start=0.0758581800212435);
    Real Is2(start=513.856);
    Real Il(start=-75.0);
    Real parameter_1(start=587.856);

    Real V;
    Real n;
    Real s1;
    Real s2;

initial equation
    V = -43.0;
    n = 0.03;
    s1 = 0.1;
    s2 = 0.434;

equation
    s1inf = 1 / (1 + exp((Vs1 - V) / ss1));
    minf = 1 / (1 + exp((Vm - V) / sm));
    ICa = gCa * minf * (V - VCa);
    IK = gK * n * (V - VK);
    taun = tnbar / (1 + exp((V - Vn) / sn));
    ninf = 1 / (1 + exp((Vn - V) / sn));
    Is1 = gs1 * s1 * (V - VK);
    s2inf = 1 / (1 + exp((Vs2 - V) / ss2));
    Is2 = gs2 * s2 * (V - VK);
    Il = gl * (V - Vl);
    parameter_1 = Is1 + Is2;
    der(V) = -(ICa + IK + Il + Is1 + Is2) / Cm;
    der(n) = (ninf - n) / taun;
    der(s1) = (s1inf - s1) / taus1;
    der(s2) = (s2inf - s2) / taus2;




end BIOMD377;
