
class Controller

parameter Real T = 0.1;

// ad conversion parameters
input Real Delta = 0.4;  
input Real LoVal = 0;
input Real HiVal = 10;

input Real x;  // Plant state (Temperature)
output Integer u;  // u=0 Heater OFF, u=1 Heater ON

Real sensor;

initial equation

u = 0;
pre(u) = 0;

equation

// Threshold = (k.Hmin + k.Hmax)/2;  // KL

when sample(0, T) then

sensor = ad(Delta, LoVal, HiVal, x);



if (sensor <= 8.0 ) 
then u = 1;
else u = 0;
end if;

end when ;


end Controller;




