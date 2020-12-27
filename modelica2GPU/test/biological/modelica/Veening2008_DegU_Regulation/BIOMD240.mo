
model BIOMD240 "Veening2008_DegU_Regulation"

    function pow
        input  Real x;
        input  Real power;
        output Real y;
        algorithm
            y := x^power;
    end pow;



    parameter Real Imax = 0.048;
    parameter Real Io = 0.004;
    parameter Real Irmax = 0.4;
    parameter Real Iro = 0.02;
    parameter Real K = 7.0;
    parameter Real Kdim = 12.0;
    parameter Real Kr = 7.0;
    parameter Real Kr1 = 7.0;
    parameter Real R = 7.0;
    parameter Real V = 1.0;
    parameter Real ka = 0.025;
    parameter Real kd = 0.1;
    parameter Real kdeg = 0.0004;
    parameter Real kdegA = 0.0001;
    parameter Real kdegm = 0.01;
    parameter Real ksyn = 0.04;
    parameter Real ksyn1 = 0.04;
    parameter Real p = 0.15;
    parameter Real q = 0.004;
    parameter Real ratio = 0.026666667;
    parameter Real univ = 1.0;

    Real kdephos(start=0.0);
    Real kphos(start=0.0);
    Real DegU_Total(start=0.0);

    Real AprE;
    Real DegU;
    Real DegUP;
    Real Dim;
    Real mAprE;
    Real mDegU;

initial equation
    AprE = 0.0;
    DegU = 10.0;
    DegUP = 0.0;
    Dim = 0.0;
    mAprE = 0.0;
    mDegU = 0.0;

equation
    kphos = ratio * p;
    kdephos = q / ratio;
    DegU_Total = DegU + DegUP + 2 * Dim;
    der(AprE) = (ksyn * mAprE * univ) - (kdeg * AprE);
    der(DegU) = (kdephos * DegUP) + (ksyn1 * mDegU * univ) - (kdeg * DegU * univ) - (kphos * DegU);
    der(DegUP) = (2.0 * kd * Dim) + (kphos * DegU) - (2.0 * ka * DegUP^2) - (kdeg * DegUP * univ) - (kdephos * DegUP);
    der(Dim) = (ka * DegUP^2) - (kd * Dim) - (kdeg * Dim * univ);
    der(mAprE) = ((Kr1 / (R + Kr1)) * (Iro * (Dim * univ / Kdim + 1) / (1 + Dim * univ / Kdim + (Dim * univ)^2 / Kdim^2 + R / Kr) + Irmax * (Dim * univ)^2 / (Kdim^2 * (1 + Dim * univ / Kdim + (Dim * univ)^2 / Kdim^2 + R / Kr)))) - (kdegm * mAprE);
    der(mDegU) = (Io * K / (Dim * univ + K) + Imax * Dim * univ / (Dim * univ + K)) - (kdegm * mDegU);




end BIOMD240;
