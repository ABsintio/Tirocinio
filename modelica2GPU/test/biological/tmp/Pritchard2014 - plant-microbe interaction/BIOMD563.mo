
model BIOMD563 "Pritchard2014 - plant-microbe interaction"

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


    function Competitive_inhibition__irr
        	input Real substrate;
	input Real Inhibitor;
	input Real Km;
	input Real V;
	input Real Ki;
        output Real y;
    algorithm
        y :=  V * substrate / (Km + substrate + Km * Inhibitor / Ki);
    end Competitive_inhibition__irr;


    parameter Real k1_0 = 0.1;
    parameter Real k2_0 = 0.1;
    parameter Real k1_1 = 0.1;
    parameter Real k2_1 = 0.1;
    parameter Real k1_2 = 0.1;
    parameter Real k1_3 = 0.1;
    parameter Real k1_4 = 0.1;
    parameter Real k1_5 = 0.1;
    parameter Real k1_6 = 0.1;
    parameter Real k1_7 = 0.1;
    parameter Real k1_8 = 0.1;
    parameter Real k1_9 = 0.1;
    parameter Real Km_10 = 0.1;
    parameter Real V_10 = 0.1;
    parameter Real Ki_10 = 0.1;
    parameter Real k1_11 = 0.1;
    parameter Real k1_12 = 0.1;
    parameter Real k1_13 = 0.1;
    parameter Real k1_14 = 0.1;
    parameter Real Cell = 1.0;
    parameter Real Apoplast = 1.0;



    Real PAMP;
    Real R;
    Real R_0;
    Real E_int;
    Real Callose;
    Real Path;
    Real Path_bulk;
    Real PRR;
    Real PRR_0;
    Real E;

initial equation
    PAMP = 0.0;
    R = 1.0;
    R_0 = 0.0;
    E_int = 0.0;
    Callose = 0.0;
    Path = 0.0;
    Path_bulk = 0.0;
    PRR = 0.0;
    PRR_0 = 1.0;
    E = 0.0;

equation

    der(PAMP) = (k1_6 * Path) - (k1_0 * PRR_0 * PAMP - k2_0 * PRR) - (Cell * k1_3 * PAMP);
    der(R) =  - (Cell * (k1_1 * R * E_int - k2_1 * R_0));
    der(R_0) = (Cell * (k1_1 * R * E_int - k2_1 * R_0)) + (k1_9 * Path * R_0) - (k1_9 * Path * R_0);
    der(E_int) = (Competitive_inhibition__irr(E, Callose, Km_10, V_10, Ki_10)) + (Cell * k1_14 * Callose * E_int) - (Cell * (k1_1 * R * E_int - k2_1 * R_0)) - (Cell * k1_8 * E_int) - (Cell * k1_14 * Callose * E_int);
    der(Callose) = (k1_11 * PRR) + (k1_13 * Path * Callose) - (Cell * k1_12 * Callose) - (k1_13 * Path * Callose) - (Cell * k1_14 * Callose * E_int);
    der(Path) = (Apoplast * k1_4 * Path_bulk) + (k1_6 * Path) + (Apoplast * k1_7 * Path) - (Apoplast * k1_5 * Path) - (k1_6 * Path) - (Apoplast * k1_7 * Path) - (k1_9 * Path * R_0) - (k1_13 * Path * Callose);
    der(Path_bulk) = (Apoplast * k1_4 * Path_bulk) - (Apoplast * k1_4 * Path_bulk);
    der(PRR) = (k1_0 * PRR_0 * PAMP - k2_0 * PRR) + (k1_11 * PRR) - (k1_11 * PRR);
    der(PRR_0) =  - (k1_0 * PRR_0 * PAMP - k2_0 * PRR);
    der(E) = (Apoplast * k1_7 * Path) - (Apoplast * k1_2 * E) - (Competitive_inhibition__irr(E, Callose, Km_10, V_10, Ki_10));


    when time > 10 then
        reinit(Path_bulk,1);
    end when;

end BIOMD563;
