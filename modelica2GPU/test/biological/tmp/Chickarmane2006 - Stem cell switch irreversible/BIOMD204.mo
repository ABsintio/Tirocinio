
model BIOMD204 "Chickarmane2006 - Stem cell switch irreversible"

    function pow
        input  Real x;
        input  Real power;
        output Real y;
        algorithm
            y := x^power;
    end pow;

    parameter Real eta1 = 0.0001;
    parameter Real a1 = 1.0;
    parameter Real a2 = 0.01;
    parameter Real a3 = 0.5;
    parameter Real f = 1000.0;
    parameter Real b1 = 0.0011;
    parameter Real b2 = 0.001;
    parameter Real b3 = 0.001;
    parameter Real gamma1 = 1.0;
    parameter Real eta5 = 0.0001;
    parameter Real e1 = 0.01;
    parameter Real e2 = 0.1;
    parameter Real f2 = 0.001;
    parameter Real f1 = 0.001;
    parameter Real f3 = 0.05;
    parameter Real gamma2 = 1.0;
    parameter Real k1c = 0.05;
    parameter Real k2c = 0.001;
    parameter Real k3c = 5.0;
    parameter Real eta3 = 0.0001;
    parameter Real c1 = 1.0;
    parameter Real c2 = 0.01;
    parameter Real c3 = 0.5;
    parameter Real d1 = 0.0011;
    parameter Real d2 = 0.001;
    parameter Real d3 = 0.001;
    parameter Real gamma3 = 1.0;
    parameter Real g1 = 0.1;
    parameter Real eta7 = 0.0001;
    parameter Real h1 = 0.0011;
    parameter Real h2 = 1.0;
    parameter Real gamma4 = 0.01;



    Real OCT4_Gene;
    Real NANOG_Gene;
    Real SOX2_Gene;
    Real targetGene;
    Real degradation;
    Real p53;
    Real A;
    Real OCT4;
    Real SOX2;
    Real NANOG;
    Real OCT4_SOX2;
    Real Protein;

initial equation
    OCT4_Gene = 0.0;
    NANOG_Gene = 0.0;
    SOX2_Gene = 0.0;
    targetGene = 0.01;
    degradation = 0.0;
    p53 = 0.0;
    A = 10.0;
    OCT4 = 0.01;
    SOX2 = 0.01;
    NANOG = 0.01;
    OCT4_SOX2 = 0.1;
    Protein = 0.0;

equation

    der(OCT4_Gene) = 0.0;
    der(NANOG_Gene) = 0.0;
    der(SOX2_Gene) = 0.0;
    der(targetGene) = 0.0;
    der(degradation) = 0.0;
    der(p53) = 0.0;
    der(A) = 0.0;
    der(OCT4) = ((eta1 + a1 * A + a2 * OCT4_SOX2 + a3 * OCT4_SOX2 * NANOG) / (1 + eta1 / f + b1 * A + b2 * OCT4_SOX2 + b3 * OCT4_SOX2 * NANOG)) - (gamma1 * OCT4) - (k1c * OCT4 * SOX2 - k2c * OCT4_SOX2);
    der(SOX2) = ((eta3 + c1 * A + c2 * OCT4_SOX2 + c3 * OCT4_SOX2 * NANOG) / (1 + eta3 / f + d1 * A + d2 * OCT4_SOX2 + d3 * OCT4_SOX2 * NANOG)) - (k1c * OCT4 * SOX2 - k2c * OCT4_SOX2) - (gamma3 * SOX2);
    der(NANOG) = ((eta5 + e1 * OCT4_SOX2 + e2 * OCT4_SOX2 * NANOG) / (1 + eta5 / f + f2 * OCT4_SOX2 + f1 * OCT4_SOX2 * NANOG + f3 * p53)) - (gamma2 * NANOG);
    der(OCT4_SOX2) = (k1c * OCT4 * SOX2 - k2c * OCT4_SOX2) - (k3c * OCT4_SOX2);
    der(Protein) = ((g1 * OCT4_SOX2 + eta7) / (1 + eta7 / f2 + h1 * OCT4_SOX2 + h2 * OCT4_SOX2 * NANOG)) - (gamma4 * Protein);




end BIOMD204;
