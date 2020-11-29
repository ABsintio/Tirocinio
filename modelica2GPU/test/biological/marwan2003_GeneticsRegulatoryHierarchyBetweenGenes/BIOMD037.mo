model BIOMD038 "Theory of time-resolved somatic complementation and its use to explore the sporulation control network in Physarum polycephalum"

  parameter Real IfrSfrPfr = 0.1;
  parameter Real IrSrPr = 0.0;
  parameter Real kia = 0.1;
  parameter Real kai = 0.8;
  parameter Real kx = 0.2;
  parameter Real ky = 1.0;
  parameter Real kG = 0.1;
  parameter Real alpha1 = 30.0;
  parameter Real alpha2 = 50.0;
  parameter Real kd_s = 1.0;
  parameter Real kd_v = 1.0;
  parameter Real kd = 0.1;

  Real Pfr;
  Real Pr;
  Real Xi;
  Real Xa;
  Real prepreS;
  Real preS;
  Real Ya;
  Real S;
  Real Gluc;
  Real Yi;
  Real V;
  Real Pi;

initial equation
  Pfr = 10.0;
  Pr = 0.0;
  Xi = 6.0;
  Xa = 0.0;
  prepreS = 200.0;
  preS = 0.0;
  Ya = 0.9;
  S = 0.0;
  Gluc = 0.0;
  Yi = 0.0;
  V = 30.0;
  Pi = 0.0;

equation
  der(Pfr) = IrSrPr*Pr - Pfr*IfrSfrPfr;
  der(Pr) = -(IrSrPr*Pr - Pfr*IfrSfrPfr) - kd*Pr;
  der(Xi) = kai*Xa - Xi*kia*Pr;
  der(Xa) = -(kai*Xa - Xi*kia*Pr);
  der(prepreS) = -(prepreS*kx*Xa);
  der(preS) = prepreS*kx*Xa - preS*ky*Ya;
  der(Ya) = -(kG*Ya*Gluc);
  der(S) = preS*ky*Ya + alpha1/(1+V^3) - kd_s*S;
  der(Gluc) = 0.0;
  der(Yi) = kG*Ya*Gluc;
  der(V) = alpha2/(1+S^3) - V*kd_v;
  der(Pi) = kd*Pr;

end BIOMD038;
