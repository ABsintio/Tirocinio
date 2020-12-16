
model BIOMD193 "Ibrahim2008_MCC_assembly_model_KDM"

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
    parameter Real k2f = 10000000.0;
    parameter Real k1f = 200000.0;
    parameter Real k1r = 0.2;
    parameter Real k4f = 10000000.0;
    parameter Real k4r = 0.02;
    parameter Real const_val_0 = 0.0;
    parameter Real const_val_1 = 1.0;
    parameter Real Cytoplasm = 1.0;

    Real u(start=1.0);

    Real Mad1_CMad2;
    Real OMad2;
    Real Mad1_CMad2_OMad2;
    Real Cdc20;
    Real Cdc20_CMad2;
    Real Bub3_BubR1;
    Real MCC;
    Real Bub3_BubR1_Cdc20;

initial equation
    Mad1_CMad2 = 5e-08;
    OMad2 = 1.3e-07;
    Mad1_CMad2_OMad2 = 0.0;
    Cdc20 = 2.2e-07;
    Cdc20_CMad2 = 0.0;
    Bub3_BubR1 = 1.3e-07;
    MCC = 0.0;
    Bub3_BubR1_Cdc20 = 0.0;

equation

    der(Mad1_CMad2) = (Cytoplasm * u * k2f * Mad1_CMad2_OMad2 * Cdc20) - (Cytoplasm * (u * k1f * Mad1_CMad2 * OMad2 - k1r * Mad1_CMad2_OMad2));
    der(OMad2) = (Cytoplasm * k3f * Cdc20_CMad2) - (Cytoplasm * (u * k1f * Mad1_CMad2 * OMad2 - k1r * Mad1_CMad2_OMad2)) - (Cytoplasm * kf6 * OMad2 * Cdc20);
    der(Mad1_CMad2_OMad2) = (Cytoplasm * (u * k1f * Mad1_CMad2 * OMad2 - k1r * Mad1_CMad2_OMad2)) - (Cytoplasm * u * k2f * Mad1_CMad2_OMad2 * Cdc20);
    der(Cdc20) = (Cytoplasm * k3f * Cdc20_CMad2) - (Cytoplasm * u * k2f * Mad1_CMad2_OMad2 * Cdc20) - (Cytoplasm * (u * k5f * Bub3_BubR1 * Cdc20 - k5r * Bub3_BubR1_Cdc20)) - (Cytoplasm * kf6 * OMad2 * Cdc20);
    der(Cdc20_CMad2) = (Cytoplasm * u * k2f * Mad1_CMad2_OMad2 * Cdc20) + (Cytoplasm * kf6 * OMad2 * Cdc20) - (Cytoplasm * k3f * Cdc20_CMad2) - (Cytoplasm * (u * k4f * Cdc20_CMad2 * Bub3_BubR1 - k4r * MCC));
    der(Bub3_BubR1) =  - (Cytoplasm * (u * k4f * Cdc20_CMad2 * Bub3_BubR1 - k4r * MCC)) - (Cytoplasm * (u * k5f * Bub3_BubR1 * Cdc20 - k5r * Bub3_BubR1_Cdc20));
    der(MCC) = (Cytoplasm * (u * k4f * Cdc20_CMad2 * Bub3_BubR1 - k4r * MCC)) ;
    der(Bub3_BubR1_Cdc20) = (Cytoplasm * (u * k5f * Bub3_BubR1 * Cdc20 - k5r * Bub3_BubR1_Cdc20)) ;
    der(u)=0.0;

    when time > 2000 then
        reinit(u,const_val_0);
    end when;

end BIOMD193;
