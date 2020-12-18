
model BIOMD337 "Pfeiffer2001_ATP-ProducingPathways_CooperationCompetition"

    function pow
        input  Real x;
        input  Real power;
        output Real y;
        algorithm
            y := x^power;
    end pow;

    parameter Real v = 10.0;
    parameter Real d = 1.0;
    parameter Real compartment = 1.0;



    Real S;
    Real N1;
    Real N2;

initial equation
    S = 0.111111111111111;
    N1 = 100.0;
    N2 = 0.0;

equation

    der(S) = (v) - (N1 * S / (1 + S)) - (N2 * 20 * S / (1 + S));
    der(N1) = (10.0 * N1 * S / (1 + S)) - (d * N1);
    der(N2) = (N2 * 20 * S / (1 + S)) - (d * N2);


    when time >= 15 then
        reinit(N2,0.01);
    end when;

end BIOMD337;
