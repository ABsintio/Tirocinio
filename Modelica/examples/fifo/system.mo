
class System

Controller ctr;
FIFO fifo;
Monitor monitor;

Real p;

equation

p = 0.5 + 0.1*sin(2*3.14*20*time);

fifo.p_out = p;
fifo.x = ctr.x;
fifo.u = ctr.u;
monitor.x = fifo.x;

end System;