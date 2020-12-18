
model BIOMD295 "Akman2008_Circadian_Clock_Model1"

    function pow
        input  Real x;
        input  Real power;
        output Real y;
        algorithm
            y := x^power;
    end pow;

    parameter Real vs = 1.2236333742524;
    parameter Real ki = 5.04543346939346;
    parameter Real n = 6.3958;
    parameter Real vm = 0.885376326739544;
    parameter Real km = 0.0846004096489894;
    parameter Real ks = 0.313846476998244;
    parameter Real vd = 0.161111487362275;
    parameter Real k1n = 0.222636680929471;
    parameter Real k2n = 0.331484503209686;
    parameter Real ksp = 0.294840169149965;
    parameter Real vdp = 0.139750313979272;
    parameter Real k1np = 0.272306464006464;
    parameter Real k2np = 0.295420749525813;
    parameter Real amp = 0.0;
    parameter Real dawn = 6.0;
    parameter Real dusk = 18.0;
    parameter Real nucleus = 1.0;
    parameter Real cytoplasm = 1.0;

    Real Tot_FRQ(start=0.0);

    Real FC;
    Real FCp;
    Real FN;
    Real FNp;
    Real MF;

initial equation
    FC = 2.46246334204771;
    FCp = 2.7123114824279;
    FN = 1.84400040515923;
    FNp = 2.74224951500791;
    MF = 0.725579308537909;

equation
    Tot_FRQ = FC + FCp + FN + FNp;
    der(FC) = (ks * MF) - (vd * FC) - (k1n * FC - k2n * FN);
    der(FCp) = (ksp * MF) - (vdp * FCp) - (k1np * FCp - k2np * FNp);
    der(FN) = (k1n * FC - k2n * FN) ;
    der(FNp) = (k1np * FCp - k2np * FNp) ;
    der(MF) = ((vs + amp * ((1 + tanh(2 * (time - 24 * floor(time / 24) - dawn))) * (1 - tanh(2 * (time - 24 * floor(time / 24) - dusk))) / 4)) * ki^n / (ki^n + (FN + FNp)^n)) - (vm * MF / (km + MF));




end BIOMD295;
