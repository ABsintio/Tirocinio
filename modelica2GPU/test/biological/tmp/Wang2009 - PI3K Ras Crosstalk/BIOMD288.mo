
model BIOMD288 "Wang2009 - PI3K Ras Crosstalk"

    function pow
        input  Real x;
        input  Real power;
        output Real y;
        algorithm
            y := x^power;
    end pow;

    parameter Real L = 1.0;
    parameter Real KDL = 1.5;
    parameter Real kxR0 = 0.3;
    parameter Real kminusx = 0.007;
    parameter Real ke = 0.2;
    parameter Real kt = 0.005;
    parameter Real alphaPI3K = 80.0;
    parameter Real kappaPI3K = 0.3;
    parameter Real k3PI = 1.0;
    parameter Real KGR = 495.0;
    parameter Real KGP = 5.09;
    parameter Real kRas = 1.0;
    parameter Real Gamma = 0.1;
    parameter Real kdx1 = 0.745;
    parameter Real kdx2 = 2.85;
    parameter Real Kx2 = 6.77;
    parameter Real VmaxOVERKMx11 = 1.18;
    parameter Real KMx11 = 30.3;
    parameter Real VmaxOVERKMx21 = 0.405;
    parameter Real KMx21 = 13.7;
    parameter Real VmaxOVERKMyph1 = 1.65;
    parameter Real KMyph1 = 23.0;
    parameter Real VmaxOVERKMx12 = 3.45;
    parameter Real KMx12 = 18.6;
    parameter Real VmaxOVERKMx22 = 1.09;
    parameter Real KMx22 = 9.59;
    parameter Real VmaxOVERKMyph2 = 4.2;
    parameter Real KMyph2 = 7.99;
    parameter Real VmaxOVERKMy1 = 6.57;
    parameter Real KMy1 = 9.91;
    parameter Real VmaxOVERKMzph1 = 0.167;
    parameter Real KMzph1 = 8.27;
    parameter Real VmaxOVERKMy2 = 31.9;
    parameter Real KMy2 = 8.81;
    parameter Real VmaxOVERKMzph2 = 0.228;
    parameter Real KMzph2 = 31.5;
    parameter Real kFBf = 0.976;
    parameter Real Zf = 0.272;
    parameter Real n = 1.03;
    parameter Real Kf = 3.76;
    parameter Real kdw = 0.0333;
    parameter Real kFBph = 2.34;
    parameter Real Wph = 0.385;
    parameter Real p = 1.98;
    parameter Real Kph = 4.64;
    parameter Real cell = 1.0;



    Real sumrc1;
    Real r;
    Real c1;
    Real c2;
    Real ePI3K;
    Real m3PI;
    Real eGEF;
    Real mRas;
    Real x1;
    Real x2;
    Real y;
    Real yp;
    Real ypp;
    Real z;
    Real zp;
    Real zpp;
    Real fGEF;
    Real w;
    Real eph;

initial equation
    sumrc1 = 1.0;
    c2 = 0.0;
    m3PI = 0.0;
    mRas = 0.0;
    x1 = 0.0;
    x2 = 0.0;
    y = 1.0;
    ypp = 0.0;
    z = 1.0;
    zpp = 0.0;
    fGEF = 1.0;
    w = 0.0;
    eph = 1.0;

equation
    r = KDL * sumrc1 / (KDL + L);
    c1 = L * sumrc1 / (KDL + L);
    ePI3K = (1 + kappaPI3K + 2 * alphaPI3K * c2 - pow(pow(1 + kappaPI3K + 2 * alphaPI3K * c2, 2) - 8 * alphaPI3K * c2, 0.5)) / 2;
    eGEF = (KGR * c2 + KGP * m3PI) / (1 + KGR * c2 + KGP * m3PI) * fGEF;
    yp = 1 - y - ypp;
    zp = 1 - z - zpp;
    der(sumrc1) = (kt * (1 - sumrc1) + 2 * (kminusx * c2 - kxR0 * c1^2)) ;
    der(c2) = (kxR0 * c1^2 - (kminusx + ke) * c2) ;
    der(m3PI) = (k3PI * (ePI3K - m3PI)) ;
    der(mRas) = (kRas * ((1 + Gamma) * eGEF - (1 + Gamma * eGEF) * mRas)) ;
    der(x1) = (kdx1 * (mRas - x1 / (1 + y / KMx11 + yp / KMx12))) ;
    der(x2) = (kdx2 * ((1 + Kx2) * m3PI / (1 + Kx2 * m3PI) - x2 / (1 + y / KMx21 + yp / KMx22))) ;
    der(y) = (VmaxOVERKMyph1 * yp / (1 + yp / KMyph1 + ypp / KMyph2) - VmaxOVERKMx11 * x1 * y / (1 + y / KMx11 + yp / KMx12) - VmaxOVERKMx21 * x2 * y / (1 + y / KMx21 + yp / KMx22)) ;
    der(ypp) = (VmaxOVERKMx12 * x1 * yp / (1 + y / KMx11 + yp / KMx12) + VmaxOVERKMx22 * x2 * yp / (1 + y / KMx21 + yp / KMx22) - VmaxOVERKMyph2 * ypp / ((1 + z / KMy1 + zp / KMy2) * (1 + yp / KMyph1) + ypp / KMyph2)) ;
    der(z) = (VmaxOVERKMzph1 * eph * zp / (1 + zp / KMzph1 + zpp / KMzph2) - VmaxOVERKMy1 * ypp * z / (1 + z / KMy1 + zp / KMy2)) ;
    der(zpp) = (VmaxOVERKMy2 * ypp * zp / (1 + z / KMy1 + zp / KMy2) - VmaxOVERKMzph2 * eph * zpp / (1 + zp / KMzph1 + zpp / KMzph2)) ;
    der(fGEF) = (kFBf * ((1 - fGEF) / Kf - (zpp^n / (Zf^n + zpp^n)) * fGEF)) ;
    der(w) = (kdw * (zpp - w)) ;
    der(eph) = (kFBph * (w^p / (Wph^p + w^p) - (eph - 1) / Kph)) ;




end BIOMD288;
