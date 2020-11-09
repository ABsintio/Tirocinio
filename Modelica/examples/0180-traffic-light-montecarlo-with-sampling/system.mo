class System


TrafficLight p;
Car q;
Ctr k;
Monitor m;


equation

connect(k.x, q.x);
connect(k.y, p.x);
connect(q.u, k.u);
connect(m.x, p.x);
connect(m.z, q.x);

end System;
