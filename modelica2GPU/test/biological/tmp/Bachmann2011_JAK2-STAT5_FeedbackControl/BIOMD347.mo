
model BIOMD347 "Bachmann2011_JAK2-STAT5_FeedbackControl"

    function pow
        input  Real x;
        input  Real power;
        output Real y;
        algorithm
            y := x^power;
    end pow;

    parameter Real ActD = 0.0;
    parameter Real CISEqc = 432.871;
    parameter Real CISEqcOE = 0.530261;
    parameter Real CISInh = 784653000.0;
    parameter Real CISRNADelay = 0.144775;
    parameter Real CISRNAEqc = 1.0;
    parameter Real CISRNATurn = 1000.0;
    parameter Real CISTurn = 0.00839842;
    parameter Real CISoe = 0.0;
    parameter Real EpoRActJAK2 = 0.267308;
    parameter Real EpoRCISInh = 1000000.0;
    parameter Real EpoRCISRemove = 5.42932;
    parameter Real JAK2ActEpo = 633253.0;
    parameter Real JAK2EpoRDeaSHP1 = 142.722;
    parameter Real SHP1ActEpoR = 0.001;
    parameter Real SHP1Dea = 0.00816391;
    parameter Real SOCS3Eqc = 173.653;
    parameter Real SOCS3EqcOE = 0.679157;
    parameter Real SOCS3Inh = 10.408;
    parameter Real SOCS3RNADelay = 1.06465;
    parameter Real SOCS3RNAEqc = 1.0;
    parameter Real SOCS3RNATurn = 0.00830844;
    parameter Real SOCS3Turn = 10000.0;
    parameter Real SOCS3oe = 0.0;
    parameter Real STAT5ActEpoR = 38.9757;
    parameter Real STAT5ActJAK2 = 0.0780965;
    parameter Real STAT5Exp = 0.0745155;
    parameter Real STAT5Imp = 0.0268889;
    parameter Real epo_level = 1.24997e-07;
    parameter Real init_EpoRJAK2 = 3.97622;
    parameter Real init_SHP1 = 26.7251;
    parameter Real init_STAT5 = 79.7535;
    parameter Real cyt = 1.0;
    parameter Real nuc = 1.0;



    Real EpoRJAK2;
    Real EpoRpJAK2;
    Real p1EpoRpJAK2;
    Real p2EpoRpJAK2;
    Real p12EpoRpJAK2;
    Real EpoRJAK2_CIS;
    Real SHP1;
    Real SHP1Act;
    Real STAT5;
    Real pSTAT5;
    Real npSTAT5;
    Real CISnRNA1;
    Real CISnRNA2;
    Real CISnRNA3;
    Real CISnRNA4;
    Real CISnRNA5;
    Real CISRNA;
    Real CIS;
    Real SOCS3nRNA1;
    Real SOCS3nRNA2;
    Real SOCS3nRNA3;
    Real SOCS3nRNA4;
    Real SOCS3nRNA5;
    Real SOCS3RNA;
    Real SOCS3;
    Real Epo;

initial equation
    EpoRJAK2 = 3.97622;
    EpoRpJAK2 = 0.0;
    p1EpoRpJAK2 = 0.0;
    p2EpoRpJAK2 = 0.0;
    p12EpoRpJAK2 = 0.0;
    EpoRJAK2_CIS = 0.0;
    SHP1 = 26.7251;
    SHP1Act = 0.0;
    STAT5 = 79.7535;
    pSTAT5 = 0.0;
    npSTAT5 = 0.0;
    CISnRNA1 = 0.0;
    CISnRNA2 = 0.0;
    CISnRNA3 = 0.0;
    CISnRNA4 = 0.0;
    CISnRNA5 = 0.0;
    CISRNA = 0.0;
    CIS = 0.0;
    SOCS3nRNA1 = 0.0;
    SOCS3nRNA2 = 0.0;
    SOCS3nRNA3 = 0.0;
    SOCS3nRNA4 = 0.0;
    SOCS3nRNA5 = 0.0;
    SOCS3RNA = 0.0;
    SOCS3 = 0.0;
    Epo = 1.24997e-07;

equation

    der(EpoRJAK2) = ((JAK2EpoRDeaSHP1 * SHP1Act * EpoRpJAK2 / init_SHP1) * cyt) + ((JAK2EpoRDeaSHP1 * SHP1Act * p1EpoRpJAK2 / init_SHP1) * cyt) + ((JAK2EpoRDeaSHP1 * SHP1Act * p2EpoRpJAK2 / init_SHP1) * cyt) + ((JAK2EpoRDeaSHP1 * SHP1Act * p12EpoRpJAK2 / init_SHP1) * cyt) - ((JAK2ActEpo * Epo * EpoRJAK2 / (SOCS3Inh * SOCS3 / SOCS3Eqc + 1)) * cyt);
    der(EpoRpJAK2) = ((JAK2ActEpo * Epo * EpoRJAK2 / (SOCS3Inh * SOCS3 / SOCS3Eqc + 1)) * cyt) - ((JAK2EpoRDeaSHP1 * SHP1Act * EpoRpJAK2 / init_SHP1) * cyt) - ((EpoRActJAK2 * EpoRpJAK2 / (SOCS3Inh * SOCS3 / SOCS3Eqc + 1)) * cyt) - ((3 * EpoRActJAK2 * EpoRpJAK2 / ((SOCS3Inh * SOCS3 / SOCS3Eqc + 1) * (EpoRCISInh * EpoRJAK2_CIS + 1))) * cyt);
    der(p1EpoRpJAK2) = ((EpoRActJAK2 * EpoRpJAK2 / (SOCS3Inh * SOCS3 / SOCS3Eqc + 1)) * cyt) - ((3 * EpoRActJAK2 * p1EpoRpJAK2 / ((SOCS3Inh * SOCS3 / SOCS3Eqc + 1) * (EpoRCISInh * EpoRJAK2_CIS + 1))) * cyt) - ((JAK2EpoRDeaSHP1 * SHP1Act * p1EpoRpJAK2 / init_SHP1) * cyt);
    der(p2EpoRpJAK2) = ((3 * EpoRActJAK2 * EpoRpJAK2 / ((SOCS3Inh * SOCS3 / SOCS3Eqc + 1) * (EpoRCISInh * EpoRJAK2_CIS + 1))) * cyt) - ((EpoRActJAK2 * p2EpoRpJAK2 / (SOCS3Inh * SOCS3 / SOCS3Eqc + 1)) * cyt) - ((JAK2EpoRDeaSHP1 * SHP1Act * p2EpoRpJAK2 / init_SHP1) * cyt);
    der(p12EpoRpJAK2) = ((3 * EpoRActJAK2 * p1EpoRpJAK2 / ((SOCS3Inh * SOCS3 / SOCS3Eqc + 1) * (EpoRCISInh * EpoRJAK2_CIS + 1))) * cyt) + ((EpoRActJAK2 * p2EpoRpJAK2 / (SOCS3Inh * SOCS3 / SOCS3Eqc + 1)) * cyt) - ((JAK2EpoRDeaSHP1 * SHP1Act * p12EpoRpJAK2 / init_SHP1) * cyt);
    der(EpoRJAK2_CIS) =  - ((EpoRCISRemove * EpoRJAK2_CIS * (p12EpoRpJAK2 + p1EpoRpJAK2) / init_EpoRJAK2) * cyt);
    der(SHP1) = (SHP1Dea * SHP1Act * cyt) - ((SHP1ActEpoR * SHP1 * (EpoRpJAK2 + p12EpoRpJAK2 + p1EpoRpJAK2 + p2EpoRpJAK2) / init_EpoRJAK2) * cyt);
    der(SHP1Act) = ((SHP1ActEpoR * SHP1 * (EpoRpJAK2 + p12EpoRpJAK2 + p1EpoRpJAK2 + p2EpoRpJAK2) / init_EpoRJAK2) * cyt) - (SHP1Dea * SHP1Act * cyt);
    der(STAT5) = (STAT5Exp * npSTAT5 * nuc) - ((STAT5ActJAK2 * STAT5 * (EpoRpJAK2 + p12EpoRpJAK2 + p1EpoRpJAK2 + p2EpoRpJAK2) / (init_EpoRJAK2 * (SOCS3Inh * SOCS3 / SOCS3Eqc + 1))) * cyt) - ((STAT5ActEpoR * STAT5 * (p12EpoRpJAK2 + p1EpoRpJAK2)^2 / (init_EpoRJAK2^2 * (CISInh * CIS / CISEqc + 1) * (SOCS3Inh * SOCS3 / SOCS3Eqc + 1))) * cyt);
    der(pSTAT5) = ((STAT5ActJAK2 * STAT5 * (EpoRpJAK2 + p12EpoRpJAK2 + p1EpoRpJAK2 + p2EpoRpJAK2) / (init_EpoRJAK2 * (SOCS3Inh * SOCS3 / SOCS3Eqc + 1))) * cyt) + ((STAT5ActEpoR * STAT5 * (p12EpoRpJAK2 + p1EpoRpJAK2)^2 / (init_EpoRJAK2^2 * (CISInh * CIS / CISEqc + 1) * (SOCS3Inh * SOCS3 / SOCS3Eqc + 1))) * cyt) - (STAT5Imp * pSTAT5 * cyt);
    der(npSTAT5) = (STAT5Imp * pSTAT5 * cyt) - (STAT5Exp * npSTAT5 * nuc);
    der(CISnRNA1) = ((-((CISRNAEqc * CISRNATurn * npSTAT5 * (ActD - 1) / init_STAT5) * nuc))) - (CISRNADelay * CISnRNA1 * nuc);
    der(CISnRNA2) = (CISRNADelay * CISnRNA1 * nuc) - (CISRNADelay * CISnRNA2 * nuc);
    der(CISnRNA3) = (CISRNADelay * CISnRNA2 * nuc) - (CISRNADelay * CISnRNA3 * nuc);
    der(CISnRNA4) = (CISRNADelay * CISnRNA3 * nuc) - (CISRNADelay * CISnRNA4 * nuc);
    der(CISnRNA5) = (CISRNADelay * CISnRNA4 * nuc) - (CISRNADelay * CISnRNA5 * nuc);
    der(CISRNA) = (CISRNADelay * CISnRNA5 * nuc) - (CISRNATurn * CISRNA * cyt);
    der(CIS) = ((CISEqc * CISTurn * CISRNA / CISRNAEqc) * cyt) + (CISoe * CISEqc * CISTurn * CISEqcOE) - (CISTurn * CIS * cyt);
    der(SOCS3nRNA1) = ((-((SOCS3RNAEqc * SOCS3RNATurn * npSTAT5 * (ActD - 1) / init_STAT5) * nuc))) - (SOCS3RNADelay * SOCS3nRNA1 * nuc);
    der(SOCS3nRNA2) = (SOCS3RNADelay * SOCS3nRNA1 * nuc) - (SOCS3RNADelay * SOCS3nRNA2 * nuc);
    der(SOCS3nRNA3) = (SOCS3RNADelay * SOCS3nRNA2 * nuc) - (SOCS3RNADelay * SOCS3nRNA3 * nuc);
    der(SOCS3nRNA4) = (SOCS3RNADelay * SOCS3nRNA3 * nuc) - (SOCS3RNADelay * SOCS3nRNA4 * nuc);
    der(SOCS3nRNA5) = (SOCS3RNADelay * SOCS3nRNA4 * nuc) - (SOCS3RNADelay * SOCS3nRNA5 * nuc);
    der(SOCS3RNA) = (SOCS3RNADelay * SOCS3nRNA5 * nuc) - (SOCS3RNATurn * SOCS3RNA * cyt);
    der(SOCS3) = ((SOCS3Eqc * SOCS3Turn * SOCS3RNA / SOCS3RNAEqc) * cyt) + (SOCS3oe * SOCS3Eqc * SOCS3Turn * SOCS3EqcOE) - (SOCS3Turn * SOCS3 * cyt);
    der(Epo) = 0.0;




end BIOMD347;
