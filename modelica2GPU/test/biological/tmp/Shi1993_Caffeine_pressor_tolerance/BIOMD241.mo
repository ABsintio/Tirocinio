
model BIOMD241 "Shi1993_Caffeine_pressor_tolerance"

    function pow
        input  Real x;
        input  Real power;
        output Real y;
        algorithm
            y := x^power;
    end pow;

    parameter Real CL = 0.11;
    parameter Real V_C = 0.32;
    parameter Real k_a = 12.0;
    parameter Real t_lag = 0.15;
    parameter Real k10 = 0.34;
    parameter Real k12 = 1.64;
    parameter Real k21 = 1.19;
    parameter Real t_half = 3.98;
    parameter Real F = 0.984;
    parameter Real k_eo = 2.03;
    parameter Real k_tol = 0.75;
    parameter Real E_0 = 83.3;
    parameter Real S = 19.07;
    parameter Real T_50 = 0.26;
    parameter Real t_int = 2.0;
    parameter Real cupsize = 90.0;
    parameter Real bodyweight = 80.0;
    parameter Real Gut = 1.0;
    parameter Real C = 1.0;
    parameter Real P = 1.0;
    parameter Real Tol = 1.0;
    parameter Real Eff = 1.0;

    Real E(start=0.0);
    Real cups(start=0.0);

    Real X_gut;
    Real C_p;
    Real C_per;
    Real C_e;
    Real C_t;

initial equation
    X_gut = 0.0;
    C_p = 0.0;
    C_per = 0.0;
    C_e = 0.0;
    C_t = 0.0;

equation
    E = E_0 + S * C_e / (1 + C_t / T_50);
    der(X_gut) = -k_a * X_gut;
    der(C_p) = k_a * F * X_gut / V_C - k12 * C_p + k21 * C_per - k10 * C_p;
    der(C_per) = k12 * C_p - k21 * C_per;
    der(C_e) = k_eo * (C_p - C_e);
    der(C_t) = k_tol * (C_p - C_t);
    der(cups)=0.0;

    when time >= (t_int * cups + t_lag) then
        reinit(cups,cups + 1);
        reinit(X_gut,X_gut + cupsize / bodyweight);
    end when;

end BIOMD241;
