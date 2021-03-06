within ConceptualPowerSystem.PowerSystem;
model Generator
  import SI=Modelica.SIunits;
  parameter Integer N = 4
    "Number of finite volumes for the superheater model";
  constant Real pi = Modelica.Constants.pi;
  parameter SI.Power P_nom = 500e6 "Nominal power of the generator";
  parameter SI.Frequency f_ref = 50 "Reference network frequency";
  parameter SI.Time T_a = 5 "Characteristic time of the generator";
  parameter SI.PerUnit alpha = 0.3
    "Fraction of turbine power provided by the high-pressure turbine";
  parameter SI.PerUnit T_source = 1.5
    "Normalized temperature of heat source for the superheater";
  parameter SI.PerUnit NTU = 2 "Number of thermal units in the superheater";
  parameter SI.Time tau_b = 200
    "Characteristic time of energy storage in the boiler";
  parameter SI.Time tau_t = 8
    "Characteristic response time of the low pressure turbine";
  parameter SI.Time tau_q = 3
    "Characteristic time of thermal generation process";
  parameter SI.Time tau_sh = 100
    "Characteristic time of the superheater thermal response";
  parameter SI.Time tau_y = 0.3 "Characteristic time of turbine governor";
  parameter SI.PerUnit droop = 0.1 "Primary frequency control droop";
  parameter SI.PerUnit Kp_p = 10 "Proportional gain of pressure controller";
  parameter SI.Time Ti_p = 70 "Integral time of pressure controller";
  parameter SI.PerUnit Kp_t = 2 "Proportional gain of power controller";
  parameter SI.Time Ti_t = 0.3 "Integral time of power controller";
  final parameter SI.AngularVelocity omega_ref = 2*pi*f_ref;
  final parameter SI.MomentOfInertia J = P_nom*T_a/(omega_ref^2);
  SI.Power P_a(nominal = 1e9) = P_nom
    "Active electrical power produced by the synchronous generator - replace the default binding";
  SI.Power P_t_0(nominal = 1e9) = P_nom
    "Active power set point - replace the default binding";
  SI.Power P_sfc(nominal = 1e9) = 0
    "Additional power request for secondary frequency control - replace the default binding";
  SI.Power P_t(nominal = 1e9) "Mechanical power generated by the turbine [W]";
  SI.Angle theta
    "Rotor angle relative to reference rotating at nominal speed";
  SI.AngularVelocity omega "Turbine angular speed";
  SI.Frequency f "Generator frequency";
  SI.PerUnit delta_f "Normalized frequency error";
  SI.PerUnit p "Boiler pressure in p.u.";
  SI.PerUnit p_0 = 1 "Boiler pressure set point in p.u.";
  SI.PerUnit w_s "Steam flow rate in p.u.";
  SI.PerUnit q_ev "Thermal power to the boiler in p.u.";
  SI.PerUnit q_ev_0 "Thermal power set point in p.u.";
  SI.PerUnit y_t "Turbine admittance in p.u";
  SI.PerUnit y_t_0 "Turbine admittance set point in p.u.";
  SI.PerUnit p_t "Turbine power in p.u.";
  SI.PerUnit p_t_0 "Turbine power set point in p.u.";
  SI.PerUnit p_t_0_fc
    "Turbine power set point in p.u. with frequency control corrections";
  SI.PerUnit p_t_lp "Low-pressure turbine power in p.u.";

  SI.PerUnit T_s[N]
    "Normalized temperature states for the superheater model";
  SI.PerUnit T_s_b[N+1]
    "Normalized temperature at the boundaries of the superheater volumes";

  SI.PerUnit err_p_t "Power controller error in p.u.";
  SI.PerUnit err_p_t_int "Integral of power controller error";

  SI.PerUnit err_p "Pressure controller error in p.u.";
  SI.PerUnit err_p_int "Pressure controller integral error";

equation
  // Rotor phase angle equation (relative to reference rotating at reference speed)
  der(theta) = omega - omega_ref;

  // Energy balance on the turbine-generator axis
  der(J*omega^2/2) = P_t - P_a;

  // Non-dimensional boiler model
  tau_b*der(p) = q_ev - w_s;

  // Non-dimensional turbine model
  w_s = y_t*p "steam flow";
  tau_t*der(p_t_lp) + p_t_lp = (1-alpha)*w_s "LP turbine power";
  p_t = alpha *w_s + p_t_lp "Total turbine power";

  // Non-dimensional steam temperature model
  T_s_b[1] = p "Boundary condion at inlet";
  T_s_b[2:end] = T_s "Upwind discretization scheme";

  for i in 1:N loop
    tau_sh/N * der(T_s[i]) = w_s*(T_s_b[i] - T_s_b[i+1]) + NTU/N*(T_source - T_s_b[i+1]);
  end for;

  // Actuation
  tau_y*der(y_t) = y_t_0 - y_t;
  tau_q*der(q_ev) = q_ev_0 - q_ev;

  // Normalization equations
  P_t = p_t*P_nom;
  P_t_0 = p_t_0*P_nom;

  // Boiler follows control strategy with primary and secondary frequency control
  f = omega/(2*pi);
  delta_f = (f - f_ref)/f_ref;
  p_t_0_fc = p_t_0 - 1/droop*delta_f + P_sfc/P_nom;

  err_p_t = p_t_0_fc - p_t;
  der(err_p_t_int) = err_p_t;

  err_p = p_0 - p;
  der(err_p_int) = err_p;

  q_ev_0 = p_t_0_fc + Kp_p*(err_p + 1/Ti_p * err_p_int);
  y_t_0 = p_t_0_fc + Kp_t*(err_p_t + 1/Ti_t *err_p_t_int);

initial equation
  theta = 0;
  omega = omega_ref;
  p = 1;
  p_t_lp = (1-alpha);
  y_t = 1;
  q_ev = 1;
  err_p_t_int = 0;
  err_p_int = 0;
  T_s[1] = (p + NTU/N*T_source)/(1 + NTU/N);
  for i in 2:N loop
      T_s[i] = (T_s[i-1] + NTU/N*T_source)/(1 + NTU/N);
  end for;
end Generator;