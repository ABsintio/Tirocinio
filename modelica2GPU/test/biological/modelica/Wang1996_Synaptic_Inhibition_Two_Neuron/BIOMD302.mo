
model BIOMD302 "Wang1996_Synaptic_Inhibition_Two_Neuron"

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

    parameter Real Cm = 1.0;
    parameter Real gL = 0.1;
    parameter Real gK = 9.0;
    parameter Real gNa = 35.0;
    parameter Real E_K = -90.0;
    parameter Real E_L = -65.0;
    parameter Real E_Na = 55.0;
    parameter Real phi = 5.0;
    parameter Real I_app_post = 0.0;
    parameter Real g_syn = 0.1;
    parameter Real E_syn = -75.0;
    parameter Real alpha = 12.0;
    parameter Real beta = 0.1;
    parameter Real theta_syn = 0.0;
    parameter Real pre_synaptic_cell = 1.0;
    parameter Real post_synaptic_cell = 1.0;

    Real tau_0(start=0.0);
    Real I_Na_post(start=0.0);
    Real m_inf_post(start=0.0);
    Real h_post(start=0.0);
    Real V_post(start=-64.0);
    Real alpha_m_post(start=0.0);
    Real beta_m_post(start=0.0);
    Real alpha_h_post(start=0.0);
    Real beta_h_post(start=0.0);
    Real I_K_post(start=0.0);
    Real n_post(start=0.0);
    Real alpha_n_post(start=0.0);
    Real beta_n_post(start=0.0);
    Real I_L_post(start=0.0);
    Real I_syn(start=0.0);
    Real s(start=0.0);
    Real F(start=0.0);
    Real V_pre(start=-64.0);
    Real I_app_pre(start=0.0);
    Real I_Na_pre(start=0.0);
    Real m_inf_pre(start=0.0);
    Real h_pre(start=0.0);
    Real n_pre(start=0.0);
    Real alpha_n_pre(start=0.0);
    Real beta_n_pre(start=0.0);
    Real alpha_h_pre(start=0.0);
    Real beta_h_pre(start=0.0);
    Real alpha_m_pre(start=0.0);
    Real beta_m_pre(start=0.0);
    Real I_K_pre(start=0.0);
    Real I_L_pre(start=0.0);



initial equation


equation
    tau_0 = Cm / gL;
    I_Na_post = gNa * pow(m_inf_post, 3) * h_post * (V_post - E_Na);
    m_inf_post = alpha_m_post / (alpha_m_post + beta_m_post);
    alpha_m_post = -0.1 * (V_post + 35) / (exp(-0.1 * (V_post + 35)) - 1);
    beta_m_post = 4 * exp(-(V_post + 60) / 18);
    alpha_h_post = 0.07 * exp(-(V_post + 58) / 20);
    beta_h_post = 1 / (exp(-0.1 * (V_post + 28)) + 1);
    I_K_post = gK * pow(n_post, 4) * (V_post - E_K);
    alpha_n_post = -0.01 * (V_post + 34) / (exp(-0.1 * (V_post + 34)) - 1);
    beta_n_post = 0.125 * exp(-(V_post + 44) / 80);
    I_L_post = gL * (V_post - E_L);
    I_syn = g_syn * s * (V_post - E_syn);
    F = 1 / (1 + exp(-(V_pre - theta_syn) / 2));
    I_app_pre = piecewise(2, ((time >= 10) and (time <= 20)), 0);
    I_Na_pre = gNa * pow(m_inf_pre, 3) * h_pre * (V_pre - E_Na);
    m_inf_pre = alpha_m_pre / (alpha_m_pre + beta_m_pre);
    alpha_n_pre = -0.01 * (V_pre + 34) / (exp(-0.1 * (V_pre + 34)) - 1);
    beta_n_pre = 0.125 * exp(-(V_pre + 44) / 80);
    alpha_h_pre = 0.07 * exp(-(V_pre + 58) / 20);
    beta_h_pre = 1 / (exp(-0.1 * (V_pre + 28)) + 1);
    alpha_m_pre = -0.1 * (V_pre + 35) / (exp(-0.1 * (V_pre + 35)) - 1);
    beta_m_pre = 4 * exp(-(V_pre + 60) / 18);
    I_K_pre = gK * pow(n_pre, 4) * (V_pre - E_K);
    I_L_pre = gL * (V_pre - E_L);
    der(h_post) = phi * (alpha_h_post * (1 - h_post) - beta_h_post * h_post);
    der(V_post) = (I_app_post - (I_Na_post + I_K_post + I_L_post + I_syn)) / Cm;
    der(n_post) = phi * (alpha_n_post * (1 - n_post) - beta_n_post * n_post);
    der(s) = alpha * F * (1 - s) - beta * s;
    der(V_pre) = (I_app_pre - (I_Na_pre + I_K_pre + I_L_pre)) / Cm;
    der(h_pre) = phi * (alpha_h_pre * (1 - h_pre) - beta_h_pre * h_pre);
    der(n_pre) = phi * (alpha_n_pre * (1 - n_pre) - beta_n_pre * n_pre);




end BIOMD302;
