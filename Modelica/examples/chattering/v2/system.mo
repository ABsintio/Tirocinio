
// Without Chattering




model System
  Real x;
initial equation
  x = 2;
equation
  der(x) = if noEvent(x>=1) then -1 else 1;
end System;
