
model BIOMD206 "Wolf2000_Glycolytic_Oscillations"

    function pow
        input  Real x;
        input  Real power;
        output Real y;
        algorithm
            y := x^power;
    end pow;

    parameter Real k0 = 50.0;
    parameter Real k1 = 550.0;
    parameter Real k2 = 9.8;
    parameter Real k31 = 323.8;
    parameter Real k33 = 57823.1;
    parameter Real k32 = 76411.1;
    parameter Real k34 = 23.7;
    parameter Real k4 = 80.0;
    parameter Real k5 = 9.7;
    parameter Real k6 = 2000.0;
    parameter Real k7 = 28.0;
    parameter Real k8 = 85.7;
    parameter Real k9 = 80.0;
    parameter Real k10 = 375.0;
    parameter Real atot = 4.0;
    parameter Real ntot = 1.0;
    parameter Real n = 4.0;
    parameter Real ki = 1.0;



    Real s1;
    Real at;
    Real s2;
    Real s3;
    Real na;
    Real s4;
    Real s5;
    Real s6;
    Real s6o;

initial equation
    s1 = 1.0;
    at = 2.0;
    s2 = 5.0;
    s3 = 0.6;
    na = 0.6;
    s4 = 0.7;
    s5 = 8.0;
    s6 = 0.08;
    s6o = 0.02;

equation

    der(s1) = (1.0 * k0) - (1.0 * k1 * s1 * at / (1 + (at / ki)^n));
    der(at) = (1.0 * ((k31 * k32 * s3 * na * (atot - at) - k33 * k34 * s4 * at * (ntot - na)) / (k33 * (ntot - na) + k32 * (atot - at)))) + (1.0 * k4 * s4 * (atot - at)) - (2.0 * 1.0 * k1 * s1 * at / (1 + (at / ki)^n)) - (1.0 * k7 * at);
    der(s2) = (1.0 * k1 * s1 * at / (1 + (at / ki)^n)) - (1.0 * k2 * s2);
    der(s3) = (2.0 * 1.0 * k2 * s2) - (1.0 * ((k31 * k32 * s3 * na * (atot - at) - k33 * k34 * s4 * at * (ntot - na)) / (k33 * (ntot - na) + k32 * (atot - at)))) - (1.0 * k8 * s3 * (ntot - na));
    der(na) = (1.0 * k8 * s3 * (ntot - na)) + (1.0 * k6 * s6 * (ntot - na)) - (1.0 * ((k31 * k32 * s3 * na * (atot - at) - k33 * k34 * s4 * at * (ntot - na)) / (k33 * (ntot - na) + k32 * (atot - at))));
    der(s4) = (1.0 * ((k31 * k32 * s3 * na * (atot - at) - k33 * k34 * s4 * at * (ntot - na)) / (k33 * (ntot - na) + k32 * (atot - at)))) - (1.0 * k4 * s4 * (atot - at));
    der(s5) = (1.0 * k4 * s4 * (atot - at)) - (1.0 * k5 * s5);
    der(s6) = (1.0 * k5 * s5) - (1.0 * k10 * (s6 - s6o)) - (1.0 * k6 * s6 * (ntot - na));
    der(s6o) = (0.1 * 1.0 * k10 * (s6 - s6o)) - (1.0 * k9 * s6o);



end BIOMD206;
