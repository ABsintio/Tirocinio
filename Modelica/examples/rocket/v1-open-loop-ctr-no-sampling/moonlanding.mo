
class MoonLanding

parameter Real T = 1.0;

parameter Real force1 = 36350;
parameter Real force2 = 1308;

protected 
parameter Real thrustEndTime = 210;
parameter Real thrustDecreaseTime = 43.2;


public
Rocket apollo(name "apollo13");
CelestialBody moon(name="moon",mass=7.382e22,radius=1.738e6);

function autopilot1
  input Real x;
  input Real decreasetime;
  input Real endtime;
  input Real f1;
  input Real f2;
  output Real y;
algorithm
if (x < decreasetime) 
then y := f1;
else if (x < endtime) 
     then y := f2;
     else y := 0.0;
     end if;
end if;
end autopilot1;



equation


apollo.thrust = 
autopilot1(time, thrustDecreaseTime, thrustEndTime, force1, force2);

apollo.gravity = moon.g*moon.mass/(apollo.altitude+moon.radius)^2;


end MoonLanding;