within ConceptualPowerSystem.PowerSystem;
model PowerSystem_model
  import SI=Modelica.SIunits;
  parameter Integer N = 1 "Number of generators in the network";
  parameter Integer M = 4 "Number of volumes in the superheater models";
  parameter SI.Power P_nom = 500e6 "Nominal power of a single generator";
  parameter SI.Frequency f_ref = 50 "Reference network frequency";
  parameter SI.AngularVelocity omega_ref = 2*pi*f_ref;
  parameter SI.Time T_sfc = 20
    "Time constant of secondary frequency control";
  parameter Real P_d = 0.5*P_nom/omega_ref "Power dissipation coefficient";
  parameter Real droop = 0.10 "Average network droop";
  constant Real pi = Modelica.Constants.pi;
  SI.Frequency f
    "Network frequency measured at node 1 for secondary frequency control";
  SI.Power P_load[N] = ones(N)*P_nom
    "Active power consumed by loads - replace the default binding";
  SI.Power P_ex[N,N] "Power going from generator i to generator j";
  SI.Power P_diss[N,N] "Power dissipated by the generators i and j";
  SI.Power P_a[N] "Net active power out of generator i";
  SI.Power P_f = P_nom
    "Power factor of a single trunk of transmission line";
  SI.Power P_sfc "Additional power request for secondary frequency control";
  Generator generator[N](P_a = P_a,
                         each P_nom = P_nom,
                         each P_sfc = P_sfc/N,
                         each N = M);
equation
  for i in 1:N loop
    P_a[i] = sum(P_ex[i,:]) + sum(P_diss[i,:]) + P_load[i];
    for j in 1:N loop
      if i == j then
        P_ex[i,j] = 0;
        P_diss[i,j] = 0;
      else
        P_ex[i,j] = P_f/(abs(i-j))*sin(generator[i].theta-generator[j].theta);
        P_diss[i,j] = P_d*(generator[i].omega - generator[j].omega);
      end if;
    end for;
  end for;

  f = generator[1].f;
  T_sfc*der(P_sfc) = (f_ref-f)/f_ref*P_nom*N/droop;
initial equation
  P_sfc = 0;
end PowerSystem_model;