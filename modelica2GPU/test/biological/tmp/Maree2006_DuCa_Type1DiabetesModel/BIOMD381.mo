
model BIOMD381 "Maree2006_DuCa_Type1DiabetesModel"

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



    parameter Real J = 50000.0;
    parameter Real c = 0.1;
    parameter Real b = 0.09;
    parameter Real d = 0.5;
    parameter Real k = 0.4;
    parameter Real e1 = 1e-08;
    parameter Real e2 = 1e-08;
    parameter Real Amax = 20000000.0;
    parameter Real kc = 1.0;
    parameter Real alpha = 5e-09;
    parameter Real delta = 25.0;
    parameter Real g = 1e-05;
    parameter Real f1 = 1e-05;
    parameter Real f2 = 1e-05;
    parameter Real Wmax = 40000000.0;
    parameter Real compartment1 = 1.0;

    Real W(start=4936.39216346718);
    Real parameter_1(start=9.0);

    Real M;
    Real Ma;
    Real Bn;
    Real Ba;
    Real Cy;

initial equation
    M = 477000.0;
    Ma = 0.0;
    Bn = 0.0;
    Ba = 0.0;
    Cy = 0.0;

equation
    parameter_1 = pow((time - 9) / 3, 2);
    W = Wmax * exp(-parameter_1);
    der(M) = J + (k + b) * Ma - c * M - f1 * M * Ba - e1 * M * (M + Ma);
    der(Ma) = f1 * M * Ba - k * Ma - e2 * Ma * (M + Ma);
    der(Bn) = d * Ba - (f1 * M + f2 * Ma) * Bn;
    der(Ba) = W + Amax * Cy / (kc + Cy) - (f1 * M + f2 * Ma + d) * Ba;
    der(Cy) = alpha * Bn * Ma - delta * Cy;




end BIOMD381;
