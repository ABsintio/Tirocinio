
model BIOMD313 "Raia2010 - IL13 Signalling MedB1"

    function pow
        input  Real x;
        input  Real power;
        output Real y;
        algorithm
            y := x^power;
    end pow;



    parameter Real IL13stimulation = 1.0;
    parameter Real Kon_IL13Rec = 0.00341992;
    parameter Real Rec_phosphorylation = 999.631;
    parameter Real pRec_intern = 0.15254;
    parameter Real pRec_degradation = 0.172928;
    parameter Real Rec_intern = 0.103346;
    parameter Real Rec_recycle = 0.00135598;
    parameter Real JAK2_phosphorylation = 0.157057;
    parameter Real pJAK2_dephosphorylation = 0.000621906;
    parameter Real STAT5_phosphorylation = 0.0382596;
    parameter Real pSTAT5_dephosphorylation = 0.000343392;
    parameter Real SOCS3mRNA_production = 0.00215826;
    parameter Real DecoyR_binding = 0.000124391;
    parameter Real JAK2_p_inhibition = 0.0168268;
    parameter Real SOCS3_translation = 11.9086;
    parameter Real SOCS3_accumulation = 3.70803;
    parameter Real SOCS3_degradation = 0.0429186;
    parameter Real CD274mRNA_production = 8.21752e-05;
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
    Real SOCS3mRNA;
    Real DecoyR;
    Real IL13_DecoyR;
    Real SOCS3;
    Real CD274mRNA;
    Real IL13;

initial equation
    Rec = 1.3;
    Rec_i = 113.194;
    IL13_Rec = 0.0;
    p_IL13_Rec = 0.0;
    p_IL13_Rec_i = 0.0;
    JAK2 = 2.8;
    pJAK2 = 0.0;
    SHP1 = 91.0;
    STAT5 = 165.0;
    pSTAT5 = 0.0;
    SOCS3mRNA = 0.0;
    DecoyR = 0.34;
    IL13_DecoyR = 0.0;
    SOCS3 = 0.0;
    CD274mRNA = 0.0;

equation
    IL13 = 2.265 * IL13stimulation;
    der(Rec) = (Rec_recycle * Rec_i * cell) - (Kon_IL13Rec * IL13 * Rec * cell) - (Rec_intern * Rec * cell);
    der(Rec_i) = (Rec_intern * Rec * cell) - (Rec_recycle * Rec_i * cell);
    der(IL13_Rec) = (Kon_IL13Rec * IL13 * Rec * cell) - (Rec_phosphorylation * IL13_Rec * pJAK2 * cell);
    der(p_IL13_Rec) = (Rec_phosphorylation * IL13_Rec * pJAK2 * cell) - (pRec_intern * p_IL13_Rec * cell);
    der(p_IL13_Rec_i) = (pRec_intern * p_IL13_Rec * cell) - (pRec_degradation * p_IL13_Rec_i * cell);
    der(JAK2) = (pJAK2_dephosphorylation * pJAK2 * SHP1 * cell) - ((JAK2_phosphorylation * IL13_Rec * JAK2 / (1 + JAK2_p_inhibition * SOCS3)) * cell) - ((JAK2_phosphorylation * p_IL13_Rec * JAK2 / (1 + JAK2_p_inhibition * SOCS3)) * cell);
    der(pJAK2) = ((JAK2_phosphorylation * IL13_Rec * JAK2 / (1 + JAK2_p_inhibition * SOCS3)) * cell) + ((JAK2_phosphorylation * p_IL13_Rec * JAK2 / (1 + JAK2_p_inhibition * SOCS3)) * cell) - (pJAK2_dephosphorylation * pJAK2 * SHP1 * cell);
    der(SHP1) = 0.0;
    der(STAT5) = (pSTAT5_dephosphorylation * pSTAT5 * SHP1 * cell) - (STAT5_phosphorylation * STAT5 * pJAK2 * cell);
    der(pSTAT5) = (STAT5_phosphorylation * STAT5 * pJAK2 * cell) - (pSTAT5_dephosphorylation * pSTAT5 * SHP1 * cell);
    der(SOCS3mRNA) = (pSTAT5 * SOCS3mRNA_production * cell) ;
    der(DecoyR) =  - (DecoyR_binding * IL13 * DecoyR * cell);
    der(IL13_DecoyR) = (DecoyR_binding * IL13 * DecoyR * cell) ;
    der(SOCS3) = ((SOCS3mRNA * SOCS3_translation / (SOCS3_accumulation + SOCS3mRNA)) * cell) - (SOCS3_degradation * SOCS3 * cell);
    der(CD274mRNA) = (pSTAT5 * CD274mRNA_production * cell) ;




end BIOMD313;
