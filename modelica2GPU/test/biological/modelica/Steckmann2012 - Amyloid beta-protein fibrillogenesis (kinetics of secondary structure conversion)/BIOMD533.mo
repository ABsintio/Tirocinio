
model BIOMD533 "Steckmann2012 - Amyloid beta-protein fibrillogenesis (kinetics of secondary structure conversion)"

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



    parameter Real k0 = 0.59;
    parameter Real k1 = 0.672;
    parameter Real k2 = 0.678;
    parameter Real k3 = 0.0392;
    parameter Real k4 = 0.554;
    parameter Real q = 2.0;
    parameter Real epsilon = 0.0;
    parameter Real cell = 1.0;



    Real RCT0;
    Real alpha;
    Real BN1;
    Real BN2;
    Real BN3;
    Real BN4;
    Real BTX;
    Real BM;
    Real RCT1;
    Real RC;
    Real beta;

initial equation
    RCT0 = 88.1;
    alpha = 0.0;
    BN1 = 11.9;
    BN2 = 0.0;
    BN3 = 0.0;
    BN4 = 0.0;
    BTX = 0.0;
    BM = 0.0;
    RCT1 = 0.0;

equation
    RC = RCT0 + RCT1;
    beta = BM + BN1 + BN2 + BN3 + BN4 + BTX;
    der(RCT0) = -k0 * (epsilon + BM) * RCT0 - k1 * BTX * RCT0;
    der(alpha) = k1 * BTX * RCT0 - k2 * pow(BTX, q) * alpha;
    der(BN1) = k2 * pow(BTX, q) * alpha - 4 * k3 * BN1;
    der(BN2) = 4 * k3 * BN1 - 4 * k3 * BN2;
    der(BN3) = 4 * k3 * BN2 - 4 * k3 * BN3;
    der(BN4) = 4 * k3 * BN3 - 4 * k3 * BN4;
    der(BTX) = 4 * k3 * BN4 - k4 * BTX;
    der(BM) = k4 * BTX;
    der(RCT1) = k0 * (epsilon + BM) * RCT0;




end BIOMD533;
