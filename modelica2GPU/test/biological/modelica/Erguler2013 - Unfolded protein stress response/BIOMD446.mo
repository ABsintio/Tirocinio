
model BIOMD446 "Erguler2013 - Unfolded protein stress response"

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
    
    
    function sqrt
        input Real x;
        output Real y;
        algorithm
            y := x^(1/2);
    end sqrt;


    function EMM
        	input Real St;
	input Real Et;
	input Real Km;
	input Real kcat;
        output Real y;
    algorithm
        y :=  0.5 * kcat * (St + Et + Km - sqrt((St + Et + Km)^2 - 4 * St * Et));
    end EMM;


    function Gamma
        	input Real v;
	input Real u;
	input Real J;
	input Real K;
        output Real y;
    algorithm
        y :=  (v - u) + v * J + u * K;
    end Gamma;


    function fGK
        	input Real v;
        input Real u;
        input Real J;
        input Real K;
        output Real y;
        algorithm
            y := if eq(v, 0) and eq(u, 0) then 0 else 2*u*K/(Gamma(v, u, J, K) + 2^(1/2));
    end fGK;

    
    function eq
        input Real x;
        input Real y;
        output Boolean z;
        protected
            parameter Real delta = 1e-7;
        algorithm
            z := abs(x - y) <= delta;
    end eq;

    parameter Real tmr = 10.0;
    parameter Real IRE1T = 1.0;
    parameter Real PERKT = 1.0;
    parameter Real eIF2aT = 1.0;
    parameter Real CReP = 0.1;
    parameter Real kf = 10.0;
    parameter Real kr = 1.0;
    parameter Real n = 4.0;
    parameter Real nh = 2.0;
    parameter Real extATT = 0.0;
    parameter Real extPERK = 0.0;
    parameter Real basalXBP = 1.0;
    parameter Real basalBiP = 1.0;
    parameter Real krcXU = 5.0;
    parameter Real krcBiP = 5.0;
    parameter Real krcWFS = 1.0;
    parameter Real krcCHOP = 1.0;
    parameter Real krcGADD34 = 1.0;
    parameter Real kmXbp = 10.0;
    parameter Real kmAtfsXBP = 10.0;
    parameter Real kmAtfsBiP = 1.0;
    parameter Real kmAtff = 0.05;
    parameter Real kmChop = 0.05;
    parameter Real kmAtfs = 0.1;
    parameter Real ksplice = 10.0;
    parameter Real krcSplice = 1.0;
    parameter Real trcXU = 1.0;
    parameter Real trcBiP = 1.0;
    parameter Real trcWFS = 1.0;
    parameter Real trcCHOP = 1.0;
    parameter Real trcGADD34 = 1.0;
    parameter Real ktrUFP = 1.0;
    parameter Real ktrXS = 1.0;
    parameter Real ktrBiP = 1.0;
    parameter Real ktrATF6 = 1.0;
    parameter Real ktrWFS = 1.0;
    parameter Real ktrATF4 = 1.0;
    parameter Real ktrCHOP = 1.0;
    parameter Real ktrGADD34 = 1.0;
    parameter Real kdmXU = 1.0;
    parameter Real kdmXS = 1.0;
    parameter Real kdmBiP = 1.0;
    parameter Real kdmWFS = 1.0;
    parameter Real kdmCHOP = 1.0;
    parameter Real kdmGADD34 = 1.0;
    parameter Real kdUFP = 0.1;
    parameter Real kdXS = 0.1;
    parameter Real kdBiP = 0.01;
    parameter Real kdATF6 = 0.1;
    parameter Real kdATF6GB = 0.1;
    parameter Real kdATF6p50 = 0.1;
    parameter Real kdWFS = 0.1;
    parameter Real kdATF4 = 0.1;
    parameter Real kdCHOP = 0.1;
    parameter Real kdGADD34 = 0.1;
    parameter Real mATF6T = 5.0;
    parameter Real mATF4 = 1.0;
    parameter Real ktrans = 1.0;
    parameter Real kcleave = 10.0;
    parameter Real kphos = 5.0;
    parameter Real kdephos = 0.5;
    parameter Real kdeAW = 1.0;
    parameter Real kbu = 0.0;
    parameter Real switch = 0.0;
    parameter Real kATF4 = 0.1;
    parameter Real J = 0.001;
    parameter Real K = 0.001;
    parameter Real kfbc = 10.0;
    parameter Real kdbc = 0.1;
    parameter Real kmbc = 0.03;
    parameter Real kstr = 0.2;
    parameter Real BAXT = 100.0;
    parameter Real kfx = 1.0;
    parameter Real kfxp = 3.0;
    parameter Real kbx = 2.0;
    parameter Real kasx = 90.0;
    parameter Real kdsx = 0.05;
    parameter Real ks3 = 0.1;
    parameter Real ks3p = 0.6;
    parameter Real kd3 = 0.01;
    parameter Real kas3 = 10.0;
    parameter Real kds3 = 0.01;
    parameter Real kff = 10.0;
    parameter Real ERlumen = 1.0;
    parameter Real cytoplasm = 1.0;
    parameter Real Golgi = 1.0;
    parameter Real mitochondria = 1.0;

    Real UFP(start=0.0);
    Real BiP(start=0.0);
    Real IRE1(start=0.0);
    Real PERK(start=0.0);
    Real ATF6(start=0.0);
    Real eIF2a(start=0.0);
    Real spliceRate(start=0.0);
    Real BCL2(start=0.0);
    Real BH3(start=0.0);
    Real BAXm(start=0.0);
    Real mUFPT(start=0.0);

    Real UFPT;
    Real BiUFP;
    Real BiRE1;
    Real BiATF;
    Real BiPER;
    Real IRE1A;
    Real PERKA;
    Real mXbp1u;
    Real mXbp1s;
    Real Xbp1s;
    Real mBiPT;
    Real BiPT;
    Real ATF6T;
    Real ATF6GB;
    Real ATF6p50;
    Real mWFS1;
    Real WFS1;
    Real ATF4;
    Real mCHOP;
    Real CHOP;
    Real mGADD34;
    Real GADD34;
    Real BCL2T;
    Real BAXmT;
    Real BH3T;
    Real BAXmBCL2;
    Real BH3BCL2;

initial equation
    UFPT = 0.0;
    BiUFP = 0.0;
    BiRE1 = 0.0;
    BiATF = 0.0;
    BiPER = 0.0;
    IRE1A = 0.0;
    PERKA = 0.0;
    mXbp1u = 0.0;
    mXbp1s = 0.0;
    Xbp1s = 0.0;
    mBiPT = 0.0;
    BiPT = 0.0;
    ATF6T = 0.0;
    ATF6GB = 0.0;
    ATF6p50 = 0.0;
    mWFS1 = 0.0;
    WFS1 = 0.0;
    ATF4 = 0.0;
    mCHOP = 0.0;
    CHOP = 0.0;
    mGADD34 = 0.0;
    GADD34 = 0.0;
    BCL2T = 0.0;
    BAXmT = 0.0;
    BH3T = 0.0;
    BAXmBCL2 = 0.0;
    BH3BCL2 = 0.0;

equation
    UFP = UFPT - BiUFP;
    BiP = BiPT - BiRE1 - BiATF - BiPER - BiUFP;
    IRE1 = IRE1T - BiRE1 - n * IRE1A;
    PERK = PERKT - BiPER - n * PERKA;
    ATF6 = ATF6T - BiATF;
    spliceRate = EMM(mXbp1u, 0.5 * n * IRE1A, krcSplice, ksplice);
    eIF2a = eIF2aT * fGK(kphos * 0.5 * n * PERKA, kdephos * (GADD34 + CReP), J / eIF2aT, K / eIF2aT);
    BCL2 = BCL2T - BH3BCL2 - BAXmBCL2;
    BH3 = BH3T - BH3BCL2;
    BAXm = BAXmT - BAXmBCL2;
    mUFPT = 13;
    der(UFPT) = (ktrUFP * mUFPT * piecewise(eIF2a / eIF2aT, eq(extATT, 1), 1)) - (kdUFP * UFPT) - (kbu * BiUFP * UFPT);
    der(BiUFP) = (tmr * kf * BiP * UFP) - (tmr * kr * BiUFP);
    der(BiRE1) = (tmr * kf * BiP * IRE1) - (tmr * kr * BiRE1);
    der(BiATF) = (tmr * kf * BiP * ATF6) - (tmr * kr * BiATF);
    der(BiPER) = (tmr * kf * BiP * PERK) - (kr * tmr * BiPER);
    der(IRE1A) = (tmr * kff * pow(IRE1, n)) - (tmr * kr * IRE1A);
    der(PERKA) = (tmr * kff * piecewise(UFP, eq(switch, 1), 1) * pow(PERK, n)) - (tmr * kr * PERKA / (1 + extPERK * UFP));
    der(mXbp1u) = (trcXU * (basalXBP + kmAtfsXBP * ATF6p50) / (krcXU + basalXBP + kmAtfsXBP * ATF6p50)) - (kdmXU * mXbp1u) - (spliceRate);
    der(mXbp1s) = (spliceRate) - (kdmXS * mXbp1s);
    der(Xbp1s) = (ktrXS * mXbp1s) - (kdXS * Xbp1s);
    der(mBiPT) = (trcBiP * (basalBiP + kmXbp * Xbp1s + kmAtfsBiP * ATF6p50) / (krcBiP + basalBiP + kmXbp * Xbp1s + kmAtfsBiP * ATF6p50)) - (kdmBiP * mBiPT);
    der(BiPT) = (ktrBiP * mBiPT) - (kdBiP * BiPT);
    der(ATF6T) = (ktrATF6 * mATF6T) - (kdATF6 * ATF6T) - (ktrans * ATF6) - (kdeAW * WFS1 * ATF6T);
    der(ATF6GB) = (ktrans * ATF6) - (kdATF6GB * ATF6GB) - (kcleave * ATF6GB);
    der(ATF6p50) = (kcleave * ATF6GB) - (kdATF6p50 * ATF6p50);
    der(mWFS1) = (trcWFS * ATF6p50 / (krcWFS + ATF6p50)) - (kdmWFS * mWFS1);
    der(WFS1) = (ktrWFS * mWFS1) - (kdWFS * WFS1);
    der(ATF4) = (ktrATF4 * mATF4 / (1 + pow(eIF2a / kATF4, nh))) - (kdATF4 * ATF4);
    der(mCHOP) = (trcCHOP * (kmAtff * ATF4 + kmAtfs * ATF6p50) / (krcCHOP + kmAtff * ATF4 + kmAtfs * ATF6p50)) - (kdmCHOP * mCHOP);
    der(CHOP) = (ktrCHOP * mCHOP) - (kdCHOP * CHOP);
    der(mGADD34) = (trcGADD34 * kmChop * CHOP / (krcGADD34 + kmChop * CHOP)) - (kdmGADD34 * mGADD34);
    der(GADD34) = (ktrGADD34 * mGADD34) - (kdGADD34 * GADD34);
    der(BCL2T) = (kfbc / (1 + kmbc * CHOP)) - (kdbc * BCL2T);
    der(BAXmT) = (kfx * BAXT) + (kfxp * BH3 * BAXT) - (kfx * BAXmT) - (kfxp * BH3 * BAXmT) - (kbx * BAXmT);
    der(BH3T) = (ks3) + (ks3p * kstr * CHOP) - (kd3 * BH3T);
    der(BAXmBCL2) = (kasx * BAXm * BCL2) - (kdsx * BAXmBCL2) - (kbx * BAXmBCL2);
    der(BH3BCL2) = (kas3 * BH3 * BCL2) - (kds3 * BH3BCL2) - (kd3 * BH3BCL2);




end BIOMD446;
