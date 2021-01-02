within HeatConduction;
model OneDHeatTransferTI_FD
  "One end at a fixed temperature, one end is insulated; implemented by FD method"
  parameter Real L "Length";
  parameter Integer N = 2 "number of nodes";
  parameter Real T0 "Initial temperature";
  parameter Real TN "Temperature at the last node";
  parameter Real cp "Material Heat Capacity";
  parameter Real lambda "Material thermal conductivity";
  parameter Real rho "Material Density";
  final parameter Real dx = L / (N - 1) "Element length";
  Real T[N] "temperature of the nodes";
initial equation
  for i in 1:N - 1 loop
    T[i] = T0;
  end for;
equation
  T[N] = TN;
  for i in 2:N - 1 loop
    der(T[i]) = lambda * ((T[i + 1] - T[i]) / dx + ((-T[i]) + T[i - 1]) / dx) / cp / rho / dx;
  end for;
  der(T[1]) = lambda * ((T[2] - T[1]) / dx) / cp / rho / dx;
end OneDHeatTransferTI_FD;