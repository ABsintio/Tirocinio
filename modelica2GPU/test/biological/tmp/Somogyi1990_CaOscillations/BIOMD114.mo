
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
    parameter Real cytoplasm = 1.0;
    parameter Real ER = 1.0;
    parameter Real extracellular = 1.0;

    Real fy(start=0.0);

    Real x;
    Real y;

initial equation
    x = 1.0;
    y = 1.0;

equation
    fy = pow(y, n) / (pow(a, n) + pow(y, n));
    der(x) =  - (k * x * cytoplasm - k1 * y * ER) - (alpha * fy * x * cytoplasm);
    der(y) = (gamma * cytoplasm) + (k * x * cytoplasm - k1 * y * ER) + (alpha * fy * x * cytoplasm) - (beta * y * extracellular);




end BIOMD114;
