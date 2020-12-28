within WhenEvents;
model ManyEvents
    parameter Integer N = 5;
    parameter Integer M = N;
    Real x[N](each start=0, each fixed=true);
    Boolean e[N](each start=false, each fixed=true);
equation
    for i in 1:N loop
        der(x[i]) = M/(N+1-i);
        when x[i] > 1 then
            e[i] = true;
        end when;
    end for;
end ManyEvents;
