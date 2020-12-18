
model BIOMD258 "Ortega2006 - bistability from double phosphorylation in signal transduction"

    function pow
        input  Real x;
        input  Real power;
        output Real y;
        algorithm
            y := x^power;
    end pow;



    parameter Real r31 = 1.0;
    parameter Real r24 = 1.0;
    parameter Real Chi14 = 1.1;
    parameter Real Ks1 = 0.01;
    parameter Real Ks2 = 0.01;
    parameter Real Ks3 = 0.01;
    parameter Real Ks4 = 0.01;
    parameter Real Vm1 = 1.0;
    parameter Real p = 1.0;
    parameter Real cell = 1.0;



    Real alpha;
    Real beta;
    Real gamma;

initial equation
    alpha = 0.462;
    beta = 0.2;
    gamma = 0.338;

equation

    der(alpha) = (r24 * (Vm1 / Chi14) * (beta / Ks2) / (1 + gamma / Ks4 + beta / Ks2)) - (Vm1 * (alpha / Ks1) / (1 + alpha / Ks1 + beta / Ks3));
    der(beta) = (Vm1 * (alpha / Ks1) / (1 + alpha / Ks1 + beta / Ks3)) + ((Vm1 / Chi14) * (gamma / Ks4) / (1 + gamma / Ks4 + beta / Ks2)) - (r24 * (Vm1 / Chi14) * (beta / Ks2) / (1 + gamma / Ks4 + beta / Ks2)) - (r31 * Vm1 * (beta / Ks3) / (1 + alpha / Ks1 + beta / Ks3));
    der(gamma) = (r31 * Vm1 * (beta / Ks3) / (1 + alpha / Ks1 + beta / Ks3)) - ((Vm1 / Chi14) * (gamma / Ks4) / (1 + gamma / Ks4 + beta / Ks2));




end BIOMD258;
