
model BIOMD159 "Zatorsky2006_p53_Model1"

    function pow
        input  Real x;
        input  Real power;
        output Real y;
        algorithm
            y := x^power;
    end pow;

    parameter Real beta_x = 0.3;
    parameter Real psi = 1.0;
    parameter Real alpha_x = 0.0;
    parameter Real alpha_xy = 3.2;
    parameter Real beta_y = 0.4;
    parameter Real alpha_y = 0.1;
    parameter Real alpha_0 = 0.1;
    parameter Real compartment = 1.0;



    Real x;
    Real y;
    Real y0;

initial equation
    x = 0.0;
    y = 0.0;
    y0 = 0.0;

equation

    der(x) = (compartment * beta_x * psi) - (compartment * alpha_x * x) - (compartment * alpha_xy * y * x);
    der(y) = (compartment * alpha_0 * y0) - (compartment * alpha_y * y);
    der(y0) = (compartment * beta_y * x * psi) - (compartment * alpha_0 * y0);




end BIOMD159;
