within TransmissionLine;
model TransmissionLineEquations
  "Transmission line circuit - Direct implementation by equations"
  parameter Integer N = 1 "number of segments";
  parameter Real L "length of the transmission line";
  final parameter Real l = L/N "length of the each segment";
  parameter Real res "resistance per meter";
  parameter Real cap(min=0) "capacitance per meter";
  parameter Real ind "inductance per meter";
  final parameter Real RL = (ind / cap) ^ (1 / 2) "load resistance";
  parameter Real w;
  final parameter Real TD = L / v "time delay of the transmission line";
  final parameter Real v = 1 / (ind * cap) ^ (1 / 2) "velocity of the signal";
  Real Vstep = if time > 0 then 1 else 0 "input step voltage";
  Real cur[N](each start = 0) "current values at the nodes of the transmission line";
  Real vol[N](each start = 0) "voltage values at the nodes of the transmission line";
  Real vvol "derivative of input voltage";
  
initial equation
  vvol = 0;
  vol = zeros(N);
  cur[1:N-1] = zeros(N - 1);

equation
  vvol = der(vol[1]);
  Vstep = vol[1] + 2 * (1 / w) * der(vol[1]) + 1 / w ^ 2 * der(vvol);
  vol[N] = cur[N] * RL;
  for i in 1:N - 1 loop
    cap * der(vol[i + 1]) = (cur[i] - cur[i + 1]) / l;
    ind * der(cur[i]) = (-res * cur[i]) - (vol[i + 1] - vol[i]) / l;
  end for;
end TransmissionLineEquations;
