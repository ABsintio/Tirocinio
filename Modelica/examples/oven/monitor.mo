within oven;
class monitor

input Real x;  // plant state (Temperature)
output Boolean y;

Boolean z;

initial equation
y = false;
z = false;
pre(z) = false;

equation

z = (x >= 405) or (x <= 395);

algorithm

when edge(z) then
y := true;
end when;





end monitor;
