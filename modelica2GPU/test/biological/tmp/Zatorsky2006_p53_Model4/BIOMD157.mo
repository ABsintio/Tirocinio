
model BIOMD157 "Zatorsky2006_p53_Model4"

    function pow
        input  Real x;
        input  Real power;
        output Real y;
        algorithm
            y := x^power;
    end pow;

    parameter Real beta_x = 0.9;
    parameter Real psi = 1.0;
    parameter Real alpha_x = 0.0;
    parameter Real beta_y = 1.1;
    parameter Real alpha_y = 0.8;
    parameter Real alpha_0 = 0.8;
    parameter Real k = 0.0001;
    parameter Real alpha_k = 1.7;



    Real x;
    Real y;
    Real y0;

initial equation
    x = 0.0;
    y = 0.8;
    y0 = 0.1;

equation

    der(x) = (1.0 * beta_x * psi) - (1.0 * alpha_x * x) - (1.0 * alpha_k * y * x / (x + k));
    der(y) = (1.0 * alpha_0 * y0) - (1.0 * alpha_y * y);
    der(y0) = (1.0 * beta_y * x * psi) - (1.0 * alpha_0 * y0);




end BIOMD157;
