
model BIOMD248 "Lai2007_O2_Transport_Metabolism"

    function pow
        input  Real x;
        input  Real power;
        output Real y;
        algorithm
            y := x^power;
    end pow;



    parameter Real KatpaseW = 0.3207601;
    parameter Real Kadp = 0.058;
    parameter Real Kia = 0.135;
    parameter Real Kiq = 3.5;
    parameter Real Kib = 3.9;
    parameter Real Kp = 3.8;
    parameter Real Kb = 1.11;
    parameter Real Km = 0.0007;
    parameter Real VfCK = 6000.0;
    parameter Real VrCK = 3008.65837589001;
    parameter Real QRm = 0.688;
    parameter Real QWm = 3.118;
    parameter Real Qc = 8.0;
    parameter Real PSR = 134.2828;
    parameter Real PSE = 20000.0;
    parameter Real nH = 2.7;
    parameter Real Hct = 0.45;
    parameter Real Wmc = 0.8064;
    parameter Real CmcMb = 0.5;
    parameter Real CrbcHb = 5.18;
    parameter Real KMb = 308.642;
    parameter Real KHb = 7800.7;
    parameter Real tE = 3.0;
    parameter Real CTart = 9.199981;
    parameter Real VmaxM = 53.5150933;
    parameter Real VmaxH = 34.68714;
    parameter Real VmaxVH = 23.11702;
    parameter Real KatpaseM = 1.71080439028658;
    parameter Real KatpaseH = 2.2581564;
    parameter Real KatpaseVH = 3.3423645;
    parameter Real dQMmM = 7.9167374;
    parameter Real dQMmH = 9.42198;
    parameter Real dQMmVH = 12.74981;
    parameter Real tauQmM = 0.32;
    parameter Real tauQmH = 0.396;
    parameter Real tauQmVH = 0.42;
    parameter Real StO2mW = 81.17123516;
    parameter Real exercise_level = 3.0;
    parameter Real Capillary = 1.0;
    parameter Real Tissue = 1.0;

    Real StO2m(start=0.0);
    Real RStO2m(start=0.0);
    Real Katpase(start=0.3207601);
    Real Qm(start=3.118);
    Real PSm(start=5338.8);
    Real Vmax(start=23.11702);
    Real KatpaseE(start=3.3423645);
    Real dQMm(start=12.74981);
    Real tauQm(start=0.42);
    Real ATPase_flux_mM(start=0.0);
    Real CK_flux_mM(start=0.0);
    Real oxygen_phosph(start=0.0);

    Real ATP;
    Real PCr;
    Real ADP;
    Real Cr;
    Real Pi;
    Real CTcap;
    Real CTtis;
    Real CFcap;
    Real CFtis;

initial equation
    ATP = 8.198857;
    PCr = 40.98942;
    ADP = 0.001142;
    Cr = 1.01056;
    Pi = 0.5;
    CTcap = 5.281527;
    CTtis = 0.4084824;
    CFcap = 0.03969;
    CFtis = 0.0374;

equation
    Katpase = piecewise(KatpaseW, leq(time, tE), KatpaseE);
    Qm = piecewise(QWm, leq(time, tE), QWm + dQMm * (1 - exp((tE - time) / tauQm)));
    PSm = PSR + (PSE - PSR) * (1 - exp((QRm - Qm) / Qc));
    StO2m = 100 * (Hct * CrbcHb * KHb * pow(CFcap, nH) / (1 + KHb * pow(CFcap, nH)) * Capillary + Wmc * CmcMb * KMb * CFtis / (1 + KMb * CFtis) * Tissue) / (CrbcHb * Hct * Capillary + CmcMb * Wmc * Tissue);
    RStO2m = StO2m / StO2mW - 1;
    Vmax = piecewise(VmaxM, eq(exercise_level, 1), piecewise(VmaxH, eq(exercise_level, 2), VmaxVH));
    KatpaseE = piecewise(KatpaseM, eq(exercise_level, 1), piecewise(KatpaseH, eq(exercise_level, 2), KatpaseVH));
    dQMm = piecewise(dQMmM, eq(exercise_level, 1), piecewise(dQMmH, eq(exercise_level, 2), dQMmVH));
    tauQm = piecewise(tauQmM, eq(exercise_level, 1), piecewise(tauQmH, eq(exercise_level, 2), tauQmVH));
    ATPase_flux_mM = ATPase / Tissue;
    CK_flux_mM = 1 * (CreatineKinase / Tissue);
    oxygen_phosph = OxidativePhosphorylation / Tissue * 6;
    der(CFcap) = (Qm * (CTart - CTcap) - PSm * (CFcap - CFtis)) * (1 / Capillary) / (1 + 4 * Hct * CrbcHb * KHb * nH * pow(CFcap, nH - 1) / pow(1 + KHb * pow(CFcap, nH), 2));
    der(CFtis) = (PSm * (CFcap - CFtis) / Tissue - Vmax * (CFtis / (Km + CFtis) * ADP / (Kadp + ADP))) / (1 + Wmc * CmcMb * KMb / pow(1 + KMb * CFtis, 2));
    der(ATP) = (6.0 * Tissue * Vmax * (CFtis / (Km + CFtis)) * ADP / (Kadp + ADP)) + (Tissue * (VfCK * ADP * PCr / (Kb * Kia) - VrCK * Cr * ATP / (Kiq * Kp)) / ((Kia + ADP) / Kia + ATP / Kiq + PCr / Kib + ADP * PCr / (Kb * Kia) + Cr * ATP / (Kiq * Kp))) - (Tissue * Katpase * ATP);
    der(PCr) =  - (Tissue * (VfCK * ADP * PCr / (Kb * Kia) - VrCK * Cr * ATP / (Kiq * Kp)) / ((Kia + ADP) / Kia + ATP / Kiq + PCr / Kib + ADP * PCr / (Kb * Kia) + Cr * ATP / (Kiq * Kp)));
    der(ADP) = (Tissue * Katpase * ATP) - (6.0 * Tissue * Vmax * (CFtis / (Km + CFtis)) * ADP / (Kadp + ADP)) - (Tissue * (VfCK * ADP * PCr / (Kb * Kia) - VrCK * Cr * ATP / (Kiq * Kp)) / ((Kia + ADP) / Kia + ATP / Kiq + PCr / Kib + ADP * PCr / (Kb * Kia) + Cr * ATP / (Kiq * Kp)));
    der(Cr) = (Tissue * (VfCK * ADP * PCr / (Kb * Kia) - VrCK * Cr * ATP / (Kiq * Kp)) / ((Kia + ADP) / Kia + ATP / Kiq + PCr / Kib + ADP * PCr / (Kb * Kia) + Cr * ATP / (Kiq * Kp))) ;
    der(Pi) = 0.0;
    der(CTcap) = (Qm * (CTart - CTcap)) - (PSm * (CFcap - CFtis));
    der(CTtis) = (PSm * (CFcap - CFtis)) - (Tissue * Vmax * (CFtis / (Km + CFtis)) * ADP / (Kadp + ADP));




end BIOMD248;
