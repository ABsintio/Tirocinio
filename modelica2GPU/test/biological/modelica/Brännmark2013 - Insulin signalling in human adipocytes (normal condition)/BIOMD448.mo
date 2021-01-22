
model BIOMD448 "Brännmark2013 - Insulin signalling in human adipocytes (normal condition)"

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



    parameter Real diabetes = 1.0;
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
    parameter Real scaleIR = 5.2022;
    parameter Real scaleIRS1 = 0.37615;
    parameter Real scaleIRS1ds = 14.892;
    parameter Real scaleIRS1307 = 0.058663;
    parameter Real scalePKB308 = 0.043564;
    parameter Real scalePKB473 = 0.012996;
    parameter Real scaleAS160 = 0.026656;
    parameter Real scaleGLUCOSE = 0.040513;
    parameter Real scaleS6K = 0.74654;
    parameter Real scaleS6 = 0.11494;
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
    IR = 99.8737104842408;
    IRp = 0.00186253217635894;
    IRins = 0.0;
    IRip = 0.0188430465801578;
    IRi = 0.105583925473107;
    IRS1 = 82.9671997523599;
    IRS1p = 0.00119481841136737;
    IRS1p307 = 0.327454355438396;
    IRS1307 = 16.7041510257561;
    X = 99.9983336594667;
    Xp = 0.00166634053318549;
    PKB = 68.1806649661901;
    PKB308p = 13.2964849666951;
    PKB473p = 16.8171941560617;
    PKB308p473p = 1.70566051030056;
    mTORC1 = 86.5002472240273;
    mTORC1a = 13.4997527759726;
    mTORC2 = 99.8478148461591;
    mTORC2a = 0.152185153840861;
    AS160 = 83.8141018591099;
    AS160p = 16.1858981408903;
    GLUT4m = 26.523878746229;
    GLUT4 = 73.476121253771;
    S6K = 99.2731987219547;
    S6Kp = 0.72680127804522;
    S6 = 92.7596420796038;
    S6p = 7.24035792039603;

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




end BIOMD448;
