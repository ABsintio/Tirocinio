
model BIOMD401 "Ayati2010_BoneRemodelingDynamics_NormalCondition"

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

        
    function gt
        input Real x;
        input Real y;
        output Boolean z;
        algorithm
            z := (x > y);
    end gt;


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
    Real C_bar(start=0.0);
    Real B_bar(start=0.0);
    Real gamma(start=0.0);

    Real C;
    Real B;
    Real z;

initial equation
    C = 11.06;
    B = 212.13;
    z = 100.0;

equation
    y1 = piecewise(C - C_bar, gt(C, C_bar), 0);
    y2 = piecewise(B - B_bar, gt(B, B_bar), 0);
    C_bar = pow(beta1 / alpha1, (1 - g22) / gamma) * pow(beta2 / alpha2, g21 / gamma);
    B_bar = pow(beta1 / alpha1, g12 / gamma) * pow(beta2 / alpha2, (1 - g11) / gamma);
    gamma = g12 * g21 - (1 - g11) * (1 - g22);
    der(C) = alpha1 * pow(C, g11) * pow(B, g21) - beta1 * C;
    der(B) = alpha2 * pow(C, g12) * pow(B, g22) - beta2 * B;
    der(z) = k2 * y2 - k1 * y1;




end BIOMD401;
