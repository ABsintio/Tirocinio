within DistrictHeating;
model Functions
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
    y := Modelica.Math.tanh(2*(x-xmin)/(xmax-xmin)-1)*(xmax-xmin)/2 + (xmax+xmin)/2;
  end sat;
end Functions;