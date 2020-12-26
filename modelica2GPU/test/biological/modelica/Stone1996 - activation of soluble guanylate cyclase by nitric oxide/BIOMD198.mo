
model BIOMD198 "Stone1996 - activation of soluble guanylate cyclase by nitric oxide"

    function pow
        input  Real x;
        input  Real power;
        output Real y;
        algorithm
            y := x^power;
    end pow;



    parameter Real k1 = 700.0;
    parameter Real k2 = 800.0;
    parameter Real k3 = 850.0;
    parameter Real k4 = 20.0;
    parameter Real k5 = 0.2;
    parameter Real k6 = 700.0;
    parameter Real k7 = 800.0;
    parameter Real k8 = 850.0;
    parameter Real k9 = 5.0;
    parameter Real k10 = 25.0;
    parameter Real k11 = 1.6;
    parameter Real k12 = 0.02;
    parameter Real e5c = 0.11;
    parameter Real e5c_NO = 0.025;
    parameter Real e6c_NO = 0.064;
    parameter Real cytosol = 1.0;

    Real ext(start=0.0);

    Real NO;
    Real sGCfast;
    Real NO_sGCfast;
    Real NO_sGCfast_6coord;
    Real NO_sGCfast_5coord;
    Real sGCslow;
    Real NO_sGCslow;
    Real NO_sGCslow_6coord;
    Real NO_sGCslow_6coord_NO_int;
    Real NO_sGCslow_5coord;
    Real NO_sGC_5coord_tot;
    Real sGC_inact_tot;

initial equation
    NO = 0.5;
    sGCfast = 0.112;
    NO_sGCfast = 0.0;
    NO_sGCfast_6coord = 0.0;
    NO_sGCfast_5coord = 0.0;
    sGCslow = 0.288;
    NO_sGCslow = 0.0;
    NO_sGCslow_6coord = 0.0;
    NO_sGCslow_6coord_NO_int = 0.0;
    NO_sGCslow_5coord = 0.0;

equation
    NO_sGC_5coord_tot = NO_sGCfast_5coord + NO_sGCslow_5coord;
    sGC_inact_tot = sGCfast + NO_sGCfast + NO_sGCfast_6coord + sGCslow + NO_sGCslow + NO_sGCslow_6coord + NO_sGCslow_6coord_NO_int;
    ext = e5c * (sGCfast + NO_sGCfast + sGCslow + NO_sGCslow) + e5c_NO * (NO_sGCfast_5coord + NO_sGCslow_5coord) + e6c_NO * (NO_sGCfast_6coord + NO_sGCslow_6coord + NO_sGCslow_6coord_NO_int);
    der(NO) = 0.0;
    der(sGCfast) =  - (cytosol * (k1 * NO * sGCfast - k2 * NO_sGCfast));
    der(NO_sGCfast) = (cytosol * (k1 * NO * sGCfast - k2 * NO_sGCfast)) - (k3 * cytosol * NO_sGCfast);
    der(NO_sGCfast_6coord) = (k3 * cytosol * NO_sGCfast) - (cytosol * (k4 * NO_sGCfast_6coord - k5 * NO_sGCfast_5coord));
    der(NO_sGCfast_5coord) = (cytosol * (k4 * NO_sGCfast_6coord - k5 * NO_sGCfast_5coord)) ;
    der(sGCslow) =  - (cytosol * (k6 * NO * sGCslow - k7 * NO_sGCslow));
    der(NO_sGCslow) = (cytosol * (k6 * NO * sGCslow - k7 * NO_sGCslow)) - (k8 * cytosol * NO_sGCslow);
    der(NO_sGCslow_6coord) = (k8 * cytosol * NO_sGCslow) - (cytosol * (k9 * NO * NO_sGCslow_6coord - k10 * NO_sGCslow_6coord_NO_int));
    der(NO_sGCslow_6coord_NO_int) = (cytosol * (k9 * NO * NO_sGCslow_6coord - k10 * NO_sGCslow_6coord_NO_int)) - (cytosol * (k11 * NO_sGCslow_6coord_NO_int - k12 * NO_sGCslow_5coord));
    der(NO_sGCslow_5coord) = (cytosol * (k11 * NO_sGCslow_6coord_NO_int - k12 * NO_sGCslow_5coord)) ;




end BIOMD198;
