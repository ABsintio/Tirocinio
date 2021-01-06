within DistrictHeating.HeatingSystem;
model HeatingSystem_model

  "Declarative model of a heating system - continuous-time dynamics"
  constant Real pi = Modelica.Constants.pi;
  parameter Integer N = 3 "Number of heated units";
  parameter Real Cu[N] = (ones(N) + linspace(0,1.348,N))*1e7
    "Heat capacity of heated units";
  parameter Real Cd = 2e6*N
    "Heat capacity of distribution circuit";
  parameter Real Gh = 200
    "Thermal conductance of heating elements";
  parameter Real Gu = 150
    "Thermal conductance of heated units to the atmosphere";
  parameter Real Qmax = N*3000
    "Maximum power output of heat generation unit";
  parameter Real Teps = 0.5
    "Threshold of heated unit temperature controllers";
  parameter Real Td0 = 343.15
    "Set point of distribution circuit temperature";
  parameter Real Tu0 = 293.15 "Heated unit temperature set point";
  parameter Real Kp = Qmax/4
    "Proportional gain of heat generation unit temperature controller";
  parameter Real a = 50 "Gain of the histeresis function";
  parameter Real b = 15 "Slope of the saturation function at the origin";

  // State variables
  Real Td(start = Td0, fixed = true)
    "Temperature of the fluid in the distribution system";
  Real Tu[N](each start = Tu0, each fixed = true)
    "Temperature of individual heated units";
  Real x[N](each start = -0.5, each fixed = true)
    "States of heated units temperature controllers";

  // Time-varying prescribed signals
  Real Text "External temperature";

  // Other intermediate algebraic variables
  Real Que[N] "Heat flows from heated units to the outside";
  Real Qh[N] "Heat flows to each heated unit";
  Real Qd "Heat flow to the distribution system";
  Real u[N] "Control signals for heaters";
equation
  Text = 278.15 + 8*sin(2*pi*time/86400);
  Cd*der(Td) =Qd - sum(Qh);
  Qd = Functions.sat(Kp*(Td0-Td),0, Qmax);
  for i in 1:N loop
    Qh[i] = Gh*(Td - Tu[i])*u[i];
    Que[i] =  Gu*(Tu[i] - Text);
    Cu[i]*der(Tu[i]) = Qh[i] - Que[i];
    der(x[i]) = a*Functions.hist(x[i], Tu0 - Tu[i], Teps);
    u[i] = Functions.sat(b*x[i], -0.5, 0.5)+0.5;
  end for;
end HeatingSystem_model;