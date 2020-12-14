
model BIOMD201 "Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF"

    function pow
        input  Real x;
        input  Real power;
        output Real y;
        algorithm
            y := x^power;
    end pow;

    parameter Real KdN = 1.4;
    parameter Real vsN = 0.23;
    parameter Real vdN = 2.82;
    parameter Real KdNa = 0.001;
    parameter Real VdNa = 0.01;
    parameter Real kt1 = 0.1;
    parameter Real kt2 = 0.1;
    parameter Real KdNan = 0.001;
    parameter Real VdNan = 0.1;
    parameter Real KdMF = 0.768;
    parameter Real KIG1 = 2.5;
    parameter Real vsF = 3.0;
    parameter Real vmF = 1.92;
    parameter Real KA = 0.05;
    parameter Real KdF = 0.37;
    parameter Real vdF = 0.39;
    parameter Real ksF = 0.3;
    parameter Real kd1 = 0.0;
    parameter Real vsB = 0.087;
    parameter Real kd2 = 7.062;
    parameter Real v0 = 0.06;
    parameter Real vMB = 1.64;
    parameter Real vmd = 0.8;
    parameter Real KaB = 0.7;
    parameter Real KaXa = 0.05;
    parameter Real Kmd = 0.48;
    parameter Real n = 2.0;
    parameter Real m = 2.0;
    parameter Real vMXa = 0.5;
    parameter Real ksAx = 0.02;
    parameter Real vdAx = 0.6;
    parameter Real KdAx = 0.63;
    parameter Real d1 = 0.1;
    parameter Real a1 = 1.8;
    parameter Real K1 = 0.28;
    parameter Real K2 = 0.03;
    parameter Real kt3 = 0.7;
    parameter Real kt4 = 1.5;
    parameter Real ksDusp = 0.5;
    parameter Real vdDusp = 2.0;
    parameter Real KdDusp = 0.5;
    parameter Real kcDusp = 1.35;
    parameter Real KaFgf = 0.5;
    parameter Real KaRas = 0.103;
    parameter Real KdRas = 0.1;
    parameter Real KdErk = 0.05;
    parameter Real KaErk = 0.05;
    parameter Real KaX = 0.05;
    parameter Real KIF = 0.5;
    parameter Real KID = 0.5;
    parameter Real KdX = 0.05;
    parameter Real KaMDusp = 0.5;
    parameter Real KdMDusp = 0.5;
    parameter Real q = 2.0;
    parameter Real r = 2.0;
    parameter Real kc = 3.45;
    parameter Real j = 2.0;
    parameter Real p = 2.0;
    parameter Real epsilon = 0.3;
    parameter Real theta = 1.5;
    parameter Real eta = 0.3;
    parameter Real VMsMDusp = 0.9;
    parameter Real VMdMDusp = 0.5;
    parameter Real VMK = 5.08;
    parameter Real VMP = 1.0;
    parameter Real VMaRas = 4.968;
    parameter Real VMdRas = 0.41;
    parameter Real VMaErk = 3.3;
    parameter Real VMaX = 1.6;
    parameter Real VMdX = 0.5;
    parameter Real cytosol = 1.0;

    Real vsFK(start=0.0);

    Real N;
    Real Na;
    Real Nan;
    Real MF;
    Real F;
    Real Bp;
    Real BN;
    Real A;
    Real K;
    Real B;
    Real MAx;
    Real Rasa;
    Real ERKa;
    Real Xa;
    Real MDusp;
    Real Dusp;
    Real Rasi;
    Real ERKi;
    Real Xi;
    Real Rast;
    Real ERKt;
    Real Xt;
    Real D;
    Real AK;
    Real Kt;
    Real Fgf;

initial equation
    N = 0.5;
    Na = 0.2;
    Nan = 0.0;
    MF = 0.1;
    F = 0.001;
    Bp = 0.1;
    BN = 0.001;
    A = 0.1;
    K = 3.0;
    B = 0.1;
    MAx = 0.1;
    Rasa = 0.5;
    ERKa = 0.2;
    Xa = 0.1;
    MDusp = 0.1;
    Dusp = 0.1;
    Rast = 2.0;
    ERKt = 2.0;
    Xt = 2.0;
    D = 2.0;
    Kt = 3.0;
    Fgf = 1.0;

equation
    vsFK = vsF * (KIG1 / (KIG1 + K));
    AK = Kt - K;
    Rasi = Rast - Rasa;
    ERKi = ERKt - ERKa;
    Xi = Xt - Xa;
    der(N) = (cytosol * epsilon * vsN) - (epsilon * cytosol * vdN * N / (KdN + N)) - (epsilon * cytosol * kc * N * KIF^j / (KIF^j + F^j));
    der(Na) = (epsilon * cytosol * kc * N * KIF^j / (KIF^j + F^j)) - (epsilon * cytosol * VdNa * Na / (KdNa + Na)) - (epsilon * cytosol * (kt1 * Na - kt2 * Nan));
    der(Nan) = (epsilon * cytosol * (kt1 * Na - kt2 * Nan)) - (epsilon * cytosol * VdNan * Nan / (KdNan + Nan));
    der(MF) = (epsilon * cytosol * vsFK * Nan^p / (KA^p + Nan^p)) - (epsilon * cytosol * vmF * MF / (KdMF + MF));
    der(F) = (epsilon * cytosol * ksF * MF) - (epsilon * cytosol * vdF * F / (KdF + F));
    der(Bp) = (((theta * cytosol * VMK * KID / (KID + D)) * B / (K1 + B)) * AK / Kt) - (theta * cytosol * VMP * Bp / (K2 + Bp)) - (theta * cytosol * kd2 * Bp);
    der(BN) =  - (theta * cytosol * (kt4 * BN - kt3 * B));
    der(A) = (theta * cytosol * (d1 * AK - a1 * A * K)) + (theta * cytosol * ksAx * MAx) - (theta * cytosol * vdAx * A / (KdAx + A));
    der(K) = (theta * cytosol * (d1 * AK - a1 * A * K)) ;
    der(B) = (theta * cytosol * vsB) + (theta * cytosol * VMP * Bp / (K2 + Bp)) + (theta * cytosol * (kt4 * BN - kt3 * B)) - (theta * cytosol * kd1 * B) - (((theta * cytosol * VMK * KID / (KID + D)) * B / (K1 + B)) * AK / Kt);
    der(MAx) = (theta * cytosol * v0) + (theta * cytosol * (vMB * BN^n / (KaB^n + BN^n))) + (theta * cytosol * (vMXa * Xa^m / (KaXa^m + Xa^m))) - (theta * cytosol * vmd * MAx / (Kmd + MAx));
    der(Rasa) = ((eta * cytosol * VMaRas * Fgf^r / (KaFgf^r + Fgf^r)) * Rasi / (KaRas + Rasi)) - (eta * cytosol * VMdRas * Rasa / (KdRas + Rasa));
    der(ERKa) = ((eta * cytosol * VMaErk * Rasa / Rast) * ERKi / (KaErk + ERKi)) - (eta * cytosol * kcDusp * Dusp * ERKa / (KdErk + ERKa));
    der(Xa) = ((eta * cytosol * VMaX * ERKa / ERKt) * Xi / (KaX + Xi)) - (eta * cytosol * VMdX * Xa / (KdX + Xa));
    der(MDusp) = (eta * cytosol * VMsMDusp * Xa^q / (KaMDusp^q + Xa^q)) - (eta * cytosol * VMdMDusp * MDusp / (KdMDusp + MDusp));
    der(Dusp) = (eta * cytosol * ksDusp * MDusp) - (eta * cytosol * vdDusp * Dusp / (KdDusp + Dusp));
    der(Rast) = 0.0;
    der(ERKt) = 0.0;
    der(Xt) = 0.0;
    der(D) = 0.0;
    der(Kt) = 0.0;
    der(Fgf) = 0.0;




end BIOMD201;
