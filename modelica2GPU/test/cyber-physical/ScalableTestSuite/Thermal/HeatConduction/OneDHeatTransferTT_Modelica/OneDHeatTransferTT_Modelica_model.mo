within HeatConduction.OneDHeatTransferTT_Modelica;
model OneDHeatTransferTT_Modelica_model
  "both ends at a fixed temperature implemented by MSL"
  import Modelica.SIunits;
  import Modelica.Thermal;
  parameter SIunits.Length L "Length";
  parameter Integer N = 3 "Number of nodes";
  parameter SIunits.SpecificHeatCapacity cp "Material Heat Capacity";
  parameter Modelica.SIunits.Density rho "Material Density";
  parameter SIunits.Area A "area";
  final parameter SIunits.Mass m = rho * v "Mass";
  final parameter SIunits.Volume v = L * A;
  parameter SIunits.ThermalConductivity lambda
    "Material thermal conductivity";
  parameter SIunits.Temperature T0
    "Initial temperature of the heat capacitors";
  parameter SIunits.Temperature T1 "fixed temperature at the first node";
  parameter SIunits.Temperature TN "fixed temperature at the last node";
  Thermal.HeatTransfer.Sources.FixedTemperature fixedtemperature1(T = T1)
    "fixed temperature at the first node";
  Thermal.HeatTransfer.Sources.FixedTemperature fixedtemperatureN(T = TN)
    "fixed temperature at the last node";
  Thermal.HeatTransfer.Components.ThermalConductor thermalconductor[N - 1](each G = lambda * A / (L / (N - 1)))
    "thermal conductors";
  Thermal.HeatTransfer.Components.HeatCapacitor heatcapacitor[N - 2](each C = cp * m / (N - 2))
    "heat capacitors";
initial equation
  for i in 1:N - 2 loop
    heatcapacitor[i].T = T0;
  end for;
equation
  connect(fixedtemperature1.port, thermalconductor[1].port_a);
  connect(thermalconductor[1].port_b, heatcapacitor[1].port);
  connect(heatcapacitor[N - 2].port, thermalconductor[N - 1].port_a);
  connect(thermalconductor[N - 1].port_b, fixedtemperatureN.port);
  for i in 1:N - 3 loop
    connect(thermalconductor[i + 1].port_a, heatcapacitor[i].port);
    connect(thermalconductor[i + 1].port_b, heatcapacitor[i + 1].port);
  end for;
end OneDHeatTransferTT_Modelica_model;