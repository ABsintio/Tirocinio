
model BIOMD319 "Decroly1982_Enzymatic_Oscillator"

    function pow
        input  Real x;
        input  Real power;
        output Real y;
        algorithm
            y := x^power;
    end pow;

    parameter Real v_Km1_0 = 0.45;
    parameter Real L1_1 = 500000000.0;
    parameter Real sigma1_1 = 10.0;
    parameter Real L2_2 = 100.0;
    parameter Real d_2 = 0.0;
    parameter Real sigma2_2 = 10.0;
    parameter Real ks_3 = 1.99;
    parameter Real cell = 1.0;



    Real alpha;
    Real beta;
    Real gamma;

initial equation
    alpha = 29.19988;
    beta = 188.8;
    gamma = 0.3367;

equation

    der(alpha) = (v_Km1_0) - (sigma1_1 * alpha * (1 + alpha) * (1 + beta)^2 / (L1_1 + (1 + alpha)^2 * (1 + beta)^2));
    der(beta) = (50.0 * sigma1_1 * alpha * (1 + alpha) * (1 + beta)^2 / (L1_1 + (1 + alpha)^2 * (1 + beta)^2)) - (sigma2_2 * beta * (1 + d_2 * beta) * (1 + gamma)^2 / (L2_2 + (1 + d_2 * beta)^2 * (1 + gamma)^2));
    der(gamma) = (0.02 * sigma2_2 * beta * (1 + d_2 * beta) * (1 + gamma)^2 / (L2_2 + (1 + d_2 * beta)^2 * (1 + gamma)^2)) - (ks_3 * gamma);




end BIOMD319;
