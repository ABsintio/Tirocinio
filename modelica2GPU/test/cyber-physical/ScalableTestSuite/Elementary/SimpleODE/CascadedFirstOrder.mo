model CascadedFirstOrder
    parameter Integer N = 10;
    parameter Real Ti = 1;
    parameter Real tau = Ti / N;
    Real x[N](each start=0, each fixed=true);
equation
    tau*der(x[1]) = 1 - x[1];
    for i in 2:N loop
        tau*der(x[i]) = x[i - 1] - x[i];
    end for;
end CascadedFirstOrder;
