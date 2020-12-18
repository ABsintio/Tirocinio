
model BIOMD304 "Plant1981_BurstingNerveCells"

    function pow
        input  Real x;
        input  Real power;
        output Real y;
        algorithm
            y := x^power;
    end pow;

    parameter Real V_I = 30.0;
    parameter Real V_K = -75.0;
    parameter Real V_L = -40.0;
    parameter Real V_Ca = 140.0;
    parameter Real g_I = 4.0;
    parameter Real g_K = 0.3;
    parameter Real g_T = 0.01;
    parameter Real g_K_Ca = 0.03;
    parameter Real g_L = 0.003;
    parameter Real K_p = 0.5;
    parameter Real K_c = 0.0085;
    parameter Real f = 0.0003;
    parameter Real tau_x = 235.0;
    parameter Real a = 1.209;
    parameter Real b = 78.714;
    parameter Real COMpartment = 1.0;

    Real i_Na(start=0.0);
    Real Vs(start=0.0);
    Real m_infinity(start=0.0);
    Real alpha_m(start=0.0);
    Real beta_m(start=0.0);
    Real h_infinity(start=0.0);
    Real alpha_h(start=0.0);
    Real beta_h(start=0.0);
    Real tau_h(start=0.0);
    Real g_Ca(start=0.004);
    Real x_infinity(start=0.0);
    Real i_Ca(start=0.0);
    Real n_infinity(start=0.0);
    Real i_K(start=0.0);
    Real alpha_n(start=0.0);
    Real beta_n(start=0.0);
    Real tau_n(start=0.0);
    Real i_K_Ca(start=0.0);
    Real i_L(start=0.0);

    Real V_membrane;
    Real h1;
    Real x1;
    Real n1;
    Real c;

initial equation
    V_membrane = -55.0;
    h1 = 0.9;
    x1 = 0.27;
    n1 = 0.03;
    c = 0.4;

equation
    Vs = a * V_membrane + b;
    alpha_m = 0.1 * (50 - Vs) / (exp((50 - Vs) / 10) - 1);
    beta_m = 4 * exp((25 - Vs) / 18);
    m_infinity = alpha_m / (alpha_m + beta_m);
    alpha_h = 0.07 * exp((25 - Vs) / 20);
    beta_h = 1 / (exp((55 - Vs) / 10) + 1);
    h_infinity = alpha_h / (alpha_h + beta_h);
    tau_h = 12.5 / (alpha_h + beta_h);
    i_Na = g_I * pow(m_infinity, 3) * h1 * (V_I - V_membrane);
    x_infinity = 1 / (exp(0.15 * (-V_membrane - 50)) + 1);
    i_Ca = g_T * x1 * (V_I - V_membrane);
    alpha_n = 0.01 * (55 - Vs) / (exp((55 - Vs) / 10) - 1);
    beta_n = 0.125 * exp((45 - Vs) / 80);
    n_infinity = alpha_n / (alpha_n + beta_n);
    tau_n = 12.5 / (alpha_n + beta_n);
    i_K = g_K * pow(n1, 4) * (V_K - V_membrane);
    i_K_Ca = g_K_Ca * c / (K_p + c) * (V_K - V_membrane);
    i_L = g_L * (V_L - V_membrane);
    der(h1) = (h_infinity - h1) / tau_h;
    der(x1) = (x_infinity - x1) / tau_x;
    der(n1) = (n_infinity - n1) / tau_n;
    der(c) = f * (K_c * x1 * (V_Ca - V_membrane) - c);
    der(V_membrane) = i_Na + i_Ca + i_K + i_K_Ca + i_L;
    der(g_Ca)=0.0;



end BIOMD304;
