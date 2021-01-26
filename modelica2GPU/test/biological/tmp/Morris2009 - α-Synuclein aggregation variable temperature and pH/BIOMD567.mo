
model BIOMD567 "Morris2009 - α-Synuclein aggregation variable temperature and pH"

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



    parameter Real k1 = 4e-05;
    parameter Real k2 = 1.57e-06;
    parameter Real k2A0 = 0.29;
    parameter Real Brain = 1.0;

    Real A0(start=184713.375796178);

    Real B;
    Real A;

initial equation
    A = 1.0;

equation
    A0 = k2A0 / k2;
    B = A0 - (k1 / k2 + A0) / (1 + k1 / (k2 * A0) * exp((k1 + k2 * A0) * time));
    der(A) = 0.0;




end BIOMD567;
