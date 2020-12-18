
model BIOMD284 "Hofmeyer1986_SeqFb_Proc_AA_Synthesis"

    function pow
        input  Real x;
        input  Real power;
        output Real y;
        algorithm
            y := x^power;
    end pow;

    parameter Real cell = 1.0;



    Real A;
    Real B;
    Real C;
    Real D;
    Real E;
    Real F;
    Real X;
    Real Y;
    Real Z;

initial equation
    A = 0.0;
    B = 0.0;
    C = 0.0;
    D = 0.0;
    E = 0.0;
    F = 0.0;
    X = 10.0;
    Y = 2.0;
    Z = 1.0;

equation

    der(A) = (cell * ((10 * X - A) / (1 + X + A + B^2))) - (cell * ((2 * A - B) / (1 + A + B)));
    der(B) = (cell * ((2 * A - B) / (1 + A + B))) - (cell * ((B - C) / (1 + B + C + D^2))) - (cell * ((B - E) / (1 + B + E + F^2)));
    der(C) = (cell * ((B - C) / (1 + B + C + D^2))) - (cell * ((5 * C - D) / (1 + C + D)));
    der(D) = (cell * ((5 * C - D) / (1 + C + D))) - (cell * ((10 * D - Y) / (1 + D + Y)));
    der(E) = (cell * ((B - E) / (1 + B + E + F^2))) - (cell * ((5 * E - F) / (1 + E + F)));
    der(F) = (cell * ((5 * E - F) / (1 + E + F))) - (cell * ((10 * F - Z) / (1 + F + Z)));
    der(X) = 0.0;
    der(Y) = 0.0;
    der(Z) = 0.0;




end BIOMD284;
