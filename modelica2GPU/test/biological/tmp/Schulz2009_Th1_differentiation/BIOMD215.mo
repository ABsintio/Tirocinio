
model BIOMD215 "Schulz2009_Th1_differentiation"

    function pow
        input  Real x;
        input  Real power;
        output Real y;
        algorithm
            y := x^power;
    end pow;

    parameter Real K1_vtrnldeg = 0.46;
    parameter Real K2_vtrnldeg = 2.1;
    parameter Real a2_vtrnldeg = 0.42;
    parameter Real a3_reaction_1 = 0.00051;
    parameter Real a1_reaction_2 = 0.044;
    parameter Real gamma_Tbet_reaction_3 = 1.0;
    parameter Real delta_Tbet_reaction_4 = 0.1;
    parameter Real gamma_Rec_reaction_5 = 1.0;
    parameter Real delta_Rec_reaction_6 = 0.1;
    parameter Real gamma_IFN_reaction_7 = 1.0;
    parameter Real delta_IFN_reaction_8 = 1.0;
    parameter Real b_reaction_9 = 100.0;
    parameter Real b_reaction_10 = 100.0;
    parameter Real b_reaction_11 = 100.0;
    parameter Real a4_reaction_12 = 0.0028;
    parameter Real K4_reaction_12 = 0.013;
    parameter Real a5_reaction_13 = 3.7;
    parameter Real K5_reaction_13 = 0.029;
    parameter Real K6_reaction_13 = 66.0;
    parameter Real K7_reaction_13 = 0.014;



    Real Tbet_mRNA;
    Real Ifn_mRNA;
    Real Ag;
    Real Ifn_Prot;
    Real Rec_Prot;
    Real Tbet_Prot;
    Real Rec_mRNA;

initial equation
    Tbet_mRNA = 0.0440000000000001;
    Ifn_mRNA = 0.0;
    Ag = 1.0;
    Ifn_Prot = 0.0;
    Rec_Prot = 0.0;
    Tbet_Prot = 44.0000000000001;
    Rec_mRNA = 0.0;

equation
    Ag = 1 - pow(time, 10) / (pow(34, 10) + pow(time, 10));
    der(Tbet_mRNA) = (1.0 * function_1(Ag, K1_vtrnldeg, Ifn_Prot, K2_vtrnldeg, a2_vtrnldeg)) + (1.0 * function_2(a3_reaction_1, Rec_Prot)) + (1.0 * function_3(a1_reaction_2)) - (1.0 * gamma_Tbet_reaction_3 * Tbet_mRNA);
    der(Ifn_mRNA) = (1.0 * function_6(a5_reaction_13, Tbet_Prot, K5_reaction_13, Rec_Prot, K6_reaction_13, Ag, K7_reaction_13)) - (1.0 * gamma_IFN_reaction_7 * Ifn_mRNA);
    der(Ifn_Prot) = (1.0 * function_4(b_reaction_10, Ifn_mRNA)) - (1.0 * delta_IFN_reaction_8 * Ifn_Prot);
    der(Rec_Prot) = (1.0 * function_4(b_reaction_11, Rec_mRNA)) - (1.0 * delta_Rec_reaction_6 * Rec_Prot);
    der(Tbet_Prot) = (1.0 * function_4(b_reaction_9, Tb_reaction_9et_mRNA)) - (1.0 * delta_Tbet_reaction_4 * Tbet_Prot);
    der(Rec_mRNA) = (1.0 * function_5(a4_reaction_12, Tbet_Prot, K4_reaction_12, Ag)) - (1.0 * gamma_Rec_reaction_5 * Rec_mRNA);



end BIOMD215;
