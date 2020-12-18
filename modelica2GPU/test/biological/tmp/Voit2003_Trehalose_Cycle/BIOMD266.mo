
model BIOMD266 "Voit2003_Trehalose_Cycle"

    function pow
        input  Real x;
        input  Real power;
        output Real y;
        algorithm
            y := x^power;
    end pow;



    parameter Real heat_shock = 0.0;
    parameter Real cell = 1.0;
    parameter Real external = 1.0;

    Real X8(start=0.0);
    Real X9(start=0.0);
    Real X10(start=0.0);
    Real X11(start=0.0);
    Real X12r(start=0.0);
    Real X12f(start=0.0);
    Real X13(start=0.0);
    Real X14(start=0.0);
    Real X15r(start=0.0);
    Real X15f(start=0.0);
    Real X16(start=0.0);
    Real X17(start=0.0);
    Real X18(start=0.0);
    Real X19(start=0.0);
    Real flux_X1_in(start=0.0);
    Real flux_X1_out(start=0.0);
    Real flux_X2_in(start=0.0);
    Real flux_X2_out(start=0.0);
    Real flux_X3_in(start=0.0);
    Real flux_X3_out(start=0.0);
    Real flux_X4_in(start=0.0);
    Real flux_X4_out(start=0.0);
    Real flux_X5_in(start=0.0);
    Real flux_X5_out(start=0.0);
    Real flux_X6_in(start=0.0);
    Real flux_X6_out(start=0.0);
    Real flux_X7_in(start=0.0);
    Real flux_X7_out(start=0.0);

    Real X0;
    Real X1;
    Real X2;
    Real X3;
    Real X4;
    Real X5;
    Real X6;
    Real X7;

initial equation
    X0 = 1.0;
    X1 = 0.03;
    X2 = 1.0;
    X3 = 0.1;
    X4 = 0.7;
    X5 = 1.0;
    X6 = 0.02;
    X7 = 0.05;

equation
    flux_X1_in = 31.912 * pow(X0, 0.968) * pow(X2, -0.194) * pow(X7, 0.00968) * pow(X8, 0.968) * pow(X19, 0.0323);
    flux_X1_out = 89.935 * pow(X1, 0.75) * pow(X6, -0.4) * X9;
    flux_X2_in = 142.72 * pow(X1, 0.517) * pow(X2, -0.179) * pow(X3, 0.183) * pow(X6, -0.276) * pow(X9, 0.689) * pow(X12r, 0.311);
    flux_X2_out = 30.12 * pow(X1, -0.00333) * pow(X2, 0.575) * pow(X3, -0.17) * pow(X4, 0.00333) * pow(X10, 0.5111) * pow(X11, 0.0667) * pow(X12f, 0.411) * pow(X17, 0.0111);
    flux_X3_in = 7.8819 * pow(X2, 0.394) * pow(X3, -0.392) * pow(X4, -0.01) * pow(X5, 0.0128) * pow(X12f, 0.949) * pow(X15r, 0.0513);
    flux_X3_out = 76.434 * pow(X2, -0.412) * pow(X3, 0.593) * pow(X12r, 0.718) * pow(X13, 0.18) * pow(X15f, 0.103);
    flux_X4_in = 11.07 * pow(X3, 0.5) * X13;
    flux_X4_out = 3.4556 * pow(X1, -0.0429) * pow(X2, 0.214) * pow(X4, 0.386) * pow(X14, 0.857) * pow(X17, 0.143);
    flux_X5_in = 11.06 * pow(X2, 0.04) * pow(X3, 0.32) * pow(X4, 0.16) * pow(X14, 0.6) * pow(X15f, 0.4);
    flux_X5_out = 4.929 * pow(X2, -0.04) * pow(X4, -0.04) * pow(X5, 0.25) * pow(X15r, 0.2) * pow(X16, 0.8);
    flux_X6_in = 0.19424 * pow(X1, -0.3) * pow(X2, 0.3) * pow(X4, 0.3) * X17;
    flux_X6_out = 1.0939 * pow(X6, 0.2) * X18;
    flux_X7_in = 1.0939 * pow(X6, 0.2) * X18;
    flux_X7_out = 1.2288 * pow(X7, 0.3) * X19;
    X8 = piecewise(8, eq(heat_shock, 1), 1);
    X9 = piecewise(1, eq(heat_shock, 8), 1);
    X10 = piecewise(1, eq(heat_shock, 1), 1);
    X11 = piecewise(1, eq(heat_shock, 6), 1);
    X12f = piecewise(1, eq(heat_shock, 16), 1);
    X12r = piecewise(16, eq(heat_shock, 1), 1);
    X13 = piecewise(16, eq(heat_shock, 1), 1);
    X14 = piecewise(1, eq(heat_shock, 16), 1);
    X15f = piecewise(1, eq(heat_shock, 50), 1);
    X15r = piecewise(50, eq(heat_shock, 1), 1);
    X16 = piecewise(16, eq(heat_shock, 1), 1);
    X17 = piecewise(1, eq(heat_shock, 12), 1);
    X18 = piecewise(18, eq(heat_shock, 1), 1);
    X19 = piecewise(1, eq(heat_shock, 6), 1);
    der(X1) = flux_X1_in - flux_X1_out;
    der(X2) = flux_X2_in - flux_X2_out;
    der(X3) = flux_X3_in - flux_X3_out;
    der(X4) = flux_X4_in - flux_X4_out;
    der(X5) = flux_X5_in - flux_X5_out;
    der(X6) = flux_X6_in - flux_X6_out;
    der(X7) = flux_X7_in - flux_X7_out;
    der(X0) = 0.0;




end BIOMD266;
