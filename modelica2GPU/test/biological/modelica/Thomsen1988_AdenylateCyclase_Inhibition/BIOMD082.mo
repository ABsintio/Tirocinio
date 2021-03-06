
model BIOMD082 "Thomsen1988_AdenylateCyclase_Inhibition"

    function pow
        input  Real x;
        input  Real power;
        output Real y;
        algorithm
            y := x^power;
    end pow;

    parameter Real k1_Forming = 5000000.0;
    parameter Real k7_Forming = 0.5;
    parameter Real k2_reaction_1 = 100000000.0;
    parameter Real k8_reaction_1 = 0.1;
    parameter Real k3_reaction_2 = 0.1;
    parameter Real k9_reaction_2 = 100000.0;
    parameter Real k4_reaction_3 = 10000000.0;
    parameter Real k10_reaction_3 = 0.1;
    parameter Real k5_reaction_4 = 0.05;
    parameter Real k6_reaction_5 = 0.1;
    parameter Real cell = 1.0;



    Real agonist;
    Real DR;
    Real DRG_GDP;
    Real DRG;
    Real GDP;
    Real DRG_GTP;
    Real GTP;
    Real Recptor;
    Real G_GDP;
    Real G_GTP;

initial equation
    agonist = 1e-08;
    DR = 0.0;
    DRG_GDP = 0.0;
    DRG = 0.0;
    GDP = 0.0;
    DRG_GTP = 0.0;
    GTP = 1e-05;
    Recptor = 1e-09;
    G_GDP = 1e-09;
    G_GTP = 0.0;

equation

    der(agonist) =  - (cell * (k1_Forming * agonist * Recptor - k7_Forming * DR));
    der(DR) = (cell * (k1_Forming * agonist * Recptor - k7_Forming * DR)) + (cell * k5_reaction_4 * DRG_GTP) - (cell * (k2_reaction_1 * DR * G_GDP - k8_reaction_1 * DRG_GDP));
    der(DRG_GDP) = (cell * (k2_reaction_1 * DR * G_GDP - k8_reaction_1 * DRG_GDP)) - (cell * (k3_reaction_2 * DRG_GDP - k9_reaction_2 * DRG * GDP));
    der(DRG) = (cell * (k3_reaction_2 * DRG_GDP - k9_reaction_2 * DRG * GDP)) - (cell * (k4_reaction_3 * DRG * GTP - k10_reaction_3 * DRG_GTP));
    der(GDP) = (cell * (k3_reaction_2 * DRG_GDP - k9_reaction_2 * DRG * GDP)) ;
    der(DRG_GTP) = (cell * (k4_reaction_3 * DRG * GTP - k10_reaction_3 * DRG_GTP)) - (cell * k5_reaction_4 * DRG_GTP);
    der(GTP) =  - (cell * (k4_reaction_3 * DRG * GTP - k10_reaction_3 * DRG_GTP));
    der(Recptor) =  - (cell * (k1_Forming * agonist * Recptor - k7_Forming * DR));
    der(G_GDP) = (cell * k6_reaction_5 * G_GTP) - (cell * (k2_reaction_1 * DR * G_GDP - k8_reaction_1 * DRG_GDP));
    der(G_GTP) = (cell * k5_reaction_4 * DRG_GTP) - (cell * k6_reaction_5 * G_GTP);




end BIOMD082;
