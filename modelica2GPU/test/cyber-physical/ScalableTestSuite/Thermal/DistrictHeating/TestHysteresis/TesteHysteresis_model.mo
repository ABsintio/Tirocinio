within DistrictHeating.TestHysteresis;
model TestHysteresis "Test of the bifurcation-based hysteresis behaviour"
  parameter Real a = 50 "Gain of the histeresis function";
  parameter Real b = 15 "Slope of the saturation function at the origin";
  Real p = 3*sin(time);
  Real x(start = 0, fixed = true);
  Real y;
equation
  der(x) = a*Functions.hist(x, p);
  y = Functions.sat(b*x, -0.5, 0.5) + 0.5;
end TestHysteresis;