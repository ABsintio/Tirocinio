within HarmonicOscillatorNetwork;
model HarmonicOscillatorNetwork_model "Description"
  import SI = Modelica.SIunits;
  parameter Integer N = 2 "Number of masses in the systems";
  parameter SI.Mass m = 1 "Mass of each node";
  parameter SI.TranslationalSpringConstant k = 10 "Elastic constant of each spring";
  SI.Position xm[N] "Position of the masses";
  SI.Velocity v[N] "Velocity of the masses";
  SI.Position xs[N] "Positions of the spring network node";
equation
  for i in 1:N loop
  	der(xm[i]) = v[i];
  	m * der(v[i]) = k * (xs[i] - xm[i]);
  end for;  
  xs[1] = (xm[1] + xs[2]) / 3;
  for i in 2:N - 1 loop
    xs[i] = (xm[i] + xs[i - 1] + xs[i + 1]) / 3;
  end for;
  xs[N] = (xm[N] + xs[N - 1]) / 3;
initial equation
  xm[1] = N;
  v[1] = 0;
  for i in 2:N loop
    xm[i] = 0;
    v[i] = 0;
  end for;
end HarmonicOscillatorNetwork_model;