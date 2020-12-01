model BIOMD045 "Complex intracellular calcium oscillations"

    parameter Real beta = 1.0;
    parameter Real v0 = 0.015;
    parameter Real v1 = 0.012;
    parameter Real Vm2i = 3.100;
    parameter Real K2i = 0.005;
    parameter Real Vm3i = 25.000;
    parameter Real K3y = 0.065;
    parameter Real K3z = 0.022;
    parameter Real Kf = 0.5;
    parameter Real K = 1.0;
    parameter Real Vm2s = 1.500;
    parameter Real K2s = 0.027;
    parameter Real Vm3s = 0.169;
    parameter Real K3s = 0.100;
    
    Real EC;
    Real X;
    Real Y;
    Real Z;

initial equation
    EC = 0.0;
    X = 0.5;
    Y = 0.0;
    Z = 0.0;

equation
    der(EC) = K*Z - (v0+v1*beta);
    der(X) = Vm2s*Z^2/(K2s^2+Z^2) - Kf*X - beta*Vm3s*X^2/(K3s^2+X^2);
    der(Y) = Vm2i*Z^2/(K2i^2+Z^2) - Vm3i*Y^2*Z^2/((K3y^2+Y^2)*(K3z^2+Z^2)) - Kf*Y;
    der(Z) = (v0+v1*beta) + Vm3i*Y^2*Z^2/((K3y^2+Y^2)*(K3z^2+Z^2)) + Kf*Y + Kf*X + beta*Vm3s*X^2/(K3s^2+X^2) - Vm2i*Z^2/(K2i^2+Z^2) - K*Z - Vm2s*Z^2/(K2s^2+Z^2); 

end BIOMD045;