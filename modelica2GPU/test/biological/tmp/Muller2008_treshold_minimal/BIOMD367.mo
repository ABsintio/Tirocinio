
model BIOMD367 "Muller2008_treshold_minimal"

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



    parameter Real r = 0.2;
    parameter Real mu_x = 4.0;
    parameter Real zeta = 0.5;
    parameter Real b = 1.5;
    parameter Real epsilon = 0.002;
    parameter Real k = 0.4;
    parameter Real mu_z_star = 0.4;
    parameter Real compartment_1 = 1.0;

    Real mu_z(start=0.4);

    Real x;
    Real y;
    Real z;

initial equation
    x = 4.0;
    y = 0.2;
    z = 0.4;

equation

    der(x) = -r * x * y + zeta * mu_x - zeta * x;
    der(y) = r * x * y - b * y * z - zeta * y;
    der(z) = -b * y * z + zeta * mu_z - zeta * z;
    der(mu_z) = epsilon * (y - k * (mu_z - mu_z_star));




end BIOMD367;
