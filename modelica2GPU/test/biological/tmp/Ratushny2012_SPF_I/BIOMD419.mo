
model BIOMD419 "Ratushny2012_SPF_I"

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



    parameter Real Kd = 1e-05;
    parameter Real Ksp = 0.001;
    parameter Real h = 2.0;
    parameter Real k0 = 0.1;
    parameter Real ka = 40.0;
    parameter Real ks = 10.0;
    parameter Real ku = 0.1;
    parameter Real s = 1000.0;
    parameter Real __RATE___1 = 0.1;
    parameter Real __RATE___3 = 0.1;
    parameter Real __RATE___5 = 0.1;
    parameter Real univ = 1.0;

    Real dsp1ksp(start=0.0);
    Real dsp1p2kd(start=0.0);

    Real P1;
    Real P2;
    Real Target;

initial equation
    P1 = 10.0;
    P2 = 10.0;
    Target = 10.0;

equation
    dsp1ksp = Ksp / 2 * (1 + (s + P1 * univ) / Ksp - pow(pow(1 + (s + P1 * univ) / Ksp, 2) - 4 * s * P1 * univ / pow(Ksp, 2), 0.5));
    dsp1p2kd = Kd / 2 * (1 + (dsp1ksp + P2 * univ) / Kd - pow(pow(1 + (dsp1ksp + P2 * univ) / Kd, 2) - 4 * dsp1ksp * P2 * univ / pow(Kd, 2), 0.5));
    der(P1) = (ks * (k0 + pow(dsp1p2kd / ka, h)) / (1 + pow(dsp1p2kd / ka, h))) - (__RATE___1 * P1);
    der(P2) = (ks * (k0 + pow(dsp1p2kd / ka, h)) / (1 + pow(dsp1p2kd / ka, h))) - (__RATE___3 * P2);
    der(Target) = (ks * (k0 + pow(dsp1p2kd / ka, h)) / (1 + pow(dsp1p2kd / ka, h))) - (__RATE___5 * Target);




end BIOMD419;
