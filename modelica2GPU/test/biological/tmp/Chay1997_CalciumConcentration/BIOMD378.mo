
model BIOMD378 "Chay1997_CalciumConcentration"

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



    parameter Real R = 8314.0;
    parameter Real T = 310.0;
    parameter Real F = 96485.0;
    parameter Real Cm = 1.0;
    parameter Real g_fast = 600.0;
    parameter Real V_fast = 80.0;
    parameter Real Vm = -25.0;
    parameter Real Sm = 9.0;
    parameter Real lamda_h = 12.5;
    parameter Real Vh = -48.0;
    parameter Real Sh = -7.0;
    parameter Real K_Ca = 1.0;
    parameter Real P_Ca = 2.0;
    parameter Real Ca_o = 2500.0;
    parameter Real lamda_d = 2.5;
    parameter Real Vd = -10.0;
    parameter Real Sd = 5.0;
    parameter Real Ca_i_calcium_current_f_gate = 1.0;
    parameter Real g_NS = 5.0;
    parameter Real K_NS = 50.0;
    parameter Real VNS = -20.0;
    parameter Real V_K = -75.0;
    parameter Real g_K_dr = 600.0;
    parameter Real lamda_n = 12.5;
    parameter Real Vn = -18.0;
    parameter Real Sn = 14.0;
    parameter Real g_K_Ca = 5.0;
    parameter Real g_K_ATP = 2.0;
    parameter Real g_NaL = 0.3;
    parameter Real V_Na = 80.0;
    parameter Real k_rel = 0.2;
    parameter Real k_Ca = 7.0;
    parameter Real k_pump = 30.0;
    parameter Real omega = 0.2;
    parameter Real Compartment = 1.0;

    Real i_fast(start=-96.6401171990526);
    Real m_infinity(start=0.185067533162422);
    Real tau_h(start=0.0320623804770684);
    Real h_infinity(start=0.201042499324815);
    Real i_Ca(start=-24.1248530333721);
    Real tau_d(start=0.0234265674250627);
    Real d_infinity(start=0.00344187186519272);
    Real f_infinity(start=0.5);
    Real i_NS(start=-6.24107017458029);
    Real i_K_dr(start=25.014877991785);
    Real n_infinity(start=0.189546217642834);
    Real tau_n(start=0.0313553515963197);
    Real i_K_Ca(start=46.2079655277309);
    Real i_K_ATP(start=73.31708);
    Real i_NaL(start=-35.502438);

    Real V_membrane;
    Real h;
    Real d;
    Real n;
    Real Ca_i_cytosolic_calcium;
    Real Ca_lum;

initial equation
    V_membrane = -38.34146;
    h = 0.214723;
    d = 0.0031711238;
    n = 0.1836403;
    Ca_i_cytosolic_calcium = 0.6959466;
    Ca_lum = 102.686;

equation
    m_infinity = 1 / (1 + exp((Vm - V_membrane) / Sm));
    i_fast = g_fast * pow(m_infinity, 3) * h * (V_membrane - V_fast);
    tau_h = 1 / (lamda_h * (exp((Vh - V_membrane) / (2 * Sh)) + exp((V_membrane - Vh) / (2 * Sh))));
    h_infinity = 1 / (1 + exp((Vh - V_membrane) / Sh));
    tau_d = 1 / (lamda_d * (exp((Vd - V_membrane) / (2 * Sd)) + exp((V_membrane - Vd) / (2 * Sd))));
    f_infinity = K_Ca / (K_Ca + Ca_i_calcium_current_f_gate);
    i_Ca = P_Ca * d * f_infinity * 2 * F * V_membrane / (R * T) * (Ca_o - Ca_i_cytosolic_calcium * exp(2 * F * V_membrane / (R * T))) / (1 - exp(2 * F * V_membrane / (R * T)));
    d_infinity = 1 / (1 + exp((Vd - V_membrane) / Sd));
    i_NS = g_NS * pow(K_NS, 2) / (pow(K_NS, 2) + pow(Ca_lum, 2)) * ((V_membrane - VNS) / (1 - exp(0.1 * (VNS - V_membrane))) - 10);
    i_K_dr = g_K_dr * pow(n, 4) * (V_membrane - V_K);
    n_infinity = 1 / (1 + exp((Vn - V_membrane) / Sn));
    tau_n = 1 / (lamda_n * (exp((Vn - V_membrane) / (2 * Sn)) + exp((V_membrane - Vn) / (2 * Sn))));
    i_K_ATP = g_K_ATP * (V_membrane - V_K);
    i_K_Ca = g_K_Ca * pow(Ca_i_cytosolic_calcium, 3) / (pow(K_Ca, 3) + pow(Ca_i_cytosolic_calcium, 3)) * (V_membrane - V_K);
    i_NaL = g_NaL * (V_membrane - V_Na);
    der(V_membrane) = -(i_K_dr + i_K_Ca + i_K_ATP + i_fast + i_Ca + i_NS + i_NaL) / Cm;
    der(h) = (h_infinity - h) / tau_h;
    der(d) = (d_infinity - d) / tau_d;
    der(n) = (n_infinity - n) / tau_n;
    der(Ca_i_cytosolic_calcium) = k_rel * (Ca_lum - Ca_i_cytosolic_calcium) - (omega * i_Ca + k_Ca * Ca_i_cytosolic_calcium + k_pump * Ca_i_cytosolic_calcium);
    der(Ca_lum) = -k_rel * (Ca_lum - Ca_i_cytosolic_calcium) + k_pump * Ca_i_cytosolic_calcium;




end BIOMD378;
