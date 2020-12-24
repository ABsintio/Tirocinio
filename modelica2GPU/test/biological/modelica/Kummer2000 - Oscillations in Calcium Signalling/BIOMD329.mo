
model BIOMD329 "Kummer2000 - Oscillations in Calcium Signalling"

    function pow
        input  Real x;
        input  Real power;
        output Real y;
        algorithm
            y := x^power;
    end pow;


    function Constant_flux__irreversible
        	input Real v;
        output Real y;
    algorithm
        y :=  v;
    end Constant_flux__irreversible;


    function Henri_Michaelis_Menten__irreversible
        	input Real substrate;
	input Real Km;
	input Real V;
        output Real y;
    algorithm
        y :=  V * substrate / (Km + substrate);
    end Henri_Michaelis_Menten__irreversible;


    function Irr_Michaelis_Menten__enzyme__userdefined
        	input Real V;
	input Real E;
	input Real S;
	input Real Km;
        output Real y;
    algorithm
        y :=  V * E * S / (Km + S);
    end Irr_Michaelis_Menten__enzyme__userdefined;


    function linear_activation
        	input Real constante;
	input Real Activator;
        output Real y;
    algorithm
        y :=  constante * Activator;
    end linear_activation;


    parameter Real v_0 = 0.212;
    parameter Real constant_1 = 2.9;
    parameter Real V_2 = 1.52;
    parameter Real Km_2 = 0.19;
    parameter Real V_3 = 4.88;
    parameter Real Km_3 = 1.18;
    parameter Real constant_4 = 1.24;
    parameter Real Km_5 = 29.09;
    parameter Real V_5 = 32.24;
    parameter Real constant_6 = 13.58;
    parameter Real Km_7 = 0.16;
    parameter Real V_7 = 153.0;
    parameter Real compartment = 1.0;



    Real a;
    Real b;
    Real c;

initial equation
    a = 0.01;
    b = 0.01;
    c = 0.01;

equation

    der(a) = (compartment * Constant_flux__irreversible(v_0)) + (compartment * linear_activation(constant_1, a)) - (compartment * Irr_Michaelis_Menten__enzyme__userdefined(V_2, b, a, Km_2)) - (compartment * Irr_Michaelis_Menten__enzyme__userdefined(V_3, c, a, Km_3));
    der(b) = (compartment * linear_activation(constant_4, a)) - (compartment * Henri_Michaelis_Menten__irreversible(b, Km_5, V_5));
    der(c) = (compartment * linear_activation(constant_6, a)) - (compartment * Henri_Michaelis_Menten__irreversible(c, Km_7, V_7));




end BIOMD329;
