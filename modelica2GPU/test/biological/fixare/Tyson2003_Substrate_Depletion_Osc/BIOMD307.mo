
model BIOMD307 "Tyson2003_Substrate_Depletion_Osc"

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


    parameter Real k0_prime = 0.01;
    parameter Real k0 = 0.4;
    parameter Real k1 = 1.0;
    parameter Real k2 = 1.0;
    parameter Real k3 = 1.0;
    parameter Real J3 = 0.05;
    parameter Real k4 = 0.3;
    parameter Real J4 = 0.05;
    parameter Real Et = 1.0;
    parameter Real env = 1.0;

    Real Km3(start=0.0);
    Real Km4(start=0.0);

    Real R;
    Real X;
    Real S;
    Real Ep;
    Real E;

initial equation
    R = 0.0;
    X = 0.0;
    S = 0.0;

equation
    Km3 = J3 * Et;
    Km4 = J4 * Et;
    Ep = goldbeter_koshland(k3 * R, k4, J3, J4) * Et;
    E = Et - Ep;
    der(R) = (env * (k0_prime + k0 * Ep) * X) - (env * k2 * R);
    der(X) = (env * k1 * S) - (env * (k0_prime + k0 * Ep) * X);
    der(S) = 0.0;




end BIOMD307;
