
model BIOMD254 "Bier2000_GlycolyticOscillation"

    function pow
        input  Real x;
        input  Real power;
        output Real y;
        algorithm
            y := x^power;
    end pow;

    parameter Real V_in = 0.36;
    parameter Real k1 = 0.02;
    parameter Real kp = 6.0;
    parameter Real km = 13.0;
    parameter Real epsilon = 0.01;
    parameter Real compartment = 1.0;

    Real Tsum(start=0.0);
    Real Tdiff(start=0.0);

    Real G1;
    Real T1;
    Real G2;
    Real T2;

initial equation
    G1 = 6.6;
    T1 = 7.6;
    G2 = 10.3;
    T2 = 0.41;

equation
    Tsum = T2 + T1;
    Tdiff = T2 - T1;
    der(G1) = V_in - k1 * G1 * T1;
    der(G2) = V_in - k1 * G2 * T2;
    der(T1) = 2 * k1 * T1 * G1 - kp * T1 / (km + T1) + epsilon * (T2 - T1);
    der(T2) = 2 * k1 * G2 * T2 - kp * T2 / (km + T2) - epsilon * (T2 - T1);




end BIOMD254;
