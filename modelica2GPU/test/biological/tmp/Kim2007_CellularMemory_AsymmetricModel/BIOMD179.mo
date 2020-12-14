
model BIOMD179 "Kim2007_CellularMemory_AsymmetricModel"

    function pow
        input  Real x;
        input  Real power;
        output Real y;
        algorithm
            y := x^power;
    end pow;

    parameter Real d_R1 = 0.23521;
    parameter Real sP1R1 = 0.47305;
    parameter Real d_P1 = 0.22367;
    parameter Real sP1_prime_P1 = 0.28687;
    parameter Real s1 = 0.4;
    parameter Real n = 9.0;
    parameter Real s3 = 0.2;
    parameter Real d_P1_prime = 0.37048;
    parameter Real d_R2 = 0.23521;
    parameter Real sP2R2 = 0.47305;
    parameter Real d_P2 = 0.22367;
    parameter Real sP2_prime_P2 = 0.28687;
    parameter Real s2 = 0.3;
    parameter Real d_P2_prime = 0.37048;
    parameter Real sP3_prime_P2_prime = 0.5;
    parameter Real d_P3_prime = 0.37048;

    Real i1(start=0.0);
    Real i2(start=1.0);

    Real R1;
    Real P1;
    Real P1_prime;
    Real R2;
    Real P2;
    Real P2_prime;
    Real P3_prime;

initial equation
    R1 = 0.01;
    P1 = 0.1;
    P1_prime = 0.1;
    R2 = 0.1;
    P2 = 1.0;
    P2_prime = 1.0;
    P3_prime = 0.1;

equation
    i2 = piecewise(1, and(geq(t, 50), leq(t, 100)), 0);
    der(R1) = (i1) - (d_R1 * R1);
    der(P1) = (sP1R1 * R1) - (d_P1 * P1);
    der(P1_prime) = (sP1_prime_P1 * P1) + (s1 / (1 + P2_prime^n)) + (s3 / (1 + P3_prime^n)) - (d_P1_prime * P1_prime);
    der(R2) = (i2) - (d_R2 * R2);
    der(P2) = (sP2R2 * R2) - (d_P2 * P2);
    der(P2_prime) = (sP2_prime_P2 * P2) + (s2 / (1 + P1_prime^n)) - (d_P2_prime * P2_prime);
    der(P3_prime) = (sP3_prime_P2_prime * (P2_prime^n / (1 + P2_prime^n))) - (d_P3_prime * P3_prime);
    der(i1)=0.0;



end BIOMD179;
