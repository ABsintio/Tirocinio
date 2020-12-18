
model BIOMD282 "Chance1952_Catalase_Mechanism"

    function pow
        input  Real x;
        input  Real power;
        output Real y;
        algorithm
            y := x^power;
    end pow;

    parameter Real k1 = 11.0;
    parameter Real k2 = 0.0;
    parameter Real k4_prime = 16.6;
    parameter Real k4 = 0.72;
    parameter Real cell = 1.0;



    Real e;
    Real x;
    Real p;
    Real p1;
    Real a;
    Real p2;

initial equation
    e = 1.36;
    x = 2.0;
    p = 0.0;
    p1 = 0.0;
    a = 0.0;
    p2 = 0.0;

equation

    der(e) = (cell * k4_prime * p * x) + (cell * k4 * p * a) - (cell * (k1 * e * x - k2 * p));
    der(x) =  - (cell * (k1 * e * x - k2 * p)) - (cell * k4_prime * p * x);
    der(p) = (cell * (k1 * e * x - k2 * p)) - (cell * k4_prime * p * x) - (cell * k4 * p * a);
    der(p1) = (cell * k4_prime * p * x) ;
    der(a) = 0.0;
    der(p2) = (cell * k4 * p * a) ;




end BIOMD282;
