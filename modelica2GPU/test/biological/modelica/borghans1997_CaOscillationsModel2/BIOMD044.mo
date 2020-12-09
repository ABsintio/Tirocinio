model BIOMD044 "Complex intracellular calcium oscillations Model2"

    parameter Real beta = 0.5;
    parameter Real v0 = 2.0;
    parameter Real v1 = 1.0;
    parameter Real Vm2 = 6.5;
    parameter Real K2 = 0.1;
    parameter Real Vm3 = 19.5;
    parameter Real Ka = 0.2;
    parameter Real Ky = 0.2;
    parameter Real Kz = 0.3;
    parameter Real Kf = 1.0;
    parameter Real K = 10.0;
    parameter Real Vp = 2.5;
    parameter Real Vd = 80.0;
    parameter Real Kp = 1.0;
    parameter Real Kd = 0.4;
    parameter Real n = 4.0;
    parameter Real epsilon = 0.1;
    
    Real EC;
    Real Z;
    Real A;
    Real Y;

initial equation
    EC = 1000.0;
    Z = 0.0;
    A = 0.45;
    Y = 0.36;

equation
    der(EC) = K*Z - (v0+v1*beta);
    der(Z) = v0+v1*beta + Vm3*A^4*Y^2*Z^4/((Ka^4+A^4)*(Ky^2+Y^2)*(Kz^4+Z^4)) + Kf*Y - Vm2*Z^2/(K2^2+Z^2) - K*Z;
    der(A) = beta*Vp - Vd*A^2*Z^n/((Kp^2+A^2)*(Kd^n+Z^n)) - epsilon*A;
    der(Y) = Vm2*Z^2/(K2^2+Z^2) - Vm3*A^4*Y^2*Z^4/((Ka^4+A^4)*(Ky^2+Y^2)*(Kz^4+Z^4)) - Kf*Y;

end BIOMD044;