within Advection.AdvectionReaction;
model AdvectionReaction_model
  "Model of an advection process with chemical reaction"
  parameter Integer N = 10 "Number of volumes";
  parameter Real mu = 1000 "Kinetic coefficient of the reaction";
  constant Real alpha = 0.5 "Parameter of the reaction model";
  Real u_in = 1 "Inlet concentration";
  Real u[N](each start = 0, each fixed = true)
    "Concentration at each volume outlet";
equation
  der(u[1]) = ((-u[1]) + 1)*N - mu*u[1]*(u[1] - alpha)*(u[1] - 1);
  for j in 2:N loop
    der(u[j]) = ((-u[j]) + u[j-1])*N - mu*u[j]*(u[j] - alpha)*(u[j] - 1);
  end for;
end AdvectionReaction_model;
