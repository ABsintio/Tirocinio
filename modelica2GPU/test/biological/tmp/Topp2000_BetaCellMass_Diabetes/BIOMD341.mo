
model BIOMD341 "Topp2000_BetaCellMass_Diabetes"

    function pow
        input  Real x;
        input  Real power;
        output Real y;
        algorithm
            y := x^power;
    end pow;

    parameter Real si = 0.72;
    parameter Real Eg0 = 1.44;
    parameter Real R0 = 864.0;
    parameter Real sigma = 43.2;
    parameter Real alpha = 20000.0;
    parameter Real k = 432.0;
    parameter Real d0 = 0.06;
    parameter Real r1 = 0.00084;
    parameter Real r2 = 2.4e-06;
    parameter Real cell = 1.0;



    Real G;
    Real I;
    Real B;

initial equation
    G = 250.0;
    I = 2.8;
    B = 37.0;

equation

    der(G) = R0 - (Eg0 + si * I) * G;
    der(I) = B * sigma * pow(G, 2) / (alpha + pow(G, 2)) - k * I;
    der(B) = (-d0 + r1 * G - r2 * pow(G, 2)) * B;




end BIOMD341;
