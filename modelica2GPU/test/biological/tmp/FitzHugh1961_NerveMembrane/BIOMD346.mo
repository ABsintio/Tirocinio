
model BIOMD346 "FitzHugh1961_NerveMembrane"

    function pow
        input  Real x;
        input  Real power;
        output Real y;
        algorithm
            y := x^power;
    end pow;

    parameter Real a = 0.7;
    parameter Real b = 0.8;
    parameter Real c = 3.0;
    parameter Real compartment = 1.0;

    Real z(start=-0.4);

    Real x;
    Real y;

initial equation
    x = -1.0;
    y = 0.5;

equation

    der(x) = c * (x + -(pow(x, 3) / 3) + y + z);
    der(y) = -(1 / c) * (x + -a + b * y);
    der(z)=0.0;



end BIOMD346;
