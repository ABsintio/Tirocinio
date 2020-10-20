class ECU "Electrocni Control Unit"

parameter Real T = 0.001;

Real altitude;
Real velocity;
Real acceleration;
Real f1, f2;
Real thrust;
Real history;



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

function autopilot2
  input Real h;
  input Real v;
  input Real f1;
  input Real f2;
   output Real y;
algorithm
if (v <= -10) 
then y := f1;
else if (v <= -1) 
     then y := f2;
     else y := 0.0;
     end if;
end if;
end autopilot2;

function autopilot3
  input Real h;
  input Real v;
  input Real f1;
  input Real f2;
   output Real y;
algorithm

if (h >= 55000) 
then y := 0;
else
if (v <= -10) 
then y := f1;
else if (v <= -1) 
     then y := f2;
     else y := 0.0;
     end if;
end if;
end if;

end autopilot3;

function autopilot4
  input Real h;
  input Real v;
  input Real f1;
  input Real f2;
   output Real y;
algorithm

if ( (h >= 0) and (v > 0) )
then y := 0;
else if (h <= 0)
     then y := f2;
     else y := f1;
     end if;
end if;

end autopilot4;


function autopilot5
  input Real h;
  input Real v;
  input Real f1;
  input Real f2;
   output Real y;
algorithm

if (h >= 10000)
then if (v < -100)
     then y := f1;
     else y := 0;
     end if;
end if;


if ((h < 10000) and (h >= 0))
then if (v < -10)
     then y := f2;
     else y := 0;
     end if;
end if;


end autopilot5;


function autopilot7
  input Real h;
  input Real v;
  input Real f1;
  input Real f2;
  input Real oldval;
  output Real y;
  protected Real error;
algorithm


if (h >= 60000)
then y := 0;
end if;

if ((h <= 60000) and (h >= 10000))
then // target velocity: -500
     if (v <= -501)
     then y := f1;
     else
	  if (v >= -499)
     	  then y:= 0;
     	  else y:= oldval;
          end if;
     end if;
end if;

if ((h <= 10000) and (h >= 5000))
then // target velocity: -300
     if (v <= -301)
     then y := f1;
     else
	  if (v >= -299)
     	  then y:= 0;
     	  else y:= oldval;
          end if;
     end if;
end if;

if ((h <= 5000) and (h >= 1000))
then // target velocity: -200
     if (v <= -201)
     then y := f1;
     else
	  if (v >= -199)
     	  then y:= 0;
     	  else y:= oldval;
          end if;
     end if;
end if;

if ((h <= 1000) and (h >= 100))
then // target velocity: -100
     if (v <= -101)
     then y := f1;
     else
	  if (v >= -99)
     	  then y:= 0;
     	  else y:= oldval;
          end if;
     end if;
end if;

if ((h <= 100) and (h >= 3))
then // target velocity: -10
     if (v <= -11)
     then y := f2;
     else
	  if (v >= -9)
     	  then y:= 0;
     	  else y:= oldval;
          end if;
     end if;
end if;

if ((h <= 3) and (h >= 1))
then // target velocity: -0.5
     if (v <= -0.7)
     then y := f2;
     else
	  if (v >= -0.3)
     	  then y:= 0;
     	  else y:= oldval;
          end if;
     end if;
end if;

if ((h <=1) and (h >= -1))
then // target velocity: -0.5
y:= 0;
end if;


if ((h <= -1) and (h >= -6))
then // target velocity: 0.5
     if (v <= 0.4)
     then y := f2;
     else
	  if (v >= 0.8)
     	  then y:= 0;
     	  else y:= oldval;
          end if;
     end if;
end if;

if (h < -6)
then y := f1;
end if;

end autopilot7;

equation


when sample(0, T) then

history = pre(thrust);
thrust = autopilot7(altitude, velocity, f1, f2, history);

end when;


end ECU;

