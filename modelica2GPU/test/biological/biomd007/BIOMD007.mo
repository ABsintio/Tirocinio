model BIOMD007 "Modeling the Control of DNA Replication in Fission"

    parameter Real mu = 0.005;
    parameter Real k1 = 0.015;
    parameter Real k2prime = 0.050;
    parameter Real k3 = 0.094;
    parameter Real k4 = 0.188;
    parameter Real k5 = 0.002;
    parameter Real k6prime = 0.000;
    parameter Real k7 = 100.000;
    parameter Real k7r = 0.100;
    parameter Real k8 = 10.000;
    parameter Real k8r = 0.100;
    parameter Real kc = 1.000;
    parameter Real kcr = 0.250;
    parameter Real ki = 0.400;
    parameter Real kir = 0.100;
    parameter Real ku = 0.200;
    parameter Real kur = 0.100;
    parameter Real ku2 = 1.000;
    parameter Real kur2 = 0.300;
    parameter Real kw = 1.000;
    parameter Real kwr = 0.250;
    parameter Real V2 = 0.250;
    parameter Real V2prime = 0.008;
    parameter Real V6 = 7.500;
    parameter Real V6prime = 0.038;
    parameter Real V25 = 0.500;
    parameter Real V25prime = 0.025;
    parameter Real Vw = 0.350;
    parameter Real Vwprime = 0.035;
    parameter Real Kmc = 0.100;
    parameter Real Kmcr = 0.100;
    parameter Real Kmi = 0.010;
    parameter Real kmir = 0.010;
    parameter Real Kmp = 0.001;
    parameter Real Kmu = 0.010;
    parameter Real Kmur = 0.010;
    parameter Real Kmu2 = 0.050;
    parameter Real Kmur2 = 0.050;
    parameter Real Kmw = 0.100;
    parameter Real Kmwr = 0.100;
    parameter Real alpha = 0.250;
    parameter Real beta = 0.050;
    parameter Real Cig1 = 0.000;

    Real Mass(start=0.490);
    Real kp(start=3.250);
    Real k2(start=0.000);
    Real k6(start=0.000);
    Real kwee(start=0.000);
    Real k25(start=0.000);
    
    Real UbE "ubiquitinProtease1";
    Real UbE2 "ubiquitinProtease2";
    Real Wee1 "Wee1";
    Real Cdc25 "Cdc25";
    Real G2K "Cdc13_Cdc2";
    Real R "FreeRum1";
    Real G1K "Cig2_Cdc2";
    Real IE "IntermedirayEnzyme";
    Real PG2 "Cdc13_P-Cdc2";
    Real G1R "Cig2_Cdc2_Rum1";
    Real G2R "Cdc13_Cdc2_Rum1";
    Real PG2R "Cdc13_P-Cdc2_Rum1";
    Real SPF "S-phasePromotingFactor";
    Real MPF "M-phasePromotingFactor";
    Real IEB "BoundIntermediaryEnzyme";
    Real UbEB "BoundUbiquitinProtease1";
    Real UbE2B "BoundUbiquitinProtease2";
    Real Wee1B "BoundWee1";
    Real Cdc25B "BoundCdc25";
    Real Rum1Total "TotalRum1";
    Real Cdc13Total "TotalCdc13";
    Real Cig2Total "TotalCig2";

    Boolean execution;
    Boolean active;
    Real trigtime;
    Real delta;

initial equation
    UbE = 0.110;
    UbE2 = 0.000;
    Wee1 = 0.000;
    Cdc25 = 0.000;
    G2K = 0.000;
    R = 0.400;
    G1K = 0.000;
    IE = 0.000;
    PG2 = 0.000;
    G1R = 0.000;
    G2R = 0.000;
    PG2R = 0.000;
    SPF = 0.000;
    MPF = 0.000;
    IEB = 0.000;
    UbEB = 0.000;
    UbE2B = 0.000;
    Wee1B = 0.000;
    Cdc25B = 0.000;

equation 
    der(Mass) = Mass * mu;
    IEB = 1 - UbE;
    UbEB = 1 - UbE2;
    Wee1B = 1 - Wee1;
    Cdc25B = 1 - Cdc25;
    Rum1Total = G1R + G2R + PG2R + R;
    Cdc13Total = G2K + G2R + PG2 + PG2R;
    Cig2Total = G1K + G1R;
    k2 = UbE * V2 + (1 - UbE) * V2prime;
    k6 = UbE2 * V6 + (1 - UbE2) * V6prime;
    kwee = Vwprime * (1 - Wee1) + Vw * Wee1;
    k25 = Cdc25 * V25 + (1 - Cdc25) * V25prime;
    MPF = G2K + beta * PG2;
    SPF = Cig1 + alpha * G1K + MPF;

    when SPF >= 0.1 then
        trigtime = time;
        delta = 60.000;
        active = true;
        execution = delta <= 0.0;
    elsewhen time >= trigtime + delta then 
        execution = pre(active);
        active = false;
    elsewhen not (SPF >= 0.1) then
        active = false;
    end when;

    when UbE <= 0.1 then
        kp = 2 * kp;
        Mass = Mass / 2;
    end when;

    der(UbE) = ((IE * ku * UbEB) / (Kmu + UbEB)) - ((kur * UbE) / (Kmur + UbE));
    der(UbE2) = ((ku2 * MPF * UbE2B) / (Kmu2 + UbE2B)) - ((kur2 * UbE2) / (Kmur2 + UbE2));
    der(Wee1) = ((kwr * Wee1B) / (Kmwr + Wee1B)) - ((kw * MPF * Wee1) / (Kmw + Wee1));
    der(Cdc25) = ((Cdc25B * kc * MPF) / (Cdc25B + Kmc)) - ((Cdc25 * kcr) / (Cdc25 + Kmcr));
    der(G2K) = k1 + G2R * k4 - (G2K * kwee - k25 * PG2) - (G2K * k7 * R - G2R * k7r) - G2K * k2;
    der(R) = k2prime * PGR2 + G2R * k2prime + G1R * k6prime + G2R * k2 + k2 * PG2R + k3 - (G2K * k7 * R - G2R * k7r) - (k7 * PG2 * R - k7r * PG2R) - k4 * R - (G1K * k8 * R - G1R * k8r) - ((kp * Mass * R * SPF) / (Kmp + R)); 
    der(G1K) = k5 + G1R * k4 - k2prime * PGR2 - G2R * k4;
    der(IE) = ((IEB * ki * MPF) / (IEB + Kmi)) - ((IE * kir) / (IE + Kmir));
    der(PG2) = (G2K * kwee - k25 * PG2) + k4 * PG2R - (k7 * PG2 * R - k7r * PG2R) - k2 * PG2;
    der(G1R) = (G1K * k8 * R - G1R * k8r) - G1R * k4 - G1R * k6prime;
    der(G2R) = (G2K * k7 * R - G2R * k7r) - G2R * k4 - G2R * k2prime - G2R * k2;
    der(PG2R) = (k7 * PG2 * R - k7r * PG2R) - k4 * PG2R - k2prime * PG2R - k2 * PG2R;

algorithm
    when execution then
        kp := pre(kp) / 2.0;
    end when;

end BIOMD007;