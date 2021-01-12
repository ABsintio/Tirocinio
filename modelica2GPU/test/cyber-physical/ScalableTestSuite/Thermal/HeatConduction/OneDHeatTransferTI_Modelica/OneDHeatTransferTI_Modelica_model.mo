within HeatConduction.OneDHeatTransferTI_Modelica;
model OneDHeatTransferTI_Modelica_model
  "one end at a fixed temperature, one end is insulated; implemented by MSL"
  import Modelica.SIunits;
  import Modelica.Thermal;
  parameter SIunits.Length L "Length";
  parameter Integer N = 2 "Number of nodes";
  parameter SIunits.SpecificHeatCapacity cp "Material Heat Capacity";
  parameter SIunits.Density rho "Material Density";
  final parameter SIunits.Mass m = rho * v "mass";
  final parameter SIunits.Volume v = L * A "volume of the rod";
  parameter SIunits.ThermalConductivity lambda
    "Material thermal conductivity";
  parameter SIunits.Area A "Area";
  parameter SIunits.Temperature T0
    "Initial temperature of the heatcapacitors";
  parameter SIunits.Temperature TN "fixed temperature at the last node";
  Thermal.HeatTransfer.Sources.FixedTemperature fixedtemperature(T = TN)
    "fixed temperature at the last node";
  Thermal.HeatTransfer.Components.ThermalConductor thermalconductor[N - 1](each G = lambda * A / (L / (N - 1)))
    "thermal conductors";
  Thermal.HeatTransfer.Components.HeatCapacitor heatcapacitor[N - 1](each C = cp * m / (N - 1))
    "heat capacitors";
initial equation
  for i in 1:N - 1 loop
    heatcapacitor[i].T = T0;
  end for;
equation
  connect(fixedtemperature.port, thermalconductor[N - 1].port_b);
  connect(thermalconductor[N - 1].port_a, heatcapacitor[N - 1].port);
  for i in 1:N - 2 loop
    connect(heatcapacitor[i].port, thermalconductor[i].port_a);
    connect(thermalconductor[i].port_b, heatcapacitor[i + 1].port);
  end for;
end OneDHeatTransferTI_Modelica_model;
