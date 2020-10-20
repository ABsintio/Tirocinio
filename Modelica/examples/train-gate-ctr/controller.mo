
class Controller

parameter Real a = 1;
parameter Integer holdtime = 5;

Boolean app;
Boolean exit;
Boolean lower;
Boolean raise;
Boolean oldapp;
Boolean oldexit;
Integer timer;


initial equation

lower = false;
raise = false;
oldapp = false;
oldexit = false;
//pre(lower) = false;
//pre(raise) = false;
timer = 0;
//pre(timer) = 0;

equation




/*
when sample(1.5, 2.5) then
app = not pre(app);
end when;

when sample(2.5, 2.5) then
exit = not pre(exit);
end when;
*/


when sample(0, a) then

oldapp = pre(app);
oldexit = pre(exit);



if (app and (not pre(oldapp))) 
then lower = true; raise = false;  timer = holdtime;
else if (pre(oldexit) and (not exit)) 
     then lower = false; raise = true; timer = holdtime;
     else if (pre(timer) > 0) 
          then timer = pre(timer) - 1; lower = pre(lower); raise = pre(raise);
          else timer = 0; lower = false; raise = false; 
          end if;
     end if;
end if;
    

end when ;




end Controller;




