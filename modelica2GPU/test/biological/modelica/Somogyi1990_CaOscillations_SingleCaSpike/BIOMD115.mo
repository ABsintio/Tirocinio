
model BIOMD115 "Somogyi1990_CaOscillations_SingleCaSpike"

    function pow
        input  Real x;
        input  Real power;
        output Real y;
        algorithm
            y := x^power;
    end pow;

    parameter Real k = 0.01;
    parameter Real alpha = 10.0;
    parameter Real n = 4.0;
    parameter Real a = 1.4;
    parameter Real k1 = 2.0;
    parameter Real beta = 1.0;
    parameter Real gamma = 1.0;
    parameter Real Cytosol = 1.0;
    parameter Real ER = 1.0;
    parameter Real Extracellular = 1.0;

    Real fy(start=0.0);

    Real x;
    Real y;

initial equation
    x = 1.0;
    y = 1.0;

equation
    fy = pow(y, n) / (pow(a, n) + pow(y, n));
    der(x) = (k1 * y * ER) - (Cytosol * k * (x - y)) - (alpha * fy * (x - y) * Cytosol);
    der(y) = (gamma * Cytosol) + (Cytosol * k * (x - y)) + (alpha * fy * (x - y) * Cytosol) - (k1 * y * ER) - (beta * y * Extracellular);




end BIOMD115;
