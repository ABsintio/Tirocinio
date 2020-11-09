
class Monitor

input Real x;  // plant state (Temperature)
output Boolean y;

Boolean overflow;
Boolean underflow;

initial equation
y = false;
overflow = false;
pre(overflow) = false;
underflow = false;
pre(underflow);

equation

overflow = (x > 10);
underflow = (x < 1);

algorithm

when (edge(underflow) or edge(overflow)) then
y := true;
end when;





end Monitor;