
block Ctr   // car controller

parameter Real T = 3;

input TrafficLightSignal y;

input CarState x;

output Driver u;

equation

when sample(0, T) then

if (x == CarState.before) then

       if (y == TrafficLightSignal.green) then
	       u = Driver.go;
     
	elseif (y == TrafficLightSignal.orange) then
	       u = Driver.stop;
     
	else  // y == TrafficLightSignal.red
	       u = Driver.stop;
     	end if;

else  // CarState is crossing or past
      u = Driver.go;
end if;

end when;

end Ctr;
