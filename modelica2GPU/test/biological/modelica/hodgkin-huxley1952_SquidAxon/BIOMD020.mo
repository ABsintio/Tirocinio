model BIOMD020 "Implementation of Hodgkin-Huxley model of the electrical behavior of the squid axon membrane"

  parameter Real I = 0.000;
  parameter Real E_R = -75.000;
  parameter Real Cm = 1.000;
  parameter Real g_Na = 120.000;
  parameter Real g_K = 36.000;
  parameter Real g_L = 0.300;
  parameter Real E_Na = -190.000;
  parameter Real E_K = -63.000;
  parameter Real E_L = -85.613;

  Real V_neg(start=0.000);
  Real E(start=0.000);
  Real i_Na(start=0.000);
  Real i_K(start=0.000);
  Real i_L(start=0.000);
  Real V_Na(start=-115.000);
  Real V_K(start=12.000);
  Real V_L(start=-10.613);
  Real alpha_m(start=0.000);
  Real beta_m(start=0.000);
  Real alpha_h(start=0.000);
  Real beta_h(start=0.000);
  Real alpha_n(start=0.000);
  Real beta_n(start=0.000);

  Real V;
  Real m;
  Real h;
  Real n;

initial equation
  V = 0.000;
  m = 0.053;
  h = 0.596;
  n = 0.318;

equation
  V_neg = -V;
  E = V + E_R;
  V_L = E_L - E_R;
  beta_n = 0.125 * exp((V / 80.0));
  alpha_h = 0.07 * exp((V / 20.0));
  V_Na = E_Na - E_R;
  V_K = E_K - E_R;
  i_K = g_K * n^4.0 * (V - V_K);
  i_Na = g_Na * m^3.0 * h * (V - V_Na);
  i_L = g_L * (V - V_L);
  beta_m = 4.0 * exp((V / 18.0));
  alpha_n = (0.01 * (V + 10.0)) / (exp((0.1 * (V + 10.0))) - 1.0);
  alpha_m = (0.1 * (V + 25.0)) / (exp((0.1 * (V + 25.0))) - 1.0);
  beta_h = 1.0 / (exp((0.1 * (V + 30.0))) + 1.0);

  der(V) = (I - (i_Na + i_K + i_L)) / Cm;
  der(m) = alpha_m * (1 - m) - beta_m * m;
  der(h) = alpha_h * (1 - h) - beta_h * h;
  der(n) = alpha_n * (1 - n) - beta_n * n;

end BIOMD020;
