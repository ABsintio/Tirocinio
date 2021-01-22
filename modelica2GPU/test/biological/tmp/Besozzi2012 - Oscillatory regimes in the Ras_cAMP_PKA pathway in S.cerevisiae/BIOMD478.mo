
model BIOMD478 "Besozzi2012 - Oscillatory regimes in the Ras_cAMP_PKA pathway in S.cerevisiae"

    function pow
        input  Real x;
        input  Real power;
        output Real y;
        algorithm
            y := x^power;
    end pow;
    
    function piecewise
        input Real x;
        input Boolean condition;
        input Real y;
        output Real z;
        algorithm
            z := if condition then x else y;
    end piecewise;



    parameter Real K0 = 1.0;
    parameter Real K1 = 1.0;
    parameter Real K2 = 1.5;
    parameter Real K3 = 1.0;
    parameter Real K4 = 1.0;
    parameter Real K5 = 1.0;
    parameter Real K6 = 1.0;
    parameter Real K7 = 1.0;
    parameter Real K8 = 0.01;
    parameter Real K9 = 0.25;
    parameter Real K10 = 0.001;
    parameter Real K11 = 2.1e-06;
    parameter Real K12 = 0.001;
    parameter Real K13 = 1e-05;
    parameter Real K14 = 1e-05;
    parameter Real K15 = 1e-05;
    parameter Real K16 = 1e-05;
    parameter Real K17 = 0.1;
    parameter Real K18 = 0.1;
    parameter Real K19 = 0.1;
    parameter Real K20 = 0.1;
    parameter Real K21 = 1.0;
    parameter Real K22 = 1.0;
    parameter Real K23 = 0.75;
    parameter Real K24 = 1.0;
    parameter Real K25 = 1e-06;
    parameter Real K26 = 0.1;
    parameter Real K27 = 0.1;
    parameter Real K28 = 7.5;
    parameter Real K29 = 0.0001;
    parameter Real K30 = 0.0001;
    parameter Real K31 = 1.0;
    parameter Real K32 = 1.7;
    parameter Real K33 = 1.0;
    parameter Real K34 = 0.01;
    parameter Real K35 = 0.001;
    parameter Real K36 = 1.25;
    parameter Real K37 = 2.5;
    parameter Real K38 = 10.0;
    parameter Real compartment01 = 1.0;



    Real Ras2_GDP;
    Real Cdc25;
    Real Ras2_GDP_Cdc25;
    Real Ras2_Cdc25;
    Real GDP;
    Real GTP;
    Real Ras2_GTP_Cdc25;
    Real Ras2_GTP;
    Real Ira2;
    Real Ras2_GTP_Ira2;
    Real CYR1;
    Real Ras2_GTP_CYR1;
    Real ATP;
    Real cAMP;
    Real PKA;
    Real cAMP_PKA;
    Real IIcAMP_PKA;
    Real IIIcAMP_PKA;
    Real IVcAMP_PKA;
    Real C;
    Real R_2cAMP;
    Real R;
    Real R_C;
    Real Pde1;
    Real Pde1f;
    Real cAMP_Pde1f;
    Real AMP;
    Real PPA2;
    Real Pde2;
    Real cAMP_Pde2;
    Real Cdc25f;
    Real Ira2P;
    Real Ras2_GTP_Ira2P;

initial equation
    Ras2_GDP = 20000.0;
    Cdc25 = 300.0;
    Ras2_GDP_Cdc25 = 0.0;
    Ras2_Cdc25 = 0.0;
    GDP = 1500000.0;
    GTP = 5000000.0;
    Ras2_GTP_Cdc25 = 0.0;
    Ras2_GTP = 0.0;
    Ira2 = 200.0;
    Ras2_GTP_Ira2 = 0.0;
    CYR1 = 200.0;
    Ras2_GTP_CYR1 = 0.0;
    ATP = 24000000.0;
    cAMP = 0.0;
    PKA = 2500.0;
    cAMP_PKA = 0.0;
    IIcAMP_PKA = 0.0;
    IIIcAMP_PKA = 0.0;
    IVcAMP_PKA = 0.0;
    C = 0.0;
    R_2cAMP = 0.0;
    R = 0.0;
    R_C = 0.0;
    Pde1 = 1400.0;
    Pde1f = 0.0;
    cAMP_Pde1f = 0.0;
    AMP = 0.0;
    PPA2 = 4000.0;
    Pde2 = 6500.0;
    cAMP_Pde2 = 0.0;
    Cdc25f = 0.0;
    Ira2P = 0.0;
    Ras2_GTP_Ira2P = 0.0;

equation

    der(Ras2_GDP) = (K1 * Ras2_GDP_Cdc25) + (K9 * Ras2_GTP_Ira2) + (K12 * Ira2 * Ras2_GTP_CYR1) + (K37 * Ras2_GTP_Ira2P) - (K0 * Ras2_GDP * Cdc25);
    der(Cdc25) = (K1 * Ras2_GDP_Cdc25) + (K6 * Ras2_GTP_Cdc25) + (K34 * PPA2 * Cdc25f) - (K0 * Ras2_GDP * Cdc25) - (K7 * Cdc25 * Ras2_GTP) - (K33 * Cdc25 * C);
    der(Ras2_GDP_Cdc25) = (K0 * Ras2_GDP * Cdc25) + (K3 * Ras2_Cdc25 * GDP) - (K1 * Ras2_GDP_Cdc25) - (K2 * Ras2_GDP_Cdc25);
    der(Ras2_Cdc25) = (K2 * Ras2_GDP_Cdc25) + (K5 * Ras2_GTP_Cdc25) - (K3 * Ras2_Cdc25 * GDP) - (K4 * Ras2_Cdc25 * GTP);
    der(GDP) = 0.0;
    der(GTP) = 0.0;
    der(Ras2_GTP_Cdc25) = (K4 * Ras2_Cdc25 * GTP) + (K7 * Cdc25 * Ras2_GTP) - (K5 * Ras2_GTP_Cdc25) - (K6 * Ras2_GTP_Cdc25);
    der(Ras2_GTP) = (K6 * Ras2_GTP_Cdc25) - (K7 * Cdc25 * Ras2_GTP) - (K8 * Ras2_GTP * Ira2) - (K10 * Ras2_GTP * CYR1) - (K36 * Ras2_GTP * Ira2P);
    der(Ira2) = (K9 * Ras2_GTP_Ira2) + (K12 * Ira2 * Ras2_GTP_CYR1) + (K38 * Ira2P) - (K8 * Ras2_GTP * Ira2) - (K12 * Ira2 * Ras2_GTP_CYR1) - (K35 * Ira2 * C);
    der(Ras2_GTP_Ira2) = (K8 * Ras2_GTP * Ira2) - (K9 * Ras2_GTP_Ira2);
    der(CYR1) = (K12 * Ira2 * Ras2_GTP_CYR1) - (K10 * Ras2_GTP * CYR1);
    der(Ras2_GTP_CYR1) = (K10 * Ras2_GTP * CYR1) + (K11 * Ras2_GTP_CYR1 * ATP) - (K11 * Ras2_GTP_CYR1 * ATP) - (K12 * Ira2 * Ras2_GTP_CYR1);
    der(ATP) = 0.0;
    der(cAMP) = (K11 * Ras2_GTP_CYR1 * ATP) + (K17 * IVcAMP_PKA) + (K18 * IIIcAMP_PKA) + (K19 * IIcAMP_PKA) + (K20 * cAMP_PKA) + (2.0 * K22 * R_2cAMP) + (K27 * cAMP_Pde1f) + (K31 * cAMP_Pde2) - (K13 * cAMP * PKA) - (K14 * cAMP * cAMP_PKA) - (K15 * cAMP * IIcAMP_PKA) - (K16 * cAMP * IIIcAMP_PKA) - (K26 * cAMP * Pde1f) - (K30 * cAMP * Pde2);
    der(PKA) = (K20 * cAMP_PKA) + (K24 * (R_C * (R_C - 1) / 2)) - (K13 * cAMP * PKA);
    der(cAMP_PKA) = (K13 * cAMP * PKA) + (K19 * IIcAMP_PKA) - (K14 * cAMP * cAMP_PKA) - (K20 * cAMP_PKA);
    der(IIcAMP_PKA) = (K14 * cAMP * cAMP_PKA) + (K18 * IIIcAMP_PKA) - (K15 * cAMP * IIcAMP_PKA) - (K19 * IIcAMP_PKA);
    der(IIIcAMP_PKA) = (K15 * cAMP * IIcAMP_PKA) + (K17 * IVcAMP_PKA) - (K16 * cAMP * IIIcAMP_PKA) - (K18 * IIIcAMP_PKA);
    der(IVcAMP_PKA) = (K16 * cAMP * IIIcAMP_PKA) - (K17 * IVcAMP_PKA) - (K21 * IVcAMP_PKA);
    der(C) = (2.0 * K21 * IVcAMP_PKA) + (K25 * C * Pde1) + (K33 * Cdc25 * C) + (K35 * Ira2 * C) - (K23 * C * R) - (K25 * C * Pde1) - (K33 * Cdc25 * C) - (K35 * Ira2 * C);
    der(R_2cAMP) = (2.0 * K21 * IVcAMP_PKA) - (K22 * R_2cAMP);
    der(R) = (K22 * R_2cAMP) - (K23 * C * R);
    der(R_C) = (K23 * C * R) - (2.0 * K24 * (R_C * (R_C - 1) / 2));
    der(Pde1) = (K29 * Pde1f * PPA2) - (K25 * C * Pde1);
    der(Pde1f) = (K25 * C * Pde1) + (K27 * cAMP_Pde1f) + (K28 * cAMP_Pde1f) - (K26 * cAMP * Pde1f) - (K29 * Pde1f * PPA2);
    der(cAMP_Pde1f) = (K26 * cAMP * Pde1f) - (K27 * cAMP_Pde1f) - (K28 * cAMP_Pde1f);
    der(AMP) = (K28 * cAMP_Pde1f) + (K32 * cAMP_Pde2) ;
    der(PPA2) = (K29 * Pde1f * PPA2) + (K34 * PPA2 * Cdc25f) - (K29 * Pde1f * PPA2) - (K34 * PPA2 * Cdc25f);
    der(Pde2) = (K31 * cAMP_Pde2) + (K32 * cAMP_Pde2) - (K30 * cAMP * Pde2);
    der(cAMP_Pde2) = (K30 * cAMP * Pde2) - (K31 * cAMP_Pde2) - (K32 * cAMP_Pde2);
    der(Cdc25f) = (K33 * Cdc25 * C) - (K34 * PPA2 * Cdc25f);
    der(Ira2P) = (K35 * Ira2 * C) + (K37 * Ras2_GTP_Ira2P) - (K36 * Ras2_GTP * Ira2P) - (K38 * Ira2P);
    der(Ras2_GTP_Ira2P) = (K36 * Ras2_GTP * Ira2P) - (K37 * Ras2_GTP_Ira2P);




end BIOMD478;
