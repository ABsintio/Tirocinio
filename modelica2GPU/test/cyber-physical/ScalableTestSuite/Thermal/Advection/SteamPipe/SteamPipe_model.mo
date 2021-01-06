model SteamPipe
  "Detailed thermal advection model with thermal expansion effects using IF97 water vapour"
  parameter Integer N = 10 "Number of nodes";
  parameter Real Vtot = 1 "Total volume";
  parameter Real w_nom = 2 "Nominal mass flow rate";
  parameter Real dp_nom = 1e5
    "Nominal total pressure loss at full flow rate";
  parameter Real p_nom = 10e5 "Nominal pressure at outlet";
  parameter Real h_nom = 3.1e6 "Nominal specific enthalpy";
  parameter Real p_start = p_nom "Initial value of pressure states";
  parameter Real h_start = h_nom
    "Initial value of enthalpy states";
  final parameter Real kf = w_nom / (dp_nom/N) "Friction coefficient";
  final parameter Real V=Vtot/N "Total volume";
  final parameter Real rho_av = Medium.density_ph(p_nom+dp_nom/2, h_nom)
    "Average density";
  final parameter Real tau = Vtot*rho_av/w_nom
    "Estimated transport delay at nominal conditions";
  Real w_in_pipe = 0 + (if time>1 then w_nom else 0)
    "Inlet mass flow rate";
  Real h_in_pipe = h_nom + (if time > 10 then 5000 else 0)
    "Inlet specific enthalpy";

  Real M[N] "Fluid mass within each volume";
  Real E[N] "Fluid internal energy within each volume";
  Real w_in[N] "Inlet flow rate of each volume";
  Real w_out[N] "Outlet flow rate of each volume";
  Real p[N](each stateSelect=StateSelect.prefer,
                   each start = p_start, each fixed = true)
    "Pressure states";
  Real h[N](each stateSelect=StateSelect.prefer,
                           each start = h_start, each fixed = true)
    "Specific enthalpy states";
  Real h_in[N] "Inlet specific enthalpy of each volume";
  Real h_out[N] "Outlet specific enthalpy of each volume";
  Real rho[N] "Volume density";
  Real state[N] "Volume thermodynamic state";
  Real p_in_pipe "Inlet pressure";
  Real p_out_pipe "Outlet pressure";
  Real w_out_pipe "Inlet flow rate";
  Real h_out_pipe " Outlet flow rate";
equation
  for i in 1:N loop
    M[i]= V*rho[i];
    E[i]=M[i]*h[i]-p[i]*V;
    der(M[i]) = w_in[i] - w_out[i];
    der(E[i]) = w_in[i]*h_in[i]-w_out[i]*h_out[i];
    state[i]=Medium.setState_ph(p[i],h[i]);
    rho[i]=Medium.density(state[i]);
    h_out[i] = h[i];
  end for;
  for i in 1:N-1 loop
    w_out[i]=w_in[i+1];
    w_out[i]= kf*(p[i]-p[i+1]);
    h_in[i+1] = h_out[i];
  end for;
  w_out[N] = kf*(p[N]-p_nom);
  p_in_pipe = p[1];
  p_out_pipe = p[N];
  w_in_pipe = w_in[1];
  w_out_pipe = w_out[N];
  h_in_pipe = h_in[1];
  h_out_pipe = h[N];
end SteamPipe;