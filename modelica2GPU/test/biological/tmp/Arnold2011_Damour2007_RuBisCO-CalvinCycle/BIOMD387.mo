
model BIOMD387 "Arnold2011_Damour2007_RuBisCO-CalvinCycle"

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


    function carboxylation
        	input Real Vc;
	input Real Vj;
	input Real Vp;
        output Real y;
    algorithm
        y :=  ((Vc + Vj - abs(Vc - Vj)) / 2 + Vp - abs((Vc + Vj - abs(Vc - Vj)) / 2 - Vp)) / 2;
    end carboxylation;


    function NADPH_production
        	input Real j;
	input Real S1;
	input Real Nt;
        output Real y;
    algorithm
        y :=  (j / 2) * (S1 / Nt);
    end NADPH_production;


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
    
    function sqrt
        input Real x;
        output Real y;
        algorithm
            y := x^(1/2);
    end sqrt;

    parameter Real Rp = 3.2;
    parameter Real Nt = 0.5;
    parameter Real alpha = 0.24;
    parameter Real Jmax = 142.047003854271;
    parameter Real Q = 1000.0;
    parameter Real Vcmax = 1.91141270310584;
    parameter Real Kc = 26.7125313821435;
    parameter Real Ko = 187891.032274486;
    parameter Real TPU = 0.259027750094988;
    parameter Real a = 0.0434;
    parameter Real chloroplast = 1.0;

    Real J(start=3.64863790509821);
    Real Gamma(start=4.29040862748855);
    Real Vj(start=0.675554869049198);
    Real phi(start=0.025590660664217);
    Real Vc(start=0.822489884906092);
    Real Vp(start=0.942054655190967);
    Real Cst(start=0.999136712846952);

    Real RuBP;
    Real PGA;
    Real NADPH;
    Real CO2;
    Real O2;
    Real NADP;
    Real starch;

initial equation
    RuBP = 2.0;
    PGA = 2.4;
    NADPH = 0.21;
    CO2 = 24.5;
    O2 = 21000.0;
    starch = 0.5;

equation
    Gamma = O2 / (2 * exp(-7.458 + 37830 / (8.3143 * 298.15)));
    Cst = exp(-0.0398 * starch * a);
    phi = 0.21 * (O2 / Ko) / (CO2 / Kc);
    Vc = Vcmax * CO2 / ((1 + O2 / Ko) * (CO2 + Kc));
    Vp = 3 * TPU / (1 - Gamma / CO2);
    NADP = Nt - NADPH;
    J = Cst * alpha * 0.9 * Q / sqrt(1 + pow(alpha * 0.9 * Q / Jmax, 2)) / (65 * 0.5);
    Vj = J / 4 * CO2 / (CO2 + 2 * Gamma);
    der(RuBP) = 0.0;
    der(PGA) = (2.0 * chloroplast * carboxylation(Vc, Vj, Vp)) + (1.5 * chloroplast * oxygenation(phi, Vc, Vj, Vp)) - (chloroplast * PGA_consumption(PGA, Rp, NADPH, Nt, Vcmax));
    der(NADPH) = (chloroplast * NADPH_production(J, NADP, Nt)) - (2.0 * chloroplast * carboxylation(Vc, Vj, Vp)) - (2.0 * chloroplast * oxygenation(phi, Vc, Vj, Vp));
    der(CO2) = 0.0;
    der(O2) = 0.0;
    der(starch) = 0.0;




end BIOMD387;
