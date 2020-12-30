
model BIOMD365 "Hockin1999_BloodCoagulation_VaInactivation"

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



    parameter Real k1 = 100000000.0;
    parameter Real k2 = 0.7;
    parameter Real k3 = 0.064;
    parameter Real k5 = 1.0;
    parameter Real k6 = 0.00052;
    parameter Real k7 = 0.028;
    parameter Real k8 = 2570.0;
    parameter Real k9 = 1.72e-05;
    parameter Real k10 = 2630.0;
    parameter Real compartment_1 = 1.0;



    Real APC;
    Real Va;
    Real Va_APC;
    Real Va3;
    Real Va3_APC;
    Real Va5;
    Real Va5_APC;
    Real Va53;
    Real Va53_APC;
    Real Va56;
    Real Va56_APC;
    Real Va36;
    Real Va36_APC;
    Real Va536;
    Real Va536_APC;
    Real HC;
    Real LC;
    Real HC5;
    Real HC3;
    Real HC56;
    Real HC36;
    Real HC536;
    Real LC_APC;
    Real HC53;
    Real VaA3;
    Real VaA53;
    Real VaA36;
    Real VaA536;
    Real VaLCA1;
    Real VaLCA1_APC;

initial equation
    APC = 1e-08;
    Va = 2e-07;
    Va_APC = 0.0;
    Va3 = 0.0;
    Va3_APC = 0.0;
    Va5 = 0.0;
    Va5_APC = 0.0;
    Va53 = 0.0;
    Va53_APC = 0.0;
    Va56 = 0.0;
    Va56_APC = 0.0;
    Va36 = 0.0;
    Va36_APC = 0.0;
    Va536 = 0.0;
    Va536_APC = 0.0;
    HC = 0.0;
    LC = 0.0;
    HC5 = 0.0;
    HC3 = 0.0;
    HC56 = 0.0;
    HC36 = 0.0;
    HC536 = 0.0;
    LC_APC = 0.0;
    HC53 = 0.0;
    VaA3 = 0.0;
    VaA53 = 0.0;
    VaA36 = 0.0;
    VaA536 = 0.0;
    VaLCA1 = 0.0;
    VaLCA1_APC = 0.0;

equation

    der(APC) =  - (compartment_1 * (k1 * Va * APC - k2 * Va_APC)) - (compartment_1 * (k1 * Va3 * APC - k2 * Va3_APC)) - (compartment_1 * (k1 * Va5 * APC - k2 * Va5_APC)) - (compartment_1 * (k1 * Va53 * APC - k2 * Va53_APC)) - (compartment_1 * (k1 * Va56 * APC - k2 * Va56_APC)) - (compartment_1 * (k1 * Va36 * APC - k2 * Va36_APC)) - (compartment_1 * (k1 * Va536 * APC - k2 * Va536_APC)) - (compartment_1 * (k1 * LC * APC - k2 * LC_APC)) - (compartment_1 * (k1 * VaLCA1 * APC - k2 * VaLCA1_APC));
    der(Va) =  - (compartment_1 * (k1 * Va * APC - k2 * Va_APC)) - (compartment_1 * (k9 * Va - k10 * HC * LC));
    der(Va_APC) = (compartment_1 * (k1 * Va * APC - k2 * Va_APC)) - (compartment_1 * k5 * Va_APC) - (compartment_1 * k3 * Va_APC);
    der(Va3) =  - (compartment_1 * (k1 * Va3 * APC - k2 * Va3_APC)) - (compartment_1 * (k9 * Va3 - k10 * HC3 * LC)) - (compartment_1 * (k7 * Va3 - k8 * VaA3 * VaLCA1));
    der(Va3_APC) = (compartment_1 * (k1 * Va3 * APC - k2 * Va3_APC)) + (compartment_1 * k3 * Va_APC) - (compartment_1 * k6 * Va3_APC) - (compartment_1 * k5 * Va3_APC) - (compartment_1 * (k7 * Va3_APC - k8 * VaA3 * VaLCA1_APC));
    der(Va5) =  - (compartment_1 * (k1 * Va5 * APC - k2 * Va5_APC)) - (compartment_1 * (k9 * Va5 - k10 * HC5 * LC));
    der(Va5_APC) = (compartment_1 * (k1 * Va5 * APC - k2 * Va5_APC)) + (compartment_1 * k5 * Va_APC) - (compartment_1 * k6 * Va5_APC) - (compartment_1 * k3 * Va5_APC);
    der(Va53) =  - (compartment_1 * (k1 * Va53 * APC - k2 * Va53_APC)) - (compartment_1 * (k9 * Va53 - k10 * HC53 * LC)) - (compartment_1 * (k7 * Va53 - k8 * VaA53 * VaLCA1));
    der(Va53_APC) = (compartment_1 * (k1 * Va53 * APC - k2 * Va53_APC)) + (compartment_1 * k3 * Va5_APC) + (compartment_1 * k5 * Va3_APC) - (compartment_1 * k6 * Va53_APC) - (compartment_1 * (k7 * Va53_APC - k8 * VaA53 * VaLCA1_APC));
    der(Va56) =  - (compartment_1 * (k1 * Va56 * APC - k2 * Va56_APC)) - (compartment_1 * (k9 * Va56 - k10 * HC56 * LC));
    der(Va56_APC) = (compartment_1 * (k1 * Va56 * APC - k2 * Va56_APC)) + (compartment_1 * k6 * Va5_APC) - (compartment_1 * k3 * Va56_APC);
    der(Va36) =  - (compartment_1 * (k1 * Va36 * APC - k2 * Va36_APC)) - (compartment_1 * (k9 * Va36 - k10 * HC36 * LC)) - (compartment_1 * (k7 * Va36 - k8 * VaA36 * VaLCA1));
    der(Va36_APC) = (compartment_1 * (k1 * Va36 * APC - k2 * Va36_APC)) + (compartment_1 * k6 * Va3_APC) - (compartment_1 * k5 * Va36_APC) - (compartment_1 * (k7 * Va36_APC - k8 * VaA36 * VaLCA1_APC));
    der(Va536) =  - (compartment_1 * (k1 * Va536 * APC - k2 * Va536_APC)) - (compartment_1 * (k9 * Va536 - k10 * HC536 * LC)) - (compartment_1 * (k7 * Va536 - k8 * VaA536 * VaLCA1));
    der(Va536_APC) = (compartment_1 * (k1 * Va536 * APC - k2 * Va536_APC)) + (compartment_1 * k3 * Va56_APC) + (compartment_1 * k6 * Va53_APC) + (compartment_1 * k5 * Va36_APC) - (compartment_1 * (k7 * Va536_APC - k7 * VaA536 * VaLCA1_APC));
    der(HC) = (compartment_1 * (k9 * Va - k10 * HC * LC)) ;
    der(LC) = (compartment_1 * (k9 * Va - k10 * HC * LC)) + (compartment_1 * (k9 * Va5 - k10 * HC5 * LC)) + (compartment_1 * (k9 * Va3 - k10 * HC3 * LC)) + (compartment_1 * (k9 * Va56 - k10 * HC56 * LC)) + (compartment_1 * (k9 * Va53 - k10 * HC53 * LC)) + (compartment_1 * (k9 * Va36 - k10 * HC36 * LC)) + (compartment_1 * (k9 * Va536 - k10 * HC536 * LC)) - (compartment_1 * (k1 * LC * APC - k2 * LC_APC));
    der(HC5) = (compartment_1 * (k9 * Va5 - k10 * HC5 * LC)) ;
    der(HC3) = (compartment_1 * (k9 * Va3 - k10 * HC3 * LC)) ;
    der(HC56) = (compartment_1 * (k9 * Va56 - k10 * HC56 * LC)) ;
    der(HC36) = (compartment_1 * (k9 * Va36 - k10 * HC36 * LC)) ;
    der(HC536) = (compartment_1 * (k9 * Va536 - k10 * HC536 * LC)) ;
    der(LC_APC) = (compartment_1 * (k1 * LC * APC - k2 * LC_APC)) ;
    der(HC53) = (compartment_1 * (k9 * Va53 - k10 * HC53 * LC)) ;
    der(VaA3) = (compartment_1 * (k7 * Va3 - k8 * VaA3 * VaLCA1)) + (compartment_1 * (k7 * Va3_APC - k8 * VaA3 * VaLCA1_APC)) ;
    der(VaA53) = (compartment_1 * (k7 * Va53 - k8 * VaA53 * VaLCA1)) + (compartment_1 * (k7 * Va53_APC - k8 * VaA53 * VaLCA1_APC)) ;
    der(VaA36) = (compartment_1 * (k7 * Va36 - k8 * VaA36 * VaLCA1)) + (compartment_1 * (k7 * Va36_APC - k8 * VaA36 * VaLCA1_APC)) ;
    der(VaA536) = (compartment_1 * (k7 * Va536 - k8 * VaA536 * VaLCA1)) + (compartment_1 * (k7 * Va536_APC - k7 * VaA536 * VaLCA1_APC)) ;
    der(VaLCA1) = (compartment_1 * (k7 * Va3 - k8 * VaA3 * VaLCA1)) + (compartment_1 * (k7 * Va53 - k8 * VaA53 * VaLCA1)) + (compartment_1 * (k7 * Va36 - k8 * VaA36 * VaLCA1)) + (compartment_1 * (k7 * Va536 - k8 * VaA536 * VaLCA1)) - (compartment_1 * (k1 * VaLCA1 * APC - k2 * VaLCA1_APC));
    der(VaLCA1_APC) = (compartment_1 * (k7 * Va3_APC - k8 * VaA3 * VaLCA1_APC)) + (compartment_1 * (k7 * Va53_APC - k8 * VaA53 * VaLCA1_APC)) + (compartment_1 * (k7 * Va36_APC - k8 * VaA36 * VaLCA1_APC)) + (compartment_1 * (k7 * Va536_APC - k7 * VaA536 * VaLCA1_APC)) + (compartment_1 * (k1 * VaLCA1 * APC - k2 * VaLCA1_APC)) ;




end BIOMD365;
