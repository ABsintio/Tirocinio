
model BIOMD311 "Tyson2003_Mutual_Activation"

    function pow
        input  Real x;
        input  Real power;
        output Real y;
        algorithm
            y := x^power;
    end pow;


    function goldbeter_koshland
        	input Real v1;
	input Real v2;
	input Real J1;
	input Real J2;
        output Real y;
    algorithm
        y =  2 * v1 * J2 / ((v2 - v1) + J1 * v2 + J2 * v1 + (((v2 - v1) + J1 * v2 + J2 * v1)^2 - 4 * (v2 - v1) * v1 * J2)^(1 / 2));
    end goldbeter_koshland;


    parameter Real k0 = 0.4;
    parameter Real k1 = 0.01;
    parameter Real k2 = 1.0;
    parameter Real k3 = 1.0;
    parameter Real J3 = 0.05;
    parameter Real k4 = 0.2;
    parameter Real J4 = 0.05;
    parameter Real Et = 1.0;
    parameter Real env = 1.0;



    Real R;
    Real S;
    Real Ep;
    Real E;

initial equation
    R = 0.0;
    S = 0.0;

equation
    Ep = goldbeter_koshland(k3 * R, k4, J3, J4);
    E = Et - Ep;
    der(R) = (env * k0 * Ep) + (env * k1 * S) - (env * k2 * R);
    der(S) = 0.0;




end BIOMD311;
