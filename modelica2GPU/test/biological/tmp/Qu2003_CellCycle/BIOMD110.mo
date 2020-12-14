
model BIOMD110 "Qu2003_CellCycle"

    function pow
        input  Real x;
        input  Real power;
        output Real y;
        algorithm
            y := x^power;
    end pow;

    parameter Real k1 = 300.0;
    parameter Real k2 = 5.0;
    parameter Real k3 = 30.0;
    parameter Real k4 = 30.0;
    parameter Real k5 = 0.1;
    parameter Real k6 = 1.0;
    parameter Real k7 = 10.0;
    parameter Real k8 = 100.0;
    parameter Real k9 = 1.0;
    parameter Real k10 = 10.0;
    parameter Real k11 = 1.0;
    parameter Real k12 = 0.0;
    parameter Real k13 = 1.0;
    parameter Real k14 = 1.0;
    parameter Real k15 = 1.0;
    parameter Real k16 = 2.0;
    parameter Real k2u = 50.0;
    parameter Real k7u = 0.0;
    parameter Real k16u = 25.0;
    parameter Real a = 4.0;
    parameter Real az = 10.0;
    parameter Real aw = 10.0;
    parameter Real ai = 10.0;
    parameter Real bz = 0.1;
    parameter Real bw = 0.1;
    parameter Real bi = 0.1;
    parameter Real cz = 1.0;
    parameter Real cw = 1.0;
    parameter Real ci = 1.0;
    parameter Real Tau = 25.0;



    Real x1;
    Real x;
    Real c0;
    Real c;
    Real z0;
    Real z1;
    Real z2;
    Real w0;
    Real w1;
    Real u;
    Real i;
    Real ix;
    Real ixp;
    Real y;
    Real totalCyclin;

initial equation
    x1 = 0.1;
    x = 0.1;
    c0 = 200.0;
    c = 0.0;
    z0 = 0.0;
    z1 = 0.0;
    z2 = 0.0;
    w0 = 0.0;
    w1 = 0.0;
    u = 0.0;
    i = 0.0;
    ix = 0.0;
    ixp = 0.0;
    y = 0.0;
    totalCyclin = 0.0;

equation
    c = (c0 - (x + x1 + ix + ixp)) / (c0 * 1.0);
    totalCyclin = x + x1 + y;
    der(x1) = (1.0 * (k3 * c * y - x1 * k4)) + (1.0 * ((k6 + w0) * x - (k5 + z2) * x1)) ;
    der(x) = (1.0 * k16 * k16u * ixp) - (1.0 * ((k6 + w0) * x - (k5 + z2) * x1)) - ((k14 * x * i - k15 * ix) * 1.0) - (1.0 * (k7 + k7u * u) * x);
    der(c0) = 0.0;
    der(z0) = (1.0 * k8) - (1.0 * ((bz + cz * x) * z0 - z1 * az)) - (1.0 * k9 * z0);
    der(z1) = (1.0 * ((bz + cz * x) * z0 - z1 * az)) - (1.0 * ((bz + cz * x) * z1 - az * z2)) - (1.0 * k9 * z1);
    der(z2) = (1.0 * ((bz + cz * x) * z1 - az * z2)) - (1.0 * k9 * z2);
    der(w0) = (k10 * 1.0) - (1.0 * ((bw + cw * x) * w0 - aw * w1)) - (1.0 * w0 * k11);
    der(w1) = (1.0 * ((bw + cw * x) * w0 - aw * w1)) - (1.0 * k11 * w1);
    der(u) = (1.0 * x^2 / (a^2 + x^2) / Tau) - (1.0 * u / Tau);
    der(i) = (k12 * 1.0) - ((k14 * x * i - k15 * ix) * 1.0) - (1.0 * k13 * i);
    der(ix) = ((k14 * x * i - k15 * ix) * 1.0) - (1.0 * ((bi + ci * x) * ix - ai * ixp));
    der(ixp) = (1.0 * ((bi + ci * x) * ix - ai * ixp)) - (1.0 * k16 * k16u * ixp);
    der(y) = (k1 * 1.0) - (1.0 * (k3 * c * y - x1 * k4)) - (1.0 * (k2 + k2u * u) * y);




end BIOMD110;
