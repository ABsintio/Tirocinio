
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
    parameter Real Kipodc_0 = 1300.0;
    parameter Real Kmodc_0 = 60.0;
    parameter Real Kapsamdc_1 = 0.5;
    parameter Real Kiasamdc_1 = 2.5;
    parameter Real Kissamdc_1 = 500.0;
    parameter Real Kmsamdc_1 = 50.0;
    parameter Real Kmaccoassat_2 = 1.5;
    parameter Real Kmcoassat_2 = 40.0;
    parameter Real Kmdssat_2 = 130.0;
    parameter Real Kmsssat_2 = 35.0;
    parameter Real Kmaccoassat_3 = 1.5;
    parameter Real Kmcoassat_3 = 40.0;
    parameter Real Kmdssat_3 = 130.0;
    parameter Real Kmsssat_3 = 35.0;
    parameter Real Kmadpao_4 = 14.0;
    parameter Real Kmaspao_4 = 0.6;
    parameter Real Kmdpao_4 = 50.0;
    parameter Real Kmspao_4 = 15.0;
    parameter Real Vmpao_4 = 10.35;
    parameter Real Kmadpao_5 = 14.0;
    parameter Real Kmaspao_5 = 0.6;
    parameter Real Kmdpao_5 = 50.0;
    parameter Real Kmspao_5 = 15.0;
    parameter Real Vmpao_5 = 10.35;
    parameter Real KaSpds_6 = 0.3;
    parameter Real Kiaspds_6 = 0.8;
    parameter Real Kidspds_6 = 100.0;
    parameter Real Kpspds_6 = 40.0;
    parameter Real Vmspds_6 = 10.95;
    parameter Real Kaspms_7 = 0.1;
    parameter Real Kdspms_7 = 60.0;
    parameter Real Kiaspms_7 = 0.06;
    parameter Real Kisspms_7 = 25.0;
    parameter Real Vmspms_7 = 3.23;
    parameter Real Kimetmat_8 = 50.0;
    parameter Real Kmmat_8 = 41.0;
    parameter Real Vmmat_8 = 0.45;
    parameter Real Kpefflux_11 = 0.01;
    parameter Real Kadefflux_12 = 0.01;
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
    der(SAM) = (cytosol * (Vmmat_8 / (1 + Kmmat_8 / Met * (1 + SAM / Kimetmat_8)))) - (cytosol * (Vmaxsamdc / (1 + S / Kissamdc_1) * SAM / (Kmsamdc_1 * (1 + Kapsamdc_1 / P + A / Kiasamdc_1) + SAM)));
    der(A) = (cytosol * (Vmaxsamdc / (1 + S / Kissamdc_1) * SAM / (Kmsamdc_1 * (1 + Kapsamdc_1 / P + A / Kiasamdc_1) + SAM))) - (cytosol * (Vmspds_6 * A * P / (Kiaspds_6 * Kpspds_6 * (1 + D / Kidspds_6) + Kpspds_6 * A + KaSpds_6 * (1 + D / Kidspds_6) * P + A * P))) - (cytosol * (Vmspms_7 * A * D / (Kiaspms_7 * Kdspms_7 * (1 + S / Kisspms_7) + Kdspms_7 * A + Kaspms_7 * (1 + S / Kisspms_7) * D + A * D)));
    der(P) = (cytosol * (Vmaxodc * ORN / (Kmodc_0 * (1 + P / Kipodc_0) + ORN))) + (cytosol * (Vmpao_4 * aD / (Kmadpao_4 * (1 + aD / Kmadpao_4 + aS / Kmaspao_4 + D / Kmdpao_4 + S / Kmspao_4)))) - (cytosol * (Vmspds_6 * A * P / (Kiaspds_6 * Kpspds_6 * (1 + D / Kidspds_6) + Kpspds_6 * A + KaSpds_6 * (1 + D / Kidspds_6) * P + A * P))) - (cytosol * Kpefflux_11 * P);
    der(S) = (cytosol * (Vmspms_7 * A * D / (Kiaspms_7 * Kdspms_7 * (1 + S / Kisspms_7) + Kdspms_7 * A + Kaspms_7 * (1 + S / Kisspms_7) * D + A * D))) - (cytosol * (1 / C * Vmaxssat * S * AcCoA / (Kmsssat_2 * (1 + D / Kmdssat_2) * Kmaccoassat_2 * (1 + CoA / Kmcoassat_2) + Kmaccoassat_2 * (1 + CoA / Kmcoassat_2) * S + Kmsssat_2 * (1 + D / Kmdssat_2) * AcCoA + S * AcCoA)));
    der(D) = (cytosol * (Vmpao_5 * aS / (Kmaspao_5 * (1 + aD / Kmadpao_5 + aS / Kmaspao_5 + D / Kmdpao_5 + S / Kmspao_5)))) + (cytosol * (Vmspds_6 * A * P / (Kiaspds_6 * Kpspds_6 * (1 + D / Kidspds_6) + Kpspds_6 * A + KaSpds_6 * (1 + D / Kidspds_6) * P + A * P))) - (cytosol * (Vmaxssat * D * AcCoA / (Kmdssat_3 * (1 + S / Kmsssat_3) * Kmaccoassat_3 * (1 + CoA / Kmcoassat_3) + Kmaccoassat_3 * (1 + CoA / Kmcoassat_3) * D + Kmdssat_3 * (1 + S / Kmsssat_3) * AcCoA + D * AcCoA))) - (cytosol * (Vmspms_7 * A * D / (Kiaspms_7 * Kdspms_7 * (1 + S / Kisspms_7) + Kdspms_7 * A + Kaspms_7 * (1 + S / Kisspms_7) * D + A * D)));
    der(aS) = (cytosol * (1 / C * Vmaxssat * S * AcCoA / (Kmsssat_2 * (1 + D / Kmdssat_2) * Kmaccoassat_2 * (1 + CoA / Kmcoassat_2) + Kmaccoassat_2 * (1 + CoA / Kmcoassat_2) * S + Kmsssat_2 * (1 + D / Kmdssat_2) * AcCoA + S * AcCoA))) - (cytosol * (Vmpao_5 * aS / (Kmaspao_5 * (1 + aD / Kmadpao_5 + aS / Kmaspao_5 + D / Kmdpao_5 + S / Kmspao_5))));
    der(aD) = (cytosol * (Vmaxssat * D * AcCoA / (Kmdssat_3 * (1 + S / Kmsssat_3) * Kmaccoassat_3 * (1 + CoA / Kmcoassat_3) + Kmaccoassat_3 * (1 + CoA / Kmcoassat_3) * D + Kmdssat_3 * (1 + S / Kmsssat_3) * AcCoA + D * AcCoA))) - (cytosol * (Vmpao_4 * aD / (Kmadpao_4 * (1 + aD / Kmadpao_4 + aS / Kmaspao_4 + D / Kmdpao_4 + S / Kmspao_4)))) - (cytosol * Kadefflux_12 * aD);
    der(Met) = 0.0;
    der(ORN) = 0.0;
    der(AcCoA) = 0.0;
    der(CoA) = 0.0;




end BIOMD190;
