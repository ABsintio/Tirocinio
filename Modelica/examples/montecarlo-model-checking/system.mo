
class System

Controller ctr;
Plant plant;
Monitor monitor;

Real write;
Real read;
parameter Integer ampiezza1=10;
parameter Integer ampiezza2=10;
parameter Real frequenza1=10;
parameter Real frequenza2=10;

equation

write = 10 + ampiezza1*sin(2*3.14*frequenza1*time);
read = 3 + ampiezza2*sin(2*3.14*frequenza2*time);


plant.write = write;
plant.read = read;
plant.x = ctr.x;
plant.u = ctr.u;
monitor.x = plant.x;

end System;