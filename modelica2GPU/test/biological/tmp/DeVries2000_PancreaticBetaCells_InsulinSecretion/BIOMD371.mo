
model BIOMD371 "DeVries2000_PancreaticBetaCells_InsulinSecretion"

    function pow
        input  Real x;
        input  Real power;
        output Real y;
        algorithm
            y := x^power;
    end pow;
    
    function piecewise
        input Real x;
        input Boolean condition;
        input Real y;
        output Real z;
        algorithm
            z := if condition then x else y;
    end piecewise;



    parameter Real tau_membrane = 20.0;
    parameter Real g_Ca = 3.6;
    parameter Real V_Ca = 25.0;
    parameter Real V_m = -20.0;
    parameter Real theta_m = 12.0;
    parameter Real V_K = -75.0;
    parameter Real g_K = 10.0;
    parameter Real V_n = -17.0;
    parameter Real theta_n = 5.6;
    parameter Real lamda = 0.8;
    parameter Real tau_potassium_current_n_gate = 20.0;
    parameter Real g_s = 4.0;
    parameter Real V_s = -22.0;
    parameter Real theta_s = 8.0;
    parameter Real tau_s = 20000.0;
    parameter Real g_K_ATP = 1.2;
    parameter Real p = 0.5;
    parameter Real Compartment = 1.0;

    Real i_Ca(start=-7.4446678508483);
    Real m_infinity(start=0.0229773699100256);
    Real i_K(start=5.0);
    Real n_infinity(start=0.000189405943825186);
    Real i_s(start=1.0);
    Real s_infinity(start=0.00460957217937421);
    Real i_K_ATP(start=6.0);

    Real V_membrane;
    Real n;
    Real s;

initial equation
    V_membrane = -65.0;
    n = 0.05;
    s = 0.025;

equation
    m_infinity = 1 / (1 + exp((V_m - V_membrane) / theta_m));
    i_Ca = g_Ca * m_infinity * (V_membrane - V_Ca);
    i_K = g_K * n * (V_membrane - V_K);
    n_infinity = 1 / (1 + exp((V_n - V_membrane) / theta_n));
    i_s = g_s * s * (V_membrane - V_K);
    s_infinity = 1 / (1 + exp((V_s - V_membrane) / theta_s));
    i_K_ATP = g_K_ATP * p * (V_membrane - V_K);
    der(V_membrane) = -(i_Ca + i_K + i_K_ATP + i_s) / tau_membrane;
    der(n) = lamda * (n_infinity - n) / tau_potassium_current_n_gate;
    der(s) = (s_infinity - s) / tau_s;




end BIOMD371;
