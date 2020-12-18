
model BIOMD314 "Raia2011 - IL13 L1236"

    function pow
        input  Real x;
        input  Real power;
        output Real y;
        algorithm
            y := x^power;
    end pow;

    parameter Real IL13stimulation = 1.0;
    parameter Real Kon_IL13Rec = 0.00174087;
    parameter Real Rec_phosphorylation = 9.07541;
    parameter Real pRec_intern = 0.324132;
    parameter Real pRec_degradation = 0.417538;
    parameter Real Rec_intern = 0.259686;
    parameter Real Rec_recycle = 0.0039243;
    parameter Real JAK2_phosphorylation = 0.300019;
    parameter Real pJAK2_dephosphorylation = 0.0981611;
    parameter Real STAT5_phosphorylation = 0.00426767;
    parameter Real pSTAT5_dephosphorylation = 0.0116389;
    parameter Real CD274mRNA_production = 0.0115928;
    parameter Real cell = 1.0;



    Real Rec;
    Real Rec_i;
    Real IL13_Rec;
    Real p_IL13_Rec;
    Real p_IL13_Rec_i;
    Real JAK2;
    Real pJAK2;
    Real SHP1;
    Real STAT5;
    Real pSTAT5;
    Real CD274mRNA;
    Real IL13;

initial equation
    Rec = 1.8;
    Rec_i = 118.598;
    IL13_Rec = 0.0;
    p_IL13_Rec = 0.0;
    p_IL13_Rec_i = 0.0;
    JAK2 = 24.0;
    pJAK2 = 0.0;
    SHP1 = 9.4;
    STAT5 = 209.0;
    pSTAT5 = 0.0;
    CD274mRNA = 0.0;

equation
    IL13 = 3.776 * IL13stimulation;
    der(Rec) = (Rec_recycle * Rec_i * cell) - (Kon_IL13Rec * IL13 * Rec * cell) - (Rec_intern * Rec * cell);
    der(Rec_i) = (Rec_intern * Rec * cell) - (Rec_recycle * Rec_i * cell);
    der(IL13_Rec) = (Kon_IL13Rec * IL13 * Rec * cell) - (Rec_phosphorylation * IL13_Rec * pJAK2 * cell);
    der(p_IL13_Rec) = (Rec_phosphorylation * IL13_Rec * pJAK2 * cell) - (pRec_intern * p_IL13_Rec * cell);
    der(p_IL13_Rec_i) = (pRec_intern * p_IL13_Rec * cell) - (pRec_degradation * p_IL13_Rec_i * cell);
    der(JAK2) = (pJAK2_dephosphorylation * pJAK2 * SHP1 * cell) - (JAK2_phosphorylation * JAK2 * IL13_Rec * cell) - (JAK2_phosphorylation * JAK2 * p_IL13_Rec * cell);
    der(pJAK2) = (JAK2_phosphorylation * JAK2 * IL13_Rec * cell) + (JAK2_phosphorylation * JAK2 * p_IL13_Rec * cell) - (pJAK2_dephosphorylation * pJAK2 * SHP1 * cell);
    der(SHP1) = 0.0;
    der(STAT5) = (pSTAT5_dephosphorylation * pSTAT5 * SHP1 * cell) - (STAT5_phosphorylation * STAT5 * pJAK2 * cell);
    der(pSTAT5) = (STAT5_phosphorylation * STAT5 * pJAK2 * cell) - (pSTAT5_dephosphorylation * pSTAT5 * SHP1 * cell);
    der(CD274mRNA) = (pSTAT5 * CD274mRNA_production * cell) ;




end BIOMD314;
