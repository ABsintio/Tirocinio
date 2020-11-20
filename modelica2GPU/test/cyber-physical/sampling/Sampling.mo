model Sampling
  Integer i(start=0);
  Real x;
  
initial equation
  x = 1.0;
    
equation
  der(x) = (i + 5.0)*sin(time);
  when sample(2.0, 0.5) then
    i = pre(i) + 1;
    reinit(x, 1.0);
  end when;


end Sampling;
