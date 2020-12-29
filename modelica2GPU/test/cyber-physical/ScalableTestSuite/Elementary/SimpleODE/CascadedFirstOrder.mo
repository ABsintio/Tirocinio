within SimpleODE;
model CascadedFirstOrder
    parameter Integer N = 10;
    parameter Real T = 1;
    Real tau;
    Real x[N](each start=0, each fixed=true);
initial equation
    tau = T / N;
equation
    der(tau) = 0.0;
    tau*der(x[1]) = 1 - x[1];
    for i in 2:N loop
        tau*der(x[i]) = x[i - 1] - x[i];
    end for;
end CascadedFirstOrder;
