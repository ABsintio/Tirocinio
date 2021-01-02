
model BIOMD386 "Arnold2011_Sharkey2007_RuBisCO-CalvinCycle"

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


    function oxygenation
        	input Real phi;
	input Real Vc;
	input Real Vj;
	input Real Vp;
        output Real y;
    algorithm
        y :=  phi * ((Vc + Vj - abs(Vc - Vj)) / 2 + Vp - abs((Vc + Vj - abs(Vc - Vj)) / 2 - Vp)) / 2;
    end oxygenation;


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
	input Real Vp;
        output Real y;
    algorithm
        y :=  ((Vc + Vj - abs(Vc - Vj)) / 2 + Vp - abs((Vc + Vj - abs(Vc - Vj)) / 2 - Vp)) / 2;
    end carboxylation;


    parameter Real Rp = 3.2;
    parameter Real Nt = 0.5;
    parameter Real Rd = 0.0307674936008629;
    parameter Real J = 0.0307678189755062;
    parameter Real gm = 0.0307740792044142;
    parameter Real Gamma = 3.74116898182615;
    parameter Real Vcmax = 0.0307602623029146;
    parameter Real Kc = 27.2372124161502;
    parameter Real Ko = 16.5788431231261;
    parameter Real TPU = 0.0307585098788555;
    parameter Real chloroplast = 1.0;

    Real phi(start=0.286292104000314);
    Real v_c(start=0.00593820961819415);
    Real Vj(start=0.00593820961819415);
    Real Vp(start=0.110677228404984);
    Real Vc(start=0.00892944491541968);

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
    CO2 = 24.5;
    O2 = 21.0;

equation
    Vj = J / 4 * (CO2 - 1 / 2 * (CO2 + 2 * Gamma + (J - 4 * Rd) / (4 * gm) - sqrt(pow(CO2 + 2 * Gamma + (J - 4 * Rd) / (4 * gm), 2) + 4 / gm * (Rd * (CO2 + 2 * Gamma) + J / 4 * (Gamma - CO2))))) / (CO2 - 1 / 2 * (CO2 + 2 * Gamma + (J - 4 * Rd) / (4 * gm) - sqrt(pow(CO2 + 2 * Gamma + (J - 4 * Rd) / (4 * gm), 2) + 4 / gm * (Rd * (CO2 + 2 * Gamma) + J / 4 * (Gamma - CO2)))) + 2 * Gamma);
    NADP = Nt - NADPH;
    Vp = 3 * TPU * ((CO2 - (3 * TPU - Rd) / gm) / (CO2 - (3 * TPU - Rd) / gm - Gamma));
    Vc = Vcmax * (CO2 - 1 / 2 * (CO2 + Kc * (1 + O2 / Ko) + (Vcmax - Rd) / gm - sqrt(pow(CO2 + Kc * (1 + O2 / Ko) + (Vcmax - Rd) / gm, 2) + 4 / gm * (Rd * (CO2 + Kc * (1 + O2 / Ko)) + Vcmax * (Gamma - CO2))))) / (CO2 - 1 / 2 * (CO2 + Kc * (1 + O2 / Ko) + (Vcmax - Rd) / gm - sqrt(pow(CO2 + Kc * (1 + O2 / Ko) + (Vcmax - Rd) / gm, 2) + 4 / gm * (Rd * (CO2 + Kc * (1 + O2 / Ko)) + Vcmax * (Gamma - CO2)))) + Kc * (1 + O2 / Ko));
    v_c = (abs((abs(Vc + Vj) - abs(Vc - Vj)) / 2 + Vp) - abs((abs(Vc + Vj) - abs(Vc - Vj)) / 2 - Vp)) / 2;
    phi = 0.21 * (gm * O2 / Ko) / ((gm * CO2 - v_c + Rd) / Kc);
    der(RuBP) = 0.0;
    der(PGA) = (2.0 * chloroplast * carboxylation(Vc, Vj, Vp)) + (1.5 * chloroplast * oxygenation(phi, Vc, Vj, Vp)) - (chloroplast * PGA_consumption(PGA, Rp, NADPH, Nt, Vcmax));
    der(NADPH) = (chloroplast * NADPH_production(J, NADP, Nt)) - (2.0 * chloroplast * carboxylation(Vc, Vj, Vp)) - (2.0 * chloroplast * oxygenation(phi, Vc, Vj, Vp));
    der(CO2) = 0.0;
    der(O2) = 0.0;




end BIOMD386;
