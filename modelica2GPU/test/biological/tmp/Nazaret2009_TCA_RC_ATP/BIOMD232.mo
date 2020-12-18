
model BIOMD232 "Nazaret2009_TCA_RC_ATP"

    function pow
        input  Real x;
        input  Real power;
        output Real y;
        algorithm
            y := x^power;
    end pow;

    parameter Real At = 4.16;
    parameter Real C = 6.75e-06;
    parameter Real DeltaPsim = 150.0;
    parameter Real F = 96485.0;
    parameter Real K = 2.0;
    parameter Real Kapp = 4.4e-09;
    parameter Real Nt = 1.07;
    parameter Real R = 8314.0;
    parameter Real T = 298.0;
    parameter Real a = 0.1;
    parameter Real b = 0.004;
    parameter Real kANT = 0.05387;
    parameter Real kATP = 131.9;
    parameter Real kleak = 0.000426;
    parameter Real kresp = 2.5;
    parameter Real k1_0 = 0.038;
    parameter Real k2_1 = 0.152;
    parameter Real k3_2 = 57.142;
    parameter Real k4_3 = 0.053;
    parameter Real k5_4 = 0.082361;
    parameter Real k6_5 = 0.0032;
    parameter Real Keq_5 = 0.3975;
    parameter Real k7_6 = 0.04;
    parameter Real k8_7 = 3.6;
    parameter Real cytoplasm = 1.0;
    parameter Real mitochondrion = 1.0;

    Real ATPcrit(start=0.0);
    Real DeltaGtransport(start=0.0);
    Real DeltaPsi(start=0.0);
    Real JANT(start=0.0);
    Real JATP(start=0.0);
    Real Jleak(start=0.0);
    Real Jresp(start=0.0);

    Real ADP;
    Real ATP;
    Real H;
    Real He;
    Real NAD;
    Real NADH;
    Real AcCoA;
    Real KG;
    Real Cit;
    Real OAA;
    Real O2;
    Real iP;
    Real Pyr;
    Real H2O;

initial equation
    ATP = 3.536;
    H = 1.0;
    He = 1.0;
    NAD = 0.856;
    AcCoA = 0.063;
    KG = 0.225;
    Cit = 0.44;
    OAA = 0.005;
    O2 = 1.0;
    iP = 2.44;
    Pyr = 0.154;
    H2O = 1.0;

equation
    JANT = kANT * ATP;
    Jleak = kleak * DeltaPsi;
    Jresp = kresp * ((Nt - NAD) / (K + Nt - NAD)) / (1 + exp(a * (DeltaPsi - DeltaPsim)));
    JATP = kATP * (2 / (1 + exp(b * (ATP - ATPcrit))) - 1);
    ATPcrit = At / (1 + exp(-3 * DeltaGtransport / (R * T)) / (Kapp * iP));
    DeltaGtransport = 1.2 * F * DeltaPsi;
    ADP = At - ATP;
    NADH = Nt - NAD;
    der(DeltaPsi) = (10 * Jresp - 3 * JATP - Jleak - JANT) / C;
    der(ATP) = (mitochondrion * k5_4 * KG * NAD * (At - ATP)) + (mitochondrion * JATP) - (mitochondrion * k7_6 * Pyr * ATP) - (mitochondrion * JANT);
    der(H) = 0.0;
    der(He) = 0.0;
    der(NAD) = (mitochondrion * Jresp) - (mitochondrion * k2_1 * Pyr * NAD) - (mitochondrion * k4_3 * Cit * NAD) - (2.0 * mitochondrion * k5_4 * KG * NAD * (At - ATP));
    der(AcCoA) = (mitochondrion * k2_1 * Pyr * NAD) - (mitochondrion * k3_2 * OAA * AcCoA);
    der(KG) = (mitochondrion * k4_3 * Cit * NAD) + (mitochondrion * k6_5 * (OAA - KG / Keq_5)) - (mitochondrion * k5_4 * KG * NAD * (At - ATP));
    der(Cit) = (mitochondrion * k3_2 * OAA * AcCoA) - (mitochondrion * k4_3 * Cit * NAD);
    der(OAA) = (mitochondrion * k5_4 * KG * NAD * (At - ATP)) + (mitochondrion * k7_6 * Pyr * ATP) - (mitochondrion * k3_2 * OAA * AcCoA) - (mitochondrion * k6_5 * (OAA - KG / Keq_5)) - (mitochondrion * k8_7 * OAA);
    der(O2) = 0.0;
    der(iP) = 0.0;
    der(Pyr) = (mitochondrion * k1_0) - (mitochondrion * k2_1 * Pyr * NAD) - (mitochondrion * k7_6 * Pyr * ATP);
    der(H2O) = 0.0;




end BIOMD232;
