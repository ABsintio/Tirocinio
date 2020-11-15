model system "Simple FirstOrder system with algorithm sample"
    parameter Real sample_time=0.3;
    parameter Real x0=2.0;
    Real x;
    Real x_sampled;
    Integer i(start=0);
initial equation
    x = x0;
    x_sampled=x0;
equation
    der(x) = 1 - x;
algorithm
    when sample(0, sample_time) then
        i := pre(i) + 1;
    end when;
    when sample(0, sample_time) then
        x_sampled := x;
    end when;
end system;
