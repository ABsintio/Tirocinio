
model BIOMD561 "Martins2013 - True and apparent inhibition of amyloid fribril formation"

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



    parameter Real kb = 0.001;
    parameter Real ka = 0.5;
    parameter Real sigmao = 1.0;
    parameter Real V = 1.0;
    parameter Real C = 1.0;
    parameter Real C_0 = 2.0;
    parameter Real Brain = 1.0;

    Real gamma(start=1.0);
    Real deltamt(start=1.0);

    Real Amyloid;

initial equation


equation
    gamma = (C_0 - C) / C;
    deltamt = sigmao * V * C * gamma;
    Amyloid = (1 - 1 / (kb * (exp(ka * time) - 1) + 1)) * deltamt;





end BIOMD561;
