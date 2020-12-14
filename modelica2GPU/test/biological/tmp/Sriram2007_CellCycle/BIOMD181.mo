
model BIOMD181 "Sriram2007_CellCycle"

    function pow
        input  Real x;
        input  Real power;
        output Real y;
        algorithm
            y := x^power;
    end pow;

    parameter Real j1 = 0.9;
    parameter Real vd1 = 6.0;
    parameter Real n = 2.0;
    parameter Real km1 = 5.0;
    parameter Real kc1 = 0.2;
    parameter Real kd1 = 0.8;
    parameter Real j2 = 0.5;
    parameter Real vd2 = 1.052;
    parameter Real km2 = 5.0;
    parameter Real kc2 = 0.22;
    parameter Real kd2 = 0.9;
    parameter Real j3 = 0.2;
    parameter Real vd3 = 3.0;
    parameter Real km3 = 5.0;
    parameter Real kc3 = 0.6;
    parameter Real kd3 = 0.8;
    parameter Real v12 = 15.0;
    parameter Real k120 = 10.0;
    parameter Real kd4 = 0.16;
    parameter Real v11 = 15.0;
    parameter Real k110 = 10.0;
    parameter Real kd5 = 0.16;
    parameter Real v10 = 15.0;
    parameter Real k100 = 10.0;
    parameter Real kd6 = 0.16;



    Real T1;
    Real T2;
    Real T3;
    Real C1;
    Real C2;
    Real C3;

initial equation
    T1 = 6.0;
    T2 = 5.0;
    T3 = 1.0;
    C1 = 0.0;
    C2 = 0.0;
    C3 = 0.0;

equation

    der(T1) = (1.0 * j1) + (1.0 * vd1 * T3^n / (km1^n + T3^n)) + (1.0 * kc1 * C1) - (1.0 * kd1 * T1);
    der(T2) = (1.0 * j2) + (1.0 * vd2 * T1^n / (km2^n + T1^n)) + (1.0 * kc2 * C2) - (1.0 * kd2 * T2);
    der(T3) = (1.0 * j3) + (1.0 * vd3 * T2^n / (km3^n + T2^n)) + (1.0 * kc3 * C3) - (1.0 * kd3 * T3);
    der(C1) = (1.0 * v12 * T1^n / (k120^n + T1^n + C2^n)) - (1.0 * kd4 * C1);
    der(C2) = (1.0 * v11 * T2^n / (k110^n + T2^n + C3^n)) - (1.0 * kd5 * C2);
    der(C3) = (1.0 * v10 * T3^n / (k100^n + T3^n + C1^n)) - (1.0 * kd6 * C3);




end BIOMD181;
