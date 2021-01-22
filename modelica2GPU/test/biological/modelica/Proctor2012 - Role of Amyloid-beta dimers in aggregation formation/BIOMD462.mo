
model BIOMD462 "Proctor2012 - Role of Amyloid-beta dimers in aggregation formation"

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



    parameter Real kprod = 1.86e-05;
    parameter Real kdeg = 2.1e-05;
    parameter Real kdimer = 1.1783e-07;
    parameter Real kdedimer = 8.4655e-06;
    parameter Real kdisagg = 5.4357e-05;
    parameter Real kpf = 2.785e-06;
    parameter Real kpg = 0.00574;
    parameter Real kpghalf = 4.0;
    parameter Real kdegNep = 1.8e-10;
    parameter Real cell = 1.0;



    Real Abeta;
    Real AbDim;
    Real AbP;
    Real Source;
    Real Sink;
    Real Nep;

initial equation
    Abeta = 0.0;
    AbDim = 0.0;
    AbP = 0.0;
    Source = 1.0;
    Sink = 1.0;
    Nep = 1000.0;

equation

    der(Abeta) = (kprod * Source) + (2.0 * kdedimer * AbDim) + (kdisagg * AbP) - (kdeg * Abeta * Nep * 0.001) - (2.0 * kdimer * Abeta * (Abeta - 1) * 0.5) - (kpg * Abeta * pow(AbP, 2) / (pow(kpghalf, 2) + pow(AbP, 2)));
    der(AbDim) = (kdimer * Abeta * (Abeta - 1) * 0.5) - (kdedimer * AbDim) - (2.0 * kpf * AbDim * (AbDim - 1) * 0.5);
    der(AbP) = (4.0 * kpf * AbDim * (AbDim - 1) * 0.5) + (2.0 * kpg * Abeta * pow(AbP, 2) / (pow(kpghalf, 2) + pow(AbP, 2))) - (kpg * Abeta * pow(AbP, 2) / (pow(kpghalf, 2) + pow(AbP, 2))) - (kdisagg * AbP);
    der(Source) = 0.0;
    der(Sink) = 0.0;
    der(Nep) = (kdeg * Abeta * Nep * 0.001) - (kdeg * Abeta * Nep * 0.001) - (kdegNep * Nep);




end BIOMD462;
