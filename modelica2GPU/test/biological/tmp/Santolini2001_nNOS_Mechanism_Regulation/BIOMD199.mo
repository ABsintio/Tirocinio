
model BIOMD199 "Santolini2001_nNOS_Mechanism_Regulation"

    function pow
        input  Real x;
        input  Real power;
        output Real y;
        algorithm
            y := x^power;
    end pow;

    parameter Real k1 = 2.6;
    parameter Real k2 = 0.9;
    parameter Real k3 = 26.0;
    parameter Real k4 = 2.6;
    parameter Real k5 = 0.9;
    parameter Real k6 = 26.0;
    parameter Real k7 = 5.0;
    parameter Real k8 = 2.6;
    parameter Real k9 = 0.0001;
    parameter Real k10 = 0.0013;
    parameter Real cytosol = 1.0;



    Real FeIII;
    Real FeII;
    Real FeII_O2;
    Real FeIII_star;
    Real FeII_star;
    Real FeII_star_O2;
    Real FeIII_NO;
    Real FeII_NO;
    Real NADPH;
    Real O2;
    Real citrulline;
    Real NO3;
    Real NO;
    Real NADPplus;
    Real FeIII_t;

initial equation
    FeIII = 1.0;
    FeII = 0.0;
    FeII_O2 = 0.0;
    FeIII_star = 0.0;
    FeII_star = 0.0;
    FeII_star_O2 = 0.0;
    FeIII_NO = 0.0;
    FeII_NO = 0.0;
    NADPH = 40.0;
    O2 = 140.0;
    citrulline = 0.0;
    NO3 = 0.0;
    NO = 0.0;
    NADPplus = 0.0;

equation
    FeIII_t = FeIII + FeIII_star;
    der(FeIII) = (cytosol * k7 * FeIII_NO) + (cytosol * k10 * FeII_NO * O2) - (cytosol * k1 * FeIII);
    der(FeII) = (cytosol * k1 * FeIII) + (cytosol * k9 * FeII_NO) - (cytosol * k2 * FeII * O2);
    der(FeII_O2) = (cytosol * k2 * FeII * O2) - (cytosol * k3 * FeII_O2);
    der(FeIII_star) = (cytosol * k3 * FeII_O2) - (cytosol * k4 * FeIII_star);
    der(FeII_star) = (cytosol * k4 * FeIII_star) - (cytosol * k5 * FeII_star * O2);
    der(FeII_star_O2) = (cytosol * k5 * FeII_star * O2) - (cytosol * k6 * FeII_star_O2);
    der(FeIII_NO) = (cytosol * k6 * FeII_star_O2) - (cytosol * k7 * FeIII_NO) - (cytosol * k8 * FeIII_NO);
    der(FeII_NO) = (cytosol * k8 * FeIII_NO) - (cytosol * k9 * FeII_NO) - (cytosol * k10 * FeII_NO * O2);
    der(NADPH) = 0.0;
    der(O2) = 0.0;
    der(citrulline) = 0.0;
    der(NO3) = 0.0;
    der(NO) = 0.0;
    der(NADPplus) = 0.0;




end BIOMD199;
