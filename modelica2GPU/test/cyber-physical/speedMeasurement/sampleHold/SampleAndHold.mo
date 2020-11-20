model SampleAndHold "Measure speed and hold"
  extends SecondOrderSystem;
  parameter Real sample_time(unit="s")=0.1251231;
  discrete Real omega1_measured;
equation

  when sample(0, sample_time) then
    omega1_measured = omega1; // omega1 è uno stato
  end when;
  
  
end SampleAndHold;
