within HarmonicOscillators;
model HarmonicOscillator
  parameter Integer N = 2 "Number of masses in the system";
  parameter Real m = 1 "Mass of each node";
  parameter Real k = 10 "Elastic constant of each spring";
  Real x[N] "Positions of the masses";
  Real v[N] "Velocity of the masses";
equation
  for i in 1:N loop
    der(x[i]) = v[i];
  end for;
  m*der(v[1]) = k*(x[2]-x[1]);
  for i in 2:N - 1 loop
    m*der(v[i]) = k*(x[i-1] - x[i]) + k*(x[i+1] - x[i]);
  end for;
  m*der(v[N]) = k*(x[N-1]-x[N]);
initial equation
  x[1] = N;
  v[1] = 0;
  for i in 2:N loop
    x[i] = 0;
    v[i] = 0;
  end for;
end HarmonicOscillator;