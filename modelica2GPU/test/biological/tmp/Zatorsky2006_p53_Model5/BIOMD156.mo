
model BIOMD156 "Zatorsky2006_p53_Model5"

    function pow
        input  Real x;
        input  Real power;
        output Real y;
        algorithm
            y := x^power;
    end pow;

    parameter Real psi = 1.0;
    parameter Real alpha_x = 0.0;
    parameter Real alpha_xy = 3.7;
    parameter Real beta_y = 1.5;
    parameter Real alpha_y = 0.9;
    parameter Real alpha_0 = 1.1;
    parameter Real Theta = 2.0;



    Real x;
    Real y;
    Real y0;

initial equation
    x = 0.02;
    y = 0.2;
    y0 = 0.5;

equation

    der(x) = (1.0 * Theta * x * psi) - (1.0 * alpha_xy * y * x);
    der(y) = (1.0 * alpha_0 * y0) - (1.0 * alpha_y * y);
    der(y0) = (1.0 * beta_y * x * psi) - (1.0 * alpha_0 * y0);




end BIOMD156;
