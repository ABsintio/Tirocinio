
model BIOMD289 "Alexander2010_Tcell_Regulation_Sys1"

    function pow
        input  Real x;
        input  Real power;
        output Real y;
        algorithm
            y := x^power;
    end pow;

    parameter Real v = 0.0025;
    parameter Real f = 0.0001;
    parameter Real gamma = 2000.0;
    parameter Real beta = 200.0;
    parameter Real pi1 = 0.016;
    parameter Real lambdaE = 1000.0;
    parameter Real muA = 0.25;
    parameter Real muR = 0.25;
    parameter Real muE = 0.25;
    parameter Real muG = 5.0;
    parameter Real b1 = 0.25;
    parameter Real sigma1 = 3e-06;
    parameter Real body = 1.0;

    Real mA(start=0.0);
    Real mG(start=0.0);
    Real R0(start=0.0);

    Real A;
    Real R;
    Real E;
    Real G;
    Real A_im;

initial equation
    A = 1.0;
    R = 0.0;
    E = 0.0;
    G = 100000000.0;
    A_im = 0.0;

equation
    mA = b1 + muA;
    mG = muG + v;
    R0 = f * v * lambdaE * gamma / (mG * mA * muE);
    der(A) = (f * v * G) - (muA * A) - (b1 * A) - (sigma1 * A * R);
    der(R) = (beta * A) + (pi1 * E * A) - (muR * R);
    der(E) = (lambdaE * A) - (muE * E);
    der(G) = (gamma * E) - (v * G) - (muG * G);
    der(A_im) = 0.0;




end BIOMD289;
