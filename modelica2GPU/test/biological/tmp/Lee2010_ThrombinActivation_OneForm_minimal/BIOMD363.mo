
model BIOMD363 "Lee2010_ThrombinActivation_OneForm_minimal"

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



    parameter Real k1_0 = 0.005;
    parameter Real k1_1 = 0.01;
    parameter Real k1_2 = 1e-05;
    parameter Real k1_3 = 2.5e-05;
    parameter Real compartment = 1.0;



    Real II;
    Real M;
    Real IIa;
    Real P2;

initial equation
    II = 1.0;
    M = 0.0;
    IIa = 0.0;
    P2 = 0.0;

equation

    der(II) =  - (compartment * k1_0 * II) - (compartment * k1_2 * II);
    der(M) = (compartment * k1_0 * II) - (compartment * k1_1 * M);
    der(IIa) = (compartment * k1_1 * M) + (compartment * k1_3 * P2) ;
    der(P2) = (compartment * k1_2 * II) - (compartment * k1_3 * P2);




end BIOMD363;
