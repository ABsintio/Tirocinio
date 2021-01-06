within DistrictHeating.TestHysteresis;
model TestHysteresis_model "Test of the bifurcation-based hysteresis behaviour"
  function hist
    "Cubic function to implement the bifurcation-based temperature controller"
    input Real x;
    input Real p;
    input Real e = 1;
    output Real y;
  algorithm
    y:=-(x+0.5)*(x-0.5)*x*1/(0.0474)*e+p;
  end hist;

  function sat "Smooth saturation of input x between xmin and xmax"
    input Real x;
    input Real xmin;
    input Real xmax;
    output Real y;
  algorithm
    y := tanh(2*(x-xmin)/(xmax-xmin)-1)*(xmax-xmin)/2 + (xmax+xmin)/2;
  end sat;
  
  parameter Real a = 50 "Gain of the histeresis function";
  parameter Real b = 15 "Slope of the saturation function at the origin";
  Real p = 3*sin(time);
  Real x(start = 0, fixed = true);
  Real y;
equation
  der(x) = a*hist(x, p);
  y = sat(b*x, -0.5, 0.5) + 0.5;
end TestHysteresis_model;
