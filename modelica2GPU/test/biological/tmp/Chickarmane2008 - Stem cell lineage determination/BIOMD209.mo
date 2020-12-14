
model BIOMD209 "Chickarmane2008 - Stem cell lineage determination"

    function pow
        input  Real x;
        input  Real power;
        output Real y;
        algorithm
            y := x^power;
    end pow;

    parameter Real a0 = 0.001;
    parameter Real a1 = 1.0;
    parameter Real a2 = 0.005;
    parameter Real a3 = 0.025;
    parameter Real b0 = 1.0;
    parameter Real b1 = 0.001;
    parameter Real b2 = 0.005;
    parameter Real b3 = 0.025;
    parameter Real b4 = 10.0;
    parameter Real b5 = 10.0;
    parameter Real gamma1 = 0.1;
    parameter Real c0 = 0.001;
    parameter Real c1 = 0.005;
    parameter Real c2 = 0.025;
    parameter Real d0 = 0.001;
    parameter Real d1 = 0.005;
    parameter Real d2 = 0.025;
    parameter Real d3 = 0.05;
    parameter Real gamma2 = 0.1;
    parameter Real e0 = 0.001;
    parameter Real e1 = 0.1;
    parameter Real e2 = 0.1;
    parameter Real e3 = 1.0;
    parameter Real f0 = 0.001;
    parameter Real f1 = 0.1;
    parameter Real f2 = 0.1;
    parameter Real f3 = 10.0;
    parameter Real f4 = 1.0;
    parameter Real gamma3 = 0.1;
    parameter Real g0 = 0.001;
    parameter Real g1 = 2.0;
    parameter Real h0 = 2.0;
    parameter Real h1 = 5.0;
    parameter Real gamma4 = 0.1;
    parameter Real i0 = 0.001;
    parameter Real i1 = 0.1;
    parameter Real i2 = 0.1;
    parameter Real j0 = 0.1;
    parameter Real j1 = 0.1;
    parameter Real gamma5 = 0.1;
    parameter Real p0 = 0.1;
    parameter Real p1 = 1.0;
    parameter Real p2 = 0.00025;
    parameter Real q0 = 1.0;
    parameter Real q1 = 0.00025;
    parameter Real q2 = 15.0;
    parameter Real q3 = 10.0;
    parameter Real gammag = 0.1;
    parameter Real gamman = 0.01;



    Real OCT4_Gene;
    Real NANOG_Gene;
    Real SOX2_Gene;
    Real GATA6_Gene;
    Real CDX2_Gene;
    Real GCNF_Gene;
    Real targetGene;
    Real degradation;
    Real p53;
    Real A;
    Real SG;
    Real SN;
    Real OCT4;
    Real SOX2;
    Real NANOG;
    Real GATA6;
    Real CDX2;
    Real GCNF;
    Real OCT4_SOX2;
    Real Protein;

initial equation
    OCT4_Gene = 0.0;
    NANOG_Gene = 0.0;
    SOX2_Gene = 0.0;
    GATA6_Gene = 0.0;
    CDX2_Gene = 0.0;
    GCNF_Gene = 0.0;
    targetGene = 0.01;
    degradation = 0.0;
    p53 = 0.0;
    A = 25.0;
    SG = 0.0;
    SN = 0.0;
    OCT4 = 0.01;
    SOX2 = 0.01;
    NANOG = 0.01;
    GATA6 = 0.01;
    CDX2 = 0.01;
    GCNF = 0.01;
    OCT4_SOX2 = 0.1;
    Protein = 0.0;

equation

    der(OCT4_Gene) = 0.0;
    der(NANOG_Gene) = 0.0;
    der(SOX2_Gene) = 0.0;
    der(GATA6_Gene) = 0.0;
    der(CDX2_Gene) = 0.0;
    der(GCNF_Gene) = 0.0;
    der(targetGene) = 0.0;
    der(degradation) = 0.0;
    der(p53) = 0.0;
    der(A) = 0.0;
    der(SG) = 0.0;
    der(SN) = 0.0;
    der(OCT4) = ((a0 + a1 * A + a2 * OCT4 * SOX2 + a3 * OCT4 * SOX2 * NANOG) / (1 + b0 * A + b1 * OCT4 + b2 * OCT4 * SOX2 + b3 * OCT4 * SOX2 * NANOG + b4 * CDX2 * OCT4 + b5 * GCNF)) - (gamma1 * OCT4);
    der(SOX2) = ((c0 + c1 * OCT4 * SOX2 + c2 * OCT4 * SOX2 * NANOG) / (1 + d0 * OCT4 + d1 * OCT4 * SOX2 + d2 * OCT4 * SOX2 * NANOG)) - (gamma2 * SOX2);
    der(NANOG) = ((e0 + e1 * OCT4 * SOX2 + e2 * OCT4 * SOX2 * NANOG + e3 * SN) / (1 + f0 * OCT4 + f1 * OCT4 * SOX2 + f2 * OCT4 * SOX2 * NANOG + f3 * OCT4 * GATA6 + f4 * SN)) - (gamma3 * NANOG);
    der(GATA6) = ((p0 + p1 * OCT4 + p2 * GATA6) / (1 + q0 * OCT4 + q1 * GATA6 + q2 * NANOG + q3 * SG)) - (gammag * GATA6);
    der(CDX2) = ((g0 + g1 * CDX2) / (1 + h0 * CDX2 + h1 * CDX2 * OCT4)) - (gamma4 * CDX2);
    der(GCNF) = ((i0 + i1 * CDX2 + i2 * GATA6) / (1 + j0 * CDX2 + j1 * GATA6)) - (gamma5 * GCNF);
    der(OCT4_SOX2) = 0.0;
    der(Protein) = 0.0;




end BIOMD209;
