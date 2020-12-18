
model BIOMD270 "Schilling2009 - ERK distributive"

    function pow
        input  Real x;
        input  Real power;
        output Real y;
        algorithm
            y := x^power;
    end pow;



    parameter Real JAK2_phosphorylation_by_Epo = 0.0122149;
    parameter Real EpoR_phosphorylation_by_pJAK2 = 3.15714;
    parameter Real SHP1_activation_by_pEpoR = 0.408408;
    parameter Real SHP1_delay = 0.408408;
    parameter Real actSHP1_deactivation = 0.0248773;
    parameter Real pEpoR_dephosphorylation_by_actSHP1 = 1.19995;
    parameter Real pJAK2_dephosphorylation_by_actSHP1 = 0.368384;
    parameter Real SOS_recruitment_by_pEpoR = 0.10271;
    parameter Real mSOS_release_from_membrane = 15.5956;
    parameter Real mSOS_induced_Raf_phosphorylation = 0.144515;
    parameter Real pRaf_dephosphorylation = 0.374228;
    parameter Real First_MEK2_phosphorylation_by_pRaf = 3.11919;
    parameter Real Second_MEK2_phosphorylation_by_pRaf = 215.158;
    parameter Real First_MEK1_phosphorylation_by_pRaf = 0.687193;
    parameter Real Second_MEK1_phosphorylation_by_pRaf = 667.957;
    parameter Real First_MEK_dephosphorylation = 0.130937;
    parameter Real Second_MEK_dephosphorylation = 0.0732724;
    parameter Real First_ERK1_phosphorylation_by_ppMEK = 2.4927;
    parameter Real Second_ERK1_phosphorylation_by_ppMEK = 59.5251;
    parameter Real First_ERK2_phosphorylation_by_ppMEK = 2.44361;
    parameter Real Second_ERK2_phosphorylation_by_ppMEK = 53.0816;
    parameter Real First_ERK_dephosphorylation = 39.0886;
    parameter Real Second_ERK_dephosphorylation = 3.00453;
    parameter Real ppERK_neg_feedback_on_mSOS = 5122.68;
    parameter Real pSOS_dephosphorylation = 0.124944;
    parameter Real scale_pEpoR = 0.493312;
    parameter Real scale_pJAK2 = 0.21008;
    parameter Real scale_ppERK = 13.5981;
    parameter Real scale_SOS = 1.10228;
    parameter Real scale_ppMEK = 40.5364;
    parameter Real cell = 1.0;

    Real rescaled_pEpoR(start=0.0);
    Real rescaled_ppMEK1(start=0.0);
    Real rescaled_ppMEK2(start=0.0);
    Real rescaled_ppERK1(start=0.0);
    Real rescaled_ppERK2(start=0.0);
    Real rescaled_pJAK2(start=0.0);
    Real rescaled_pSOS(start=0.0);
    Real rescaled_SOS(start=0.0);
    Real rescaled_mSOS(start=0.0);

    Real JAK2;
    Real EpoR;
    Real SHP1;
    Real SOS;
    Real Raf;
    Real MEK2;
    Real MEK1;
    Real ERK1;
    Real ERK2;
    Real pJAK2;
    Real pEpoR;
    Real mSHP1;
    Real actSHP1;
    Real mSOS;
    Real pRaf;
    Real ppMEK2;
    Real ppMEK1;
    Real ppERK1;
    Real ppERK2;
    Real pSOS;
    Real pMEK2;
    Real pMEK1;
    Real pERK1;
    Real pERK2;
    Real Delay01_mSHP1;
    Real Delay02_mSHP1;
    Real Delay03_mSHP1;
    Real Delay04_mSHP1;
    Real Delay05_mSHP1;
    Real Delay06_mSHP1;
    Real Delay07_mSHP1;
    Real Delay08_mSHP1;
    Real Epo;

initial equation
    JAK2 = 2.0;
    EpoR = 1.0;
    SHP1 = 10.7991;
    SOS = 2.5101;
    Raf = 3.7719;
    MEK2 = 11.0;
    MEK1 = 24.0;
    ERK1 = 7.0;
    ERK2 = 21.0;
    pJAK2 = 0.0;
    pEpoR = 0.0;
    mSHP1 = 0.0;
    actSHP1 = 0.0;
    mSOS = 0.0;
    pRaf = 0.0;
    ppMEK2 = 0.0;
    ppMEK1 = 0.0;
    ppERK1 = 0.0;
    ppERK2 = 0.0;
    pSOS = 0.0;
    pMEK2 = 0.0;
    pMEK1 = 0.0;
    pERK1 = 0.0;
    pERK2 = 0.0;
    Delay01_mSHP1 = 0.0;
    Delay02_mSHP1 = 0.0;
    Delay03_mSHP1 = 0.0;
    Delay04_mSHP1 = 0.0;
    Delay05_mSHP1 = 0.0;
    Delay06_mSHP1 = 0.0;
    Delay07_mSHP1 = 0.0;
    Delay08_mSHP1 = 0.0;
    Epo = 50.0;

equation
    rescaled_pEpoR = scale_pEpoR * pEpoR;
    rescaled_pJAK2 = scale_pJAK2 * pJAK2;
    rescaled_ppERK1 = scale_ppERK * ppERK1;
    rescaled_ppERK2 = scale_ppERK * ppERK2;
    rescaled_ppMEK1 = scale_ppMEK * ppMEK1;
    rescaled_ppMEK2 = scale_ppMEK * ppMEK2;
    rescaled_pSOS = scale_SOS * pSOS;
    rescaled_SOS = scale_SOS * SOS;
    rescaled_mSOS = scale_SOS * mSOS;
    der(JAK2) = (pJAK2_dephosphorylation_by_actSHP1 * pJAK2 * actSHP1 * cell) - (JAK2_phosphorylation_by_Epo * JAK2 * Epo * cell);
    der(EpoR) = (pEpoR_dephosphorylation_by_actSHP1 * pEpoR * actSHP1 * cell) - (EpoR_phosphorylation_by_pJAK2 * EpoR * pJAK2 * cell);
    der(SHP1) = (actSHP1_deactivation * actSHP1 * cell) - (SHP1_activation_by_pEpoR * SHP1 * pEpoR * cell);
    der(SOS) = (mSOS_release_from_membrane * mSOS * cell) + (pSOS_dephosphorylation * pSOS * cell) - (SOS_recruitment_by_pEpoR * SOS * pEpoR * cell);
    der(Raf) = (pRaf_dephosphorylation * pRaf * cell) - (mSOS_induced_Raf_phosphorylation * Raf * mSOS * cell);
    der(MEK2) = (Second_MEK_dephosphorylation * pMEK2 * cell) - (First_MEK2_phosphorylation_by_pRaf * MEK2 * pRaf * cell);
    der(MEK1) = (Second_MEK_dephosphorylation * pMEK1 * cell) - (First_MEK1_phosphorylation_by_pRaf * MEK1 * pRaf * cell);
    der(ERK1) = (Second_ERK_dephosphorylation * pERK1 * cell) - (First_ERK1_phosphorylation_by_ppMEK * ERK1 * ppMEK2 * cell) - (First_ERK1_phosphorylation_by_ppMEK * ERK1 * ppMEK1 * cell);
    der(ERK2) = (Second_ERK_dephosphorylation * pERK2 * cell) - (First_ERK2_phosphorylation_by_ppMEK * ERK2 * ppMEK2 * cell) - (First_ERK2_phosphorylation_by_ppMEK * ERK2 * ppMEK1 * cell);
    der(pJAK2) = (JAK2_phosphorylation_by_Epo * JAK2 * Epo * cell) - (pJAK2_dephosphorylation_by_actSHP1 * pJAK2 * actSHP1 * cell);
    der(pEpoR) = (EpoR_phosphorylation_by_pJAK2 * EpoR * pJAK2 * cell) - (pEpoR_dephosphorylation_by_actSHP1 * pEpoR * actSHP1 * cell);
    der(mSHP1) = (SHP1_activation_by_pEpoR * SHP1 * pEpoR * cell) - (SHP1_delay * mSHP1 * cell);
    der(actSHP1) = (SHP1_delay * Delay08_mSHP1 * cell) - (actSHP1_deactivation * actSHP1 * cell);
    der(mSOS) = (SOS_recruitment_by_pEpoR * SOS * pEpoR * cell) - (mSOS_release_from_membrane * mSOS * cell) - (ppERK_neg_feedback_on_mSOS * mSOS * ppERK1 * cell) - (ppERK_neg_feedback_on_mSOS * mSOS * ppERK2 * cell);
    der(pRaf) = (mSOS_induced_Raf_phosphorylation * Raf * mSOS * cell) - (pRaf_dephosphorylation * pRaf * cell);
    der(ppMEK2) = (Second_MEK2_phosphorylation_by_pRaf * pMEK2 * pRaf * cell) - (First_MEK_dephosphorylation * ppMEK2 * cell);
    der(ppMEK1) = (Second_MEK1_phosphorylation_by_pRaf * pMEK1 * pRaf * cell) - (First_MEK_dephosphorylation * ppMEK1 * cell);
    der(ppERK1) = (Second_ERK1_phosphorylation_by_ppMEK * pERK1 * ppMEK2 * cell) + (Second_ERK1_phosphorylation_by_ppMEK * pERK1 * ppMEK1 * cell) - (First_ERK_dephosphorylation * ppERK1 * cell);
    der(ppERK2) = (Second_ERK2_phosphorylation_by_ppMEK * pERK2 * ppMEK2 * cell) + (Second_ERK2_phosphorylation_by_ppMEK * pERK2 * ppMEK1 * cell) - (First_ERK_dephosphorylation * ppERK2 * cell);
    der(pSOS) = (ppERK_neg_feedback_on_mSOS * mSOS * ppERK1 * cell) + (ppERK_neg_feedback_on_mSOS * mSOS * ppERK2 * cell) - (pSOS_dephosphorylation * pSOS * cell);
    der(pMEK2) = (First_MEK2_phosphorylation_by_pRaf * MEK2 * pRaf * cell) + (First_MEK_dephosphorylation * ppMEK2 * cell) - (Second_MEK2_phosphorylation_by_pRaf * pMEK2 * pRaf * cell) - (Second_MEK_dephosphorylation * pMEK2 * cell);
    der(pMEK1) = (First_MEK1_phosphorylation_by_pRaf * MEK1 * pRaf * cell) + (First_MEK_dephosphorylation * ppMEK1 * cell) - (Second_MEK1_phosphorylation_by_pRaf * pMEK1 * pRaf * cell) - (Second_MEK_dephosphorylation * pMEK1 * cell);
    der(pERK1) = (First_ERK1_phosphorylation_by_ppMEK * ERK1 * ppMEK2 * cell) + (First_ERK1_phosphorylation_by_ppMEK * ERK1 * ppMEK1 * cell) + (First_ERK_dephosphorylation * ppERK1 * cell) - (Second_ERK1_phosphorylation_by_ppMEK * pERK1 * ppMEK2 * cell) - (Second_ERK1_phosphorylation_by_ppMEK * pERK1 * ppMEK1 * cell) - (Second_ERK_dephosphorylation * pERK1 * cell);
    der(pERK2) = (First_ERK2_phosphorylation_by_ppMEK * ERK2 * ppMEK2 * cell) + (First_ERK2_phosphorylation_by_ppMEK * ERK2 * ppMEK1 * cell) + (First_ERK_dephosphorylation * ppERK2 * cell) - (Second_ERK2_phosphorylation_by_ppMEK * pERK2 * ppMEK2 * cell) - (Second_ERK2_phosphorylation_by_ppMEK * pERK2 * ppMEK1 * cell) - (Second_ERK_dephosphorylation * pERK2 * cell);
    der(Delay01_mSHP1) = (SHP1_delay * mSHP1 * cell) - (SHP1_delay * Delay01_mSHP1 * cell);
    der(Delay02_mSHP1) = (SHP1_delay * Delay01_mSHP1 * cell) - (SHP1_delay * Delay02_mSHP1 * cell);
    der(Delay03_mSHP1) = (SHP1_delay * Delay02_mSHP1 * cell) - (SHP1_delay * Delay03_mSHP1 * cell);
    der(Delay04_mSHP1) = (SHP1_delay * Delay03_mSHP1 * cell) - (SHP1_delay * Delay04_mSHP1 * cell);
    der(Delay05_mSHP1) = (SHP1_delay * Delay04_mSHP1 * cell) - (SHP1_delay * Delay05_mSHP1 * cell);
    der(Delay06_mSHP1) = (SHP1_delay * Delay05_mSHP1 * cell) - (SHP1_delay * Delay06_mSHP1 * cell);
    der(Delay07_mSHP1) = (SHP1_delay * Delay06_mSHP1 * cell) - (SHP1_delay * Delay07_mSHP1 * cell);
    der(Delay08_mSHP1) = (SHP1_delay * Delay07_mSHP1 * cell) - (SHP1_delay * Delay08_mSHP1 * cell);
    der(Epo) = 0.0;




end BIOMD270;
