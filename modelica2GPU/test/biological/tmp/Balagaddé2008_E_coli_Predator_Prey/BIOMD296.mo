
model BIOMD296 "Balagaddé2008_E_coli_Predator_Prey"

    function pow
        input  Real x;
        input  Real power;
        output Real y;
        algorithm
            y := x^power;
    end pow;



    parameter Real kc1 = 0.8;
    parameter Real kc2 = 0.4;
    parameter Real Cm = 100.0;
    parameter Real D = 0.1125;
    parameter Real kA1 = 0.1;
    parameter Real d2 = 0.3;
    parameter Real K2 = 10.0;
    parameter Real K1 = 10.0;
    parameter Real dAA1 = 0.017;
    parameter Real dAA2 = 0.11;
    parameter Real environment = 1.0;

    Real kA2(start=0.0);
    Real d1(start=0.0);

    Real IPTG;
    Real C1;
    Real C2;
    Real A1;
    Real A2;
    Real sink;
    Real source;

initial equation
    IPTG = 5.0;
    C1 = 20.0;
    C2 = 20.0;
    A1 = 0.1;
    A2 = 0.1;
    sink = 0.0;
    source = 0.0;

equation
    d1 = 0.5 + pow(IPTG, 2) / (pow(5, 2) + pow(IPTG, 2));
    kA2 = 0.02 + 0.03 * (pow(IPTG, 2) / (pow(5, 2) + pow(IPTG, 2)));
    der(IPTG) = 0.0;
    der(C1) = (environment * kc1 * C1 * (1 - (C1 + C2) / Cm)) - (environment * (D + d1 * K1 / (K1 + A2^2)) * C1);
    der(C2) = (environment * kc2 * C2 * (1 - (C1 + C2) / Cm)) - (environment * (D + d2 * A1^2 / (K2 + A1^2)) * C2);
    der(A1) = (environment * kA1 * C1) - (environment * (dAA1 + D) * A1);
    der(A2) = (environment * kA2 * C2) - (environment * (dAA2 + D) * A2);
    der(sink) = 0.0;
    der(source) = 0.0;




end BIOMD296;
