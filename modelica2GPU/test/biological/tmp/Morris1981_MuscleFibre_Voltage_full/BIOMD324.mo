
model BIOMD324 "Morris1981_MuscleFibre_Voltage_full"

    function pow
        input  Real x;
        input  Real power;
        output Real y;
        algorithm
            y := x^power;
    end pow;

    parameter Real V1 = 0.0;
    parameter Real V2 = 15.0;
    parameter Real V3 = 10.0;
    parameter Real V4 = 10.0;
    parameter Real lambdaN_bar = 0.1;
    parameter Real lambdaM_bar = 1.0;
    parameter Real Iapp = 50.0;
    parameter Real gL = 2.0;
    parameter Real VL = -50.0;
    parameter Real gCa = 4.0;
    parameter Real VCa = 100.0;
    parameter Real gK = 8.0;
    parameter Real VK = -70.0;
    parameter Real C = 20.0;
    parameter Real musclefibre = 1.0;

    Real Minf(start=0.0);
    Real V(start=-50.0);
    Real Ninf(start=0.0);
    Real lambdaN(start=0.0);
    Real lambdaM(start=0.0);
    Real N(start=0.0);
    Real M(start=0.0);



initial equation


equation
    Minf = (1 + tanh((V - V1) / V2)) / 2;
    Ninf = (1 + tanh((V - V3) / V4)) / 2;
    lambdaN = lambdaN_bar * cosh((V - V3) / (2 * V4));
    lambdaM = lambdaM_bar * cosh((V - V1) / (2 * V2));
    der(V) = (Iapp - gL * (V - VL) - gCa * M * (V - VCa) - gK * N * (V - VK)) / C;
    der(N) = lambdaN * (Ninf - N);
    der(M) = lambdaM * (Minf - M);




end BIOMD324;
