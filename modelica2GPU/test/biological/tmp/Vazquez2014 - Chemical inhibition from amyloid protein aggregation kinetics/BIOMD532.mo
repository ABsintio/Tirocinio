
model BIOMD532 "Vazquez2014 - Chemical inhibition from amyloid protein aggregation kinetics"

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



    parameter Real xm = 1.0;
    parameter Real vm = 0.25;
    parameter Real lambda = 3.0;
    parameter Real kx = 1.0;
    parameter Real mx = 5.0;
    parameter Real ax = 2.0;
    parameter Real kv = 1.0;
    parameter Real mv = 4.0;
    parameter Real av = 2.0;
    parameter Real klambda = 1.0;
    parameter Real mlambda = 2.0;
    parameter Real alambda = 2.0;
    parameter Real C = 1.0;
    parameter Real cell = 1.0;



    Real X;
    Real Xm;
    Real Vm;
    Real Lambda;

initial equation


equation
    Xm = xm * (1 - kx * (1 - exp(-log(2) * pow(C / mx, ax))));
    Vm = vm * (1 - kv * (1 - exp(-log(2) * pow(C / mv, av))));
    Lambda = lambda * (1 + klambda * (1 - exp(-log(2) * pow(C / mlambda, alambda))));
    X = Xm / (1 + exp(2 + 4 * Vm / Xm * (Lambda - time)));





end BIOMD532;
