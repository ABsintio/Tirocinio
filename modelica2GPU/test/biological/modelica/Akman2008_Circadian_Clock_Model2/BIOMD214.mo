
model BIOMD214 "Akman2008_Circadian_Clock_Model2"

    function pow
        input  Real x;
        input  Real power;
        output Real y;
        algorithm
            y := x^power;
    end pow;

    parameter Real a1 = 24.9736;
    parameter Real a2 = 3.59797;
    parameter Real a3 = 0.2834;
    parameter Real a4 = 0.46227;
    parameter Real a5 = 0.02917;
    parameter Real a6 = 0.20695;
    parameter Real a7 = 3.02856;
    parameter Real b1 = 0.00209;
    parameter Real b2 = 2.13476;
    parameter Real b3 = 0.08039;
    parameter Real b4 = 0.45859;
    parameter Real b5 = 0.13056;
    parameter Real b7 = 2.96739;
    parameter Real b8 = 0.11167;
    parameter Real b9 = 81.10381;
    parameter Real b10 = 93.03664;
    parameter Real b6 = 0.0;
    parameter Real d1 = 1.43549;
    parameter Real d2 = 0.21251;
    parameter Real d3 = 0.50309;
    parameter Real d4 = 3.36641;
    parameter Real d5 = 0.41085;
    parameter Real f1 = 0.09292;
    parameter Real f2 = 0.14979;
    parameter Real gam1 = 0.34603;
    parameter Real gam2 = 0.00028;
    parameter Real r1 = 2.71574;
    parameter Real r2 = 35.40005;
    parameter Real n = 1.02419;
    parameter Real m = 1.34979;
    parameter Real k = 2.18234;
    parameter Real a3p = 0.34578;
    parameter Real d2p = 0.18191;
    parameter Real f1p = 0.09588;
    parameter Real gam1p = 0.40119;
    parameter Real amp = 0.0;
    parameter Real dawn = 12.0;
    parameter Real dusk = 24.0;



    Real E1F;
    Real E1Fp;
    Real E1W;
    Real E2F;
    Real E2Fp;
    Real E2W;
    Real MF;
    Real MW;
    Real PF;
    Real PFp;
    Real PW;
    Real PWL;
    Real sFrq_tot;
    Real lFrq_tot;
    Real Frq_tot;
    Real WC1_tot;

initial equation
    E1F = 0.43076;
    E1Fp = 0.45583;
    E1W = 5.84748;
    E2F = 0.10647;
    E2Fp = 0.09872;
    E2W = 5.70265;
    MF = 0.6935;
    MW = 1.2689;
    PF = 0.06565;
    PFp = 0.07719;
    PW = 26.4393;
    PWL = 0.0;

equation
    sFrq_tot = PF + E2F + E1F;
    lFrq_tot = PFp + E2Fp + E1Fp;
    Frq_tot = sFrq_tot + lFrq_tot;
    WC1_tot = PW + PWL + E1W + E2W;
    der(E1F) = (a3 * MF) - (gam1 * E1F) - (f1 * E1F);
    der(E1Fp) = (a3p * MF) - (gam1p * E1Fp) - (f1p * E1Fp);
    der(E1W) = ((a6 + a7 * (PF + PFp)) * MW) - (gam2 * E1W) - (f2 * E1W);
    der(E2F) = (f1 * E1F) - (gam1 * E2F) - (f1 * E2F);
    der(E2Fp) = (f1p * E1Fp) - (gam1p * E2Fp) - (f1p * E2Fp);
    der(E2W) = (f2 * E1W) - (gam2 * E2W) - (f2 * E2W);
    der(MF) = (a1 * PWL^n / ((1 + (PF + PFp) / b1) * (PWL^n + b2^n)) + a2 * PW^m / ((1 + (PF + PFp) / b3) * (PW^m + b4^m))) - (d1 * MF / (MF + b5));
    der(MW) = (a4 + a5 * PWL^k / (PWL^k + b7^k)) - (d3 * MW / (MW + b8));
    der(PF) = (f1 * E2F) - (d2 * PF);
    der(PFp) = (f1p * E2Fp) - (d2p * PFp);
    der(PW) = (f2 * E2W) - (d4 * PW / (PW + b9)) - (r1 * amp * PW * (1 + tanh(24 * (time - 24 * floor(time / 24) - dawn))) * (1 - tanh(24 * (time - 24 * floor(time / 24) - dusk))) / 4 - r2 * PWL);
    der(PWL) = (r1 * amp * PW * (1 + tanh(24 * (time - 24 * floor(time / 24) - dawn))) * (1 - tanh(24 * (time - 24 * floor(time / 24) - dusk))) / 4 - r2 * PWL) - (d5 * PWL / (PWL + b10));



end BIOMD214;
