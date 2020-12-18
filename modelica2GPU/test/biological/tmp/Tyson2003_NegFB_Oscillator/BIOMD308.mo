
model BIOMD308 "Tyson2003_NegFB_Oscillator"

    function pow
        input  Real x;
        input  Real power;
        output Real y;
        algorithm
            y := x^power;
    end pow;



    parameter Real k0 = 0.0;
    parameter Real k1 = 1.0;
    parameter Real k2 = 0.01;
    parameter Real k2_prime = 10.0;
    parameter Real k3 = 0.1;
    parameter Real Yt = 1.0;
    parameter Real Km3 = 0.01;
    parameter Real k4 = 0.2;
    parameter Real Km4 = 0.01;
    parameter Real k5 = 0.1;
    parameter Real Rt = 1.0;
    parameter Real Km5 = 0.01;
    parameter Real k6 = 0.05;
    parameter Real Km6 = 0.01;
    parameter Real env = 1.0;



    Real Rp;
    Real X;
    Real Yp;
    Real S;
    Real Y;
    Real R;

initial equation
    Rp = 0.0;
    X = 0.0;
    Yp = 0.0;
    S = 0.0;

equation
    Y = Yt - Yp;
    R = Rt - Rp;
    der(Rp) = (env * k5 * Yp * (Rt - Rp) / (Km5 + (Rt - Rp))) - (env * k6 * Rp / (Km6 + Rp));
    der(X) = (env * (k0 + k1 * S)) - (env * (k2 + k2_prime * Rp) * X);
    der(Yp) = (env * k3 * X * (Yt - Yp) / (Km3 + (Yt - Yp))) - (env * k4 * Yp / (Km4 + Yp));
    der(S) = 0.0;




end BIOMD308;
