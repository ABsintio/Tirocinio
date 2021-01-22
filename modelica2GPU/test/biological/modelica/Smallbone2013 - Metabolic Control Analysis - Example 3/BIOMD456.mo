
model BIOMD456 "Smallbone2013 - Metabolic Control Analysis - Example 3"

    function pow
        input  Real x;
        input  Real power;
        output Real y;
        algorithm
            y := x^power;
    end pow;
    
    function piecewise
        input Real x;
        input Boolean condition;
        input Real y;
        output Real z;
        algorithm
            z := if condition then x else y;
    end piecewise;



    parameter Real e1_0 = 1.0;
    parameter Real p1_0 = 10.0;
    parameter Real e2_1 = 1.0;
    parameter Real p2_1 = 10.0;
    parameter Real e3_2 = 1.0;
    parameter Real p3_2 = 50.0;
    parameter Real e4_3 = 1.0;
    parameter Real p4_3 = 10.0;
    parameter Real e6_4 = 1.0;
    parameter Real p6_4 = 1.0;
    parameter Real e7_5 = 1.0;
    parameter Real p7_5 = 1.0;
    parameter Real cell = 1.0;



    Real x1;
    Real x2;
    Real x3;
    Real y1;
    Real y2;
    Real y3;
    Real y4;
    Real y5;
    Real y7;
    Real x4;
    Real y8;

initial equation
    x1 = 0.05625738310526;
    x2 = 0.76876151899652;
    x3 = 4.23123848100348;
    y1 = 10.0;
    y2 = 0.0;
    y3 = 0.0;
    y4 = 1.0;
    y5 = 1.0;
    y7 = 1.0;
    x4 = 1.0;
    y8 = 0.0;

equation

    der(x1) = (e1_0 * (p1_0 * y1 * x2 - x1 * x3) / (1 + y1 + x2 + x1 + x3 + y1 * x2 + x1 * x3)) - (e3_2 * (p3_2 * x1 - y2) / (1 + x1 + y2)) - (e4_3 * (p4_3 * x1 - y3) / (1 + x1 + y3));
    der(x2) = (e2_1 * (p2_1 * y4 * x3 - y5 * x2) / (1 + x3 + x2 + y4 + y5 + x3 * y4 + x2 * y5)) - (e1_0 * (p1_0 * y1 * x2 - x1 * x3) / (1 + y1 + x2 + x1 + x3 + y1 * x2 + x1 * x3));
    der(x3) = (e1_0 * (p1_0 * y1 * x2 - x1 * x3) / (1 + y1 + x2 + x1 + x3 + y1 * x2 + x1 * x3)) - (e2_1 * (p2_1 * y4 * x3 - y5 * x2) / (1 + x3 + x2 + y4 + y5 + x3 * y4 + x2 * y5));
    der(y1) = 0.0;
    der(y2) = 0.0;
    der(y3) = 0.0;
    der(y4) = 0.0;
    der(y5) = 0.0;
    der(y7) = 0.0;
    der(x4) = (e6_4 * p6_4 * y7) - (e7_5 * p7_5);
    der(y8) = 0.0;




end BIOMD456;
