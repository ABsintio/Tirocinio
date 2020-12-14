
model BIOMD187 "Ibrahim2008 - Mitotic Spindle Assembly Checkpoint - Convey variant"

    function pow
        input  Real x;
        input  Real power;
        output Real y;
        algorithm
            y := x^power;
    end pow;

    parameter Real k3f = 0.01;
    parameter Real kf6 = 1000.0;
    parameter Real k5f = 10000.0;
    parameter Real k5r = 0.2;
    parameter Real k2f = 100000000.0;
    parameter Real k1f = 200000.0;
    parameter Real k1r = 0.2;
    parameter Real k4f = 10000000.0;
    parameter Real k4r = 0.02;
    parameter Real k7f = 100000000.0;
    parameter Real k7bf = 0.08;
    parameter Real k8f = 5000000.0;
    parameter Real k8r = 0.08;
    parameter Real const_val_0 = 0.0;
    parameter Real const_val_1 = 1.0;

    Real u(start=1.0);
    Real u_prime(start=0.0);

    Real Mad1_CMad2;
    Real OMad2;
    Real Mad1_CMad2_OMad2;
    Real Cdc20;
    Real Cdc20_CMad2;
    Real Bub3_BubR1;
    Real MCC;
    Real Bub3_BubR1_Cdc20;
    Real APC;
    Real MCC_APC;
    Real APC_Cdc20;

initial equation
    Mad1_CMad2 = 5e-08;
    OMad2 = 1.3e-07;
    Mad1_CMad2_OMad2 = 0.0;
    Cdc20 = 2.2e-07;
    Cdc20_CMad2 = 0.0;
    Bub3_BubR1 = 1.27e-07;
    MCC = 0.0;
    Bub3_BubR1_Cdc20 = 0.0;
    APC = 9e-08;
    MCC_APC = 0.0;
    APC_Cdc20 = 0.0;

equation

    der(Mad1_CMad2) = (u * k2f * Mad1_CMad2_OMad2 * Cdc20 * 1.0) - (1.0 * (u * k1f * Mad1_CMad2 * OMad2 - k1r * Mad1_CMad2_OMad2));
    der(OMad2) = (k3f * Cdc20_CMad2 * 1.0) + (u_prime * k7bf * MCC_APC * 1.0) - (1.0 * (u * k1f * Mad1_CMad2 * OMad2 - k1r * Mad1_CMad2_OMad2)) - (kf6 * OMad2 * Cdc20 * 1.0);
    der(Mad1_CMad2_OMad2) = (1.0 * (u * k1f * Mad1_CMad2 * OMad2 - k1r * Mad1_CMad2_OMad2)) - (u * k2f * Mad1_CMad2_OMad2 * Cdc20 * 1.0);
    der(Cdc20) = (k3f * Cdc20_CMad2 * 1.0) - (u * k2f * Mad1_CMad2_OMad2 * Cdc20 * 1.0) - (1.0 * (u * k5f * Bub3_BubR1 * Cdc20 - k5r * Bub3_BubR1_Cdc20)) - (kf6 * OMad2 * Cdc20 * 1.0) - (1.0 * (k8f * APC * Cdc20 - k8r * APC_Cdc20));
    der(Cdc20_CMad2) = (u * k2f * Mad1_CMad2_OMad2 * Cdc20 * 1.0) + (kf6 * OMad2 * Cdc20 * 1.0) - (k3f * Cdc20_CMad2 * 1.0) - (1.0 * (u * k4f * Cdc20_CMad2 * Bub3_BubR1 - k4r * MCC));
    der(Bub3_BubR1) = (u_prime * k7bf * MCC_APC * 1.0) - (1.0 * (u * k4f * Cdc20_CMad2 * Bub3_BubR1 - k4r * MCC)) - (1.0 * (u * k5f * Bub3_BubR1 * Cdc20 - k5r * Bub3_BubR1_Cdc20));
    der(MCC) = (1.0 * (u * k4f * Cdc20_CMad2 * Bub3_BubR1 - k4r * MCC)) - (u * k7f * MCC * APC * 1.0);
    der(Bub3_BubR1_Cdc20) = (1.0 * (u * k5f * Bub3_BubR1 * Cdc20 - k5r * Bub3_BubR1_Cdc20)) ;
    der(APC) =  - (u * k7f * MCC * APC * 1.0) - (1.0 * (k8f * APC * Cdc20 - k8r * APC_Cdc20));
    der(MCC_APC) = (u * k7f * MCC * APC * 1.0) - (u_prime * k7bf * MCC_APC * 1.0);
    der(APC_Cdc20) = (u_prime * k7bf * MCC_APC * 1.0) + (1.0 * (k8f * APC * Cdc20 - k8r * APC_Cdc20)) ;
    der(u)=0.0;
    der(u_prime)=0.0;

    when time > 2000 then
        reinit(u,const_val_0);
        reinit(u_prime,const_val_1);
    end when;

end BIOMD187;
