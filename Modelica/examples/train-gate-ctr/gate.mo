
class Gate

parameter Real v = 9;

Boolean lower;
Boolean raise;

Real g;
Integer m;

initial equation
g = 90;
m = 4;
//pre(m) = 4;


equation


if (m == 1)  // closed
then der(g) = 0;
else
if (m == 2)  // lowering
then der(g) = -v;
else
if (m == 3) // raising
then  der(g) = v;
else // m == 4 -- open
      der(g) = 0;
end if;     // m == 3
end if ;    // m == 2
end if;     // m == 1
   

when sample(0, 0.1) then

if (pre(m) == 1) 
then  if (raise and (not lower))
      then m = 3;
      else m = pre(m);
      end if;
else
if (pre(m) == 2)
then
      if (g <= 0)
      then m = 1;
      else
      if (raise and (not lower))
      then m = 3;
      else m = pre(m);
      end if;
      end if;
else
if (pre(m) == 3)
then
      if (g >= 90)
      then m = 4;
      else
      if lower
      then m = 2;
      else m = pre(m);
      end if;
      end if;
else  // pre(m) == 4
      if (lower)
      then m = 2;
      else m = pre(m);
      end if;
end if;  // m == 3
end if;  // m == 2
end if;  // m == 1

end when;


/*

algorithm

when sample(0, 20) then
lower := not pre(lower);
end when;

when sample(10, 20) then
raise := not pre(raise);
end when;

*/





end Gate;




