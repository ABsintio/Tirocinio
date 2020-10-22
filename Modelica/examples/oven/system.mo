within oven;
model system
	extends Modelica.Icons.ExamplesPackage;
	
controller ctr;
plant plantt;
monitor monitorr;

// Exhogenous Inputs
Real d;

equation

d = 200*sin(2*3.14*1*time);

plantt.d = d;
plantt.x = ctr.x;
plantt.u = ctr.u;
monitorr.x = plantt.x;

end system;
