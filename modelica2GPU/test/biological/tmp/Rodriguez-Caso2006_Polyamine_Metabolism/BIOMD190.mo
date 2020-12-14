
model BIOMD190 "Rodriguez-Caso2006_Polyamine_Metabolism"

    function pow
        input  Real x;
        input  Real power;
        output Real y;
        algorithm
            y := x^power;
    end pow;

    parameter Real Keq = 1.0;
    parameter Real Kdodc = 0.05;
    parameter Real Ksodc = 5.0;
    parameter Real Kdssat = 0.2;
    parameter Real Ksssat = 0.001;
    parameter Real Kdsamdc = 0.02;
    parameter Real Kssamdc = 1.0;
    parameter Real Kdantz = 0.02;
    parameter Real Ksantz = 0.02;
    parameter Real R = 0.004;
    parameter Real C = 4.44;
    parameter Real Kipodc_ODC = 1300.0;
    parameter Real Kmodc_ODC = 60.0;
    parameter Real Kapsamdc_SAMdc = 0.5;
    parameter Real Kiasamdc_SAMdc = 2.5;
    parameter Real Kissamdc_SAMdc = 500.0;
    parameter Real Kmsamdc_SAMdc = 50.0;
    parameter Real Kmaccoassat_SSAT_for_S = 1.5;
    parameter Real Kmcoassat_SSAT_for_S = 40.0;
    parameter Real Kmdssat_SSAT_for_S = 130.0;
    parameter Real Kmsssat_SSAT_for_S = 35.0;
    parameter Real Kmaccoassat_SSAT_for_D = 1.5;
    parameter Real Kmcoassat_SSAT_for_D = 40.0;
    parameter Real Kmdssat_SSAT_for_D = 130.0;
    parameter Real Kmsssat_SSAT_for_D = 35.0;
    parameter Real Kmadpao_PAO_for_aD = 14.0;
    parameter Real Kmaspao_PAO_for_aD = 0.6;
    parameter Real Kmdpao_PAO_for_aD = 50.0;
    parameter Real Kmspao_PAO_for_aD = 15.0;
    parameter Real Vmpao_PAO_for_aD = 10.35;
    parameter Real Kmadpao_PAO_for_aS = 14.0;
    parameter Real Kmaspao_PAO_for_aS = 0.6;
    parameter Real Kmdpao_PAO_for_aS = 50.0;
    parameter Real Kmspao_PAO_for_aS = 15.0;
    parameter Real Vmpao_PAO_for_aS = 10.35;
    parameter Real KaSpds_SpdS = 0.3;
    parameter Real Kiaspds_SpdS = 0.8;
    parameter Real Kidspds_SpdS = 100.0;
    parameter Real Kpspds_SpdS = 40.0;
    parameter Real Vmspds_SpdS = 10.95;
    parameter Real Kaspms_SpmS = 0.1;
    parameter Real Kdspms_SpmS = 60.0;
    parameter Real Kiaspms_SpmS = 0.06;
    parameter Real Kisspms_SpmS = 25.0;
    parameter Real Vmspms_SpmS = 3.23;
    parameter Real Kimetmat_MAT = 50.0;
    parameter Real Kmmat_MAT = 41.0;
    parameter Real Vmmat_MAT = 0.45;
    parameter Real Kpefflux_P_efflux = 0.01;
    parameter Real Kadefflux_aD_efflux = 0.01;
    parameter Real cytosol = 1.0;

    Real Vmaxodc(start=1.27905671844446);
    Real Vmaxssat(start=0.677298510125025);
    Real Vmaxsamdc(start=0.367465856805639);
    Real Antz(start=0.574589492832405);
    Real Kaccoa(start=0.004);
    Real Kcoa(start=0.012);

    Real SAM;
    Real A;
    Real P;
    Real S;
    Real D;
    Real aS;
    Real aD;
    Real Met;
    Real ORN;
    Real AcCoA;
    Real CoA;

initial equation
    SAM = 0.01;
    A = 0.01;
    P = 0.01;
    S = 0.01;
    D = 0.01;
    aS = 0.01;
    aD = 0.01;
    Met = 50.0;
    ORN = 300.0;
    AcCoA = 39.5;
    CoA = 160.0;

equation
    Kaccoa = R;
    Kcoa = 3 * R;
    der(Vmaxodc) = Ksodc / (1 + Keq * (D + S)) - Kdodc * Antz * Vmaxodc;
    der(Vmaxssat) = Ksssat * (1 - 1 / (1 + Keq * (D + S))) - Kdssat * (1 / (1 + Keq * (D + S))) * Vmaxssat;
    der(Vmaxsamdc) = Kssamdc * (1 / (1 + Keq * (D + S))) - Kdsamdc * Vmaxsamdc;
    der(Antz) = Ksantz * (1 - 1 / (1 + Keq * 0.01 * (D + S))) - Kdantz * Antz;
    der(SAM) = (cytosol * (Vmmat_MAT / (1 + (Kmmat_MAT / Met) * (1 + SAM / Kimetmat_MAT)))) - (cytosol * ((Vmaxsamdc / (1 + S / Kissamdc_SAMdc)) * SAM / (Kmsamdc_SAMdc * (1 + Kapsamdc_SAMdc / P + A / Kiasamdc_SAMdc) + SAM)));
    der(A) = (cytosol * ((Vmaxsamdc / (1 + S / Kissamdc_SAMdc)) * SAM / (Kmsamdc_SAMdc * (1 + Kapsamdc_SAMdc / P + A / Kiasamdc_SAMdc) + SAM))) - (cytosol * (Vmspds_SpdS * A * P / (Kiaspds_SpdS * Kpspds_SpdS * (1 + D / Kidspds_SpdS) + Kpspds_SpdS * A + KaSpds_SpdS * (1 + D / Kidspds_SpdS) * P + A * P))) - (cytosol * (Vmspms_SpmS * A * D / (Kiaspms_SpmS * Kdspms_SpmS * (1 + S / Kisspms_SpmS) + Kdspms_SpmS * A + Kaspms_SpmS * (1 + S / Kisspms_SpmS) * D + A * D)));
    der(P) = (cytosol * (Vmaxodc * ORN / (Kmodc_ODC * (1 + P / Kipodc_ODC) + ORN))) + (cytosol * (Vmpao_PAO_for_aD * aD / (Kmadpao_PAO_for_aD * (1 + aD / Kmadpao_PAO_for_aD + aS / Kmaspao_PAO_for_aD + D / Kmdpao_PAO_for_aD + S / Kmspao_PAO_for_aD)))) - (cytosol * (Vmspds_SpdS * A * P / (Kiaspds_SpdS * Kpspds_SpdS * (1 + D / Kidspds_SpdS) + Kpspds_SpdS * A + KaSpds_SpdS * (1 + D / Kidspds_SpdS) * P + A * P))) - (cytosol * Kpefflux_P_efflux * P);
    der(S) = (cytosol * (Vmspms_SpmS * A * D / (Kiaspms_SpmS * Kdspms_SpmS * (1 + S / Kisspms_SpmS) + Kdspms_SpmS * A + Kaspms_SpmS * (1 + S / Kisspms_SpmS) * D + A * D))) - (cytosol * ((1 / C) * Vmaxssat * S * AcCoA / (Kmsssat_SSAT_for_S * (1 + D / Kmdssat_SSAT_for_S) * Kmaccoassat_SSAT_for_S * (1 + CoA / Kmcoassat_SSAT_for_S) + Kmaccoassat_SSAT_for_S * (1 + CoA / Kmcoassat_SSAT_for_S) * S + Kmsssat_SSAT_for_S * (1 + D / Kmdssat_SSAT_for_S) * AcCoA + S * AcCoA)));
    der(D) = (cytosol * (Vmpao_PAO_for_aS * aS / (Kmaspao_PAO_for_aS * (1 + aD / Kmadpao_PAO_for_aS + aS / Kmaspao_PAO_for_aS + D / Kmdpao_PAO_for_aS + S / Kmspao_PAO_for_aS)))) + (cytosol * (Vmspds_SpdS * A * P / (Kiaspds_SpdS * Kpspds_SpdS * (1 + D / Kidspds_SpdS) + Kpspds_SpdS * A + KaSpds_SpdS * (1 + D / Kidspds_SpdS) * P + A * P))) - (cytosol * (Vmaxssat * D * AcCoA / (Kmdssat_SSAT_for_D * (1 + S / Kmsssat_SSAT_for_D) * Kmaccoassat_SSAT_for_D * (1 + CoA / Kmcoassat_SSAT_for_D) + Kmaccoassat_SSAT_for_D * (1 + CoA / Kmcoassat_SSAT_for_D) * D + Kmdssat_SSAT_for_D * (1 + S / Kmsssat_SSAT_for_D) * AcCoA + D * AcCoA))) - (cytosol * (Vmspms_SpmS * A * D / (Kiaspms_SpmS * Kdspms_SpmS * (1 + S / Kisspms_SpmS) + Kdspms_SpmS * A + Kaspms_SpmS * (1 + S / Kisspms_SpmS) * D + A * D)));
    der(aS) = (cytosol * ((1 / C) * Vmaxssat * S * AcCoA / (Kmsssat_SSAT_for_S * (1 + D / Kmdssat_SSAT_for_S) * Kmaccoassat_SSAT_for_S * (1 + CoA / Kmcoassat_SSAT_for_S) + Kmaccoassat_SSAT_for_S * (1 + CoA / Kmcoassat_SSAT_for_S) * S + Kmsssat_SSAT_for_S * (1 + D / Kmdssat_SSAT_for_S) * AcCoA + S * AcCoA))) - (cytosol * (Vmpao_PAO_for_aS * aS / (Kmaspao_PAO_for_aS * (1 + aD / Kmadpao_PAO_for_aS + aS / Kmaspao_PAO_for_aS + D / Kmdpao_PAO_for_aS + S / Kmspao_PAO_for_aS))));
    der(aD) = (cytosol * (Vmaxssat * D * AcCoA / (Kmdssat_SSAT_for_D * (1 + S / Kmsssat_SSAT_for_D) * Kmaccoassat_SSAT_for_D * (1 + CoA / Kmcoassat_SSAT_for_D) + Kmaccoassat_SSAT_for_D * (1 + CoA / Kmcoassat_SSAT_for_D) * D + Kmdssat_SSAT_for_D * (1 + S / Kmsssat_SSAT_for_D) * AcCoA + D * AcCoA))) - (cytosol * (Vmpao_PAO_for_aD * aD / (Kmadpao_PAO_for_aD * (1 + aD / Kmadpao_PAO_for_aD + aS / Kmaspao_PAO_for_aD + D / Kmdpao_PAO_for_aD + S / Kmspao_PAO_for_aD)))) - (cytosol * Kadefflux_aD_efflux * aD);
    der(Met) = 0.0;
    der(ORN) = 0.0;
    der(AcCoA) = 0.0;
    der(CoA) = 0.0;




end BIOMD190;
