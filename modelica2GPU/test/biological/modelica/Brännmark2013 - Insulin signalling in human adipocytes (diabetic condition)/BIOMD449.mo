
model BIOMD449 "Brännmark2013 - Insulin signalling in human adipocytes (diabetic condition)"

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



    parameter Real diabetes = 0.15;
    parameter Real k1a = 0.6331;
    parameter Real k1basal = 0.03683;
    parameter Real k1c = 0.8768;
    parameter Real k1d = 31.01;
    parameter Real k1f = 1840.0;
    parameter Real k1g = 1944.0;
    parameter Real k1r = 0.5471;
    parameter Real k2a = 3.227;
    parameter Real k2c = 5759.0;
    parameter Real k2basal = 0.04228;
    parameter Real k2b = 3424.0;
    parameter Real k2d = 280.8;
    parameter Real k2f = 2.913;
    parameter Real k2g = 0.2671;
    parameter Real k3a = 0.001377;
    parameter Real k3b = 0.09876;
    parameter Real k4a = 5790.0;
    parameter Real k4b = 34.8;
    parameter Real k4c = 4.456;
    parameter Real k4e = 42.84;
    parameter Real k4f = 143.6;
    parameter Real k4h = 0.5361;
    parameter Real k5a1 = 1.842;
    parameter Real k5a2 = 0.05506;
    parameter Real k5b = 24.83;
    parameter Real k5d = 1.06;
    parameter Real km5 = 2.65;
    parameter Real k5c = 0.08575;
    parameter Real k6f1 = 2.652;
    parameter Real k6f2 = 36.93;
    parameter Real km6 = 30.54;
    parameter Real n6 = 2.137;
    parameter Real k6b = 65.18;
    parameter Real k7f = 50.98;
    parameter Real k7b = 2286.0;
    parameter Real k8 = 724.2;
    parameter Real glut1 = 7042.0;
    parameter Real k9f1 = 0.1298;
    parameter Real k9b1 = 0.04441;
    parameter Real k9f2 = 3.329;
    parameter Real k9b2 = 31.0;
    parameter Real km9 = 5873.0;
    parameter Real n9 = 0.9855;
    parameter Real scaleIR = 5.202;
    parameter Real scaleIRS1 = 0.3761;
    parameter Real scaleIRS1ds = 14.89;
    parameter Real scaleIRS1307 = 0.05866;
    parameter Real scalePKB308 = 0.04356;
    parameter Real scalePKB473 = 0.013;
    parameter Real scaleAS160 = 0.026656;
    parameter Real scaleGLUCOSE = 0.04051;
    parameter Real scaleS6K = 0.7465;
    parameter Real scaleS6 = 0.1149;
    parameter Real gluc = 0.05;
    parameter Real insulin = 10.0;
    parameter Real cellvolume = 1.0;

    Real measuredIRp(start=0.0);
    Real measuredIRint(start=0.0);
    Real measuredIRS1p(start=0.0);
    Real measuredIRS1307(start=0.0);
    Real measuredPKB308p(start=0.0);
    Real measuredPKB473p(start=0.0);
    Real measuredAS160p(start=0.0);
    Real measuredmTORC1a(start=0.0);
    Real measuredS6Kp(start=0.0);
    Real measuredS6p(start=0.0);
    Real measuredmTORC2a(start=0.0);
    Real glucoseuptake(start=0.0);

    Real IR;
    Real IRp;
    Real IRins;
    Real IRip;
    Real IRi;
    Real IRS1;
    Real IRS1p;
    Real IRS1p307;
    Real IRS1307;
    Real X;
    Real Xp;
    Real PKB;
    Real PKB308p;
    Real PKB473p;
    Real PKB308p473p;
    Real mTORC1;
    Real mTORC1a;
    Real mTORC2;
    Real mTORC2a;
    Real AS160;
    Real AS160p;
    Real GLUT4m;
    Real GLUT4;
    Real S6K;
    Real S6Kp;
    Real S6;
    Real S6p;

initial equation
    IR = 49.9344643421136;
    IRp = 0.000931221500588088;
    IRins = 0.0;
    IRip = 0.011815001204792;
    IRi = 0.0527894351383809;
    IRS1 = 86.2418960059256;
    IRS1p = 0.00095272377217019;
    IRS1p307 = 0.00891531075576947;
    IRS1307 = 13.7482359094757;
    X = 99.9986712896423;
    Xp = 0.00132871035763352;
    PKB = 78.0219322115859;
    PKB308p = 12.2197372437326;
    PKB473p = 9.6963389945784;
    PKB308p473p = 0.061992532897245;
    mTORC1 = 96.927052256569;
    mTORC1a = 3.07294774343092;
    mTORC2 = 99.9045223943705;
    mTORC2a = 0.0954776056294795;
    AS160 = 95.4699007486273;
    AS160p = 4.53009925137289;
    GLUT4m = 4.5880858350243;
    GLUT4 = 45.4119141649757;
    S6K = 99.8296860066098;
    S6Kp = 0.170313993390069;
    S6 = 98.2037625421647;
    S6p = 1.79623745783512;

equation
    measuredIRp = scaleIR * (IRp + IRip);
    measuredIRint = IRi + IRip;
    measuredIRS1p = scaleIRS1 * (IRS1p + IRS1p307);
    measuredIRS1307 = scaleIRS1307 * (IRS1p307 + IRS1307);
    measuredPKB308p = scalePKB308 * (PKB308p + PKB308p473p);
    measuredPKB473p = scalePKB473 * (PKB473p + PKB308p473p);
    measuredAS160p = scaleAS160 * AS160p;
    measuredmTORC1a = mTORC1a;
    measuredS6Kp = scaleS6K * S6Kp;
    measuredS6p = scaleS6 * S6p;
    measuredmTORC2a = mTORC2a;
    glucoseuptake = k8 * GLUT4m * gluc + glut1 * gluc;
    der(IR) = (IRp * k1g) + (IRi * k1r) - (IR * k1a * insulin) - (k1basal * IR);
    der(IRp) = (k1basal * IR) + (IRins * k1c) - (IRp * k1d) - (IRp * k1g);
    der(IRins) = (IR * k1a * insulin) - (IRins * k1c);
    der(IRip) = (IRp * k1d) - (IRip * k1f * Xp);
    der(IRi) = (IRip * k1f * Xp) - (IRi * k1r);
    der(IRS1) = (IRS1p * k2b) + (IRS1307 * k2g) - (IRS1 * k2a * IRip) - (IRS1 * k2basal);
    der(IRS1p) = (IRS1 * k2a * IRip) + (IRS1p307 * k2d) - (IRS1p * k2b) - (IRS1p * k2c * mTORC1a * diabetes);
    der(IRS1p307) = (IRS1p * k2c * mTORC1a * diabetes) - (IRS1p307 * k2d) - (IRS1p307 * k2f);
    der(IRS1307) = (IRS1p307 * k2f) + (IRS1 * k2basal) - (IRS1307 * k2g);
    der(X) = (Xp * k3b) - (X * k3a * IRS1p);
    der(Xp) = (X * k3a * IRS1p) - (Xp * k3b);
    der(PKB) = (k4b * PKB308p) + (k4h * PKB473p) - (k4a * PKB * IRS1p);
    der(PKB308p) = (k4a * PKB * IRS1p) - (k4b * PKB308p) - (k4c * PKB308p * mTORC2a);
    der(PKB473p) = (k4f * PKB308p473p) - (k4e * PKB473p * IRS1p307) - (k4h * PKB473p);
    der(PKB308p473p) = (k4c * PKB308p * mTORC2a) + (k4e * PKB473p * IRS1p307) - (k4f * PKB308p473p);
    der(mTORC1) = (mTORC1a * k5b) - (mTORC1 * (k5a1 * PKB308p473p + k5a2 * PKB308p));
    der(mTORC1a) = (mTORC1 * (k5a1 * PKB308p473p + k5a2 * PKB308p)) - (mTORC1a * k5b);
    der(mTORC2) = (k5d * mTORC2a) - (mTORC2 * k5c * IRip);
    der(mTORC2a) = (mTORC2 * k5c * IRip) - (k5d * mTORC2a);
    der(AS160) = (AS160p * k6b) - (AS160 * (k6f1 * PKB308p473p + k6f2 * pow(PKB473p, n6) / (pow(km6, n6) + pow(PKB473p, n6))));
    der(AS160p) = (AS160 * (k6f1 * PKB308p473p + k6f2 * pow(PKB473p, n6) / (pow(km6, n6) + pow(PKB473p, n6)))) - (AS160p * k6b);
    der(GLUT4m) = (GLUT4 * k7f * AS160p) - (GLUT4m * k7b);
    der(GLUT4) = (GLUT4m * k7b) - (GLUT4 * k7f * AS160p);
    der(S6K) = (S6Kp * k9b1) - (S6K * k9f1 * pow(mTORC1a, n9) / (pow(km9, n9) + pow(mTORC1a, n9)));
    der(S6Kp) = (S6K * k9f1 * pow(mTORC1a, n9) / (pow(km9, n9) + pow(mTORC1a, n9))) - (S6Kp * k9b1);
    der(S6) = (S6p * k9b2) - (S6 * k9f2 * S6Kp);
    der(S6p) = (S6 * k9f2 * S6Kp) - (S6p * k9b2);




end BIOMD449;
