
model BIOMD403 "Ayati2010_BoneRemodelingDynamics_WithTumour+DrugTreatment"

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
    
    function geq
        input Real x;
        input Real y;
        output Boolean z;
        algorithm
            z := (x >= y);
    end geq;


    parameter Real alpha1 = 3.0;
    parameter Real beta1 = 0.2;
    parameter Real alpha2 = 4.0;
    parameter Real beta2 = 0.02;
    parameter Real k1 = 0.0748;
    parameter Real k2 = 0.0006395;
    parameter Real g11 = 1.1;
    parameter Real g21 = -0.5;
    parameter Real g12 = 1.0;
    parameter Real g22 = 0.0;
    parameter Real gammaT = 0.005;
    parameter Real LT = 100.0;
    parameter Real r11 = 0.005;
    parameter Real r21 = 0.0;
    parameter Real r12 = 0.0;
    parameter Real r22 = 0.2;
    parameter Real v1 = 0.001;
    parameter Real v2 = 0.008;
    parameter Real Compartment = 1.0;

    Real y1(start=0.0);
    Real y2(start=0.0);
    Real C_bar(start=0.0);
    Real B_bar(start=0.0);
    Real gamma(start=0.0);
    Real V1(start=0.0);
    Real V2(start=0.0);

    Real C;
    Real B;
    Real z;
    Real Tumour;

initial equation
    C = 13.0;
    B = 300.0;
    z = 100.0;
    Tumour = 1.0;

equation
    y1 = piecewise(C - C_bar, gt(C, C_bar), 0);
    y2 = piecewise(B - B_bar, gt(B, B_bar), 0);
    C_bar = pow(beta1 / alpha1, (1 - g22 + r22) / gamma) * pow(beta2 / alpha2, g21 * (1 + r21) / gamma);
    B_bar = pow(beta1 / alpha1, g12 / (1 + r12) / gamma) * pow(beta2 / alpha2, (1 - g11 * (1 + r11)) / gamma);
    gamma = g12 / (1 + r12) * g21 * (1 + r21) - (1 - g11 * (1 + r11)) * (1 - g22 + r22);
    V1 = piecewise(v1, geq(time, 600), 0);
    V2 = piecewise(v2, geq(time, 600), 0);
    der(C) = alpha1 * pow(C, g11 * (1 + r11 * Tumour / LT)) * pow(B, g21 * (1 + r21 * Tumour / LT)) - beta1 * C;
    der(B) = alpha2 * pow(C, g12 / (1 + r12 * Tumour / LT)) * pow(B, g22 - r22 * Tumour / LT) - (beta2 - V1) * B;
    der(z) = k2 * y2 - k1 * y1;
    der(Tumour) = (gammaT - V2) * Tumour * log(LT / Tumour);




end BIOMD403;
