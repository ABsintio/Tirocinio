
model BIOMD192 "Görlich2003_RanGTP_gradient"

    function pow
        input  Real x;
        input  Real power;
        output Real y;
        algorithm
            y := x^power;
    end pow;

    parameter Real r1_RCC1_binding = 74.0;
    parameter Real r8_RCC1_binding = 55.0;
    parameter Real r2_GDP_dissociation = 21.0;
    parameter Real r7_GDP_dissociation = 11.0;
    parameter Real r3_GTP_binding = 0.6;
    parameter Real r6_GTP_binding = 19.0;
    parameter Real r4_RanGTP_release = 55.0;
    parameter Real r5_RanGTP_release = 100.0;
    parameter Real kpermRanGTP_Cytoplasmic_transfer = 0.03;
    parameter Real kpermRanGDP_Nucleoplasmic_transfer = 0.12;
    parameter Real kon_RanGTP_binding = 0.3;
    parameter Real koff_RanGTP_binding = 0.0004;
    parameter Real kcat_RanBP1_RanGDP = 10.8;
    parameter Real Km_RanBP1_RanGDP = 0.1;
    parameter Real kcat_GAP_RanGAP_RanGDP = 10.6;
    parameter Real Km_GAP_RanGAP_RanGDP = 0.7;
    parameter Real nucleus = 1.0;
    parameter Real cytoplasm = 1.0;



    Real RanGDP_nuc;
    Real RCC1_RanGDP;
    Real GDP;
    Real RCC1;
    Real RCC1_RanGTP;
    Real RCC1_Ran;
    Real GTP;
    Real RanGTP_nuc;
    Real RanGAP;
    Real RanBP1;
    Real RanGTP_cy;
    Real RanGTP_RanBP1;
    Real RanGDP_cy;

initial equation
    RanGDP_nuc = 0.0;
    RCC1_RanGDP = 0.0;
    GDP = 1.6;
    RCC1 = 0.7;
    RCC1_RanGTP = 0.0;
    RCC1_Ran = 0.0;
    GTP = 500.0;
    RanGTP_nuc = 0.0;
    RanGAP = 0.7;
    RanBP1 = 2.0;
    RanGTP_cy = 0.0;
    RanGTP_RanBP1 = 0.0;
    RanGDP_cy = 5.0;

equation

    der(RanGDP_nuc) =  - (nucleus * (r1_RCC1_binding * RanGDP_nuc * RCC1 - r8_RCC1_binding * RCC1_RanGDP)) - (kpermRanGDP_Nucleoplasmic_transfer * nucleus * (RanGDP_nuc - RanGDP_cy));
    der(RCC1_RanGDP) = (nucleus * (r1_RCC1_binding * RanGDP_nuc * RCC1 - r8_RCC1_binding * RCC1_RanGDP)) - (nucleus * (r2_GDP_dissociation * RCC1_RanGDP - r7_GDP_dissociation * RCC1_Ran * GDP));
    der(GDP) = 0.0;
    der(RCC1) = (nucleus * (r4_RanGTP_release * RCC1_RanGTP - r5_RanGTP_release * RanGTP_nuc * RCC1)) - (nucleus * (r1_RCC1_binding * RanGDP_nuc * RCC1 - r8_RCC1_binding * RCC1_RanGDP));
    der(RCC1_RanGTP) = (nucleus * (r3_GTP_binding * RCC1_Ran * GTP - r6_GTP_binding * RCC1_RanGTP)) - (nucleus * (r4_RanGTP_release * RCC1_RanGTP - r5_RanGTP_release * RanGTP_nuc * RCC1));
    der(RCC1_Ran) = (nucleus * (r2_GDP_dissociation * RCC1_RanGDP - r7_GDP_dissociation * RCC1_Ran * GDP)) - (nucleus * (r3_GTP_binding * RCC1_Ran * GTP - r6_GTP_binding * RCC1_RanGTP));
    der(GTP) = 0.0;
    der(RanGTP_nuc) = (nucleus * (r4_RanGTP_release * RCC1_RanGTP - r5_RanGTP_release * RanGTP_nuc * RCC1)) - (kpermRanGTP_Cytoplasmic_transfer * nucleus * (RanGTP_nuc - RanGTP_cy));
    der(RanGAP) = 0.0;
    der(RanBP1) = (cytoplasm * kcat_RanBP1_RanGDP * RanGTP_RanBP1 * RanGAP / (RanGTP_RanBP1 + Km_RanBP1_RanGDP)) - ((kon_RanGTP_binding * RanGTP_cy * RanBP1 - koff_RanGTP_binding * RanGTP_RanBP1) * cytoplasm);
    der(RanGTP_cy) = (kpermRanGTP_Cytoplasmic_transfer * nucleus * (RanGTP_nuc - RanGTP_cy)) - ((kon_RanGTP_binding * RanGTP_cy * RanBP1 - koff_RanGTP_binding * RanGTP_RanBP1) * cytoplasm) - (cytoplasm * kcat_GAP_RanGAP_RanGDP * RanGTP_cy * RanGAP / (Km_GAP_RanGAP_RanGDP + RanGTP_cy));
    der(RanGTP_RanBP1) = ((kon_RanGTP_binding * RanGTP_cy * RanBP1 - koff_RanGTP_binding * RanGTP_RanBP1) * cytoplasm) - (cytoplasm * kcat_RanBP1_RanGDP * RanGTP_RanBP1 * RanGAP / (RanGTP_RanBP1 + Km_RanBP1_RanGDP));
    der(RanGDP_cy) = (kpermRanGDP_Nucleoplasmic_transfer * nucleus * (RanGDP_nuc - RanGDP_cy)) + (cytoplasm * kcat_RanBP1_RanGDP * RanGTP_RanBP1 * RanGAP / (RanGTP_RanBP1 + Km_RanBP1_RanGDP)) + (cytoplasm * kcat_GAP_RanGAP_RanGDP * RanGTP_cy * RanGAP / (Km_GAP_RanGAP_RanGDP + RanGTP_cy)) ;




end BIOMD192;
