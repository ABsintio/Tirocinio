model BIOMD043 "Complex intracellular calcium oscillations Model 1"

    parameter Real a = 40000.00;
    parameter Real d = 100.00;
    parameter Real beta = 1.0;
    parameter Real v0 = 1.0;
    parameter Real v1 = 1.0;
    parameter Real Vm2 = 6.5;
    parameter Real K2 = 0.1;
    parameter Real Vm3 = 50.0;
    parameter Real Ky = 0.2;
    parameter Real Kf = 1.0;
    parameter Real K = 10.0;
    parameter Real Kd = 5000.0;
    parameter Real Kr = 5.0;

    Real EC;
    Real Z;
    Real Rho;
    Real Y;
    Real Fraction_Inactive_Channels;

initial equation
    EC = 0.0;
    Z = 0.0;
    Rho = 0.0;
    Y = 0.36;
    Fraction_Inactive_Channels = 0.0;

equation
    der(EC) = K*Z - (v0+v1*beta);
    der(Z) = v0+v1*beta + beta*Rho*a/d*Z^4/(1+a/d*Z^4)*Vm3*Y^2/(Ky^2+Y^2) + Kf*Y - Vm2*Z^2/(K2^2+Z^2) - K*Z;
    der(Rho) = Kr*(1-Rho) - Kd*Z^4*Rho;
    der(Y) = Vm2*Z^2/(K2^2+Z^2) - beta*Rho*a/d*Z^4/(1+a/d*Z^4)*Vm3*Y^2/(Ky^2+Y^2) - Kf*Y;
    der(Fraction_Inactive_Channels) = Kd*Z^4*Rho - Kr*(1-Rho);
    
end BIOMD043;