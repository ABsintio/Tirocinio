
model BIOMD392 "Arnold2011_Laisk2006_CalvinCycle_Starch_Sucrose"

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


    function function_34
        	input Real v;
        output Real y;
    algorithm
        y :=  v;
    end function_34;


    function function_30
        	input Real Vm;
	input Real s1;
	input Real p1;
	input Real p2;
	input Real q;
	input Real Ks1;
	input Real r1;
	input Real Kr1;
	input Real Kp1;
	input Real Kp2;
        output Real y;
    algorithm
        y :=  Vm * s1 * (s1 - p1 * p2 / q) / ((Ks1 * (1 + r1 / Kr1))^2 * ((s1 / (Ks1 * (1 + r1 / Kr1)))^2 + (1 + p1 / Kp1) * (1 + p2 / Kp2)));
    end function_30;


    function TPTout
        	input Real Vm;
	input Real s;
	input Real Ks;
	input Real r1;
	input Real Kr1;
	input Real r2;
	input Real Kr2;
	input Real p;
	input Real Kp;
	input Real r3;
	input Real Kr3;
	input Real r4;
	input Real Kr4;
        output Real y;
    algorithm
        y :=  (Vm / (s / Ks + r1 / Kr1 + r2 / Kr2 + p / Kp + r3 / Kr3 + r4 / Kr4 + (s / Ks + r1 / Kr1 + r2 / Kr2) * (p / Kp + r3 / Kr3 + r4 / Kr4))) * (s * (p / Kp + r3 / Kr3 + r4 / Kr4) / Ks - p * (s / Ks + r1 / Kr1 + r2 / Kr2) / Kp);
    end TPTout;


    function function_29
        	input Real Vm;
	input Real s1;
	input Real p1;
	input Real q;
	input Real Ks1;
	input Real Kp1;
        output Real y;
    algorithm
        y :=  Vm * (s1 - p1 / q) / (Ks1 * (1 + s1 / Ks1 + p1 / Kp1));
    end function_29;


    function function_32
        	input Real Vm;
	input Real s1;
	input Real Ks1;
	input Real r1;
	input Real Kr1;
	input Real r2;
	input Real r3;
	input Real Kr2;
        output Real y;
    algorithm
        y :=  (Vm * s1 / Ks1) * (1 + r1 / Kr1) / (1 + (r2 + r3) / Kr2);
    end function_32;


    function function_27
        	input Real s1;
	input Real s2;
	input Real p1;
	input Real p2;
	input Real q;
	input Real Ks1;
	input Real Ks2;
	input Real Kp1;
	input Real Kp2;
	input Real Vm;
        output Real y;
    algorithm
        y :=  Vm * (s1 * s2 - p1 * p2 / q) / (Ks1 * Ks2 * ((1 + s1 / Ks1) * (1 + s2 / Ks2) + (1 + p1 / Kp1) * (1 + p2 / Kp2) - 1));
    end function_27;


    function function_28
        	input Real Vm;
	input Real r1;
	input Real r2;
	input Real s1;
	input Real s2;
	input Real p1;
	input Real p2;
	input Real q;
	input Real Ks1;
	input Real Ks2;
	input Real Kp1;
	input Real Kp2;
        output Real y;
    algorithm
        y :=  Vm * (r1 / r2)^2 * (s1 * s2 - p1 * p2 / q) / (Ks1 * Ks2 * ((1 + s1 / Ks1) * (1 + s2 / Ks2) + (1 + p1 / Kp1) * (1 + p2 / Kp2) - 1));
    end function_28;


    function function_23
        	input Real Vm;
	input Real s1;
	input Real s2;
	input Real p1;
	input Real p2;
	input Real p3;
	input Real q;
	input Real Ks1;
	input Real Ks2;
	input Real Kp1;
	input Real Kp2;
	input Real Kp3;
        output Real y;
    algorithm
        y :=  Vm * (s1 * s2 - p1 * p2 * p3 / q) / (Ks1 * Ks2 * ((1 + s1 / Ks1) * (1 + s2 / Ks2) + p1 / Kp1 + p2 / Kp2 + p3 / Kp3 + p1 * p2 * p3 / (Kp1 * Kp2 * Kp3)));
    end function_23;


    function function_33
        	input Real Vm;
	input Real s1;
	input Real Ks1;
	input Real r1;
	input Real r2;
	input Real Kr1;
	input Real r3;
	input Real Kr3;
	input Real r4;
	input Real Kr4;
        output Real y;
    algorithm
        y :=  (Vm * s1 / Ks1) * (1 + (r1 + r2) / Kr1) / (1 + r3 / Kr3 + r4 / Kr4);
    end function_33;


    function function_31
        	input Real Vm;
	input Real s1;
	input Real s2;
	input Real p1;
	input Real p2;
	input Real p3;
	input Real q;
	input Real Ks1;
	input Real r1;
	input Real Kr11;
	input Real Ks2;
	input Real Kp1;
	input Real Kp2;
	input Real Kr12;
        output Real y;
    algorithm
        y :=  Vm * s1 * (s1 * s2 - p1 * p2 * p3 / q) / ((Ks1 * (1 + r1 / Kr11))^2 * Ks2 * (((1 + (s1 / (Ks1 * (1 + r1 / Kr11)))^2) * (1 + s2 / Ks2) + (1 + p1 / Kp1) * (1 + p2 / Kp2) - 1) + r1 / Kr12));
    end function_31;


    function function_25
        	input Real Vm;
	input Real s1;
	input Real p1;
	input Real p2;
	input Real q;
	input Real Ks1;
	input Real Kp1;
	input Real Kp2;
        output Real y;
    algorithm
        y :=  Vm * (s1 - p1 * p2 / q) / (Ks1 * (1 + s1 / Ks1 + p1 / Kp1 + p1 * p2 / (Kp1 * Kp2)));
    end function_25;


    function Transketolase
        	input Real Vm;
	input Real q;
	input Real s1;
	input Real s2;
	input Real p1;
	input Real p2;
	input Real K1;
	input Real K2;
	input Real K1s2;
	input Real K2s1;
	input Real r1;
	input Real K2r1;
	input Real K2s2;
	input Real r2;
        output Real y;
    algorithm
        y :=  Vm * (q * s1 * s2 - p1 * p2) / (K1 * K2 * (1 + (1 + s2 / K1s2) * (s1 / K2s1 + r1 / K2r1) + s2 / K2s2 + (1 / K2) * (p2 * (1 + p1 * r2 / K1) + p1 + r2)));
    end Transketolase;


    function function_24
        	input Real s1;
	input Real s2;
	input Real p1;
	input Real q;
	input Real Ks1;
	input Real Ks2;
	input Real Kp1;
	input Real Vm;
        output Real y;
    algorithm
        y :=  Vm * (s1 * s2 - p1 / q) / (Ks1 * Ks2 * ((1 + s1 / Ks1) * (1 + s2 / Ks2) + p1 / Kp1));
    end function_24;


    function function_26
        	input Real Vm;
	input Real s1;
	input Real p1;
	input Real p2;
	input Real q;
	input Real Ks1;
	input Real Kp1;
	input Real Kp2;
        output Real y;
    algorithm
        y :=  Vm * (s1 - p1 * p2 / q) / (Ks1 * (s1 / Ks1 + (1 + p1 / Kp1) * (1 + p2 / Kp2)));
    end function_26;


    parameter Real Et = 0.0028030303030303;
    parameter Real ADT = 0.0015;
    parameter Real ADTc = 0.001;
    parameter Real UDTc = 0.001;
    parameter Real NADPT = 0.0005;
    parameter Real PiT = 0.0284090909090909;
    parameter Real PiTc = 0.0170454545454545;
    parameter Real q12 = 2227862541257.35;
    parameter Real Kp12 = 224014.808032967;
    parameter Real q1 = 0.129053067280279;
    parameter Real V28 = 7.386364e-05;
    parameter Real k1_0 = 50000.0;
    parameter Real k2_0 = 0.9;
    parameter Real k1_1 = 300000.0;
    parameter Real k1_2 = 6.0;
    parameter Real k2_2 = 0.0;
    parameter Real k1_3 = 6.0;
    parameter Real k2_3 = 70000.0;
    parameter Real k1_5 = 3030.3;
    parameter Real k1_6 = 3.0;
    parameter Real Vm_7 = 0.0170455;
    parameter Real Ks1_7 = 0.0011122;
    parameter Real Ks2_7 = 0.0003307;
    parameter Real Kp1_7 = 0.00027035;
    parameter Real Kp2_7 = 0.00053013;
    parameter Real Kp3_7 = 0.0027397;
    parameter Real q_8 = 1.18815;
    parameter Real Ks1_8 = 0.00027035;
    parameter Real Ks2_8 = 0.00036393;
    parameter Real Kp1_8 = 2.0129e-05;
    parameter Real Vm_8 = 0.022727;
    parameter Real Vm_9 = 0.011364;
    parameter Real q_9 = 0.77294;
    parameter Real Ks1_9 = 3.2842e-05;
    parameter Real Kp1_9 = 6.3429e-05;
    parameter Real Kp2_9 = 0.0017914;
    parameter Real Vm_10 = 0.170455;
    parameter Real q_10 = 0.99943;
    parameter Real K1_10 = 0.00061349;
    parameter Real K2_10 = 0.00011438;
    parameter Real K1s2_10 = 0.00027035;
    parameter Real K2s1_10 = 0.0005407;
    parameter Real K2r1_10 = 0.00017677;
    parameter Real K2s2_10 = 9.0464e-05;
    parameter Real q_11 = 1.18815;
    parameter Real Ks1_11 = 0.00017677;
    parameter Real Ks2_11 = 0.00036393;
    parameter Real Kp1_11 = 2.0129e-05;
    parameter Real Vm_11 = 0.011364;
    parameter Real Vm_12 = 0.00568182;
    parameter Real q_12 = 0.77294;
    parameter Real Ks1_12 = 1.2713e-05;
    parameter Real Kp1_12 = 1.5597e-05;
    parameter Real Kp2_12 = 0.006744;
    parameter Real Vm_13 = 0.0821023;
    parameter Real q_13 = 0.99996;
    parameter Real K1_13 = 0.00061349;
    parameter Real K2_13 = 0.00011438;
    parameter Real K1s2_13 = 0.00027035;
    parameter Real K2s1_13 = 0.00017677;
    parameter Real K2r1_13 = 0.0005407;
    parameter Real K2s2_13 = 9.0464e-05;
    parameter Real q_14 = 1.05289;
    parameter Real Ks1_14 = 3.63934e-05;
    parameter Real Ks2_14 = 0.00055117;
    parameter Real Kp1_14 = 9.95868e-05;
    parameter Real Kp2_14 = 9.11825e-05;
    parameter Real Vm_14 = 0.568182;
    parameter Real Ks1_15 = 0.00031808;
    parameter Real Ks2_15 = 0.00031612;
    parameter Real Vm_15 = 0.0284091;
    parameter Real Vm_16 = 0.00113636;
    parameter Real q_16 = 0.11059;
    parameter Real Ks1_16 = 0.0010398;
    parameter Real Ks2_16 = 0.00011023;
    parameter Real Kp1_16 = 0.00053013;
    parameter Real Kp2_16 = 0.01951;
    parameter Real Vm_17 = 0.00284091;
    parameter Real q_17 = 1.00326;
    parameter Real Ks1_17 = 0.000212052;
    parameter Real Kp1_17 = 0.000636157;
    parameter Real Vm_18 = 0.0568182;
    parameter Real Ks_18 = 9.3583e-05;
    parameter Real Kr1_18 = 0.00089213;
    parameter Real Kr2_18 = 9.8597e-05;
    parameter Real Kp_18 = 9.6372e-05;
    parameter Real Kr3_18 = 0.00054107;
    parameter Real Kr4_18 = 9.4837e-05;
    parameter Real Vm_19 = 0.0568182;
    parameter Real Ks_19 = 0.00089213;
    parameter Real Kr1_19 = 9.3583e-05;
    parameter Real Kr2_19 = 9.8597e-05;
    parameter Real Kp_19 = 0.00054107;
    parameter Real Kr3_19 = 9.6372e-05;
    parameter Real Kr4_19 = 9.4837e-05;
    parameter Real q_20 = 1.00224;
    parameter Real Ks1_20 = 0.000278407;
    parameter Real Ks2_20 = 0.000374778;
    parameter Real Kp1_20 = 2.10226e-05;
    parameter Real Vm_20 = 0.00568182;
    parameter Real Vm_21 = 0.00113636;
    parameter Real q_21 = 0.792367;
    parameter Real Ks1_21 = 2.2129e-05;
    parameter Real Kr1_21 = 1.1065e-06;
    parameter Real Kp1_21 = 6.5319e-05;
    parameter Real Kp2_21 = 0.0018624;
    parameter Real q_22 = 1.6219;
    parameter Real Ks1_22 = 3.2124e-05;
    parameter Real Ks2_22 = 0.0002364;
    parameter Real Kp1_22 = 0.00014393;
    parameter Real Kp2_22 = 0.0013192;
    parameter Real Vm_22 = 0.00410568;
    parameter Real Vm_23 = 7.38636e-05;
    parameter Real q_23 = 1.00012;
    parameter Real Ks1_23 = 0.000278407;
    parameter Real Kr11_23 = 0.00920241;
    parameter Real Ks2_23 = 0.000110717;
    parameter Real Kp1_23 = 0.000642157;
    parameter Real Kp2_23 = 0.000374778;
    parameter Real Kr12_23 = 0.00164329;
    parameter Real Vm_24 = 0.0010267;
    parameter Real q_24 = 1.35286;
    parameter Real Ks1_24 = 5.354e-05;
    parameter Real Kp1_24 = 0.01;
    parameter Real Kp2_24 = 0.002191;
    parameter Real Vm_25 = 1.02614e-07;
    parameter Real Ks1_25 = 0.001;
    parameter Real Kr1_25 = 0.001;
    parameter Real Kr2_25 = 0.0015;
    parameter Real Vm_26 = 2.05284e-10;
    parameter Real Ks1_26 = 1e-09;
    parameter Real Kr1_26 = 0.002;
    parameter Real Kr3_26 = 0.001;
    parameter Real Kr4_26 = 0.0001;
    parameter Real chloroplast = 1.0;
    parameter Real cytosol = 1.0;

    Real W4(start=-0.00532314322950372);

    Real RuBP;
    Real E;
    Real ER;
    Real EPP;
    Real EPG;
    Real EP;
    Real EOP;
    Real PGA;
    Real TP;
    Real GAP;
    Real DHAP;
    Real FBP;
    Real HeP;
    Real F6P;
    Real G6P;
    Real G1P;
    Real E4P;
    Real SBP;
    Real S7P;
    Real PeP;
    Real X5P;
    Real R5P;
    Real Ru5P;
    Real ADPG;
    Real ATP;
    Real ADP;
    Real Pi;
    Real PiPi;
    Real H;
    Real CO2;
    Real O2;
    Real NADPH;
    Real NADP;
    Real PGAc;
    Real TPc;
    Real GAPc;
    Real DHAPc;
    Real FBPc;
    Real F26BPc;
    Real HePc;
    Real F6Pc;
    Real G6Pc;
    Real G1Pc;
    Real UDPGc;
    Real UTPc;
    Real UDPc;
    Real ATPc;
    Real ADPc;
    Real SucPc;
    Real Succ;
    Real Pic;
    Real PiPic;
    Real Hc;

initial equation
    RuBP = 0.002;
    ER = 0.001201;
    EPP = 0.0002711;
    EPG = 0.0003206;
    EP = 0.0007045;
    EOP = 0.0002966;
    PGA = 0.0024;
    TP = 0.0005;
    FBP = 0.00067;
    HeP = 0.0022;
    E4P = 5e-05;
    SBP = 0.0003;
    S7P = 0.002;
    PeP = 0.00025;
    ADPG = 6.295e-06;
    ATP = 0.00068;
    PiPi = 1e-06;
    H = 0.0891250931577478;
    O2 = 0.00026;
    NADPH = 0.00021;
    NADP = 0.00029;
    PGAc = 0.0;
    TPc = 0.0023;
    FBPc = 0.002;
    F26BPc = 7.8e-09;
    HePc = 0.0058;
    UDPGc = 0.00057;
    UTPc = 0.00036;
    UDPc = 0.00064;
    ATPc = 0.00036;
    SucPc = 0.0;
    Succ = 0.0;
    PiPic = 4e-05;
    Hc = 0.158489318357816;

equation
    ADPc = ADTc - ATPc;
    GAP = TP / (1 + 1.0007329);
    Ru5P = PeP * 0.99974 / (1 + 0.99974 + 0.99974 / 1.000053);
    F6P = HeP * 0.999837 / (1 + 0.999837 + 0.999308);
    Pic = PiTc - 2 * (FBPc + UTPc + ATPc + PiPic) - (PGAc + TPc + HePc + SucPc + UDPGc + UDPc + ADPc);
    X5P = PeP * (0.99974 / 1.000053) / (1 + 0.99974 + 0.99974 / 1.000053);
    G6P = HeP / (1 + 0.999837 + 0.999308);
    G1P = HeP * 0.999308 / (1 + 0.999837 + 0.999308);
    G1Pc = HePc * 0.999308 / (1 + 0.999837 + 0.999308);
    DHAP = 1.0007329 * TP / (1 + 1.0007329);
    G6Pc = HePc / (1 + 0.999837 + 0.999308);
    F6Pc = HePc * 0.999837 / (1 + 0.999837 + 0.999308);
    R5P = PeP / (1 + 0.99974 + 0.99974 / 1.000053);
    ADP = ADT - ATP;
    Pi = PiT - 2 * (EPP + EPG + RuBP + FBP + SBP + ATP + PiPi) - (EP + PGA + TP + HeP + E4P + S7P + PeP + ADP + ADPG);
    GAPc = TPc / (1 + 1.0007329);
    DHAPc = 1.0007329 * TPc / (1 + 1.0007329);
    CO2 = (1.2e-5 / (0.38 + 0.015) + 8 * 4 * 0.00055 * 3030.3 * ER * O2 / 2) / (1 / (0.38 + 0.015) + 8 * 4 * 0.00055 * 300000 * ER);
    E = Et - (ER + EPP + EPG + EP + EOP);
    W4 = 6 * EOP - 70000 * Pi * E;
    der(RuBP) = (chloroplast * function_27(Ru5P, ATP, RuBP, ADP, q_14, Ks1_14, Ks2_14, Kp1_14, Kp2_14, Vm_14)) - (chloroplast * (k1_0 * RuBP * E - k2_0 * ER));
    der(ER) = (chloroplast * (k1_0 * RuBP * E - k2_0 * ER)) - (chloroplast * k1_1 * ER * CO2) - (chloroplast * k1_5 * ER * O2);
    der(EPP) = (chloroplast * k1_1 * ER * CO2) - (chloroplast * (k1_2 * EPP - k2_2 * PGA * EP));
    der(EPG) = (chloroplast * k1_5 * ER * O2) - (chloroplast * k1_6 * EPG);
    der(EP) = (chloroplast * (k1_2 * EPP - k2_2 * PGA * EP)) + (chloroplast * k1_6 * EPG) - (chloroplast * (k1_3 * EP - k2_3 * PGA * E));
    der(EOP) =  - (chloroplast * function_34(W4));
    der(PGA) = (chloroplast * (k1_2 * EPP - k2_2 * PGA * EP)) + (chloroplast * (k1_3 * EP - k2_3 * PGA * E)) + (0.5 * chloroplast * k1_5 * ER * O2) - (chloroplast * function_23(Vm_7, PGA, ATP, GAP, ADP, Pi, q1, Ks1_7, Ks2_7, Kp1_7, Kp2_7, Kp3_7)) - (TPTout(Vm_19, PGA, Ks_19, TP, Kr1_19, Pi, Kr2_19, PGAc, Kp_19, TPc, Kr3_19, Pic, Kr4_19));
    der(TP) = (chloroplast * function_23(Vm_7, PGA, ATP, GAP, ADP, Pi, q1, Ks1_7, Ks2_7, Kp1_7, Kp2_7, Kp3_7)) - (2.0 * chloroplast * function_24(GAP, DHAP, FBP, q_8, Ks1_8, Ks2_8, Kp1_8, Vm_8)) - (chloroplast * Transketolase(Vm_10, q_10, F6P, GAP, E4P, X5P, K1_10, K2_10, K1_10s2, K2_10s1, S7P, K2_10r1, K2_10s2, R5P)) - (chloroplast * function_24(E4P, DHAP, SBP, q_11, Ks1_11, Ks2_11, Kp1_11, Vm_11)) - (chloroplast * Transketolase(Vm_13, q_13, S7P, GAP, R5P, X5P, K1_13, K2_13, K1_13s2, K2_13s1, F6P, K2_13r1, K2_13s2, E4P)) - (TPTout(Vm_18, TP, Ks_18, PGA, Kr1_18, Pi, Kr2_18, TPc, Kp_18, PGAc, Kr3_18, Pic, Kr4_18));
    der(FBP) = (chloroplast * function_24(GAP, DHAP, FBP, q_8, Ks1_8, Ks2_8, Kp1_8, Vm_8)) - (chloroplast * function_25(Vm_9, FBP, F6P, Pi, q_9, Ks1_9, Kp1_9, Kp2_9));
    der(HeP) = (chloroplast * function_25(Vm_9, FBP, F6P, Pi, q_9, Ks1_9, Kp1_9, Kp2_9)) - (chloroplast * Transketolase(Vm_10, q_10, F6P, GAP, E4P, X5P, K1_10, K2_10, K1_10s2, K2_10s1, S7P, K2_10r1, K2_10s2, R5P)) - (chloroplast * function_28(Vm_16, PGA, Pi, G1P, ATP, ADPG, PiPi, q_16, Ks1_16, Ks2_16, Kp1_16, Kp2_16));
    der(E4P) = (chloroplast * Transketolase(Vm_10, q_10, F6P, GAP, E4P, X5P, K1_10, K2_10, K1_10s2, K2_10s1, S7P, K2_10r1, K2_10s2, R5P)) - (chloroplast * function_24(E4P, DHAP, SBP, q_11, Ks1_11, Ks2_11, Kp1_11, Vm_11));
    der(SBP) = (chloroplast * function_24(E4P, DHAP, SBP, q_11, Ks1_11, Ks2_11, Kp1_11, Vm_11)) - (chloroplast * function_26(Vm_12, SBP, S7P, Pi, q_12, Ks1_12, Kp1_12, Kp2_12));
    der(S7P) = (chloroplast * function_26(Vm_12, SBP, S7P, Pi, q_12, Ks1_12, Kp1_12, Kp2_12)) - (chloroplast * Transketolase(Vm_13, q_13, S7P, GAP, R5P, X5P, K1_13, K2_13, K1_13s2, K2_13s1, F6P, K2_13r1, K2_13s2, E4P));
    der(PeP) = (chloroplast * Transketolase(Vm_10, q_10, F6P, GAP, E4P, X5P, K1_10, K2_10, K1_10s2, K2_10s1, S7P, K2_10r1, K2_10s2, R5P)) + (2.0 * chloroplast * Transketolase(Vm_13, q_13, S7P, GAP, R5P, X5P, K1_13, K2_13, K1_13s2, K2_13s1, F6P, K2_13r1, K2_13s2, E4P)) - (chloroplast * function_27(Ru5P, ATP, RuBP, ADP, q_14, Ks1_14, Ks2_14, Kp1_14, Kp2_14, Vm_14));
    der(ADPG) = (chloroplast * function_28(Vm_16, PGA, Pi, G1P, ATP, ADPG, PiPi, q_16, Ks1_16, Ks2_16, Kp1_16, Kp2_16)) - (chloroplast * function_29(Vm_17, ADPG, ADP, q_17, Ks1_17, Kp1_17));
    der(ATP) = (chloroplast * function_24(ADP, Pi, ATP, q12, Ks1_15, Ks2_15, Kp12, Vm_15)) - (0.5 * chloroplast * k1_5 * ER * O2) - (chloroplast * function_23(Vm_7, PGA, ATP, GAP, ADP, Pi, q1, Ks1_7, Ks2_7, Kp1_7, Kp2_7, Kp3_7)) - (chloroplast * function_27(Ru5P, ATP, RuBP, ADP, q_14, Ks1_14, Ks2_14, Kp1_14, Kp2_14, Vm_14)) - (chloroplast * function_28(Vm_16, PGA, Pi, G1P, ATP, ADPG, PiPi, q_16, Ks1_16, Ks2_16, Kp1_16, Kp2_16));
    der(PiPi) = 0.0;
    der(H) = 0.0;
    der(O2) = 0.0;
    der(NADPH) = 0.0;
    der(NADP) = 0.0;
    der(PGAc) = (TPTout(Vm_19, PGA, Ks_19, TP, Kr1_19, Pi, Kr2_19, PGAc, Kp_19, TPc, Kr3_19, Pic, Kr4_19)) ;
    der(TPc) = (TPTout(Vm_18, TP, Ks_18, PGA, Kr1_18, Pi, Kr2_18, TPc, Kp_18, PGAc, Kr3_18, Pic, Kr4_18)) - (2.0 * cytosol * function_24(GAPc, DHAPc, FBPc, q_20, Ks1_20, Ks2_20, Kp1_20, Vm_20));
    der(FBPc) = (cytosol * function_24(GAPc, DHAPc, FBPc, q_20, Ks1_20, Ks2_20, Kp1_20, Vm_20)) - (cytosol * function_30(Vm_21, FBPc, F6Pc, Pic, q_21, Ks1_21, F26BPc, Kr1_21, Kp1_21, Kp2_21));
    der(F26BPc) = (cytosol * function_32(Vm_25, F6Pc, Ks1_25, Pic, Kr1_25, TPc, PGAc, Kr2_25)) - (cytosol * function_33(Vm_26, F26BPc, Ks1_26, TPc, PGAc, Kr1_26, Pic, Kr3_26, HePc, Kr4_26));
    der(HePc) = (cytosol * function_30(Vm_21, FBPc, F6Pc, Pic, q_21, Ks1_21, F26BPc, Kr1_21, Kp1_21, Kp2_21)) + (cytosol * function_33(Vm_26, F26BPc, Ks1_26, TPc, PGAc, Kr1_26, Pic, Kr3_26, HePc, Kr4_26)) - (cytosol * function_27(G1Pc, UTPc, UDPGc, PiPic, q_22, Ks1_22, Ks2_22, Kp1_22, Kp2_22, Vm_22)) - (cytosol * function_31(Vm_23, F6Pc, UDPGc, UDPc, SucPc, Hc, q_23, Ks1_23, Pic, Kr11_23, Ks2_23, Kp1_23, Kp2_23, Kr12_23)) - (cytosol * function_32(Vm_25, F6Pc, Ks1_25, Pic, Kr1_25, TPc, PGAc, Kr2_25));
    der(UDPGc) = (cytosol * function_27(G1Pc, UTPc, UDPGc, PiPic, q_22, Ks1_22, Ks2_22, Kp1_22, Kp2_22, Vm_22)) - (cytosol * function_31(Vm_23, F6Pc, UDPGc, UDPc, SucPc, Hc, q_23, Ks1_23, Pic, Kr11_23, Ks2_23, Kp1_23, Kp2_23, Kr12_23));
    der(UTPc) = 0.0;
    der(UDPc) = 0.0;
    der(ATPc) = 0.0;
    der(SucPc) = (cytosol * function_31(Vm_23, F6Pc, UDPGc, UDPc, SucPc, Hc, q_23, Ks1_23, Pic, Kr11_23, Ks2_23, Kp1_23, Kp2_23, Kr12_23)) - (cytosol * function_25(Vm_24, SucPc, Succ, Pic, q_24, Ks1_24, Kp1_24, Kp2_24));
    der(Succ) = 0.0;
    der(PiPic) = 0.0;
    der(Hc) = 0.0;




end BIOMD392;
