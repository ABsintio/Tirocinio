
model BIOMD383 "Arnold2011_Farquhar1980_RuBisCO-CalvinCycle"

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


    function carboxylation
        	input Real kc;
	input Real S2;
	input Real K;
	input Real R;
	input Real KI;
	input Real E;
	input Real S1;
        output Real y;
    algorithm
        y :=  ((kc * S2 / (S2 + K * (1 + R / KI))) * E + (kc * S2 / (S2 + K * (1 + R / KI))) * S1 - abs((kc * S2 / (S2 + K * (1 + R / KI))) * E - (kc * S2 / (S2 + K * (1 + R / KI))) * S1)) / 2;
    end carboxylation;


    function PGA_consumption
        	input Real S1;
	input Real Rp;
	input Real Nt;
	input Real kc;
	input Real E;
	input Real R;
        output Real y;
    algorithm
        y :=  (S1 / Rp) * (R / Nt) * kc * E;
    end PGA_consumption;


    function NADPH_production
        	input Real j;
	input Real S1;
	input Real Nt;
        output Real y;
    algorithm
        y :=  (j / 2) * (S1 / Nt);
    end NADPH_production;


    function oxygenation
        	input Real phi;
	input Real kc;
	input Real S2;
	input Real K;
	input Real R;
	input Real KI;
	input Real E;
	input Real S1;
        output Real y;
    algorithm
        y :=  phi * ((kc * S2 / (S2 + K * (1 + R / KI))) * E + (kc * S2 / (S2 + K * (1 + R / KI))) * S1 - abs((kc * S2 / (S2 + K * (1 + R / KI))) * E - (kc * S2 / (S2 + K * (1 + R / KI))) * S1)) / 2;
    end oxygenation;


    parameter Real E = 1.33846153846154;
    parameter Real Rp = 3.2;
    parameter Real Nt = 0.5;
    parameter Real f = 0.23;
    parameter Real I = 1000.0;
    parameter Real kc = 2.5;
    parameter Real Kc = 460.0;
    parameter Real Ko = 330.0;
    parameter Real chloroplast = 1.0;

    Real jp(start=385.0);
    Real j(start=5.92307692307692);
    Real phi(start=0.267272727272727);

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
    CO2 = 230.0;
    O2 = 210.0;

equation
    jp = 1 / 2 * (1 - f) * I;
    NADP = Nt - NADPH;
    phi = 0.21 * (O2 / Ko) / (CO2 / Kc);
    j = (abs(jp + 467) - abs(jp - 467)) / 2 / 65;
    der(RuBP) = 0.0;
    der(PGA) = (2.0 * chloroplast * carboxylation(kc, CO2, Kc, O2, Ko, E, RuBP)) + (1.5 * chloroplast * oxygenation(phi, kc, CO2, Kc, O2, Ko, E, RuBP)) - (chloroplast * PGA_consumption(PGA, Rp, Nt, kc, E, NADPH));
    der(NADPH) = (chloroplast * NADPH_production(j, NADP, Nt)) - (2.0 * chloroplast * carboxylation(kc, CO2, Kc, O2, Ko, E, RuBP)) - (2.0 * chloroplast * oxygenation(phi, kc, CO2, Kc, O2, Ko, E, RuBP));
    der(CO2) = 0.0;
    der(O2) = 0.0;




end BIOMD383;
