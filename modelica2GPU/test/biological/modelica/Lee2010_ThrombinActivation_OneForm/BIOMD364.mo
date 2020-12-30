
model BIOMD364 "Lee2010_ThrombinActivation_OneForm"

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



    parameter Real k1 = 91.8;
    parameter Real k2 = 82.4;
    parameter Real k9 = 3.12e-08;
    parameter Real k3 = 38.1;
    parameter Real k3a = 151.5;
    parameter Real k4 = 38.1;
    parameter Real k4a = 209.9;
    parameter Real k5 = 5.16;
    parameter Real k6 = 32.3;
    parameter Real k10 = 7.23e-10;
    parameter Real k7 = 6.76e-08;
    parameter Real k7a = 4.7;
    parameter Real k8 = 0.00599;
    parameter Real k8a = 42.6;
    parameter Real kC1 = 2.39e-06;
    parameter Real kC2 = 0.031;
    parameter Real j1 = 33.4;
    parameter Real j3 = 1.58e-06;
    parameter Real j3a = 0.185;
    parameter Real j5 = 21.8;
    parameter Real j7 = 4.46e-09;
    parameter Real j7a = 2.66e-05;
    parameter Real compartment = 1.0;



    Real E;
    Real E_P_1;
    Real P;
    Real M;
    Real M1;
    Real E_M1;
    Real E_M;
    Real T;
    Real E_P_2;
    Real P2;
    Real P21;
    Real E_P21;
    Real E_P2;
    Real E_P1;

initial equation
    E = 0.00015;
    E_P_1 = 0.0;
    P = 1.0;
    M = 0.0;
    M1 = 0.0;
    E_M1 = 0.0;
    E_M = 0.0;
    T = 0.0;
    E_P_2 = 0.0;
    P2 = 0.0;
    P21 = 0.0;
    E_P21 = 0.0;
    E_P2 = 0.0;
    E_P1 = 0.0;

equation

    der(E) = (compartment * k2 * E_P_1) + (compartment * k4 * E_M1) + (compartment * k4a * E_M) + (compartment * k6 * E_P_2) + (compartment * k8 * E_P21) + (compartment * k8a * E_P2) - (compartment * (k1 * E * P - j1 * E_P_1)) - (compartment * (k3 * E * M1 - j3 * E_M1)) - (compartment * (k3a * E * M - j3a * E_M)) - (compartment * (k5 * E * P - j5 * E_P_2)) - (compartment * (k7 * E * P21 - j7 * E_P21)) - (compartment * (k7a * E * P2 - j7a * E_P2));
    der(E_P_1) = (compartment * (k1 * E * P - j1 * E_P_1)) - (compartment * k2 * E_P_1) - (compartment * kC1 * E_P_1);
    der(P) =  - (compartment * (k1 * E * P - j1 * E_P_1)) - (compartment * (k5 * E * P - j5 * E_P_2));
    der(M) = (compartment * k2 * E_P_1) - (compartment * k9 * M) - (compartment * (k3a * E * M - j3a * E_M));
    der(M1) = (compartment * k9 * M) - (compartment * (k3 * E * M1 - j3 * E_M1));
    der(E_M1) = (compartment * (k3 * E * M1 - j3 * E_M1)) - (compartment * k4 * E_M1);
    der(E_M) = (compartment * (k3a * E * M - j3a * E_M)) - (compartment * k4a * E_M);
    der(T) = (compartment * k4 * E_M1) + (compartment * k4a * E_M) + (compartment * k8 * E_P21) + (compartment * k8a * E_P2) + (compartment * kC1 * E_P_1) + (compartment * kC2 * E_P_2) ;
    der(E_P_2) = (compartment * (k5 * E * P - j5 * E_P_2)) - (compartment * k6 * E_P_2) - (compartment * kC2 * E_P_2);
    der(P2) = (compartment * k6 * E_P_2) - (compartment * k10 * P2) - (compartment * (k7a * E * P2 - j7a * E_P2));
    der(P21) = (compartment * k10 * P2) - (compartment * (k7 * E * P21 - j7 * E_P21));
    der(E_P21) = (compartment * (k7 * E * P21 - j7 * E_P21)) - (compartment * k8 * E_P21);
    der(E_P2) = (compartment * (k7a * E * P2 - j7a * E_P2)) - (compartment * k8a * E_P2);
    der(E_P1) = 0.0;




end BIOMD364;
