within HeatExchanger.CocurrentHeatExchangerEquations;
model CocurrentHeatExchangerEquations
  "cocurrent heat exchanger implemented by equations"
  parameter Real L "length of the channels";
  parameter Integer N "number of nodes";
  parameter Real wB "mass flow rate of fluid B";
  parameter Real areaA "cross sectional area of channel A";
  parameter Real areaB "cross sectional area of channel B";
  parameter Real rhoA "density of fluid A";
  parameter Real rhoB "density of fluid B";
  parameter Real cpA
    "specific heat capacity of fluid A";
  parameter Real cpB
    "specific heat capacity of fluid B";
  parameter Real cpW
    "specific heat capacity of the wall";
  parameter Real gammaA
    "heat transfer coefficient of fluid A";
  parameter Real gammaB
    "heat transfer coefficient of fluid B";
  parameter Real omega "perimeter";
  final parameter Real l = L / (N - 1)
    "length of the each wall segment";
  Real wA "mass flow rate of fluid A";
  Real QA[N - 1]
    "heat flow rate of fluid A in the segments";
  Real QB[N - 1]
    "heat flow rate of fluid B in the segments";
  Real TA[N] "temperature nodes on channel A";
  Real TB[N] "temperature nodes on channel B";
  Real TW[N - 1] "temperatures on the wall segments";
  Real QtotA "total heat flow rate of fluid A";
  Real QtotB "total heat flow rate of fluid B";
initial equation
  for i in 2:N loop
    TA[i] = 300;
    TB[i] = 300;
    TW[i - 1] = 300;
  end for;
equation
  TA[1] = if time < 8 then 300 else 301;
  TB[1] = 310;
  wA = if time < 15 then 1 else 1.1;
  for i in 1:N - 1 loop
    rhoA * l * cpA * areaA * der(TA[i + 1]) = wA * cpA * TA[i] - wA * cpA * TA[i + 1] + QA[i];
    rhoB * l * cpB * areaB * der(TB[i + 1]) = wB * cpB * TB[i] - wB * cpB * TB[i + 1] - QB[i];
    QA[i] = (TW[i] - (TA[i] + TA[i + 1]) / 2) * gammaA * omega * l;
    QB[i] = ((TB[i] + TB[i + 1]) / 2 - TW[i]) * gammaB * omega * l;
    cpW / (N - 1) * der(TW[i]) = (-QA[i]) + QB[i];
  end for;
  QtotA = sum(QA);
  QtotB = sum(QB);
end CocurrentHeatExchangerEquations;