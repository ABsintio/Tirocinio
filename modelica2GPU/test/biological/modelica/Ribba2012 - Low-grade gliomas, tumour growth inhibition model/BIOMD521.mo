
model BIOMD521 "Ribba2012 - Low-grade gliomas, tumour growth inhibition model"

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



    parameter Real P0 = 7.13;
    parameter Real Q0 = 41.2;
    parameter Real lambda_P = 0.121;
    parameter Real k_PQ = 0.00295;
    parameter Real k_Qp_P = 0.0031;
    parameter Real delta_QP = 0.0087;
    parameter Real gamma = 0.729;
    parameter Real KDE = 0.24;
    parameter Real K = 100.0;
    parameter Real plama = 1.0;
    parameter Real tissue = 1.0;

    Real Pstar(start=0.0);

    Real C;
    Real P;
    Real Q;
    Real Qp;

initial equation
    C = 1.0;
    P = 7.13;
    Q = 41.2;
    Qp = 0.0;

equation
    Pstar = P + Q + Qp;
    der(C) = -KDE * C;
    der(P) = lambda_P * P * (1 - Pstar / K) + k_Qp_P * Qp - k_PQ * P - gamma * C * KDE * P;
    der(Q) = k_PQ - gamma * C * KDE * Q;
    der(Qp) = gamma * C * KDE * Q - k_Qp_P * Qp - delta_QP * Qp;




end BIOMD521;
