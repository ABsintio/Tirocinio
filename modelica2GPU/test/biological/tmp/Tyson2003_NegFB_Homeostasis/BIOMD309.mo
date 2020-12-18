
model BIOMD309 "Tyson2003_NegFB_Homeostasis"

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


    parameter Real k0 = 1.0;
    parameter Real k2 = 1.0;
    parameter Real k3 = 0.5;
    parameter Real J3 = 0.01;
    parameter Real k4 = 1.0;
    parameter Real J4 = 0.01;
    parameter Real Et = 1.0;
    parameter Real env = 1.0;

    Real Km3(start=0.0);
    Real Km4(start=0.0);

    Real R;
    Real S;
    Real Ep;
    Real E;

initial equation
    R = 0.0;
    S = 0.0;

equation
    Km3 = J3 * Et;
    Km4 = J4 * Et;
    Ep = Et - E;
    E = Et * goldbeter_koshland(k3, k4 * R, J3, J4);
    der(R) = (env * k0 * E) - (env * k2 * R * S);
    der(S) = 0.0;




end BIOMD309;
