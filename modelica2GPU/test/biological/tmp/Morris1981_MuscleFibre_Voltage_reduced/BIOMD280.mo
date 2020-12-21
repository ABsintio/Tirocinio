
model BIOMD280 "Morris1981_MuscleFibre_Voltage_reduced"

    function pow
        input  Real x;
        input  Real power;
        output Real y;
        algorithm
            y := x^power;
    end pow;



    parameter Real V1 = 10.0;
    parameter Real V2 = 15.0;
    parameter Real V3 = -1.0;
    parameter Real V4 = 14.5;
    parameter Real lambdaN_bar = 0.066666666667;
    parameter Real Iapp = 300.0;
    parameter Real gL = 2.0;
    parameter Real VL = -50.0;
    parameter Real gCa = 4.0;
    parameter Real VCa = 100.0;
    parameter Real gK = 8.0;
    parameter Real VK = -70.0;
    parameter Real C = 20.0;
    parameter Real musclefiber = 1.0;

    Real Minf(start=0.0);
    Real V(start=-50.0);
    Real Ninf(start=0.0);
    Real lambdaN(start=0.0);
    Real N(start=6.14417460e-06);



initial equation


equation
    Minf = (1 + tanh((V - V1) / V2)) / 2;
    Ninf = (1 + tanh((V - V3) / V4)) / 2;
    lambdaN = lambdaN_bar * cosh((V - V3) / (2 * V4));
    der(V) = (Iapp - gL * (V - VL) - gCa * Minf * (V - VCa) - gK * N * (V - VK)) / C;
    der(N) = lambdaN * (Ninf - N);




end BIOMD280;
