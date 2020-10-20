
class Monitor

input Real x;  // fifo level
output Boolean y;

Boolean z;

Constants k;


initial equation
y = false;
z = false;
pre(z) = false;

equation

z = (x >= 5) or (x <= 0);

algorithm

when edge(z) then
y := true;
end when;





end Monitor;