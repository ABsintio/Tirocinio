
class Train

parameter Real v = 15;
parameter Real L = 100;   // train length in meters
parameter Real Xapp = -300;  
parameter Real Xexit = 30;
parameter Real x0 = -400;

Boolean app;
Boolean exit;

Real x;

initial equation
x = x0;
app = false;
exit = false;
pre(app) = false;
pre(exit) = false;

equation

der(x) = v;

if (x >= Xapp + L) 
then app = false;
else if (x >= Xapp)
     then app = true;
     else app = false;
     end if ;
end if;



if (x >= Xexit + L) 
then exit = false;
else if (x >= Xexit)
     then exit = true;
     else exit = false;
     end if ;
end if;




end Train;




