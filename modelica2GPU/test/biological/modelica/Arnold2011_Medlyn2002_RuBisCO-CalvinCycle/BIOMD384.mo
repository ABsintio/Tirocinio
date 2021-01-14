
model BIOMD384 "Arnold2011_Medlyn2002_RuBisCO-CalvinCycle"

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


    function PGA_consumption
        	input Real S1;
	input Real Rp;
	input Real R;
	input Real Nt;
	input Real Vc;
        output Real y;
    algorithm
        y :=  (S1 / Rp) * (R / Nt) * Vc;
    end PGA_consumption;


    function NADPH_production
        	input Real j;
	input Real S1;
	input Real Nt;
        output Real y;
    algorithm
        y :=  (j / 2) * (S1 / Nt);
    end NADPH_production;


    function carboxylation
        	input Real Vc;
	input Real Vj;
        output Real y;
    algorithm
        y :=  (Vc + Vj - abs(Vc - Vj)) / 2;
    end carboxylation;


    function oxygenation
        	input Real phi;
	input Real Vc;
	input Real Vj;
        output Real y;
    algorithm
        y :=  phi * (Vc + Vj - abs(Vc - Vj)) / 2;
    end oxygenation;


    parameter Real Rp = 3.2;
    parameter Real Nt = 0.5;
    parameter Real alpha = 0.3;
    parameter Real Q = 1000.0;
    parameter Real Gamma = 42.8926627111176;
    parameter Real teta = 0.9;
    parameter Real Vcmax = 2.53232284114507;
    parameter Real Kc = 406.066146391504;
    parameter Real Ko = 276.900084789612;
    parameter Real chloroplast = 1.0;

    Real J(start=4.8582995951417);
    Real Vomax(start=0.531787796640465);
    Real Vj(start=0.899589030506691);
    Real phi(start=0.263964911408408);
    Real Vc(start=0.646926785453086);

    Real RuBP;
    Real PGA;
    Real NADPH;
    Real CO2;
    Real O2;
    Real NADP;

initial equation
    RuBP = 2.0;
    PGA = 2.4;
    NADPH = 0.21;
    CO2 = 245.0;
    O2 = 210.0;

equation
    J = alpha * Q / (10 - 9 * teta) / (65 * 0.5);
    Vj = J / 4 * CO2 / (CO2 + 2 * Gamma);
    Vc = Vcmax * CO2 / ((1 + O2 / Ko) * Kc + CO2);
    NADP = Nt - NADPH;
    Vomax = 0.21 * Vcmax;
    phi = 0.21 * (O2 / Ko) / (CO2 / Kc);
    der(RuBP) = 0.0;
    der(PGA) = (2.0 * chloroplast * carboxylation(Vc, Vj)) + (1.5 * chloroplast * oxygenation(phi, Vc, Vj)) - (chloroplast * PGA_consumption(PGA, Rp, NADPH, Nt, Vcmax));
    der(NADPH) = (chloroplast * NADPH_production(J, NADP, Nt)) - (2.0 * chloroplast * carboxylation(Vc, Vj)) - (2.0 * chloroplast * oxygenation(phi, Vc, Vj));
    der(CO2) = 0.0;
    der(O2) = 0.0;




end BIOMD384;
