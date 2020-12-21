
model BIOMD299 "Leloup1999_CircadianRhythms_Neurospora"

    function pow
        input  Real x;
        input  Real power;
        output Real y;
        algorithm
            y := x^power;
    end pow;



    parameter Real vs = 1.6;
    parameter Real vm = 0.505;
    parameter Real Km = 0.5;
    parameter Real KI = 1.0;
    parameter Real n = 4.0;
    parameter Real ks = 0.5;
    parameter Real vd = 1.4;
    parameter Real Kd = 0.13;
    parameter Real k1 = 0.5;
    parameter Real k2 = 0.6;
    parameter Real Cytoplasm = 1.0;
    parameter Real Nucleus = 1.0;

    Real Ft(start=0.0);

    Real M;
    Real FC;
    Real FN;

initial equation
    M = 0.1;
    FC = 0.1;
    FN = 0.1;

equation
    Ft = FC + FN;
    der(M) = vs * (pow(KI, n) / (pow(KI, n) + pow(FN, n))) - vm * (M / (Km + M));
    der(FC) = ks * M + k2 * FN - (vd * (FC / (Kd + FC)) + k1 * FC);
    der(FN) = k1 * FC - k2 * FN;




end BIOMD299;
