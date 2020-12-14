
model BIOMD155 "Zatorsky2006_p53_Model6"

    function pow
        input  Real x;
        input  Real power;
        output Real y;
        algorithm
            y := x^power;
    end pow;

    parameter Real beta_x = 0.9;
    parameter Real psi = 1.0;
    parameter Real alpha_xy = 1.4;
    parameter Real beta_y = 1.0;
    parameter Real alpha_y = 0.7;
    parameter Real tau = 0.9;
    parameter Real beta_S = 0.9;
    parameter Real alpha_S = 2.7;
    parameter Real n = 4.0;

    Real S(start=0.0);

    Real x;
    Real y;

initial equation
    x = 0.0;
    y = 0.9;

equation

    der(S) = beta_S - alpha_S * y * S;
    der(x) = ((1.0 * beta_x * S^n / (S^n + 1)) * psi) - (1.0 * alpha_xy * y * x);
    der(y) = (1.0 * beta_y * psi * delay(x, tau)) - (1.0 * alpha_y * y);




end BIOMD155;
