
model BIOMD125 "Komarova2005_TheoreticalFramework_BasicArchitecture"

    function pow
        input  Real x;
        input  Real power;
        output Real y;
        algorithm
            y := x^power;
    end pow;

    parameter Real a1 = 2.0;
    parameter Real a2 = 2.0;
    parameter Real b1 = 1.0;
    parameter Real b2 = 1.0;
    parameter Real d1 = 1.0;
    parameter Real d2x = 1.0;
    parameter Real d2y = 1.0;



    Real x1;
    Real x2;
    Real y2;
    Real x0;
    Real y0;

initial equation
    x1 = 0.0;
    x2 = 0.0;
    y2 = 0.0;
    x0 = 1.0;
    y0 = 0.0;

equation

    der(x1) = (1.0 * a1 * x0) + (1.0 * b1 * y0) - (1.0 * d1 * x1);
    der(x2) = (1.0 * x1 * a2) - (1.0 * d2x * x2);
    der(y2) = (1.0 * x1 * b2) - (1.0 * d2y * y2);
    der(x0) = 0.0;
    der(y0) = 0.0;

    when time > 1 then
        reinit(x0,0);
    end when;

end BIOMD125;
