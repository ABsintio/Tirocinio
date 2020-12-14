
model BIOMD197 "Bartholome2007_MDCKII"

    function pow
        input  Real x;
        input  Real power;
        output Real y;
        algorithm
            y := x^power;
    end pow;

    parameter Real p1 = 0.0025;
    parameter Real p2 = 0.0784;
    parameter Real p3 = 0.0013;
    parameter Real p4 = 0.0827;
    parameter Real p5 = 0.0091;
    parameter Real p6 = 6.4e-05;
    parameter Real p7 = 0.0397;
    parameter Real p8 = 1000.0;
    parameter Real p9 = 0.0098;
    parameter Real p10 = 1.6;
    parameter Real p11 = 1000.0;
    parameter Real p12 = 0.0003;



    Real x1;
    Real x2;
    Real x3;
    Real x4;
    Real x5;
    Real BSP_tot;
    Real BSP_cell;

initial equation
    x1 = 88.0;
    x2 = 0.0;
    x3 = 0.0;
    x4 = 0.0;
    x5 = 0.0;
    BSP_tot = 0.0;
    BSP_cell = 0.0;

equation
    BSP_tot = x1 + x2 + x3 + x4 + x5;
    BSP_1.0 = x3 + x4;
    der(x1) = (p4 * x3) + (p7 * x2) - (p1 * x1) - (p3 * x1) - (p6 * x1 * (p8 - x2)) - (p12 * (x1 / 1.0 - x5 / 1.0));
    der(x2) = (p6 * x1 * (p8 - x2)) - (p7 * x2);
    der(x3) = (p1 * x1) + (p3 * x1) + (p10 * x4) - (p2 * x3) - (p4 * x3) - (p5 * x3) - (p9 * x3 * (p11 - x4));
    der(x4) = (p9 * x3 * (p11 - x4)) - (p10 * x4);
    der(x5) = (p2 * x3) + (p5 * x3) + (p12 * (x1 / 1.0 - x5 / 1.0)) ;



end BIOMD197;
