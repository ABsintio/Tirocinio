model system
    parameter Real x0=10.0;
    Real x;
    Real i(start=0.0, fixed=true);
initial equation
    x=x0;
equation
    der(x) = 1 - x;
    when sample(0, 0.1) then
        i = if x < 3 then pre(i) + 1 else pre(i) - 1;
    end when;
end system;
