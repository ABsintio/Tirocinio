
model BIOMD080 "Thomsen1989_AdenylateCyclase"

    function pow
        input  Real x;
        input  Real power;
        output Real y;
        algorithm
            y := x^power;
    end pow;

    parameter Real k1_Reaction_1 = 5000000.0;
    parameter Real k7_Reaction_1 = 10.0;
    parameter Real k2_Reaction_2 = 100000000.0;
    parameter Real k8_Reaction_2 = 0.1;
    parameter Real k3_Reaction_3 = 5.0;
    parameter Real k9_Reaction_3 = 100000.0;
    parameter Real k4_Reaction_4 = 5000000.0;
    parameter Real k10_Reaction_4 = 55.0;
    parameter Real k5_Reaction_5 = 1.0;
    parameter Real k6_Reaction_6 = 2.0;



    Real D;
    Real DR;
    Real DRG_GDP;
    Real G_GDP;
    Real DRG;
    Real GDP;
    Real DRG_GTP;
    Real GTP;
    Real G_GTP;
    Real R;

initial equation
    D = 3.1e-05;
    DR = 0.0;
    DRG_GDP = 0.0;
    G_GDP = 1e-06;
    DRG = 0.0;
    GDP = 0.0;
    DRG_GTP = 0.0;
    GTP = 1e-05;
    G_GTP = 0.0;
    R = 1e-10;

equation

    der(D) =  - (1.0 * (k1_Reaction_1 * D * R - k7_Reaction_1 * DR));
    der(DR) = (1.0 * (k1_Reaction_1 * D * R - k7_Reaction_1 * DR)) + (1.0 * k5_Reaction_5 * DRG_GTP) - (1.0 * (k2_Reaction_2 * DR * G_GDP - k8_Reaction_2 * DRG_GDP));
    der(DRG_GDP) = (1.0 * (k2_Reaction_2 * DR * G_GDP - k8_Reaction_2 * DRG_GDP)) - (1.0 * (k3_Reaction_3 * DRG_GDP - k9_Reaction_3 * GDP * DRG));
    der(G_GDP) = (1.0 * k6_Reaction_6 * G_GTP) - (1.0 * (k2_Reaction_2 * DR * G_GDP - k8_Reaction_2 * DRG_GDP));
    der(DRG) = (1.0 * (k3_Reaction_3 * DRG_GDP - k9_Reaction_3 * GDP * DRG)) - (1.0 * (k4_Reaction_4 * DRG * GTP - k10_Reaction_4 * DRG_GTP));
    der(GDP) = (1.0 * (k3_Reaction_3 * DRG_GDP - k9_Reaction_3 * GDP * DRG)) ;
    der(DRG_GTP) = (1.0 * (k4_Reaction_4 * DRG * GTP - k10_Reaction_4 * DRG_GTP)) - (1.0 * k5_Reaction_5 * DRG_GTP);
    der(GTP) =  - (1.0 * (k4_Reaction_4 * DRG * GTP - k10_Reaction_4 * DRG_GTP));
    der(G_GTP) = (1.0 * k5_Reaction_5 * DRG_GTP) - (1.0 * k6_Reaction_6 * G_GTP);
    der(R) =  - (1.0 * (k1_Reaction_1 * D * R - k7_Reaction_1 * DR));



end BIOMD080;
