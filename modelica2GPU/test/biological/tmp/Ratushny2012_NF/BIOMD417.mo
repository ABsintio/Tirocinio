
model BIOMD417 "Ratushny2012_NF"

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
    parameter Real P = 40.0;
    parameter Real h = 2.0;
    parameter Real k0 = 0.1;
    parameter Real ka = 40.0;
    parameter Real ks = 10.0;
    parameter Real ku = 0.1;
    parameter Real s = 1000.0;
    parameter Real __RATE___1 = 0.1;
    parameter Real univ = 1.0;

    Real dspksp(start=0.0);
    Real dspspkd(start=0.0);

    Real Target;

initial equation
    Target = 10.0;

equation
    dspksp = Ksp / 2 * (1 + (s + P) / Ksp - pow(pow(1 + (s + P) / Ksp, 2) - 4 * s * P / pow(Ksp, 2), 0.5));
    dspspkd = Kd / 2 * (1 + 2 * dspksp / Kd - pow(pow(1 + 2 * dspksp / Kd, 2) - 4 * pow(dspksp, 2) / pow(Kd, 2), 0.5));
    der(Target) = (ks * (k0 + pow(dspspkd / ka, h)) / (1 + pow(dspspkd / ka, h))) - (__RATE___1 * Target);




end BIOMD417;
