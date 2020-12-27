
model BIOMD231 "Valero2006_Adenine_TernaryCycle"

    function pow
        input  Real x;
        input  Real power;
        output Real y;
        algorithm
            y := x^power;
    end pow;

    parameter Real Vmapp1 = 2.3;
    parameter Real Kmapp1 = 700.0;
    parameter Real Vm2 = 170.0;
    parameter Real Km2ATP = 25.0;
    parameter Real Km2AMP = 110.0;
    parameter Real K = 71000.0;
    parameter Real Vmapp3 = 65.0;
    parameter Real Kmapp3 = 260.0;
    parameter Real k4 = 5.0;
    parameter Real compartment = 1.0;



    Real ATP;
    Real AMP;
    Real ADP;
    Real Pyr;
    Real NADH;
    Real Lac;

initial equation
    ATP = 16.3;
    AMP = 0.0;
    ADP = 0.0;
    Pyr = 0.0;
    NADH = 256.0;
    Lac = 0.0;

equation

    der(ATP) = (Vmapp3 * ADP / (Kmapp3 + ADP)) - (Vmapp1 * ATP / (Kmapp1 + ATP)) - (Vm2 * ATP * AMP / (K + Km2ATP * AMP + Km2AMP * ATP + ATP * AMP));
    der(AMP) = (Vmapp1 * ATP / (Kmapp1 + ATP)) - (Vm2 * ATP * AMP / (K + Km2ATP * AMP + Km2AMP * ATP + ATP * AMP));
    der(ADP) = (2.0 * Vm2 * ATP * AMP / (K + Km2ATP * AMP + Km2AMP * ATP + ATP * AMP)) - (Vmapp3 * ADP / (Kmapp3 + ADP));
    der(Pyr) = (Vmapp3 * ADP / (Kmapp3 + ADP)) - (k4 * Pyr);
    der(NADH) =  - (k4 * Pyr);
    der(Lac) = 0.0;




end BIOMD231;
