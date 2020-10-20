
class System

Controller ctr;
Plant plant;
Monitor monitor;

// Exhogenous Inputs
Real d;

equation

d = 200*sin(2*3.14*1*time);



plant.d = d;
plant.x = ctr.x;
plant.u = ctr.u;
monitor.x = plant.x;

end System;