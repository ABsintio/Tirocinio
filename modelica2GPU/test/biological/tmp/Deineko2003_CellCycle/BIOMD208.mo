
model BIOMD208 "Deineko2003_CellCycle"

    function pow
        input  Real x;
        input  Real power;
        output Real y;
        algorithm
            y := x^power;
    end pow;

    parameter Real emax = 2.0;
    parameter Real k1 = 1.0;
    parameter Real k1_prime = 1.0;
    parameter Real k1_double_prime = 10.0;
    parameter Real phi1 = 0.1;
    parameter Real k2 = 1.0;
    parameter Real k3 = 0.4;
    parameter Real phi2 = 0.01;
    parameter Real phi3 = 0.1;
    parameter Real k4 = 0.09;
    parameter Real k4_double_prime = 0.1;
    parameter Real k4i = 1.0;
    parameter Real k4a = 2.0;
    parameter Real phi4i = 0.01;
    parameter Real phi4a = 0.01;
    parameter Real k6 = 0.0;
    parameter Real phi6 = 0.1;

    Real F6(start=0.044);

    Real y1;
    Real y2;
    Real y3;
    Real y4;
    Real y5;
    Real y6;

initial equation
    y1 = 0.014;
    y2 = 0.006;
    y3 = 0.0;
    y4 = 0.0;
    y5 = 0.0001;
    y6 = 0.0;

equation
    F6 = piecewise(0.044, leq(t, 60), 0);
    der(y1) = (emax * k1 * y1 / (k1 * y1 + (k1_prime + k1_double_prime * y1) * y2)) - (phi1 * y1);
    der(y2) = (k2 * y1) - (k3 * y2 * y5) - (phi2 * y2);
    der(y3) = (k3 * y2 * y5) - (phi3 * y3);
    der(y4) = (k4 * y1) + (k4_double_prime * y6) + (k4a * y5) - (k4i * y4 * y5) - (phi4i * y4);
    der(y5) = (k4i * y4 * y5) - (k4a * y5) - (phi4a * y5);
    der(y6) = (k6 * y1) + (F6) - (phi6 * y6);



end BIOMD208;
