model BIOMD042 "Sustained oscillations in glycolysis"

    parameter Real V1 = 0.500;
    parameter Real K1GLC = 0.100;
    parameter Real K1ATP = 0.063;
    parameter Real V2 = 1.500;
    parameter Real K2 = 0.002;
    parameter Real k2 = 0.017;
    parameter Real K2ATP = 0.010;
    parameter Real k3f = 1.000;
    parameter Real k3b = 50.000;
    parameter Real V4 = 10.000;
    parameter Real K4GAP = 1.000;
    parameter Real K4NAD = 1.000;
    parameter Real k5f = 1.000;
    parameter Real k5b = 0.500;
    parameter Real V6 = 10.000;
    parameter Real K6PEP = 0.200;
    parameter Real K6ADP = 0.300;
    parameter Real V7 = 2.000;
    parameter Real K7PYR = 0.300;
    parameter Real k8f = 1.000;
    parameter Real k8b = 1.43e-4;
    parameter Real k9f = 10.000;
    parameter Real k9b = 10.000;
    parameter Real k10 = 0.050;
    parameter Real fl = 0.011;

    Real ATP;
    Real ADP;
    Real AMP;
    Real GLC;
    Real F6P;
    Real FBP;
    Real GAP;
    Real NAD;
    Real NADH;
    Real DPG;
    Real PEP;
    Real PYR;
    Real ACA;
    Real EtOH;
    Real P;

initial equation
    ATP = 4.49064;
    ADP = 0.108367;
    AMP = 0.00261149;
    GLC = 0.0112817;
    F6P = 0.65939;
    FBP = 0.00770135;
    GAP = 0.00190919;
    NAD = 3.62057;
    NADH = 0.616118;
    DPG = 0.299109;
    PEP = 0.0021125;
    PYR = 0.00422702;
    ACA = 0.0738334;
    EtOH = 0.33981;
    P = 0.0;

equation
    der(ATP) = fl*(3.5-ATP) + (k5f*DPG*ADP-k5b*PEP*ATP) + V6*ADP*PEP/((K6PEP+PEP)*(K6ADP+ADP)) - V1*ATP*GLC/((K1GLC+GLC)*(K1ATP+ATP)) - V2*ATP*F6P^2/((K2*(1+k2*(ATP/AMP)^2)+F6P^2)*(K2ATP+ATP)) - (k9f*AMP*ATP-k9b*ADP^2);
    der(ADP) = fl*(1.1-ADP) + V1*ATP*GLC/((K1GLC+GLC)*(K1ATP+ATP)) + V2*ATP*F6P^2/((K2*(1+k2*(ATP/AMP)^2)+F6P^2)*(K2ATP+ATP)) + 2*(k9f*AMP*ATP-k9b*ADP^2) - (k5f*DPG*ADP-k5b*PEP*ATP) - V6*ADP*PEP/((K6PEP+PEP)*(K6ADP+ADP));
    der(AMP) = -(fl*AMP) - (k9f*AMP*ATP-k9b*ADP^2);
    der(GLC) = fl*(50-GLC) - V1*ATP*GLC/((K1GLC+GLC)*(K1ATP+ATP));
    der(F6P) = V1*ATP*GLC/((K1GLC+GLC)*(K1ATP+ATP)) - fl*F6P - V2*ATP*F6P^2/((K2*(1+k2*(ATP/AMP)^2)+F6P^2)*(K2ATP+ATP)) - k10*F6P;
    der(FBP) = V2*ATP*F6P^2/((K2*(1+k2*(ATP/AMP)^2)+F6P^2)*(K2ATP+ATP)) - fl*FBP - (k3f*FBP-k3b*GAP^2);
    der(GAP) = 2*(k3f*FBP-k3b*GAP^2) - fl*GAP - V4*NAD*GAP/((K4GAP+GAP)*(K4NAD+NAD));
    der(NAD) = fl*(4-NAD) + (k8f*NADH*ACA-k8b*NAD*EtOH) - V4*NAD*GAP/((K4GAP+GAP)*(K4NAD+NAD));
    der(NADH) = fl*(0.24-NADH) + V4*NAD*GAP/((K4GAP+GAP)*(K4NAD+NAD)) - (k8f*NADH*ACA-k8b*NAD*EtOH);
    der(DPG) = V4*NAD*GAP/((K4GAP+GAP)*(K4NAD+NAD)) - fl*DPG - (k5f*DPG*ADP-k5b*PEP*ATP);
    der(PEP) = (k5f*DPG*ADP-k5b*PEP*ATP) - fl*PEP - V6*ADP*PEP/((K6PEP+PEP)*(K6ADP+ADP));
    der(PYR) = V6*ADP*PEP/((K6PEP+PEP)*(K6ADP+ADP)) - fl*PYR - V7*PYR/(K7PYR+PYR);
    der(ACA) = V7*PYR/(K7PYR+PYR) - fl*ACA - (k8f*NADH*ACA-k8b*NAD*EtOH);
    der(EtOH) = k8f*NADH*ACA-k8b*NAD*EtOH - fl*EtOH;
    der(P) = k10*F6P - fl*P;
    
end BIOMD042;