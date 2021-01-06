within Advection.SimpleAdvection;
model SimpleAdvection_N_100
  extends SimpleAdvection_model(
    N = 100,
    Tin = 300 + dT*(0.5*tanh((time - t0)/dt)+0.5),
    u = 1 + sin(time*2*pi*f));
  parameter Real pi = 3.141592653589793;
  parameter Real t0 = 2
    "Instant of smooth step temperature increase at inlet";
  parameter Real dt = 0.1
    "Transition time of temperature increase";
  parameter Real dT = 10
    "Temperature increase at inlet";
  parameter Real f = 0.5
    "Frequency of fluid speed oscillations";
end SimpleAdvection_N_100;
