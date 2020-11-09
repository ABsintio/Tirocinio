
block Monitor

input TrafficLightSignal x;  
input CarState z;
output Real y;

Boolean w;

initial equation
y = 0.0;
w = false;

equation

w = (x == TrafficLightSignal.red) and (z == CarState.crossing);

algorithm

when edge(w) then
y := 1.0;
end when;





end Monitor;