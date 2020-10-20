
class Gate

parameter Real v = 9;

Boolean lower;
Boolean raise;
Boolean closed;
Boolean lowering;
Boolean raising;
Boolean open;

Real g;
// Integer m;

initial equation
g = 90;
closed = false;
lowering = false;
raising = false;
open = true;
pre(closed) = false;
pre(lowering) = false;
pre(raising) = false;
pre(open) = true;

// m = 4;
//pre(m) = 4;


equation


if (closed)  // closed
then der(g) = 0;
else
if (lowering)  // lowering
then der(g) = -v;
else
if (raising) // raising
then  der(g) = v;
else // m == 4 -- open
      der(g) = 0;
end if;     // m == 3
end if ;    // m == 2
end if;     // m == 1
   

algorithm

when sample(0, 1) then

if (pre(closed)) 
then  if (raise and (not lower))
      then raising := true; 
      end if;
else
if (pre(lowering))
then
      if (g <= 0)
      then closed := true;
      else
         if (raise and (not lower))
         then raising := true;
         end if;
      end if;
else
if (pre(raising))
then
      if (g >= 90)
      then open := true;
      else
        if lower
        then lowering := true;
        end if;
      end if;
else  // pre(open) 
      if (lower)
      then lowering := true;
      end if;
end if;  // raising
end if;  // lowering
end if;  // closed

end when;


algorithm


when sample(0, 20) then
lower := not pre(lower);
end when;

when sample(10, 20) then
raise := not pre(raise);
end when;







end Gate;




