
model BIOMD154 "Zatorsky2006_p53_Model3"

    function pow
        input  Real x;
        input  Real power;
        output Real y;
        algorithm
            y := x^power;
    end pow;

    parameter Real beta_x = 2.3;
    parameter Real psi = 1.0;
    parameter Real alpha_x = 0.0;
    parameter Real alpha_xy = 120.0;
    parameter Real beta_y = 24.0;
    parameter Real alpha_y = 24.0;
    parameter Real tau = 3.3;



    Real x;
    Real y;

initial equation
    x = 0.02;
    y = 0.02;

equation

    der(x) = (1.0 * beta_x * psi) - (1.0 * alpha_x * x) - (1.0 * alpha_xy * y * x);
    der(y) = (1.0 * beta_y * psi * delay(x, tau)) - (1.0 * alpha_y * y);




end BIOMD154;
