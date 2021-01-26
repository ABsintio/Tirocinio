
model BIOMD556 "Ortega2013 - Interplay between secretases determines biphasic amyloid-beta level"

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


    function Constant_flux__irreversible
        	input Real v;
        output Real y;
    algorithm
        y :=  v;
    end Constant_flux__irreversible;


    function VD
        	input Real Vm;
	input Real X;
	input Real Kx;
	input Real S;
	input Real Km;
	input Real Den;
        output Real y;
    algorithm
        y :=  (Vm / (1 + X / Kx)) * S / Km / Den;
    end VD;


    function V1_3_4_5
        	input Real Vm;
	input Real S;
	input Real Km1;
	input Real M;
	input Real Km2;
        output Real y;
    algorithm
        y :=  Vm * S / Km1 / (1 + S / Km1 + M / Km2);
    end V1_3_4_5;


    function V2
        	input Real Vm;
	input Real S;
	input Real Km;
        output Real y;
    algorithm
        y :=  Vm * S / Km / (1 + S / Km);
    end V2;


    parameter Real v0 = 1.0;
    parameter Real km1 = 0.186;
    parameter Real vm1 = 1.1;
    parameter Real km3 = 28.8;
    parameter Real vm3 = 14.6;
    parameter Real km4 = 0.915;
    parameter Real vm4 = 1.71;
    parameter Real km5 = 0.0672;
    parameter Real vm5 = 0.0223;
    parameter Real km2 = 1.64;
    parameter Real vm2 = 0.153;
    parameter Real kic = 0.173;
    parameter Real kiu1 = 145.0;
    parameter Real kiu2 = 7.31;
    parameter Real Brain = 1.0;

    Real den(start=1.0);

    Real APP;
    Real C83;
    Real C99;
    Real AB;
    Real X;
    Real p3;

initial equation
    APP = 0.0;
    C83 = 0.0;
    C99 = 0.0;
    AB = 0.0;
    X = 0.0;
    p3 = 0.0;

equation
    den = 1 + C83 / km3 * ((1 + X / kiu1) / (1 + X / kic)) + C99 / km4 * ((1 + X / kiu2) / (1 + X / kic));
    der(APP) = r0 - r1 - r2;
    der(C83) = r1 + r5 - r3__D;
    der(C99) = r2 - r5 - r4__D;
    der(AB) = r4__D;
    der(p3) = r3__D;
    der(X) = 0.0;




end BIOMD556;
