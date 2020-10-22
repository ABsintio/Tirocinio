within oven;
class plant
	extends Modelica.Icons.ExamplesPackage;

parameter Real x0 = 400;  // °C 

parameter Real a=10;  // Heater ON: 
parameter Real b=1;  //  Heater OFF

input Integer u;
input Real d;

Real x;   // FIFO  MB

initial equation
x = x0;

equation

der(x) = u*a - b + d;

end plant;




