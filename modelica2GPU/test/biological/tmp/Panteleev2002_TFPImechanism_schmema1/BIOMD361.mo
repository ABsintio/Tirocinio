
model BIOMD361 "Panteleev2002_TFPImechanism_schmema1"

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



    parameter Real k1_0 = 5.0;
    parameter Real k2_0 = 770.0;
    parameter Real k1_1 = 420.0;
    parameter Real k1_2 = 770.0;
    parameter Real k2_2 = 5.0;
    parameter Real k1_3 = 0.054;
    parameter Real k2_3 = 0.02;
    parameter Real k1_4 = 0.44;
    parameter Real k2_4 = 0.066;
    parameter Real compartment = 1.0;



    Real VIIa_TF;
    Real X;
    Real VIIa_TF_X;
    Real VIIa_TF_Xa;
    Real Xa;
    Real TFPI;
    Real Xa_TFPI;
    Real Xa_TFPI_VIIa_TF;

initial equation
    VIIa_TF = 0.9999997;
    X = 169.9999;
    VIIa_TF_X = 0.0;
    VIIa_TF_Xa = 0.0;
    Xa = 0.0;
    TFPI = 2.399999;
    Xa_TFPI = 0.0;
    Xa_TFPI_VIIa_TF = 0.0;

equation

    der(VIIa_TF) = (compartment * (k1_2 * VIIa_TF_Xa - k2_2 * Xa * VIIa_TF)) - (compartment * (k1_0 * X * VIIa_TF - k2_0 * VIIa_TF_X)) - (compartment * (k1_4 * VIIa_TF * Xa_TFPI - k2_4 * Xa_TFPI_VIIa_TF));
    der(X) =  - (compartment * (k1_0 * X * VIIa_TF - k2_0 * VIIa_TF_X));
    der(VIIa_TF_X) = (compartment * (k1_0 * X * VIIa_TF - k2_0 * VIIa_TF_X)) - (compartment * k1_1 * VIIa_TF_X);
    der(VIIa_TF_Xa) = (compartment * k1_1 * VIIa_TF_X) - (compartment * (k1_2 * VIIa_TF_Xa - k2_2 * Xa * VIIa_TF));
    der(Xa) = (compartment * (k1_2 * VIIa_TF_Xa - k2_2 * Xa * VIIa_TF)) - (compartment * (k1_3 * Xa * TFPI - k2_3 * Xa_TFPI));
    der(TFPI) =  - (compartment * (k1_3 * Xa * TFPI - k2_3 * Xa_TFPI));
    der(Xa_TFPI) = (compartment * (k1_3 * Xa * TFPI - k2_3 * Xa_TFPI)) - (compartment * (k1_4 * VIIa_TF * Xa_TFPI - k2_4 * Xa_TFPI_VIIa_TF));
    der(Xa_TFPI_VIIa_TF) = (compartment * (k1_4 * VIIa_TF * Xa_TFPI - k2_4 * Xa_TFPI_VIIa_TF)) ;




end BIOMD361;
