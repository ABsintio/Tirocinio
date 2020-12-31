within TransmissionLine;
model TransmissionLineEquations
  "Transmission line circuit - Direct implementation by equations"
  parameter Integer N = 1 "number of segments";
  parameter Real L "length of the transmission line";
  parameter Real l; "length of the each segment";
  parameter Real res "resistance per meter";
  parameter Real cap(min=0); "capacitance per meter";
  parameter Real ind "inductance per meter";
  parameter Real RL;
    "load resistance";
  parameter Real w;
  parameter Real TD
    "time delay of the transmission line";
  parameter Real v
    "velocity of the signal";
  Real Vstep "input step voltage";
  SIunits.Current cur[N](each start = 0)
    "current values at the nodes of the transmission line";
  SIunits.Voltage vol[N](each start = 0)
    "voltage values at the nodes of the transmission line";
  Real vvol "derivative of input voltage";
equation
  vvol = der(vol[1]);
  Vstep = vol[1] + 2 * (1 / w) * der(vol[1]) + 1 / w ^ 2 * der(vvol);
  vol[N] = cur[N] * RL;
  for i in 1:N - 1 loop
    cap * der(vol[i + 1]) = (cur[i] - cur[i + 1]) / l;
    ind * der(cur[i]) = (-res * cur[i]) - (vol[i + 1] - vol[i]) / l;
  end for;
initial equation
  vol = zeros(N);
  cur[1:N-1] = zeros(N-1);
  vvol = 0;
  l = L / N;
  R = (ind / cap) ^ (1 / 2);
  v = 1 / (ind * cap) ^ (1 / 2)
  w = L / v;
  Vstep = if time > 0 then 1 else 0;
end TransmissionLineEquations;