within Advection.SimpleAdvection;
model SimpleAdvection_model "Basic thermal advection model with uniform speed"
  parameter Integer N = 2 "Number of nodes";
  parameter Real Tstart[N]=ones(N)*300
    "Start value of the temperature distribution";
  parameter Real L = 10 "Pipe length";
  final parameter Real l = L/N "Length of one volume";
  Real u = 1 "Fluid speed";
  Real Tin = 300 "Inlet temperature";
  Real T[N] "Node temperatures";
  Real Ttilde[N-1](start = Tstart[2:N], each fixed = true)
    "Temperature states";
  Real Tout;
equation
  for j in 1:N-1 loop
    der(Ttilde[j]) = u/l*(T[j]-T[j+1]);
  end for;
  T[1] = Tin;
  T[N] = Tout;
  Ttilde = T[2:N];
end SimpleAdvection_model;
