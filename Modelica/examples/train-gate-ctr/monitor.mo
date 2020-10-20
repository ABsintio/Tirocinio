
class Monitor

Real x;  // train position
Integer m;  // gate mode
Boolean z, y;

initial equation
y = false;
z = false;
//pre(z) = false;
//pre(y) = false;

equation

z = (x >= -10) and (x <= 10) and (not (m == 1));

algorithm

when edge(z) then
   y := true;
end when;


end Monitor;