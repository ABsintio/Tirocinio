within sampling;
model Sampling
  Integer i(start=0);
  Real x;
  Real t(start=0);
  
initial equation
  x = 1.0;
    
equation
  der(x) = x - 1;
  when sample(2, 0.5) then
    i = pre(i) + 1;
  end when;

algorithm
    t := time;

end Sampling;
