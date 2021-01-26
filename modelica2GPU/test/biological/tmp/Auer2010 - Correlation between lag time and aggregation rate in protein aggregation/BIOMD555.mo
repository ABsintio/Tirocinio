
model BIOMD555 "Auer2010 - Correlation between lag time and aggregation rate in protein aggregation"

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



    parameter Real omega = 35.3;
    parameter Real n = 7.2;
    parameter Real e = 2.718;
    parameter Real k = 0.205;
    parameter Real C = 0.00069;
    parameter Real Brain = 1.0;

    Real a(start=2.04338357605325);
    Real ka(start=0.0754231052244297);
    Real t1(start=27.1259461481608);

    Real Amyloid;

initial equation


equation
    Amyloid = 1 - exp(-pow(time / omega, n));
    a = n * exp(-(n - 1) / n) - 1;
    ka = k / e;
    t1 = (log(1 / C) - e + 1) * (1 / k);





end BIOMD555;
