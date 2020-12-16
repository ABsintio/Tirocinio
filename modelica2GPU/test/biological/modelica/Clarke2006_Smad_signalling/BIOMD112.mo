
model BIOMD112 "Clarke2006_Smad_signalling"

    function pow
        input  Real x;
        input  Real power;
        output Real y;
        algorithm
            y := x^power;
    end pow;

    parameter Real KCAT_reaction_1 = 3.51;
    parameter Real K1_reaction_1 = 289000.0;
    parameter Real k5nc_reaction_5 = 5.63;
    parameter Real k5cn_reaction_5 = 0.563;
    parameter Real k4nc_reaction_4 = 0.783;
    parameter Real k4cn_reaction_4 = 0.00497;
    parameter Real k2a_reaction_2 = 6.5e-05;
    parameter Real k2d_reaction_2 = 0.0399;
    parameter Real k3_reaction_3 = 16.6;
    parameter Real k6d_reaction_6 = 0.0492;
    parameter Real k6a_reaction_6 = 0.000144;
    parameter Real Vmax7_reaction_7 = 17100.0;
    parameter Real K7_reaction_7 = 8950.0;
    parameter Real cytoplasm = 1.0;
    parameter Real nucleus = 1.0;

    Real sum_R_smad_cyt(start=0.0);
    Real sum_R_smad_nuc(start=0.0);
    Real sum_smad4_cyt(start=0.0);
    Real sum_smad4_nuc(start=0.0);

    Real receptor;
    Real R_smad_cyt;
    Real R_smad_P_cyt;
    Real smad4_cyt;
    Real R_smad_P_smad4_cyt;
    Real R_smad_P_smad4_nuc;
    Real R_smad_nuc;
    Real R_smad_P_nuc;
    Real smad4_nuc;
    Real Pi;

initial equation
    receptor = 10000.0;
    R_smad_cyt = 162000.0;
    R_smad_P_cyt = 0.0;
    smad4_cyt = 120000.0;
    R_smad_P_smad4_cyt = 0.0;
    R_smad_P_smad4_nuc = 0.0;
    R_smad_nuc = 18000.0;
    R_smad_P_nuc = 0.0;
    smad4_nuc = 30000.0;
    Pi = 0.0;

equation
    sum_R_smad_nuc = R_smad_nuc + R_smad_P_nuc + R_smad_P_smad4_nuc;
    sum_smad4_nuc = smad4_nuc + R_smad_P_smad4_nuc;
    sum_R_smad_cyt = R_smad_cyt + R_smad_P_cyt + R_smad_P_smad4_cyt;
    sum_smad4_cyt = smad4_cyt + R_smad_P_smad4_cyt;
    der(receptor) =  - (100 * exp(-time / 90));
    der(R_smad_cyt) = (k5nc_reaction_5 * R_smad_nuc - k5cn_reaction_5 * R_smad_cyt) - (KCAT_reaction_1 * receptor * R_smad_cyt / (K1_reaction_1 + R_smad_cyt));
    der(R_smad_P_cyt) = (KCAT_reaction_1 * receptor * R_smad_cyt / (K1_reaction_1 + R_smad_cyt)) - (k2a_reaction_2 * R_smad_P_cyt * smad4_cyt - k2d_reaction_2 * R_smad_P_smad4_cyt);
    der(smad4_cyt) = (k4nc_reaction_4 * smad4_nuc - k4cn_reaction_4 * smad4_cyt) - (k2a_reaction_2 * R_smad_P_cyt * smad4_cyt - k2d_reaction_2 * R_smad_P_smad4_cyt);
    der(R_smad_P_smad4_cyt) = (k2a_reaction_2 * R_smad_P_cyt * smad4_cyt - k2d_reaction_2 * R_smad_P_smad4_cyt) - (k3_reaction_3 * R_smad_P_smad4_cyt);
    der(R_smad_P_smad4_nuc) = (k3_reaction_3 * R_smad_P_smad4_cyt) - (k6d_reaction_6 * R_smad_P_smad4_nuc - k6a_reaction_6 * smad4_nuc * R_smad_P_nuc);
    der(R_smad_nuc) = (Vmax7_reaction_7 * R_smad_P_nuc / (K7_reaction_7 + R_smad_P_nuc)) - (k5nc_reaction_5 * R_smad_nuc - k5cn_reaction_5 * R_smad_cyt);
    der(R_smad_P_nuc) = (k6d_reaction_6 * R_smad_P_smad4_nuc - k6a_reaction_6 * smad4_nuc * R_smad_P_nuc) - (Vmax7_reaction_7 * R_smad_P_nuc / (K7_reaction_7 + R_smad_P_nuc));
    der(smad4_nuc) = (k6d_reaction_6 * R_smad_P_smad4_nuc - k6a_reaction_6 * smad4_nuc * R_smad_P_nuc) - (k4nc_reaction_4 * smad4_nuc - k4cn_reaction_4 * smad4_cyt);
    der(Pi) = (Vmax7_reaction_7 * R_smad_P_nuc / (K7_reaction_7 + R_smad_P_nuc)) ;




end BIOMD112;
