
model BIOMD276 "Shrestha2010_HypoCalcemia_PTHresponse"

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



    parameter Real m1 = 112.52;
    parameter Real m2 = 15.0;
    parameter Real beta = 1000000.0;
    parameter Real R = 1.2162;
    parameter Real lambda_1 = 0.0125;
    parameter Real lambda_2 = 0.5595;
    parameter Real Ca0 = 1.255;
    parameter Real Ca1 = 0.1817;
    parameter Real t0 = 575.0;
    parameter Real alpha = 0.0442;
    parameter Real x1_n = 490.78;
    parameter Real x2_n = 6.629;
    parameter Real x2_min = 0.6697;
    parameter Real x2_max = 14.043;
    parameter Real Ca0_baseline = 1.255;
    parameter Real PTG_pool = 1.0;
    parameter Real Plasma_pool = 1.0;

    Real k(start=9.8436755);
    Real lambda_Ca(start=170.0);
    Real m_Ca(start=170.0);
    Real A(start=0.04945);
    Real B(start=0.00049);
    Real S(start=1.2159);

    Real x1;
    Real x2;
    Real Ca;

initial equation
    x1 = 0.0;
    x2 = 0.0;

equation
    lambda_Ca = (A - B) / (1 + pow(Ca / S, m_Ca)) + B;
    m_Ca = m1 / (1 + exp(-beta * (R - Ca))) + m2;
    Ca = piecewise(Ca0, (time < t0), Ca0 - Ca1 * (1 - exp(-alpha * (time - t0))));
    S = Ca0_baseline * pow(-(x1_n * B - lambda_2 * x2_n) / (x1_n * A - lambda_2 * x2_n), 1 / m_Ca);
    k = lambda_2 * x2_n + lambda_1 * x1_n;
    A = lambda_1 * lambda_2 * x2_max / (k - lambda_2 * x2_max);
    B = lambda_1 * lambda_2 * x2_min / (k - lambda_2 * x2_min);
    der(x1) = k - lambda_Ca * x1 - lambda_1 * x1;
    der(x2) = lambda_Ca * x1 - lambda_2 * x2;




end BIOMD276;
