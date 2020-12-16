
model BIOMD123 "Fisher2006_NFAT_Activation"

    function pow
        input  Real x;
        input  Real power;
        output Real y;
        algorithm
            y := x^power;
    end pow;

    parameter Real k1 = 2.56e-05;
    parameter Real k2 = 0.00256;
    parameter Real k16 = 6.63;
    parameter Real k15 = 0.00168;
    parameter Real k18 = 0.00096;
    parameter Real k17 = 0.0015;
    parameter Real k6 = 0.00092;
    parameter Real k5 = 0.0019;
    parameter Real k14 = 0.00256;
    parameter Real k13 = 0.5;
    parameter Real k12 = 0.00168;
    parameter Real k11 = 6.63;
    parameter Real k10 = 0.005;
    parameter Real k9 = 0.5;
    parameter Real k3 = 0.005;
    parameter Real k4 = 0.5;
    parameter Real k7 = 0.005;
    parameter Real k8 = 0.5;
    parameter Real k19 = 1.0;
    parameter Real k20 = 1.0;
    parameter Real k21 = 0.21;
    parameter Real k22 = 0.5;
    parameter Real cytosol = 1.0;
    parameter Real nucleus = 1.0;



    Real Ca_Nuc;
    Real Ca_Cyt;
    Real NFAT_Nuc;
    Real Act_C_Nuc;
    Real NFAT_Pi_Nuc;
    Real NFAT_Act_C_Nuc;
    Real NFAT_Pi_Act_C_Nuc;
    Real Inact_C_Nuc;
    Real NFAT_Cyt;
    Real Act_C_Cyt;
    Real NFAT_Pi_Cyt;
    Real NFAT_Act_C_Cyt;
    Real NFAT_Pi_Act_C_Cyt;
    Real Inact_C_Cyt;

initial equation
    Ca_Nuc = 1.0;
    Ca_Cyt = 1.0;
    NFAT_Nuc = 0.0005219;
    Act_C_Nuc = 5.05e-05;
    NFAT_Pi_Nuc = 0.0002272;
    NFAT_Act_C_Nuc = 0.0009477;
    NFAT_Pi_Act_C_Nuc = 2.5e-06;
    Inact_C_Nuc = 0.049198;
    NFAT_Cyt = 0.0001101;
    Act_C_Cyt = 9.1e-06;
    NFAT_Pi_Cyt = 0.0094397;
    NFAT_Act_C_Cyt = 6.1e-06;
    NFAT_Pi_Act_C_Cyt = 2.2e-06;
    Inact_C_Cyt = 0.0097108;

equation

    der(Ca_Nuc) = (cytosol * k21 * Ca_Cyt - nucleus * k22 * Ca_Nuc) - (3.0 * nucleus * (k19 * Inact_C_Nuc * Ca_Nuc^3 - k20 * Act_C_Nuc));
    der(Ca_Cyt) =  - (3.0 * cytosol * (k19 * Inact_C_Cyt * Ca_Cyt^3 - k20 * Act_C_Cyt)) - (cytosol * k21 * Ca_Cyt - nucleus * k22 * Ca_Nuc);
    der(NFAT_Nuc) = (nucleus * (k1 * NFAT_Pi_Nuc - k2 * NFAT_Nuc)) - (nucleus * (k16 * NFAT_Nuc * Act_C_Nuc - k15 * NFAT_Act_C_Nuc)) - (nucleus * k18 * NFAT_Nuc - cytosol * k17 * NFAT_Cyt);
    der(Act_C_Nuc) = (nucleus * (k1 * NFAT_Pi_Nuc - k2 * NFAT_Nuc)) + (nucleus * (k12 * NFAT_Pi_Act_C_Nuc - k11 * NFAT_Pi_Nuc * Act_C_Nuc)) + (nucleus * (k19 * Inact_C_Nuc * Ca_Nuc^3 - k20 * Act_C_Nuc)) - (nucleus * (k1 * NFAT_Pi_Nuc - k2 * NFAT_Nuc)) - (nucleus * (k16 * NFAT_Nuc * Act_C_Nuc - k15 * NFAT_Act_C_Nuc)) - (nucleus * k6 * Act_C_Nuc - cytosol * k5 * Act_C_Cyt);
    der(NFAT_Pi_Nuc) = (nucleus * (k12 * NFAT_Pi_Act_C_Nuc - k11 * NFAT_Pi_Nuc * Act_C_Nuc)) + (cytosol * k3 * NFAT_Pi_Cyt - nucleus * k4 * NFAT_Pi_Nuc) - (nucleus * (k1 * NFAT_Pi_Nuc - k2 * NFAT_Nuc));
    der(NFAT_Act_C_Nuc) = (nucleus * (k16 * NFAT_Nuc * Act_C_Nuc - k15 * NFAT_Act_C_Nuc)) - (nucleus * (k14 * NFAT_Act_C_Nuc - k13 * NFAT_Pi_Act_C_Nuc)) - (nucleus * k10 * NFAT_Act_C_Nuc - cytosol * k9 * NFAT_Act_C_Cyt);
    der(NFAT_Pi_Act_C_Nuc) = (nucleus * (k14 * NFAT_Act_C_Nuc - k13 * NFAT_Pi_Act_C_Nuc)) + (cytosol * k7 * NFAT_Pi_Act_C_Cyt - nucleus * k8 * NFAT_Pi_Act_C_Nuc) - (nucleus * (k12 * NFAT_Pi_Act_C_Nuc - k11 * NFAT_Pi_Nuc * Act_C_Nuc));
    der(Inact_C_Nuc) = (cytosol * k5 * Inact_C_Cyt - nucleus * k6 * Inact_C_Nuc) - (nucleus * (k19 * Inact_C_Nuc * Ca_Nuc^3 - k20 * Act_C_Nuc));
    der(NFAT_Cyt) = (nucleus * k18 * NFAT_Nuc - cytosol * k17 * NFAT_Cyt) + (cytosol * (k15 * NFAT_Act_C_Cyt - k16 * NFAT_Cyt * Act_C_Cyt)) + (cytosol * (k1 * NFAT_Pi_Cyt - k2 * NFAT_Cyt)) ;
    der(Act_C_Cyt) = (nucleus * k6 * Act_C_Nuc - cytosol * k5 * Act_C_Cyt) + (cytosol * (k12 * NFAT_Pi_Act_C_Cyt - k11 * NFAT_Pi_Cyt * Act_C_Cyt)) + (cytosol * (k15 * NFAT_Act_C_Cyt - k16 * NFAT_Cyt * Act_C_Cyt)) + (cytosol * (k1 * NFAT_Pi_Cyt - k2 * NFAT_Cyt)) + (cytosol * (k19 * Inact_C_Cyt * Ca_Cyt^3 - k20 * Act_C_Cyt)) - (cytosol * (k1 * NFAT_Pi_Cyt - k2 * NFAT_Cyt));
    der(NFAT_Pi_Cyt) = (cytosol * (k12 * NFAT_Pi_Act_C_Cyt - k11 * NFAT_Pi_Cyt * Act_C_Cyt)) - (cytosol * k3 * NFAT_Pi_Cyt - nucleus * k4 * NFAT_Pi_Nuc) - (cytosol * (k1 * NFAT_Pi_Cyt - k2 * NFAT_Cyt));
    der(NFAT_Act_C_Cyt) = (nucleus * k10 * NFAT_Act_C_Nuc - cytosol * k9 * NFAT_Act_C_Cyt) - (cytosol * (k14 * NFAT_Act_C_Cyt - k13 * NFAT_Pi_Act_C_Cyt)) - (cytosol * (k15 * NFAT_Act_C_Cyt - k16 * NFAT_Cyt * Act_C_Cyt));
    der(NFAT_Pi_Act_C_Cyt) = (cytosol * (k14 * NFAT_Act_C_Cyt - k13 * NFAT_Pi_Act_C_Cyt)) - (cytosol * (k12 * NFAT_Pi_Act_C_Cyt - k11 * NFAT_Pi_Cyt * Act_C_Cyt)) - (cytosol * k7 * NFAT_Pi_Act_C_Cyt - nucleus * k8 * NFAT_Pi_Act_C_Nuc);
    der(Inact_C_Cyt) =  - (cytosol * (k19 * Inact_C_Cyt * Ca_Cyt^3 - k20 * Act_C_Cyt)) - (cytosol * k5 * Inact_C_Cyt - nucleus * k6 * Inact_C_Nuc);




end BIOMD123;
