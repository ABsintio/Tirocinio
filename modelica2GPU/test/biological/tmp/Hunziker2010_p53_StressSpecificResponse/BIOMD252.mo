
model BIOMD252 "Hunziker2010_p53_StressSpecificResponse"

    function pow
        input  Real x;
        input  Real power;
        output Real y;
        algorithm
            y := x^power;
    end pow;



    parameter Real S = 1000.0;
    parameter Real alpha = 0.1;
    parameter Real k_t = 0.03;
    parameter Real k_tl = 1.4;
    parameter Real k_b = 7200.0;
    parameter Real k_f = 5000.0;
    parameter Real beta = 0.6;
    parameter Real gamma = 0.2;
    parameter Real delta = 11.0;
    parameter Real compartment_1 = 1.0;



    Real p;
    Real mm;
    Real m;
    Real pm;

initial equation
    p = 1.0;
    mm = 1.0;
    m = 1.0;
    pm = 1.0;

equation

    der(p) = S - k_f * p * m - alpha * p + (k_b + gamma) * pm;
    der(mm) = k_t * pow(p, 2) - beta * mm;
    der(m) = k_tl * mm - k_f * p * m + (k_b + delta) * pm - gamma * m;
    der(pm) = k_f * p * m - (k_b + delta) * pm - gamma * pm;




end BIOMD252;
