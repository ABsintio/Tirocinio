
class Controller

Constants k;

parameter Real T = 0.1;

// ad conversion parameters
input Real Delta = 0.4;  // T
input Real LoVal = 350;
input Real HiVal = 450;

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

if (sensor <= 399) 
then u = 1;
else if (sensor >= 401) 
      then u = 0;
      else u = pre(u);
      end if;
end if;

end when ;


end Controller;




