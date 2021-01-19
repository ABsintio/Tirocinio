
model BIOMD414 "Band2012_DII-Venus_ReducedModel"

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



    parameter Real p1_star = 0.056;
    parameter Real p2 = 0.0053;
    parameter Real lambda_star = 0.52;
    parameter Real qj_star = 0.16;
    parameter Real cell = 1.0;



    Real VENUS;

initial equation
    VENUS = 1.0;

equation

    der(VENUS) = (p2) - (lambda_star * p2 * VENUS) - (p2 * VENUS / (p1_star * VENUS + qj_star));




end BIOMD414;
