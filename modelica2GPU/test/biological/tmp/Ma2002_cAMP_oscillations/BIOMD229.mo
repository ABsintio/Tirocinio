
model BIOMD229 "Ma2002_cAMP_oscillations"

    function pow
        input  Real x;
        input  Real power;
        output Real y;
        algorithm
            y := x^power;
    end pow;

    parameter Real k1 = 2.0;
    parameter Real k2 = 0.9;
    parameter Real k3 = 2.5;
    parameter Real k4 = 1.5;
    parameter Real k5 = 0.6;
    parameter Real k6 = 0.8;
    parameter Real k7 = 1.0;
    parameter Real k8 = 1.3;
    parameter Real k9 = 0.3;
    parameter Real k10 = 0.8;
    parameter Real k11 = 0.7;
    parameter Real k12 = 4.9;
    parameter Real k13 = 23.0;
    parameter Real k14 = 4.5;



    Real ACA;
    Real CAR1;
    Real PKA;
    Real incAMP;
    Real ERK2;
    Real REGA;
    Real excAMP;

initial equation
    ACA = 3.39;
    CAR1 = 2.45;
    PKA = 1.6;
    incAMP = 1.2;
    ERK2 = 1.13;
    REGA = 0.9;
    excAMP = 0.48;

equation

    der(ACA) = (k1 * CAR1) - (k2 * ACA * PKA);
    der(CAR1) = (k13 * excAMP) - (k14 * CAR1);
    der(PKA) = (k3 * incAMP) - (k4 * PKA);
    der(incAMP) = (k9 * ACA) - (k10 * REGA * incAMP);
    der(ERK2) = (k5 * CAR1) - (k6 * PKA * ERK2);
    der(REGA) = (k7) - (k8 * ERK2 * REGA);
    der(excAMP) = (k11 * ACA) - (k12 * excAMP);



end BIOMD229;
