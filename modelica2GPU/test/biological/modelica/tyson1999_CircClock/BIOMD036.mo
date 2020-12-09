model BIOMD036 "A simple model of circadian rhythms based on dimerization and proteolysis of PER and TIM"

  parameter Real N_A = 6.0221367e23;
  parameter Real Vm = 1.0;
  parameter Real Pcrit = 0.1;
  parameter Real Keq = 200.0;
  parameter Real V = 0.5;
  parameter Real D = 0.1;
  parameter Real k1 = 10.0;
  parameter Real k2 = 0.03;
  parameter Real J = 0.05;

  Real M;
  Real P;

initial equation
  M = 1.0;
  P = 1.0;

equation
  der(M) = Vm/(1+(P*(1-2/(1+(1+8*Keq*P)^0.5))/(2*Pcrit))^2) - D*M;
  der(P) = V*M - D*P - (k1*P*2/(1+(1+8*Keq*P)^0.5)+k2*P)/(J+P);

end BIOMD036;
