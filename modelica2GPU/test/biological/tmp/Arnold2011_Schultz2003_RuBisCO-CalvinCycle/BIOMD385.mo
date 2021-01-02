
model BIOMD385 "Arnold2011_Schultz2003_RuBisCO-CalvinCycle"

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


    function oxygenation
        	input Real phi;
	input Real Vc;
	input Real Vj;
	input Real Vp;
        output Real y;
    algorithm
        y :=  phi * ((Vc + Vj - abs(Vc - Vj)) / 2 + Vp - abs((Vc + Vj - abs(Vc - Vj)) / 2 - Vp)) / 2;
    end oxygenation;


    parameter Real Rp = 3.2;
    parameter Real Nt = 0.5;
    parameter Real alpha = 0.19;
    parameter Real Jmax = 112.989573402043;
    parameter Real Gamma = 3.81695;
    parameter Real PPFD = 1000.0;
    parameter Real Vcmax = 1.4749455852483;
    parameter Real Kc = 27.8535785188479;
    parameter Real Ko = 41.9469718861558;
    parameter Real TPU = 0.227712577291006;
    parameter Real g0 = 0.468615384615385;
    parameter Real h = 0.6;
    parameter Real k = 118.69;
    parameter Real Rd = 0.00624227154326423;
    parameter Real chloroplast = 1.0;

    Real J(start=2.98814971559545);
    Real phi(start=0.116856926991465);
    Real v_c(start=0.611525371598211);
    Real Vc(start=0.666248728058741);
    Real Vj(start=0.611525371598211);
    Real Vp(start=0.768408279573721);

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
    CO2 = 35.0;
    O2 = 21.0;

equation
    J = alpha * PPFD / sqrt(1 + pow(alpha * PPFD / Jmax, 2)) / (65 * 0.5);
    NADP = Nt - NADPH;
    Vj = J / 4 * ((CO2 - 1.6 * (1 / 2 * ((1.6 * (J / 4 - Rd) + (k * h / CO2 * Rd + g0) * (CO2 + 2 * Gamma) + k * h / CO2 * J / 4 * (Gamma - CO2)) / (1.6 - k * h / CO2 * (CO2 + 2 * Gamma)) + sqrt(pow((1.6 * (J / 4 - Rd) + (k * h / CO2 * Rd + g0) * (CO2 + 2 * Gamma) + k * h / CO2 * J / 4 * (Gamma - CO2)) / (1.6 - k * h / CO2 * (CO2 + 2 * Gamma)), 2) + 4 * g0 * ((Rd * (CO2 + 2 * Gamma) + J / 4 * (Gamma - CO2)) / (1.6 - k * h / CO2 * (CO2 + 2 * Gamma))))) / (g0 + k * h / CO2 * (1 / 2) * ((1.6 * (J / 4 - Rd) + (k * h / CO2 * Rd + g0) * (CO2 + 2 * Gamma) + k * h / CO2 * J / 4 * (Gamma - CO2)) / (1.6 - k * h / CO2 * (CO2 + 2 * Gamma)) + sqrt(pow((1.6 * (J / 4 - Rd) + (k * h / CO2 * Rd + g0) * (CO2 + 2 * Gamma) + k * h / CO2 * J / 4 * (Gamma - CO2)) / (1.6 - k * h / CO2 * (CO2 + 2 * Gamma)), 2) + 4 * g0 * ((Rd * (CO2 + 2 * Gamma) + J / 4 * (Gamma - CO2)) / (1.6 - k * h / CO2 * (CO2 + 2 * Gamma)))))))) / (CO2 - 1.6 * (1 / 2 * ((1.6 * (J / 4 - Rd) + (k * h / CO2 * Rd + g0) * (CO2 + 2 * Gamma) + k * h / CO2 * J / 4 * (Gamma - CO2)) / (1.6 - k * h / CO2 * (CO2 + 2 * Gamma)) + sqrt(pow((1.6 * (J / 4 - Rd) + (k * h / CO2 * Rd + g0) * (CO2 + 2 * Gamma) + k * h / CO2 * J / 4 * (Gamma - CO2)) / (1.6 - k * h / CO2 * (CO2 + 2 * Gamma)), 2) + 4 * g0 * ((Rd * (CO2 + 2 * Gamma) + J / 4 * (Gamma - CO2)) / (1.6 - k * h / CO2 * (CO2 + 2 * Gamma))))) / (g0 + k * h / CO2 * (1 / 2) * ((1.6 * (J / 4 - Rd) + (k * h / CO2 * Rd + g0) * (CO2 + 2 * Gamma) + k * h / CO2 * J / 4 * (Gamma - CO2)) / (1.6 - k * h / CO2 * (CO2 + 2 * Gamma)) + sqrt(pow((1.6 * (J / 4 - Rd) + (k * h / CO2 * Rd + g0) * (CO2 + 2 * Gamma) + k * h / CO2 * J / 4 * (Gamma - CO2)) / (1.6 - k * h / CO2 * (CO2 + 2 * Gamma)), 2) + 4 * g0 * ((Rd * (CO2 + 2 * Gamma) + J / 4 * (Gamma - CO2)) / (1.6 - k * h / CO2 * (CO2 + 2 * Gamma))))))) + 2 * Gamma));
    Vc = Vcmax * ((CO2 - 1.6 * (1 / 2 * ((1.6 * (Vcmax - Rd) + (k * h / CO2 * Rd + g0) * (CO2 + Kc * (1 + O2 / Ko)) + k * h / CO2 * Vcmax * (Gamma - CO2)) / (1.6 - k * h / CO2 * (CO2 + Kc * (1 + O2 / Ko))) + sqrt(pow((1.6 * (Vcmax - Rd) + (k * h / CO2 * Rd + g0) * (CO2 + Kc * (1 + O2 / Ko)) + k * h / CO2 * Vcmax * (Gamma - CO2)) / (1.6 - k * h / CO2 * (CO2 + Kc * (1 + O2 / Ko))), 2) + 4 * g0 * ((Rd * (CO2 + Kc * (1 + O2 / Ko)) + Vcmax * (Gamma - CO2)) / (1.6 - k * h / CO2 * (CO2 + Kc * (1 + O2 / Ko)))))) / (g0 + k * h / CO2 * (1 / 2) * ((1.6 * (Vcmax - Rd) + (k * h / CO2 * Rd + g0) * (CO2 + Kc * (1 + O2 / Ko)) + k * h / CO2 * Vcmax * (Gamma - CO2)) / (1.6 - k * h / CO2 * (CO2 + Kc * (1 + O2 / Ko))) + sqrt(pow((1.6 * (Vcmax - Rd) + (k * h / CO2 * Rd + g0) * (CO2 + Kc * (1 + O2 / Ko)) + k * h / CO2 * Vcmax * (Gamma - CO2)) / (1.6 - k * h / CO2 * (CO2 + Kc * (1 + O2 / Ko))), 2) + 4 * g0 * ((Rd * (CO2 + Kc * (1 + O2 / Ko)) + Vcmax * (Gamma - CO2)) / (1.6 - k * h / CO2 * (CO2 + Kc * (1 + O2 / Ko))))))))) / (CO2 - 1.6 * (1 / 2 * ((1.6 * (Vcmax - Rd) + (k * h / CO2 * Rd + g0) * (CO2 + Kc * (1 + O2 / Ko)) + k * h / CO2 * Vcmax * (Gamma - CO2)) / (1.6 - k * h / CO2 * (CO2 + Kc * (1 + O2 / Ko))) + sqrt(pow((1.6 * (Vcmax - Rd) + (k * h / CO2 * Rd + g0) * (CO2 + Kc * (1 + O2 / Ko)) + k * h / CO2 * Vcmax * (Gamma - CO2)) / (1.6 - k * h / CO2 * (CO2 + Kc * (1 + O2 / Ko))), 2) + 4 * g0 * ((Rd * (CO2 + Kc * (1 + O2 / Ko)) + Vcmax * (Gamma - CO2)) / (1.6 - k * h / CO2 * (CO2 + Kc * (1 + O2 / Ko)))))) / (g0 + k * h / CO2 * (1 / 2) * ((1.6 * (Vcmax - Rd) + (k * h / CO2 * Rd + g0) * (CO2 + Kc * (1 + O2 / Ko)) + k * h / CO2 * Vcmax * (Gamma - CO2)) / (1.6 - k * h / CO2 * (CO2 + Kc * (1 + O2 / Ko))) + sqrt(pow((1.6 * (Vcmax - Rd) + (k * h / CO2 * Rd + g0) * (CO2 + Kc * (1 + O2 / Ko)) + k * h / CO2 * Vcmax * (Gamma - CO2)) / (1.6 - k * h / CO2 * (CO2 + Kc * (1 + O2 / Ko))), 2) + 4 * g0 * ((Rd * (CO2 + Kc * (1 + O2 / Ko)) + Vcmax * (Gamma - CO2)) / (1.6 - k * h / CO2 * (CO2 + Kc * (1 + O2 / Ko)))))))) + Kc * (1 + O2 / Ko)));
    Vp = 3 * TPU * ((CO2 - 1.6 * (1 / 2 * ((1.6 * (3 * TPU - Rd) + (k * h / CO2 * Rd + g0) * (CO2 - Gamma) - k * h * 3 * TPU) / (1.6 - k * h / CO2 * (CO2 - Gamma)) + sqrt(pow((1.6 * (3 * TPU - Rd) + (k * h / CO2 * Rd + g0) * (CO2 - Gamma) - k * h * 3 * TPU) / (1.6 - k * h / CO2 * (CO2 - Gamma)), 2) + 4 * g0 * ((Rd * (CO2 - Gamma) - 3 * TPU * CO2) / (1.6 - k * h / CO2 * (CO2 - Gamma))))) / (g0 + k * h / CO2 * (1 / 2) * ((1.6 * (3 * TPU - Rd) + (k * h / CO2 * Rd + g0) * (CO2 - Gamma) - k * h * 3 * TPU) / (1.6 - k * h / CO2 * (CO2 - Gamma)) + sqrt(pow((1.6 * (3 * TPU - Rd) + (k * h / CO2 * Rd + g0) * (CO2 - Gamma) - k * h * 3 * TPU) / (1.6 - k * h / CO2 * (CO2 - Gamma)), 2) + 4 * g0 * ((Rd * (CO2 - Gamma) - 3 * TPU * CO2) / (1.6 - k * h / CO2 * (CO2 - Gamma)))))))) / (CO2 - 1.6 * (1 / 2 * ((1.6 * (3 * TPU - Rd) + (k * h / CO2 * Rd + g0) * (CO2 - Gamma) - k * h * 3 * TPU) / (1.6 - k * h / CO2 * (CO2 - Gamma)) + sqrt(pow((1.6 * (3 * TPU - Rd) + (k * h / CO2 * Rd + g0) * (CO2 - Gamma) - k * h * 3 * TPU) / (1.6 - k * h / CO2 * (CO2 - Gamma)), 2) + 4 * g0 * ((Rd * (CO2 - Gamma) - 3 * TPU * CO2) / (1.6 - k * h / CO2 * (CO2 - Gamma))))) / (g0 + k * h / CO2 * (1 / 2) * ((1.6 * (3 * TPU - Rd) + (k * h / CO2 * Rd + g0) * (CO2 - Gamma) - k * h * 3 * TPU) / (1.6 - k * h / CO2 * (CO2 - Gamma)) + sqrt(pow((1.6 * (3 * TPU - Rd) + (k * h / CO2 * Rd + g0) * (CO2 - Gamma) - k * h * 3 * TPU) / (1.6 - k * h / CO2 * (CO2 - Gamma)), 2) + 4 * g0 * ((Rd * (CO2 - Gamma) - 3 * TPU * CO2) / (1.6 - k * h / CO2 * (CO2 - Gamma))))))) - Gamma));
    v_c = (abs((abs(Vc + Vj) - abs(Vc - Vj)) / 2 + Vp) - abs((abs(Vc + Vj) - abs(Vc - Vj)) / 2 - Vp)) / 2;
    phi = 0.21 * ((g0 + h * k / CO2 * (v_c - Rd)) * O2 / Ko) / ((g0 + (h * k - 1.6) * (v_c - Rd)) / Kc);
    der(RuBP) = 0.0;
    der(PGA) = (2.0 * chloroplast * carboxylation(Vc, Vj, Vp)) + (1.5 * chloroplast * oxygenation(phi, Vc, Vj, Vp)) - (chloroplast * PGA_consumption(PGA, Rp, NADPH, Nt, Vcmax));
    der(NADPH) = (chloroplast * NADPH_production(J, NADP, Nt)) - (2.0 * chloroplast * carboxylation(Vc, Vj, Vp)) - (2.0 * chloroplast * oxygenation(phi, Vc, Vj, Vp));
    der(CO2) = 0.0;
    der(O2) = 0.0;




end BIOMD385;
