
model BIOMD413 "Band2012_DII-Venus_FullModel"

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



    parameter Real kd = 0.334;
    parameter Real ka = 0.000822;
    parameter Real mu = 0.79;
    parameter Real ld = 4.49;
    parameter Real lm = 0.175;
    parameter Real la = 1.15;
    parameter Real delta = 0.486;
    parameter Real lambda = 0.00316;
    parameter Real TIR1T = 18.5;
    parameter Real alpha_tr = 30.5;
    parameter Real cell = 1.0;



    Real auxin;
    Real TIR1;
    Real auxinTIR1;
    Real auxinTIR1VENUS;
    Real VENUS;

initial equation
    auxin = 7.38;
    TIR1 = 15.4;
    auxinTIR1 = 0.28;
    auxinTIR1VENUS = 2.78;
    VENUS = 40.4;

equation

    der(auxin) = (kd * auxinTIR1) + (alpha_tr) - (ka * auxin * TIR1) - (mu * auxin);
    der(TIR1) = (kd * auxinTIR1) - (ka * auxin * TIR1);
    der(auxinTIR1) = (ka * auxin * TIR1) + (ld * auxinTIR1VENUS) + (lm * auxinTIR1VENUS) - (kd * auxinTIR1) - (la * auxinTIR1 * VENUS);
    der(auxinTIR1VENUS) = (la * auxinTIR1 * VENUS) - (ld * auxinTIR1VENUS) - (lm * auxinTIR1VENUS);
    der(VENUS) = (ld * auxinTIR1VENUS) + (delta) - (la * auxinTIR1 * VENUS) - (lambda * VENUS);




end BIOMD413;
