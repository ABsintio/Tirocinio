
model BIOMD551 "Das2010 - Effect of a gamma-secretase inhibitor on Amyloid-beta dynamics"

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



    parameter Real Sc = 1.16;
    parameter Real Ki = 0.0232;
    parameter Real k1 = 1.13;
    parameter Real J = 0.0;
    parameter Real r = 0.43;
    parameter Real deltap = 0.55;
    parameter Real epsilon = 0.0206;
    parameter Real alpha = 0.522;
    parameter Real aplasma = 187.0;
    parameter Real bplasma = 0.089;
    parameter Real tauplasma = 1.66;
    parameter Real aCSF = 4.92;
    parameter Real bCSF = 0.259;
    parameter Real tauCSF = 2.06;
    parameter Real CSF = 1.0;
    parameter Real Plasma = 1.0;

    Real l(start=1.0);
    Real g_t(start=0.0);
    Real f_t(start=0.0);

    Real C;
    Real P;

initial equation
    C = 1.0;
    P = 1.0;

equation
    g_t = piecewise(time / tauCSF * aCSF * exp(-bCSF * tauCSF), lt(time, tauCSF), aCSF * exp(-bCSF * time));
    f_t = piecewise(time / tauplasma * aplasma * exp(-bplasma * tauplasma), lt(time, tauplasma), aplasma * exp(-bplasma * time));
    der(C) = Sc / (1 + g_t / Ki) - k1 * C + J;
    der(P) = k1 * r * C - J * r - deltap * P * l;
    der(l) = epsilon * (1 / (1 + alpha * f_t) - l);




end BIOMD551;
