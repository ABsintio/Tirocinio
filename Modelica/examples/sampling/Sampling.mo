within sampling;
model Sampling
  Integer i(start=0);
  Real x;
  
initial equation
  x = 1.0;
    
equation
  der(x) = i*sin(time);
  when sample(1.0, 0.1) then
    i = pre(i) + 1;
    reinit(x, 1.0);
  end when;


end Sampling;
