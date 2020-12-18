
model BIOMD279 "Komarova2005_PTHaction_OsteoclastOsteoblastCoupling"

    function pow
        input  Real x;
        input  Real power;
        output Real y;
        algorithm
            y := x^power;
    end pow;

    parameter Real alpha1 = 3.0;
    parameter Real beta1 = 0.2;
    parameter Real alpha2 = 4.0;
    parameter Real beta2 = 0.02;
    parameter Real k1 = 0.24;
    parameter Real k2 = 0.0017;
    parameter Real g11 = 0.5;
    parameter Real g21 = -0.5;
    parameter Real g12 = 1.0;
    parameter Real g22 = 0.0;
    parameter Real Compartment = 1.0;

    Real y1(start=0.0);
    Real y2(start=0.0);
    Real x1_bar(start=0.0);
    Real x2_bar(start=0.0);
    Real gamma(start=0.0);

    Real x1;
    Real x2;
    Real z;

initial equation
    x1 = 1.06066;
    x2 = 212.132;
    z = 100.0;

equation
    y1 = piecewise(x1 - x1_bar, gt(x1, x1_bar), 0);
    y2 = piecewise(x2 - x2_bar, gt(x2, x2_bar), 0);
    x1_bar = pow(beta1 / alpha1, (1 - g22) / gamma) * pow(beta2 / alpha2, g21 / gamma);
    x2_bar = pow(beta1 / alpha1, g12 / gamma) * pow(beta2 / alpha2, (1 - g11) / gamma);
    gamma = g12 * g21 - (1 - g11) * (1 - g22);
    der(x1) = alpha1 * pow(x1, g11) * pow(x2, g21) - beta1 * x1;
    der(x2) = alpha2 * pow(x1, g12) * pow(x2, g22) - beta2 * x2;
    der(z) = k2 * y2 - k1 * y1;




end BIOMD279;
