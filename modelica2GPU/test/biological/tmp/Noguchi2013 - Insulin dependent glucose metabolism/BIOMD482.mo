
model BIOMD482 "Noguchi2013 - Insulin dependent glucose metabolism"

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



    parameter Real V1 = 8.97;
    parameter Real K1 = 0.0451;
    parameter Real V2_G6P = 7.71;
    parameter Real K2_G6P = 925.0;
    parameter Real V2_F16P = 0.0839;
    parameter Real K2_F16P = 0.597;
    parameter Real V3 = 0.00229;
    parameter Real K3 = 2.92;
    parameter Real V6 = 0.00247;
    parameter Real K6 = 0.996;
    parameter Real V7 = 2.84e-05;
    parameter Real K7 = 8.43;
    parameter Real V4_PYR = 23.6;
    parameter Real K4_PYR = 56.4;
    parameter Real V4_LAC = 1.2e-06;
    parameter Real K4_LAC = 0.0154;
    parameter Real V8_G6P = 2.02e-05;
    parameter Real K8_G6P = 0.791;
    parameter Real V8_G1P = 0.04;
    parameter Real K8_G1P = 69.8;
    parameter Real V5 = 0.00112;
    parameter Real K5 = 0.228;
    parameter Real V9_G1P = 0.488;
    parameter Real K9_G1P = 2.69;
    parameter Real V9_GLY = 1.02e-06;
    parameter Real K9_GLY = 0.000623;
    parameter Real k3 = 112.76;
    parameter Real k4 = 1.9448;
    parameter Real s1 = 1.722;
    parameter Real s2 = 214.7;
    parameter Real s3 = 46.54;
    parameter Real s4 = 1.19;
    parameter Real k1_PEPCK = 0.12225;
    parameter Real k2_PEPCK = 0.0045985;
    parameter Real k3_PEPCK = 486.28;
    parameter Real k4_PEPCK = 0.0046101;
    parameter Real k5_PEPCK = 0.00010958;
    parameter Real k6_PEPCK = 0.0018592;
    parameter Real param1 = 5.5702;
    parameter Real param2 = 2.3969;
    parameter Real param3 = 0.020934;
    parameter Real param4 = 1.214e-05;
    parameter Real param5 = 0.2751;
    parameter Real param6 = 0.0072509;
    parameter Real param7 = 758.12;
    parameter Real param8 = 0.91758;
    parameter Real param9 = 0.041292;
    parameter Real param10 = 0.00013032;
    parameter Real param11 = 0.000192;
    parameter Real param12 = 0.029311;
    parameter Real param13 = 4.4307e-05;
    parameter Real param14 = 0.35211;
    parameter Real param15 = 3.1385e-05;
    parameter Real param16 = 0.0095934;
    parameter Real proIRS = 888.77;
    parameter Real insulin = 100.0;
    parameter Real default = 1.0;
    parameter Real Vex = 1.0;
    parameter Real Vin = 1.0;



    Real GP;
    Real pGP;
    Real mRNA;
    Real PEPCK;
    Real IRS;
    Real p1IRS;
    Real p2IRS;
    Real p1p2IRS;
    Real Akt;
    Real pAkt;
    Real mTOR;
    Real pmTOR;
    Real Foxo;
    Real pFoxo;
    Real PYRout;
    Real GLCex;
    Real F16P;
    Real PYRin;
    Real LAC;
    Real OAA;
    Real GLY;
    Real G1P;
    Real G6P;

initial equation
    GP = 0.4726;
    pGP = 0.1723;
    mRNA = 2.905;
    PEPCK = 0.7686;
    IRS = 888.77;
    p1IRS = 0.0;
    p2IRS = 0.0;
    p1p2IRS = 0.0;
    Akt = 1.1182;
    pAkt = 0.0;
    mTOR = 880.25;
    pmTOR = 0.0;
    Foxo = 1.069e-05;
    pFoxo = 0.0;
    PYRout = 137.5;
    GLCex = 114.9;
    F16P = 9.571;
    PYRin = 0.9872;
    LAC = 1001.0;
    OAA = 0.0022;
    GLY = 4.8248;
    G1P = 5.303;
    G6P = 0.5188;

equation

    der(GP) = (pGP * G6P * k4) - (GP * k3);
    der(pGP) = ((V9_G1P * G1P / K9_G1P - (1 + s2 * pGP) * V9_GLY * GLY / K9_GLY) / (1 + G1P / K9_G1P + GLY / K9_GLY)) + (GP * k3) - ((V9_G1P * G1P / K9_G1P - (1 + s2 * pGP) * V9_GLY * GLY / K9_GLY) / (1 + G1P / K9_G1P + GLY / K9_GLY)) - (pGP * G6P * k4);
    der(mRNA) = (Foxo * k3_PEPCK - mRNA * k4_PEPCK) + (k5_PEPCK * mRNA - k6_PEPCK * PEPCK) - (k5_PEPCK * mRNA - k6_PEPCK * PEPCK);
    der(PEPCK) = ((1 + s3 * PEPCK) * V7 * OAA / (K7 + OAA)) + (k5_PEPCK * mRNA - k6_PEPCK * PEPCK) - ((1 + s3 * PEPCK) * V7 * OAA / (K7 + OAA));
    der(IRS) = ((proIRS - IRS) * param1) + (p2IRS * param8) - (IRS * insulin * param2 - p1IRS * param3) - (IRS * pmTOR * param7);
    der(p1IRS) = (IRS * insulin * param2 - p1IRS * param3) + (p1p2IRS * param6) + (p1IRS * Akt * param13) - (p1IRS * param4) - (p1IRS * pmTOR * param5) - (p1IRS * Akt * param13);
    der(p2IRS) = (IRS * pmTOR * param7) - (p2IRS * param8) - (p2IRS * param9) - (p2IRS * insulin * param10 - p1p2IRS * param11);
    der(p1p2IRS) = (p1IRS * pmTOR * param5) + (p2IRS * insulin * param10 - p1p2IRS * param11) - (p1p2IRS * param6) - (p1p2IRS * param12);
    der(Akt) = (pAkt * param14) - (p1IRS * Akt * param13);
    der(pAkt) = (((1 + s1 * pAkt) * V2_G6P * G6P / K2_G6P - V2_F16P * F16P / K2_F16P) / (1 + G6P / K2_G6P + F16P / K2_F16P)) + (((1 + s4 * pAkt) * V8_G6P * G6P / K8_G6P - V8_G1P * G1P / K8_G1P) / (1 + G6P / K8_G6P + G1P / K8_G1P)) + (p1IRS * Akt * param13) + (mTOR * pAkt * param15) + (pAkt * Foxo * k1_PEPCK) - (((1 + s1 * pAkt) * V2_G6P * G6P / K2_G6P - V2_F16P * F16P / K2_F16P) / (1 + G6P / K2_G6P + F16P / K2_F16P)) - (((1 + s4 * pAkt) * V8_G6P * G6P / K8_G6P - V8_G1P * G1P / K8_G1P) / (1 + G6P / K8_G6P + G1P / K8_G1P)) - (pAkt * param14) - (mTOR * pAkt * param15) - (pAkt * Foxo * k1_PEPCK);
    der(mTOR) = (pmTOR * param16) - (mTOR * pAkt * param15);
    der(pmTOR) = (p1IRS * pmTOR * param5) + (IRS * pmTOR * param7) + (mTOR * pAkt * param15) - (p1IRS * pmTOR * param5) - (IRS * pmTOR * param7) - (pmTOR * param16);
    der(Foxo) = (Foxo * k3_PEPCK - mRNA * k4_PEPCK) + (pFoxo * k2_PEPCK) - (pAkt * Foxo * k1_PEPCK) - (Foxo * k3_PEPCK - mRNA * k4_PEPCK);
    der(pFoxo) = (pAkt * Foxo * k1_PEPCK) - (pFoxo * k2_PEPCK);
    der(PYRout) =  - ((V5 * PYRout / K5 - V5 * PYRin / K5) / (1 + PYRout / K5 + PYRin / K5));
    der(GLCex) =  - ((V1 * (GLCex / K1) - V1 * (G6P / K1)) / (1 + GLCex / K1 + G6P / K1));
    der(F16P) = (((1 + s1 * pAkt) * V2_G6P * G6P / K2_G6P - V2_F16P * F16P / K2_F16P) / (1 + G6P / K2_G6P + F16P / K2_F16P)) + ((1 + s3 * PEPCK) * V7 * OAA / (K7 + OAA)) - (V3 * F16P / (K3 + F16P));
    der(PYRin) = (V3 * F16P / (K3 + F16P)) + ((V5 * PYRout / K5 - V5 * PYRin / K5) / (1 + PYRout / K5 + PYRin / K5)) - ((V4_PYR * PYRin / K4_PYR - V4_LAC * LAC / K4_LAC) / (1 + PYRin / K4_PYR + LAC / K4_LAC)) - (V6 * PYRin / (K6 + PYRin));
    der(LAC) = ((V4_PYR * PYRin / K4_PYR - V4_LAC * LAC / K4_LAC) / (1 + PYRin / K4_PYR + LAC / K4_LAC)) ;
    der(OAA) = (V6 * PYRin / (K6 + PYRin)) - ((1 + s3 * PEPCK) * V7 * OAA / (K7 + OAA));
    der(GLY) = ((V9_G1P * G1P / K9_G1P - (1 + s2 * pGP) * V9_GLY * GLY / K9_GLY) / (1 + G1P / K9_G1P + GLY / K9_GLY)) ;
    der(G1P) = (((1 + s4 * pAkt) * V8_G6P * G6P / K8_G6P - V8_G1P * G1P / K8_G1P) / (1 + G6P / K8_G6P + G1P / K8_G1P)) - ((V9_G1P * G1P / K9_G1P - (1 + s2 * pGP) * V9_GLY * GLY / K9_GLY) / (1 + G1P / K9_G1P + GLY / K9_GLY));
    der(G6P) = ((V1 * (GLCex / K1) - V1 * (G6P / K1)) / (1 + GLCex / K1 + G6P / K1)) + (pGP * G6P * k4) - (((1 + s1 * pAkt) * V2_G6P * G6P / K2_G6P - V2_F16P * F16P / K2_F16P) / (1 + G6P / K2_G6P + F16P / K2_F16P)) - (((1 + s4 * pAkt) * V8_G6P * G6P / K8_G6P - V8_G1P * G1P / K8_G1P) / (1 + G6P / K8_G6P + G1P / K8_G1P)) - (pGP * G6P * k4);




end BIOMD482;
