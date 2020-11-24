model BIOMD016 "A model for circadian oscillations in the Drosophila period protein (PER)"
  
	parameter Real Vs = 0.76;
	parameter Real KI = 1.00;
	parameter Real n = 4.00;
	parameter Real Ks = 0.38;
	parameter Real V1 = 3.20;
	parameter Real K1 = 2.00;
	parameter Real V2 = 1.58;
	parameter Real K2 = 2.00;
	parameter Real V3 = 5.00;
	parameter Real K3 = 2.00;
	parameter Real V4 = 2.50;
	parameter Real K4 = 2.00;
	parameter Real k1 = 1.90;
	parameter Real k2 = 1.30;
	parameter Real Vm = 0.65;
	parameter Real Km = 0.50;
	parameter Real Vd = 0.95;
	parameter Real Kd = 0.20;

	Real M  "PER mRNA";
	Real P0 "unphosphorylated PER";
	Real P1 "monophosphorylated PER";
	Real P2 "biphosphorylated PER";
	Real Pn "nuclear PER";
	Real Pt "total PER";

initial equation
	M = 0.10;
	P0 = 0.25;
	P1 = 0.25;
	P2 = 0.25;
	Pn = 0.25;

equation
	Pt = P0 + P1 + P2 + Pn;	
	der(M) = (Vs * KI^n / (KI^n + Pn^n)) - (Vm * M / (Km + M));
	der(P0) = (Ks * M) + (V2 * P1 / (K2 + P1)) - (V1 * P0 / (K1 + P0));
	der(P1) = (V1 * P0 / (K1 + P0)) + (V4 * P2 / (K4 + P2)) - (V2 * P1 / (K2 + P1)) - (V3 * P1 / (K3 + P1));
	der(P2) = (V3 * P1 / (K3 + P1)) + (k2 * Pn) - (V4 * P2 / (K4 + P2)) - (k1 * P2) - (Vd * P2 / (Kd + P2));
	der(Pn) = (k1 * P2) - (k2 * Pn);
  
end BIOMD016;
