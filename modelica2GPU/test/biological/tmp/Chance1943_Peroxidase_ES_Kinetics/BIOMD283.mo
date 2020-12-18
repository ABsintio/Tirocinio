
model BIOMD283 "Chance1943_Peroxidase_ES_Kinetics"

    function pow
        input  Real x;
        input  Real power;
        output Real y;
        algorithm
            y := x^power;
    end pow;

    parameter Real K2 = 0.0;
    parameter Real K3 = 0.5;
    parameter Real cell = 1.0;



    Real X;
    Real E;
    Real P;
    Real Q;

initial equation
    X = 8.0;
    E = 1.0;
    P = 0.0;
    Q = 0.0;

equation

    der(X) =  - (cell * (E * X - K2 * P));
    der(E) = (cell * K3 * P) - (cell * (E * X - K2 * P));
    der(P) = (cell * (E * X - K2 * P)) - (cell * K3 * P);
    der(Q) = (cell * K3 * P) ;




end BIOMD283;
