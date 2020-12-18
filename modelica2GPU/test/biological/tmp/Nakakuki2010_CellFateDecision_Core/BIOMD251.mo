
model BIOMD251 "Nakakuki2010_CellFateDecision_Core"

    function pow
        input  Real x;
        input  Real power;
        output Real y;
        algorithm
            y := x^power;
    end pow;



    parameter Real k7 = 0.5;
    parameter Real k11 = 0.11;
    parameter Real k13 = 0.06;
    parameter Real L = 1.0;
    parameter Real K1 = 1.09;
    parameter Real tau1 = 3.07;
    parameter Real K2 = 2.89;
    parameter Real tau2 = 472.0;
    parameter Real k1_2 = 15.0;
    parameter Real k2_2 = 50.0;
    parameter Real k3_2 = 14.0;
    parameter Real k_3 = 1.0;
    parameter Real k4_4 = 0.1;
    parameter Real k5_4 = 0.15;
    parameter Real k6_5 = 0.13;
    parameter Real n_5 = 1.1;
    parameter Real k8_6 = 0.08;
    parameter Real k10_7 = 0.3;
    parameter Real k9_7 = 0.3;
    parameter Real k12_8 = 0.001;
    parameter Real compartment = 1.0;



    Real x1;
    Real x2;
    Real ppERKn;
    Real DUSP;
    Real pRSKn;
    Real cFOSp;
    Real cFOS;
    Real pcFOS;
    Real cFOSm;
    Real ppERKc;

initial equation
    x1 = 0.0;
    x2 = 0.0;
    ppERKn = 0.0;
    DUSP = 0.0;
    pRSKn = 0.0;
    cFOSp = 0.0;
    cFOS = 0.0;
    pcFOS = 0.0;
    cFOSm = 0.0;

equation
    ppERKc = x1 - x2;
    der(x1) = (compartment * (-x1 / tau1 + K1 * L / tau1)) ;
    der(x2) = (compartment * (-x2 / tau2 + K2 * L / tau2)) ;
    der(ppERKn) = (compartment * (k1_2 * ppERKc - k2_2 * ppERKn - k3_2 * DUSP * ppERKn)) ;
    der(DUSP) = (compartment * k_3 * ppERKn) ;
    der(pRSKn) = (compartment * (k4_4 * ppERKn - k5_4 * pRSKn)) ;
    der(cFOSp) = (compartmen_5t * ((ppERKn_5 * pRSKn_5)^n_5 / (k6_5^n_5 + (ppERKn_5 * pRSKn_5)^n_5) - k7 * cFOSp)) ;
    der(cFOS) = (compartment * ((k9_7 * cFOSm - k10_7 * cFOS - k11 * cFOS * ppERKc) + k13 * pcFOS)) ;
    der(pcFOS) = (compartment * (k11 * cFOS * ppERKc - k12_8 * pcFOS - k13 * pcFOS)) ;
    der(cFOSm) = (compartment * (k7 * cFOSp - k8_6 * cFOSm)) ;




end BIOMD251;
