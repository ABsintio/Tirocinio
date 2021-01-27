
model BIOMD573 "Aguilera 2014 - HIV latency. Interaction between HIV proteins and immune response"

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


    function Michaellis_Menten
        	input Real substrate;
	input Real Km;
	input Real Vmax;
        output Real y;
    algorithm
        y :=  Vmax * substrate / (Km + substrate);
    end Michaellis_Menten;


    parameter Real v_0 = 0.00134;
    parameter Real Km_1 = 380.0;
    parameter Real Vmax_1 = 0.134;
    parameter Real k1_2 = 0.0295;
    parameter Real k1_3 = 6.85e-05;
    parameter Real v_4 = 0.07;
    parameter Real k1_5 = 0.927;
    parameter Real k1_6 = 5.01e-05;
    parameter Real compartment = 1.0;



    Real V;
    Real C;

initial equation
    V = 1.0;
    C = 0.0;

equation

    der(V) = (compartment * Constant_flux__irreversible(v_0)) + (2.0 * compartment * Michaellis_Menten(V, Km_1, Vmax_1)) + (compartment * k1_5 * V * C) - (compartment * Michaellis_Menten(V, Km_1, Vmax_1)) - (compartment * k1_2 * V * C) - (compartment * k1_3 * V) - (compartment * k1_5 * V * C);
    der(C) = (compartment * k1_2 * V * C) + (compartment * Constant_flux__irreversible(v_4)) - (compartment * k1_2 * V * C) - (compartment * k1_5 * V * C) - (compartment * k1_6 * C);




end BIOMD573;
