
model case00094 "00094-sbml-l3v2"

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

    function eq
        input  Real x1;
        input  Real x2;
        output Boolean y;
        algorithm
            y := abs(x1 - x2) / max(abs(x1), 1.0E-4) < Modelica.Constants.eps;
    end eq;

    function factorial
        input  Real n;
        output Real y;
        algorithm
            if eq(n, 0) then
                y := 1;
            else
                y := n * factorial(n - 1);
            end if;
    end factorial;



    parameter Real k1 = 0.015;
    parameter Real k2 = 0.5;
    parameter Real k3 = 1.5;
    parameter Real compartment = 1.0;



    Real S1;
    Real S2;
    Real S3;
    Real S4;
    Real S1_amount;
    Real S2_amount;
    Real S3_amount;
    Real S4_amount;
    Real S1_conc;
    Real S2_conc;
    Real S3_conc;
    Real S4_conc;

initial equation
    S1_conc = (1e-05 / compartment);
    S2_conc = (1.5e-05 / compartment);
    S3_conc = (1e-05 / compartment);
    S4_conc = (5.0 / compartment);

equation

    S4 = k3 * S1;
    der(S2_amount) = k2 * S3 -1 * k1 * S1;
    der(S1_amount) = (compartment * k2 * S3) - (compartment * k1 * S1);
    der(S3_amount) = (compartment * k1 * S1) - (compartment * k2 * S3);
    der(S4_amount) = 0.0;
    S1 = S1_conc;
    S2 = S2_conc;
    S3 = S3_conc;




algorithm
    S1_conc := S1_amount / compartment;
    S2_conc := S2_amount / compartment;
    S3_conc := S3_amount / compartment;
    S4_conc := S4_amount / compartment;

end case00094;
