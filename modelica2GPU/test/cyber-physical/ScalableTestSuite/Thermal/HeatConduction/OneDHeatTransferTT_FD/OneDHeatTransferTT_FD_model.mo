within HeatConduction.OneDHeatTransferTT_FD;
model OneDHeatTransferTT_FD_model
  "Both ends are exposed to a fixed temperature, implemented by FD method"
  parameter Real L "length";
  parameter Integer N = 2 "number of nodes";
  parameter Real T0 "Initial temperature";
  parameter Real T1 "Initial temperature at first node";
  parameter Real TN "Initial temperature at the last node";
  parameter Real cp "Material Heat Capacity";
  parameter Real lambda
    "Material thermal conductivity";
  parameter Real rho "Material Density";
  final parameter Real dx = L / (N - 1) "Element length";
  Real T[N] "temperature of the nodes";
initial equation
  for i in 2:N - 1 loop
    T[i] = T0;
  end for;
equation
  T[1] = T1;
  T[N] = TN;
  for i in 2:N - 1 loop
    der(T[i]) = lambda * ((T[i - 1] - T[i]) / dx + ((-T[i]) + T[i + 1]) / dx) / cp / rho / dx;
  end for;
end OneDHeatTransferTT_FD_model;