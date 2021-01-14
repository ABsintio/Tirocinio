
model BIOMD374 "Bertram1995_PancreaticBetaCell_CRAC"

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



    parameter Real Cm = 6158.0;
    parameter Real g_K = 3900.0;
    parameter Real lambda_n = 1.85;
    parameter Real g_K_ATP = 150.0;
    parameter Real V_Ca = 100.0;
    parameter Real g_Ca_f = 810.0;
    parameter Real g_Ca_s = 510.0;
    parameter Real g_K_Ca = 1200.0;
    parameter Real kdkca = 0.55;
    parameter Real g_CRAC = 75.0;
    parameter Real V_CRAC = 0.0;
    parameter Real Ca_er_bar = 3.0;
    parameter Real g_leak = 0.0;
    parameter Real IP3 = 0.0;
    parameter Real kerp = 0.1;
    parameter Real verp = 0.24;
    parameter Real dact = 0.1;
    parameter Real dinh = 0.4;
    parameter Real dip3 = 0.2;
    parameter Real perl = 0.02;
    parameter Real lambda_er = 250.0;
    parameter Real sigma_er = 5.0;
    parameter Real k_Ca = 0.07;
    parameter Real gamma = 3.607e-06;
    parameter Real f = 0.01;
    parameter Real COMpartment = 1.0;

    Real i_K(start=17.55);
    Real n_infinity(start=0.000467956725632935);
    Real tau_n(start=9.085746273364);
    Real i_K_ATP(start=1350.0);
    Real i_Ca_f(start=-548.702035891578);
    Real m_f_infinity(start=0.00420751503635901);
    Real i_Ca_s(start=-793.881316270245);
    Real m_s_infinity(start=0.0109869426305932);
    Real j(start=0.88);
    Real jm_infinity(start=0.0179862099620915);
    Real tau_j(start=8145.05572085199);
    Real i_Ca(start=-1342.58335216182);
    Real i_K_Ca(start=3.45489443378119);
    Real i_CRAC(start=-11.3122509416041);
    Real r_infinity(start=0.00247262315663477);
    Real i_leak(start=0.0);
    Real J_er_p(start=0.131402714932127);
    Real a_infinity(start=0.523809523809524);
    Real b_infinity(start=0.0);
    Real h_infinity(start=0.784313725490196);
    Real O(start=0.0);
    Real J_er_tot(start=0.0463972850678733);
    Real J_er_IP3(start=0.0);
    Real J_er_leak(start=0.1778);
    Real J_mem_tot(start=-2.8573018487523e-05);

    Real V_membrane;
    Real n;
    Real jm;
    Real Ca_er_Ca_equations;
    Real Ca_i;

initial equation
    V_membrane = -61.0;
    n = 0.0005;
    jm = 0.25;
    Ca_er_Ca_equations = 9.0;
    Ca_i = 0.11;

equation
    i_K = g_K * n * (V_membrane + 70);
    n_infinity = 1 / (1 + exp((-15 - V_membrane) / 6));
    tau_n = 9.09 / (1 + exp((15 + V_membrane) / 6));
    i_K_ATP = g_K_ATP * (V_membrane + 70);
    m_f_infinity = 1 / (1 + exp((-20 - V_membrane) / 7.5));
    i_Ca_f = g_Ca_f * m_f_infinity * (V_membrane - V_Ca);
    m_s_infinity = 1 / (1 + exp((-16 - V_membrane) / 10));
    i_Ca_s = g_Ca_s * m_s_infinity * (1 - jm) * (V_membrane - V_Ca);
    i_Ca = i_Ca_f + i_Ca_s;
    j = 1 - jm;
    jm_infinity = 1 - 1 / (1 + exp((53 + V_membrane) / 2));
    tau_j = 50000 / (exp((53 + V_membrane) / 4) + exp((-53 - V_membrane) / 4)) + 1500;
    i_K_Ca = g_K_Ca * pow(Ca_i, 5) / (pow(Ca_i, 5) + pow(kdkca, 5)) * (V_membrane + 70);
    r_infinity = 1 / (1 + exp(1 * (Ca_er_Ca_equations - Ca_er_bar)));
    i_CRAC = g_CRAC * r_infinity * (V_membrane - V_CRAC);
    i_leak = g_leak * (V_membrane - V_CRAC);
    J_er_p = verp * pow(Ca_i, 2) / (pow(Ca_i, 2) + pow(kerp, 2));
    a_infinity = 1 / (1 + dact / Ca_i);
    b_infinity = IP3 / (IP3 + dip3);
    h_infinity = 1 / (1 + Ca_i / dinh);
    O = pow(a_infinity, 3) * pow(b_infinity, 3) * pow(h_infinity, 3) * 1;
    J_er_IP3 = O * (Ca_er_Ca_equations - Ca_i);
    J_er_leak = perl * (Ca_er_Ca_equations - Ca_i);
    J_er_tot = J_er_leak + J_er_IP3 - J_er_p;
    J_mem_tot = -f * (gamma * i_Ca + k_Ca * Ca_i);
    der(V_membrane) = -(i_Ca + i_K + i_K_ATP + i_K_Ca + i_CRAC + i_leak) / Cm;
    der(n) = lambda_n * (n_infinity - n) / tau_n;
    der(jm) = (jm_infinity - jm) / tau_j;
    der(Ca_er_Ca_equations) = -J_er_tot / (lambda_er * sigma_er);
    der(Ca_i) = J_er_tot / lambda_er + J_mem_tot;




end BIOMD374;
