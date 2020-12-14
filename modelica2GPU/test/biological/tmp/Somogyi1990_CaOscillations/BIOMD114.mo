
model BIOMD114 "Somogyi1990_CaOscillations"

    function pow
        input  Real x;
        input  Real power;
        output Real y;
        algorithm
            y := x^power;
    end pow;

    parameter Real k = 0.01;
    parameter Real alpha = 5.0;
    parameter Real n = 4.0;
    parameter Real a = 3.0;
    parameter Real k1 = 2.0;
    parameter Real beta = 1.0;
    parameter Real gamma = 1.0;

    Real fy(start=0.0);

    Real x;
    Real y;

initial equation
    x = 1.0;
    y = 1.0;

equation
    fy = pow(y, n) / (pow(a, n) + pow(y, n));
    der(x) =  - (k * x * 1.0 - k1 * y * 1.0) - (alpha * fy * x * 1.0);
    der(y) = (gamma * 1.0) + (k * x * 1.0 - k1 * y * 1.0) + (alpha * fy * x * 1.0) - (beta * y * 1.0);




end BIOMD114;
