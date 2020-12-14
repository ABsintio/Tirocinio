
model BIOMD145 "Wang2007 - ATP induced intracellular Calcium Oscillation"

    function pow
        input  Real x;
        input  Real power;
        output Real y;
        algorithm
            y := x^power;
    end pow;

    parameter Real Kp = 4.0;
    parameter Real Kd = 10.0;
    parameter Real Kr = 200.0;
    parameter Real n = 4.0;
    parameter Real Kg = 25.0;
    parameter Real m = 2.0;
    parameter Real Ks = 25.0;
    parameter Real Kc1 = 1000.0;
    parameter Real Kc2 = 2000.0;
    parameter Real w = 3.0;
    parameter Real Ker = 75.0;
    parameter Real Cplc_total = 10.0;
    parameter Real k0 = 0.1;
    parameter Real k1 = 3.4;
    parameter Real k2 = 4.0;
    parameter Real k3 = 4.5;
    parameter Real k4 = 1.2;
    parameter Real k5 = 0.12;
    parameter Real k6 = 14.0;
    parameter Real k7 = 2.0;
    parameter Real k8 = 10500.0;
    parameter Real k9 = 600.0;
    parameter Real k10 = 3000.0;
    parameter Real k11 = 260.0;
    parameter Real Cytosol = 1.0;
    parameter Real ER = 1.0;

    Real Raplc(start=0.0);
    Real Rpkc(start=0.0);
    Real Rgalpha_gtp(start=0.0);
    Real Rdg(start=0.0);
    Real Rip3(start=0.0);
    Real Rcyt1(start=0.0);
    Real Rcyt2(start=0.0);
    Real Rer(start=0.0);

    Real Galpha_GTP;
    Real APLC;
    Real IP3;
    Real Ca_ER;
    Real Ca_Cyt;
    Real PLC;
    Real DG;

initial equation
    Galpha_GTP = 1.0;
    APLC = 9.0;
    IP3 = 1.0;
    Ca_ER = 1000.0;
    Ca_Cyt = 200.0;

equation
    DG = IP3;
    Raplc = APLC / (Kp + APLC);
    Rpkc = DG / (Kd + DG) * Ca_Cyt / (Kr + Ca_Cyt);
    Rgalpha_gtp = pow(Galpha_GTP, n) / (pow(Kg, n) + pow(Galpha_GTP, n));
    Rdg = pow(DG, m) / (pow(Kd, m) + pow(DG, m));
    Rip3 = pow(IP3, 3) / (pow(Ks, 3) + pow(IP3, 3));
    Rcyt1 = Ca_Cyt / (Kc1 + Ca_Cyt);
    Rcyt2 = Ca_Cyt / (Kc2 + Ca_Cyt);
    Rer = pow(Ca_ER, w) / (pow(Ker, w) + pow(Ca_ER, w));
    PLC = Cplc_total - APLC;
    der(Galpha_GTP) = (Cytosol * k0) + (Cytosol * k1 * Galpha_GTP) - (Cytosol * k2 * Raplc * Galpha_GTP) - (Cytosol * k3 * Rpkc * Galpha_GTP);
    der(APLC) = (Cytosol * k4 * Rgalpha_gtp * Rdg * PLC) - (Cytosol * k5 * APLC);
    der(IP3) = (Cytosol * k6 * APLC) - (Cytosol * k7 * IP3);
    der(Ca_ER) =  - (0.001 * ER * (k8 * Rip3 * Rer - k9 * Rcyt1));
    der(Ca_Cyt) = (0.01 * ER * (k8 * Rip3 * Rer - k9 * Rcyt1)) + (0.05 * Cytosol * k11) - (0.05 * Cytosol * k10 * Rcyt2);




end BIOMD145;
