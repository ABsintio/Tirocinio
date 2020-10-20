
class Controller

parameter Real a = 13;


Boolean app;
Boolean exit;
Boolean lower;
Boolean raise;
Boolean oldapp;
Boolean oldexit;



initial equation

lower = false;
raise = false;
oldapp = false;
oldexit = false;
pre(lower) = false;
pre(raise) = false;


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
then lower = true; raise = false; 
else if (pre(oldexit) and (not exit)) 
     then lower = false; raise = true; 
     else lower = false; raise = false; 
     end if;
end if;
    

end when ;




end Controller;




