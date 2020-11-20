model BIOMD006 "Modeling the cell division cycle: cdc2 and cyclin interactions"

    parameter Real kappa = 0.015;
    parameter Real k6 = 1.000;
    parameter Real k4 = 180.000;
    parameter Real k4prime = 0.018;

    Real u; "[activeMPF]/[CT]"
    Real v; "([cyclin] + [preMPF] + [activeMPF])/[CT]"
    Real z; "([cyclin] + [preMPF])/[CT]"

initial equation
    u = 0.000;
    z = 0.000;
    v = 0.000;

equation
    der(u) = k4 * (v - u) * ((k4prime / k4) + Function.pow(u, 2.0)) - k6 * u;
    der(v) = kappa - k6 * u;
    z = v - u;

end BIOMD006;