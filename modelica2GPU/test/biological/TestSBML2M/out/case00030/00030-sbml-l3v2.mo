
model case00030 "00030-sbml-l3v2"

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



    parameter Real compartment = 1.0;



    Real S1;
    Real S1_amount;
    Real S1_conc;

initial equation
    S1_conc = (0 / compartment);

equation
    S1 = 7;
    der(S1_amount) = 0.0;




algorithm
    S1_conc := S1_amount / compartment;

end case00030;
