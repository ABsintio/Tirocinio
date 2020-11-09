
class Plant

parameter Real x0 = 6;  // ML

input Real write;    
input Real read;  

input Integer u;

Real x;   // ML

initial equation
x = x0;

equation

der(x) = u*write - read;

end Plant;




