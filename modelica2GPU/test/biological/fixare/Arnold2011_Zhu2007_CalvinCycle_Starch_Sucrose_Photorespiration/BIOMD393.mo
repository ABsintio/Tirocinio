
model BIOMD393 "Arnold2011_Zhu2007_CalvinCycle_Starch_Sucrose_Photorespiration"

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


    function function_9
        	input Real Vm;
	input Real s1;
	input Real s2;
	input Real p1;
	input Real p2;
	input Real q;
	input Real Ks1;
	input Real r1;
	input Real Kr1;
	input Real r2;
	input Real Kr2;
	input Real r3;
	input Real Kr3;
	input Real r4;
	input Real Kr41;
	input Real Ks2;
	input Real Kr42;
        output Real y;
    algorithm
        y :=  Vm * (s1 * s2 - p1 * p2 / q) / ((s1 + Ks1 * (1 + r1 / Kr1 + r2 / Kr2 + r3 / Kr3)) * (s2 * (1 + r4 / Kr41) + Ks2 * (1 + r4 / Kr42)));
    end function_9;


    function function_18
        	input Real substrate;
	input Real Inhibitor;
	input Real Km;
	input Real V;
	input Real Ki;
        output Real y;
    algorithm
        y :=  V * substrate / (Km + substrate + Km * Inhibitor / Ki);
    end function_18;


    function function_17
        	input Real substrate;
	input Real Km;
	input Real V;
        output Real y;
    algorithm
        y :=  V * substrate / (Km + substrate);
    end function_17;


    function function_5
        	input Real Vm;
	input Real s1;
	input Real p1;
	input Real p2;
	input Real q;
	input Real Ks1;
	input Real r1;
	input Real Kr1;
	input Real r2;
	input Real Kr2;
        output Real y;
    algorithm
        y :=  Vm * (s1 - p1 * p2 / q) / (s1 + Ks1 * (1 + r1 / Kr1 + r2 / Kr2));
    end function_5;


    function function_14
        	input Real Vm;
	input Real s1;
	input Real s2;
	input Real p1;
	input Real p2;
	input Real q;
	input Real Ks1;
	input Real r1;
	input Real Kr1;
	input Real Ks2;
	input Real r2;
	input Real Kr2;
	input Real r3;
	input Real Kr3;
	input Real r4;
	input Real Kr4;
	input Real r5;
	input Real Kr5;
        output Real y;
    algorithm
        y :=  Vm * (s1 * s2 - p1 * p2 / q) / ((s1 + Ks1 * (1 + r1 / Kr1)) * (s2 + Ks2 * (1 + r2 / Kr2) * (1 + r3 / Kr3) * (1 + r4 / Kr4) * (1 + r5 / Kr5)));
    end function_14;


    function function_21
        	input Real Vm;
	input Real s1;
	input Real s2;
	input Real p1;
	input Real p2;
	input Real q;
	input Real Ks1;
	input Real r1;
	input Real Kr1;
        output Real y;
    algorithm
        y :=  Vm * (s1 * s2 - p1 * p2 / q) / (s1 + Ks1 * (1 + r1 / Kr1));
    end function_21;


    function function_15
        	input Real Vm;
	input Real s1;
	input Real s2;
	input Real p1;
	input Real p2;
	input Real q;
	input Real Ks1;
	input Real r1;
	input Real Kr1;
	input Real r2;
	input Real Kr2;
	input Real Ks2;
	input Real r3;
	input Real Kr3;
        output Real y;
    algorithm
        y :=  Vm * (s1 * s2 - p1 * p2 / q) / ((s1 + Ks1 * (1 + r1 / Kr1) * (1 + r2 / Kr2)) * (s2 + Ks2 * (1 + r3 / Kr3)));
    end function_15;


    function function_4
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
    end function_4;


    function function_8
        	input Real Vm;
	input Real s1;
	input Real p1;
	input Real p2;
	input Real q;
	input Real Ks1;
	input Real r1;
	input Real Kr1;
        output Real y;
    algorithm
        y :=  Vm * (s1 - p1 * p2 / q) / (s1 + Ks1 * (1 + r1 / Kr1));
    end function_8;


    function function_12
        	input Real s1;
	input Real p1;
	input Real p2;
	input Real q;
	input Real Ks1;
	input Real Kp1;
	input Real Kp2;
	input Real Vm;
        output Real y;
    algorithm
        y :=  Vm * (s1 - p1 * p2 / q) / (Ks1 * (s1 / Ks1 + (1 + p1 / Kp1) * (1 + p2 / Kp2)));
    end function_12;


    function function_13
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
    end function_13;


    function function_2
        	input Real Vm;
	input Real s1;
	input Real s2;
	input Real Ks1;
	input Real Ks2;
	input Real r1;
	input Real Kr1;
        output Real y;
    algorithm
        y :=  Vm * s1 * s2 / ((s1 + Ks1) * (s2 + Ks2 * (1 + r1 / Kr1)));
    end function_2;


    function function_10
        	input Real Vm;
	input Real S1;
	input Real S2;
	input Real K1;
	input Real K2;
	input Real R1;
	input Real KR1;
	input Real R2;
	input Real KA1;
	input Real A1;
	input Real KA2;
	input Real A2;
	input Real KA3;
	input Real A3;
        output Real y;
    algorithm
        y :=  Vm * S1 * S2 / ((S1 + K1) * (1 + R1 / KR1) * (S2 + K2 * (1 + K2 * R2 / (KA1 * A1 + KA2 * A2 + KA3 * A3))));
    end function_10;


    function function_19
        	input Real Vm;
	input Real s1;
	input Real Ks1;
	input Real r1;
	input Real Kr1;
	input Real r2;
	input Real Kr2;
        output Real y;
    algorithm
        y :=  Vm * s1 / (s1 + Ks1 * (1 + r1 / Kr1) * (1 + r2 / Kr2));
    end function_19;


    function function_20
        	input Real Vm;
	input Real s1;
	input Real s2;
	input Real p1;
	input Real p2;
	input Real q;
	input Real Ks1;
	input Real r1;
	input Real Kr1;
	input Real Ks2;
        output Real y;
    algorithm
        y :=  Vm * (s1 * s2 - p1 * p2 / q) / ((s1 + Ks1 * (1 + r1 / Kr1)) * (s2 + Ks2));
    end function_20;


    function function_1
        	input Real Vm;
	input Real S;
	input Real K;
	input Real R1;
	input Real KR1;
	input Real R2;
	input Real KR2;
	input Real R3;
	input Real KR3;
	input Real R4;
	input Real KR4;
	input Real R5;
	input Real KR5;
        output Real y;
    algorithm
        y :=  Vm * S / (S + K * (1 + R1 / KR1 + R2 / KR2 + R3 / KR3 + R4 / KR4 + R5 / KR5));
    end function_1;


    function function_3
        	input Real Vm;
	input Real s1;
	input Real s2;
	input Real K1;
	input Real K2;
        output Real y;
    algorithm
        y :=  Vm * s1 * s2 / ((s1 + K1) * (s2 + K2));
    end function_3;


    function function_22
        	input Real Vm;
	input Real s1;
	input Real Ks1;
	input Real r1;
	input Real Kr1;
        output Real y;
    algorithm
        y :=  Vm * s1 / (s1 + Ks1 * (1 + r1 / Kr1));
    end function_22;


    function function_16
        	input Real Vm;
	input Real s1;
	input Real r1;
	input Real Kr1;
	input Real r2;
	input Real Kr2;
	input Real Ks1;
        output Real y;
    algorithm
        y :=  Vm * s1 / ((s1 + Ks1) * (1 + r1 / Kr1) * (1 + r2 / Kr2));
    end function_16;


    function function_6
        	input Real Vm;
	input Real s1;
	input Real s2;
	input Real p1;
	input Real p2;
	input Real Ks1;
	input Real Ks2;
	input Real r1;
	input Real Kr1;
	input Real r2;
	input Real Kr2;
	input Real q;
        output Real y;
    algorithm
        y :=  Vm * (s1 * s2 - p1 * p2 / q) / ((s1 + Ks1 * (1 + r1 / Kr1 + r2 / Kr2)) * (s2 + Ks2));
    end function_6;


    function function_7
        	input Real Vm;
	input Real s1;
	input Real s2;
	input Real p1;
	input Real q;
	input Real Ks1;
	input Real Ks2;
        output Real y;
    algorithm
        y :=  Vm * (s1 * s2 - p1 / q) / ((s1 + Ks1) * (s2 + Ks2));
    end function_7;


    function function_11
        	input Real Vm;
	input Real S;
	input Real KA;
	input Real A;
	input Real K;
	input Real R1;
	input Real KR1;
	input Real R2;
	input Real KR2;
	input Real R3;
	input Real KR3;
        output Real y;
    algorithm
        y :=  Vm * S / (S * (1 + KA / A) + K * (1 + (1 + KA / A) * (R1 / KR1 + R2 / KR2 + R3 / KR3)));
    end function_11;


    parameter Real cA = 1.5;
    parameter Real cP = 15.0;
    parameter Real cAc = 1.0;
    parameter Real cPc = 15.0;
    parameter Real cNc = 0.87;
    parameter Real cUc = 1.5;
    parameter Real E = 1.456965457;
    parameter Real K_0 = 0.02;
    parameter Real KR1_0 = 0.84;
    parameter Real KR2_0 = 0.04;
    parameter Real KR3_0 = 0.075;
    parameter Real KR4_0 = 0.9;
    parameter Real KR5_0 = 0.07;
    parameter Real Vm_1 = 30.1408;
    parameter Real Ks1_1 = 0.24;
    parameter Real Ks2_1 = 0.39;
    parameter Real Kr1_1 = 0.23;
    parameter Real Vm_2 = 4.03948;
    parameter Real K1_2 = 0.004;
    parameter Real K2_2 = 0.1;
    parameter Real q_3 = 7.1;
    parameter Real Ks1_3 = 0.3;
    parameter Real Ks2_3 = 0.4;
    parameter Real Kp1_3 = 0.02;
    parameter Real Vm_3 = 1.21889;
    parameter Real Vm_4 = 0.72626;
    parameter Real q_4 = 666000.0;
    parameter Real Ks1_4 = 0.033;
    parameter Real Kr1_4 = 0.7;
    parameter Real Kr2_4 = 12.0;
    parameter Real Vm_5 = 3.12207;
    parameter Real Ks1_5 = 0.1;
    parameter Real Ks2_5 = 0.1;
    parameter Real Kr1_5 = 0.1;
    parameter Real Kr2_5 = 0.1;
    parameter Real q_5 = 10.0;
    parameter Real Vm_6 = 1.21889;
    parameter Real q_6 = 1.017;
    parameter Real Ks1_6 = 0.4;
    parameter Real Ks2_6 = 0.2;
    parameter Real Vm_7 = 0.324191;
    parameter Real q_7 = 666000.0;
    parameter Real Ks1_7 = 0.05;
    parameter Real Kr1_7 = 12.0;
    parameter Real Vm_8 = 3.12207;
    parameter Real Ks1_8 = 0.072;
    parameter Real Ks2_8 = 0.46;
    parameter Real Kr1_8 = 0.1;
    parameter Real Kr2_8 = 1.5;
    parameter Real q_8 = 1.17647;
    parameter Real Vm_9 = 10.8348;
    parameter Real q_9 = 6846.0;
    parameter Real Ks1_9 = 0.05;
    parameter Real Kr1_9 = 2.0;
    parameter Real Kr2_9 = 0.7;
    parameter Real Kr3_9 = 4.0;
    parameter Real Kr41_9 = 2.5;
    parameter Real Ks2_9 = 0.059;
    parameter Real Kr42_9 = 0.4;
    parameter Real q_10 = 5.734;
    parameter Real Ks1_10 = 0.014;
    parameter Real Ks2_10 = 0.3;
    parameter Real Kp1_10 = 0.3;
    parameter Real Vm_10 = 15.0;
    parameter Real Vm_11 = 0.266843;
    parameter Real K1_11 = 0.08;
    parameter Real K2_11 = 0.08;
    parameter Real KR1_11 = 10.0;
    parameter Real KA1_11 = 0.1;
    parameter Real KA2_11 = 0.02;
    parameter Real KA3_11 = 0.02;
    parameter Real Vm_12 = 1.24333;
    parameter Real KA_12 = 0.74;
    parameter Real K_12 = 0.25;
    parameter Real KR1_12 = 0.63;
    parameter Real KR2_12 = 0.075;
    parameter Real KR3_12 = 0.077;
    parameter Real Vm_13 = 1.24333;
    parameter Real KA_13 = 0.74;
    parameter Real K_13 = 0.075;
    parameter Real KR1_13 = 0.63;
    parameter Real KR2_13 = 0.25;
    parameter Real KR3_13 = 0.077;
    parameter Real Vm_14 = 1.24333;
    parameter Real KA_14 = 0.74;
    parameter Real K_14 = 0.077;
    parameter Real KR1_14 = 0.63;
    parameter Real KR2_14 = 0.25;
    parameter Real KR3_14 = 0.075;
    parameter Real q_15 = 12.0;
    parameter Real Ks1_15 = 0.3;
    parameter Real Ks2_15 = 0.4;
    parameter Real Kp1_15 = 0.02;
    parameter Real Vm_15 = 0.107377;
    parameter Real q_16 = 6663.0;
    parameter Real Kp1_16 = 0.7;
    parameter Real Kp2_16 = 12.0;
    parameter Real Vm_16 = 0.063979;
    parameter Real q_17 = 0.31;
    parameter Real Ks1_17 = 0.14;
    parameter Real Ks2_17 = 0.1;
    parameter Real Kp1_17 = 0.12;
    parameter Real Kp2_17 = 0.11;
    parameter Real Vm_17 = 0.115403;
    parameter Real Vm_18 = 0.0555034;
    parameter Real q_18 = 10.0;
    parameter Real Ks1_18 = 0.8;
    parameter Real Kr1_18 = 0.8;
    parameter Real Ks2_18 = 2.4;
    parameter Real Kr2_18 = 0.7;
    parameter Real Kr3_18 = 0.4;
    parameter Real Kr4_18 = 50.0;
    parameter Real Kr5_18 = 11.0;
    parameter Real Vm_19 = 0.555034;
    parameter Real q_19 = 780.0;
    parameter Real Ks1_19 = 0.35;
    parameter Real Kr1_19 = 80.0;
    parameter Real Vm_20 = 0.100915;
    parameter Real q_20 = 590.0;
    parameter Real Ks1_20 = 0.5;
    parameter Real Kr1_20 = 0.021;
    parameter Real Kr2_20 = 0.7;
    parameter Real Ks2_20 = 0.5;
    parameter Real Kr3_20 = 0.16;
    parameter Real Vm_21 = 0.0168192;
    parameter Real Kr1_21 = 0.5;
    parameter Real Kr2_21 = 0.1;
    parameter Real Ks1_21 = 0.032;
    parameter Real Km_22 = 5.0;
    parameter Real V_22 = 2.0;
    parameter Real Km_23 = 1.0;
    parameter Real V_23 = 0.5;
    parameter Real Km_24 = 0.39;
    parameter Real V_24 = 5.0;
    parameter Real Ki_24 = 0.28;
    parameter Real Km_25 = 0.39;
    parameter Real V_25 = 5.0;
    parameter Real Ki_25 = 0.28;
    parameter Real Km_26 = 0.2;
    parameter Real V_26 = 6.0;
    parameter Real Ki_26 = 0.22;
    parameter Real Km_27 = 0.2;
    parameter Real V_27 = 6.0;
    parameter Real Ki_27 = 0.22;
    parameter Real K_28 = 0.02;
    parameter Real KR1_28 = 0.84;
    parameter Real KR2_28 = 0.04;
    parameter Real KR3_28 = 0.075;
    parameter Real KR4_28 = 0.9;
    parameter Real KR5_28 = 0.07;
    parameter Real Vm_29 = 52.4199;
    parameter Real Ks1_29 = 0.026;
    parameter Real Kr1_29 = 94.0;
    parameter Real Kr2_29 = 2.55;
    parameter Real Vm_30 = 5.71579;
    parameter Real q_30 = 300.0;
    parameter Real Ks1_30 = 0.21;
    parameter Real Kr1_30 = 0.36;
    parameter Real Ks2_30 = 0.25;
    parameter Real Km_31 = 0.1;
    parameter Real V_31 = 1.45611;
    parameter Real Vm_32 = 3.30619;
    parameter Real q_32 = 0.24;
    parameter Real Ks1_32 = 2.7;
    parameter Real Kr1_32 = 33.0;
    parameter Real Ks2_32 = 0.15;
    parameter Real Vm_33 = 10.0098;
    parameter Real q_33 = 250000.0;
    parameter Real Ks1_33 = 0.09;
    parameter Real Kr1_33 = 12.0;
    parameter Real Vm_34 = 2.74582;
    parameter Real q_34 = 607.0;
    parameter Real Ks1_34 = 1.7;
    parameter Real Kr1_34 = 2.0;
    parameter Real Ks2_34 = 0.15;
    parameter Real Vm_35 = 2.49475;
    parameter Real Ks1_35 = 6.0;
    parameter Real Kr1_35 = 4.0;
    parameter Real chloroplast = 1.0;
    parameter Real cytosol = 1.0;

    Real Wc_min(start=0.76667245633627);
    Real Wo_min(start=0.280229143229506);
    Real K52a(start=0.00277857142857143);

    Real PGA;
    Real DPGA;
    Real GAP;
    Real DHAP;
    Real TP;
    Real FBP;
    Real F6P;
    Real G6P;
    Real G1P;
    Real HeP;
    Real E4P;
    Real SBP;
    Real S7P;
    Real X5P;
    Real R5P;
    Real Ru5P;
    Real PeP;
    Real RuBP;
    Real ATP;
    Real ADP;
    Real NADPH;
    Real Pi;
    Real PGCA;
    Real GCA;
    Real GCEA;
    Real CO2;
    Real O2;
    Real NADP;
    Real HPRc;
    Real GCAc;
    Real GOAc;
    Real GLYc;
    Real SERc;
    Real GCEAc;
    Real PGAc;
    Real GAPc;
    Real DHAPc;
    Real TPc;
    Real FBPc;
    Real F6Pc;
    Real G6Pc;
    Real G1Pc;
    Real HePc;
    Real F26BPc;
    Real UDPGc;
    Real SucPc;
    Real Succ;
    Real UTPc;
    Real UDPc;
    Real NAD;
    Real NADH;
    Real GLUc;
    Real KGc;
    Real Pic;
    Real PiTc;
    Real ATPc;
    Real ADPc;
    Real PiPic;

initial equation
    PGA = 2.4;
    DPGA = 0.0011;
    TP = 0.5;
    FBP = 0.669999999999999;
    HeP = 2.2;
    E4P = 0.05;
    SBP = 0.3;
    S7P = 2.0;
    PeP = 0.25;
    RuBP = 2.0;
    ATP = 0.68;
    NADPH = 0.21;
    PGCA = 0.0029;
    GCA = 0.36;
    GCEA = 0.1812;
    CO2 = 0.009;
    O2 = 0.2646;
    NADP = 0.29;
    HPRc = 0.0035;
    GCAc = 0.36;
    GOAc = 0.028;
    GLYc = 1.8;
    SERc = 7.5;
    GCEAc = 0.1812;
    PGAc = 0.0;
    TPc = 2.3;
    FBPc = 2.0;
    HePc = 5.8;
    F26BPc = 7.8e-06;
    UDPGc = 0.57;
    SucPc = 0.0;
    Succ = 0.0;
    UTPc = 0.75;
    NAD = 0.4;
    NADH = 0.47;
    GLUc = 24.0;
    KGc = 0.4;
    ATPc = 0.35;

equation
    K52a = 0.0025 * (1 + F26BPc / 7e-5);
    R5P = PeP / 0.4 / (1 + 1 / 0.4 + 1 / 0.67);
    G6P = HeP / (1 + 1 / 2.3 + 0.058);
    DHAP = TP / (1 + 0.05);
    GAP = 0.05 * TP / (1 + 0.05);
    G1P = HeP * 0.058 / (1 + 1 / 2.3 + 0.058);
    X5P = PeP / 0.67 / (1 + 1 / 0.4 + 1 / 0.67);
    Pi = cP - 2 * (RuBP + DPGA + FBP + SBP) - (PGA + TP + HeP + E4P + S7P + PeP + ATP + PGCA);
    Ru5P = PeP / (1 + 1 / 0.4 + 1 / 0.67);
    F6P = HeP / 2.3 / (1 + 1 / 2.3 + 0.058);
    ADP = cA - ATP;
    G6Pc = HePc / (1 + 1 / 2.3 + 0.0584);
    GAPc = 0.05 * TPc / (1 + 0.05);
    PiTc = cPc - 2 * (FBPc + F26BPc) - (PGAc + TPc + HePc + SucPc + ATPc + UTPc);
    F6Pc = HePc / 2.3 / (1 + 1 / 2.3 + 0.0584);
    Pic = 12000000 / 2 * (sqrt(1 + 4 * PiTc / 12000000) - 1);
    PiPic = PiTc - Pic;
    Wc_min = 2.913930914 * CO2 / (CO2 + 0.0115 * (1 + O2 / 0.222)) * ((1 + RuBP / E - abs(1 - RuBP / E)) / 2);
    G1Pc = HePc * 0.0584 / (1 + 1 / 2.3 + 0.0584);
    DHAPc = TPc / (1 + 0.05);
    UDPc = cUc - UTPc - UDPGc;
    Wo_min = 0.24 * 2.913930914 * O2 / (O2 + 0.222 * (1 + CO2 / 0.0115)) * ((1 + RuBP / E - abs(1 - RuBP / E)) / 2);
    ADPc = cAc - ATPc;
    der(PGA) = (2.0 * chloroplast * function_1(Wc_min, RuBP, K_0, PGA, K_0R1, FBP, K_0R2, SBP, K_0R3, Pi, K_0R4, NADPH, K_0R5)) + (chloroplast * function_1(Wo_min, RuBP, K_28, PGA, K_28R1, FBP, K_28R2, SBP, K_28R3, Pi, K_28R4, NADPH, K_28R5)) + (chloroplast * function_20(Vm_30, ATP, GCEA, PGA, ADP, q_30, Ks1_30, PGA, Kr1_30, Ks2_30)) - (chloroplast * function_2(Vm_1, PGA, ATP, Ks1_1, Ks2_1, ADP, Kr1_1)) - (function_11(Vm_12, PGA, K_12A_12, Pic, K_12, Pi, K_12R1, GAP, K_12R2, DHAP, K_12R3));
    der(DPGA) = (chloroplast * function_2(Vm_1, PGA, ATP, Ks1_1, Ks2_1, ADP, Kr1_1)) - (chloroplast * function_3(Vm_2, DPGA, NADPH, K1_2, K2_2));
    der(TP) = (chloroplast * function_3(Vm_2, DPGA, NADPH, K1_2, K2_2)) - (2.0 * chloroplast * function_4(GAP, DHAP, FBP, q_3, Ks1_3, Ks2_3, Kp1_3, Vm_3)) - (chloroplast * function_6(Vm_5, F6P, GAP, X5P, E4P, Ks1_5, Ks2_5, X5P, Kr1_5, E4P, Kr2_5, q_5)) - (chloroplast * function_7(Vm_6, DHAP, E4P, SBP, q_6, Ks1_6, Ks2_6)) - (chloroplast * function_6(Vm_8, GAP, S7P, X5P, R5P, Ks1_8, Ks2_8, X5P, Kr1_8, R5P, Kr2_8, q_8)) - (function_11(Vm_13, GAP, K_13A_13, Pic, K_13, Pi, K_13R1, PGA, K_13R2, DHAP, K_13R3)) - (function_11(Vm_14, DHAP, K_14A_14, Pic, K_14, Pi, K_14R1, PGA, K_14R2, GAP, K_14R3));
    der(FBP) = (chloroplast * function_4(GAP, DHAP, FBP, q_3, Ks1_3, Ks2_3, Kp1_3, Vm_3)) - (chloroplast * function_5(Vm_4, FBP, F6P, Pi, q_4, Ks1_4, F6P, Kr1_4, Pi, Kr2_4));
    der(HeP) = (chloroplast * function_5(Vm_4, FBP, F6P, Pi, q_4, Ks1_4, F6P, Kr1_4, Pi, Kr2_4)) - (chloroplast * function_6(Vm_5, F6P, GAP, X5P, E4P, Ks1_5, Ks2_5, X5P, Kr1_5, E4P, Kr2_5, q_5)) - (chloroplast * function_10(Vm_11, G1P, ATP, K1_11, K2_11, ADP, KR1_11, Pi, KA1_11, PGA, KA2_11, F6P, KA3_11, FBP));
    der(E4P) = (chloroplast * function_6(Vm_5, F6P, GAP, X5P, E4P, Ks1_5, Ks2_5, X5P, Kr1_5, E4P, Kr2_5, q_5)) - (chloroplast * function_7(Vm_6, DHAP, E4P, SBP, q_6, Ks1_6, Ks2_6));
    der(SBP) = (chloroplast * function_7(Vm_6, DHAP, E4P, SBP, q_6, Ks1_6, Ks2_6)) - (chloroplast * function_8(Vm_7, SBP, S7P, Pi, q_7, Ks1_7, Pi, Kr1_7));
    der(S7P) = (chloroplast * function_8(Vm_7, SBP, S7P, Pi, q_7, Ks1_7, Pi, Kr1_7)) - (chloroplast * function_6(Vm_8, GAP, S7P, X5P, R5P, Ks1_8, Ks2_8, X5P, Kr1_8, R5P, Kr2_8, q_8));
    der(PeP) = (chloroplast * function_6(Vm_5, F6P, GAP, X5P, E4P, Ks1_5, Ks2_5, X5P, Kr1_5, E4P, Kr2_5, q_5)) + (2.0 * chloroplast * function_6(Vm_8, GAP, S7P, X5P, R5P, Ks1_8, Ks2_8, X5P, Kr1_8, R5P, Kr2_8, q_8)) - (chloroplast * function_9(Vm_9, Ru5P, ATP, RuBP, ADP, q_9, Ks1_9, PGA, Kr1_9, RuBP, Kr2_9, Pi, Kr3_9, ADP, Kr41_9, Ks2_9, Kr42_9));
    der(RuBP) = (chloroplast * function_9(Vm_9, Ru5P, ATP, RuBP, ADP, q_9, Ks1_9, PGA, Kr1_9, RuBP, Kr2_9, Pi, Kr3_9, ADP, Kr41_9, Ks2_9, Kr42_9)) - (chloroplast * function_1(Wc_min, RuBP, K_0, PGA, K_0R1, FBP, K_0R2, SBP, K_0R3, Pi, K_0R4, NADPH, K_0R5)) - (chloroplast * function_1(Wo_min, RuBP, K_28, PGA, K_28R1, FBP, K_28R2, SBP, K_28R3, Pi, K_28R4, NADPH, K_28R5));
    der(ATP) = (chloroplast * function_4(ADP, Pi, ATP, q_10, Ks1_10, Ks2_10, Kp1_10, Vm_10)) - (chloroplast * function_2(Vm_1, PGA, ATP, Ks1_1, Ks2_1, ADP, Kr1_1)) - (chloroplast * function_9(Vm_9, Ru5P, ATP, RuBP, ADP, q_9, Ks1_9, PGA, Kr1_9, RuBP, Kr2_9, Pi, Kr3_9, ADP, Kr41_9, Ks2_9, Kr42_9)) - (chloroplast * function_10(Vm_11, G1P, ATP, K1_11, K2_11, ADP, KR1_11, Pi, KA1_11, PGA, KA2_11, F6P, KA3_11, FBP)) - (chloroplast * function_20(Vm_30, ATP, GCEA, PGA, ADP, q_30, Ks1_30, PGA, Kr1_30, Ks2_30));
    der(NADPH) = 0.0;
    der(PGCA) = (chloroplast * function_1(Wo_min, RuBP, K_28, PGA, K_28R1, FBP, K_28R2, SBP, K_28R3, Pi, K_28R4, NADPH, K_28R5)) - (chloroplast * function_19(Vm_29, PGCA, Ks1_29, GCA, Kr1_29, Pi, Kr2_29));
    der(GCA) = (function_18(GCAc, GCEAc, Km_27, V_27, Ki_27)) + (chloroplast * function_19(Vm_29, PGCA, Ks1_29, GCA, Kr1_29, Pi, Kr2_29)) - (function_18(GCA, GCEA, Km_26, V_26, Ki_26));
    der(GCEA) = (function_18(GCEAc, GCAc, Km_24, V_24, Ki_24)) - (function_18(GCEA, GCA, Km_25, V_25, Ki_25)) - (chloroplast * function_20(Vm_30, ATP, GCEA, PGA, ADP, q_30, Ks1_30, PGA, Kr1_30, Ks2_30));
    der(CO2) = 0.0;
    der(O2) = 0.0;
    der(NADP) = 0.0;
    der(HPRc) = (function_20(Vm_32, SERc, GOAc, HPRc, GLYc, q_32, Ks1_32, GLYc, Kr1_32, Ks2_32)) - (function_21(Vm_33, HPRc, NADH, GCEAc, NAD, q_33, Ks1_33, HPRc, Kr1_33));
    der(GCAc) = (function_18(GCA, GCEA, Km_26, V_26, Ki_26)) - (function_18(GCAc, GCEAc, Km_27, V_27, Ki_27)) - (cytosol * function_17(GCAc, Km_31, V_31));
    der(GOAc) = (cytosol * function_17(GCAc, Km_31, V_31)) - (function_20(Vm_32, SERc, GOAc, HPRc, GLYc, q_32, Ks1_32, GLYc, Kr1_32, Ks2_32)) - (cytosol * function_20(Vm_34, GLUc, GOAc, KGc, GLYc, q_34, Ks1_34, GLYc, Kr1_34, Ks2_34));
    der(GLYc) = (function_20(Vm_32, SERc, GOAc, HPRc, GLYc, q_32, Ks1_32, GLYc, Kr1_32, Ks2_32)) + (cytosol * function_20(Vm_34, GLUc, GOAc, KGc, GLYc, q_34, Ks1_34, GLYc, Kr1_34, Ks2_34)) - (2.0 * cytosol * function_22(Vm_35, GLYc, Ks1_35, SERc, Kr1_35));
    der(SERc) = (cytosol * function_22(Vm_35, GLYc, Ks1_35, SERc, Kr1_35)) - (function_20(Vm_32, SERc, GOAc, HPRc, GLYc, q_32, Ks1_32, GLYc, Kr1_32, Ks2_32));
    der(GCEAc) = (function_18(GCEA, GCA, Km_25, V_25, Ki_25)) + (function_21(Vm_33, HPRc, NADH, GCEAc, NAD, q_33, Ks1_33, HPRc, Kr1_33)) - (function_18(GCEAc, GCAc, Km_24, V_24, Ki_24));
    der(PGAc) = (function_11(Vm_12, PGA, K_12A_12, Pic, K_12, Pi, K_12R1, GAP, K_12R2, DHAP, K_12R3)) - (cytosol * function_17(PGAc, Km_23, V_23));
    der(TPc) = (function_11(Vm_13, GAP, K_13A_13, Pic, K_13, Pi, K_13R1, PGA, K_13R2, DHAP, K_13R3)) + (function_11(Vm_14, DHAP, K_14A_14, Pic, K_14, Pi, K_14R1, PGA, K_14R2, GAP, K_14R3)) - (2.0 * cytosol * function_4(GAPc, DHAPc, FBPc, q_15, Ks1_15, Ks2_15, Kp1_15, Vm_15));
    der(FBPc) = (cytosol * function_4(GAPc, DHAPc, FBPc, q_15, Ks1_15, Ks2_15, Kp1_15, Vm_15)) - (cytosol * function_12(FBPc, F6Pc, Pic, q_16, K52a, Kp1_16, Kp2_16, Vm_16));
    der(HePc) = (cytosol * function_12(FBPc, F6Pc, Pic, q_16, K52a, Kp1_16, Kp2_16, Vm_16)) + (cytosol * function_16(Vm_21, F26BPc, Pic, Kr1_21, F6Pc, Kr2_21, Ks1_21)) - (cytosol * function_13(G1Pc, UTPc, UDPGc, PiPic, q_17, Ks1_17, Ks2_17, Kp1_17, Kp2_17, Vm_17)) - (cytosol * function_14(Vm_18, F6Pc, UDPGc, SucPc, UDPc, q_18, Ks1_18, FBPc, Kr1_18, Ks2_18, UDPc, Kr2_18, SucPc, Kr3_18, Succ, Kr4_18, Pic, Kr5_18)) - (cytosol * function_15(Vm_20, F6Pc, ATPc, F26BPc, ADPc, q_20, Ks1_20, F26BPc, Kr1_20, DHAPc, Kr2_20, Ks2_20, ADPc, Kr3_20));
    der(F26BPc) = (cytosol * function_15(Vm_20, F6Pc, ATPc, F26BPc, ADPc, q_20, Ks1_20, F26BPc, Kr1_20, DHAPc, Kr2_20, Ks2_20, ADPc, Kr3_20)) - (cytosol * function_16(Vm_21, F26BPc, Pic, Kr1_21, F6Pc, Kr2_21, Ks1_21));
    der(UDPGc) = (cytosol * function_13(G1Pc, UTPc, UDPGc, PiPic, q_17, Ks1_17, Ks2_17, Kp1_17, Kp2_17, Vm_17)) - (cytosol * function_14(Vm_18, F6Pc, UDPGc, SucPc, UDPc, q_18, Ks1_18, FBPc, Kr1_18, Ks2_18, UDPc, Kr2_18, SucPc, Kr3_18, Succ, Kr4_18, Pic, Kr5_18));
    der(SucPc) = (cytosol * function_14(Vm_18, F6Pc, UDPGc, SucPc, UDPc, q_18, Ks1_18, FBPc, Kr1_18, Ks2_18, UDPc, Kr2_18, SucPc, Kr3_18, Succ, Kr4_18, Pic, Kr5_18)) - (cytosol * function_8(Vm_19, SucPc, Succ, Pic, q_19, Ks1_19, Succ, Kr1_19));
    der(Succ) = (cytosol * function_8(Vm_19, SucPc, Succ, Pic, q_19, Ks1_19, Succ, Kr1_19)) - (cytosol * function_17(Succ, Km_22, V_22));
    der(UTPc) = 0.0;
    der(NAD) = 0.0;
    der(NADH) = 0.0;
    der(GLUc) = 0.0;
    der(KGc) = 0.0;
    der(ATPc) = 0.0;




end BIOMD393;
