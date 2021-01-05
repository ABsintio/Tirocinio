
model BIOMD426 "Mosca2012 - Central Carbon Metabolism Regulated by AKT"

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


    function RUPE
        	input Real Vmax;
	input Real RU5P;
	input Real X5P;
	input Real Keq_RUPE;
	input Real KRu5P;
	input Real KX5P;
        output Real y;
    algorithm
        y :=  Vmax * (RU5P - X5P / Keq_RUPE) / (RU5P + KRu5P * (1 + X5P / KX5P));
    end RUPE;


    function PGDH
        	input Real Vmax;
	input Real K6PG1;
	input Real KNADP;
	input Real PGN;
	input Real NADP;
	input Real RU5P;
	input Real NADPH;
	input Real Kapp;
	input Real BPG;
	input Real KPGA23;
	input Real ATP;
	input Real KATP;
	input Real K6PG2;
	input Real KNADPH;
        output Real y;
    algorithm
        y :=  (Vmax / K6PG1 / KNADP) * (PGN * NADP - RU5P * NADPH / Kapp) / ((1 + NADP / KNADP) * (1 + PGN / K6PG1 + BPG / KPGA23) + ATP / KATP + NADPH * (1 + PGN / K6PG2) / KNADPH);
    end PGDH;


    function G6PDH
        	input Real Vmax;
	input Real KG6P;
	input Real KNADP;
	input Real G6P;
	input Real NADP;
	input Real PGN;
	input Real NADPH;
	input Real Kapp;
	input Real ATP;
	input Real KATP;
	input Real KNADPH;
	input Real BPG;
	input Real KPGA23;
        output Real y;
    algorithm
        y :=  (Vmax / KG6P / KNADP) * (G6P * NADP - PGN * NADPH / Kapp) / (1 + NADP * (1 + G6P / KG6P) / KNADP + ATP / KATP + NADPH / KNADPH + BPG / KPGA23);
    end G6PDH;


    function TKL
        	input Real Vmax;
	input Real R5P;
	input Real X5P;
	input Real GAP;
	input Real S7P;
	input Real Keq_TKL;
	input Real K1;
	input Real K2;
	input Real K6;
	input Real K3;
	input Real K5;
	input Real K4;
	input Real K7;
        output Real y;
    algorithm
        y :=  Vmax * (R5P * X5P - GAP * S7P / Keq_TKL) / ((K1 + R5P) * X5P + (K2 + K6 * S7P) * R5P + (K3 + K5 * S7P) * GAP + K4 * S7P + K7 * X5P * GAP);
    end TKL;


    function PGI
        	input Real Vmf;
	input Real A;
	input Real Kg6p;
	input Real Vmr;
	input Real P;
	input Real Kf6p;
	input Real E4P;
	input Real Kery4p;
	input Real F16P;
	input Real Kfbp;
	input Real PGN;
	input Real Kpg;
        output Real y;
    algorithm
        y :=  (Vmf * A / Kg6p - Vmr * P / Kf6p) / (1 + A / Kg6p + P / Kf6p + E4P / Kery4p + F16P / Kfbp + PGN / Kpg);
    end PGI;


    function TKL2
        	input Real Vmax;
	input Real E4P;
	input Real X5P;
	input Real GAP;
	input Real F6P;
	input Real Keq_TKL2;
	input Real K1;
	input Real K2;
	input Real K6;
	input Real K3;
	input Real K5;
	input Real K4;
	input Real K7;
        output Real y;
    algorithm
        y :=  Vmax * (E4P * X5P - GAP * F6P / Keq_TKL2) / ((K1 + E4P) * X5P + (K2 + K6 * F6P) * E4P + (K3 + K5 * F6P) * GAP + K4 * F6P + K7 * X5P * GAP);
    end TKL2;


    function HK
        	input Real Vmf;
	input Real Ka;
	input Real Kb;
	input Real A;
	input Real B;
	input Real P;
	input Real Q;
	input Real Kapp;
	input Real Kp;
	input Real Kq;
        output Real y;
    algorithm
        y :=  (Vmf / (Ka * Kb)) * (A * B - P * Q / Kapp) / (1 + A / Ka + B / Kb + A * B / (Ka * Kb) + P / Kp + Q / Kq + P * Q / (Kp * Kq) + A * Q / (Ka * Kq) + P * B / (Kp * Kb));
    end HK;


    function R5PI
        	input Real Vmax;
	input Real RU5P;
	input Real R5P;
	input Real Keq_R5PI;
	input Real KRu5P;
	input Real KR5P;
        output Real y;
    algorithm
        y :=  Vmax * (RU5P - R5P / Keq_R5PI) / (RU5P + KRu5P * (1 + R5P / KR5P));
    end R5PI;


    function GLUT
        	input Real Vmaxf;
	input Real GLC_e;
	input Real GLC;
	input Real keq;
	input Real KGlc_e;
	input Real KGlc;
        output Real y;
    algorithm
        y :=  Vmaxf * (GLC_e - GLC / keq) / (KGlc_e * (1 + GLC / KGlc) + GLC_e);
    end GLUT;


    function TAL
        	input Real Vmax;
	input Real S7P;
	input Real GAP;
	input Real E4P;
	input Real F6P;
	input Real Keq_TAL;
	input Real K1;
	input Real K2;
	input Real K6;
	input Real K3;
	input Real K5;
	input Real K4;
	input Real K7;
        output Real y;
    algorithm
        y :=  Vmax * (S7P * GAP - E4P * F6P / Keq_TAL) / ((K1 + GAP) * S7P + (K2 + K6 * F6P) * GAP + (K3 + K5 * F6P) * E4P + K4 * F6P + K7 * S7P * E4P);
    end TAL;


    function PGLM
        	input Real Vmaxf;
	input Real G1P;
	input Real KG1P;
	input Real Vmaxr;
	input Real G6P;
	input Real KG6P;
        output Real y;
    algorithm
        y :=  (Vmaxf * G1P / KG1P - Vmaxr * G6P / KG6P) / (1 + G1P / KG1P + G6P / KG6P);
    end PGLM;


    function PRPPS
        	input Real Vmax;
	input Real R5P;
	input Real ATP;
	input Real PRPP;
	input Real AMP;
	input Real Kapp;
	input Real KATP;
	input Real KR5P;
        output Real y;
    algorithm
        y :=  Vmax * (R5P * ATP - PRPP * AMP / Kapp) / ((KATP + ATP) * (KR5P + R5P));
    end PRPPS;


    function GPa
        	input Real Vmaxf;
	input Real GLY;
	input Real Pi;
	input Real KiGLYf;
	input Real KPi;
	input Real Vmaxr;
	input Real G1P;
	input Real KGLYb;
	input Real KiG1P;
	input Real KiPi;
	input Real KiGLYb;
        output Real y;
    algorithm
        y :=  (Vmaxf * (GLY * Pi / (KiGLYf * KPi)) - Vmaxr * (GLY * G1P / (KGLYb * KiG1P))) / (1 + GLY / KiGLYf + Pi / KiPi + GLY / KiGLYb + G1P / KiG1P + GLY * Pi / (KiGLYf * KiPi) + GLY * G1P / (KiGLYb * KiG1P));
    end GPa;


    function GPb
        	input Real Vmaxf;
	input Real GLY;
	input Real Pi;
	input Real KiGLYf;
	input Real KPi;
	input Real Vmaxr;
	input Real G1P;
	input Real KiGLYb;
	input Real KG1P;
	input Real KiPi;
	input Real KiG1P;
	input Real AMP;
	input Real nH;
	input Real Kamp;
        output Real y;
    algorithm
        y :=  ((Vmaxf * (GLY * Pi / (KiGLYf * KPi)) - Vmaxr * (GLY * G1P / (KiGLYb * KG1P))) / (1 + GLY / KiGLYf + Pi / KiPi + GLY / KiGLYb + G1P / KiG1P + GLY * Pi / (KiGLYf * KPi) + GLY * G1P / (KiGLYb * KG1P))) * (AMP^nH / Kamp) / (1 + AMP^nH / Kamp);
    end GPb;


    function FBA
        	input Real Vmf;
	input Real A;
	input Real Kfbp;
	input Real Vmr;
	input Real P;
	input Real Q;
	input Real Kdhap;
	input Real Kg3p;
        output Real y;
    algorithm
        y :=  (Vmf * A / Kfbp - Vmr * P * Q / (Kdhap * Kg3p)) / (1 + A / Kfbp + P / Kdhap + Q / Kg3p + P * Q / (Kdhap * Kg3p));
    end FBA;


    function TPI
        	input Real Vf;
	input Real GAP;
	input Real Kms;
	input Real Vr;
	input Real DHAP;
	input Real Kmp;
        output Real y;
    algorithm
        y :=  (Vf * GAP / Kms - Vr * DHAP / Kmp) / (1 + GAP / Kms + DHAP / Kmp);
    end TPI;


    function GAPDH
        	input Real Vmf;
	input Real A;
	input Real B;
	input Real C;
	input Real Knad;
	input Real Kg3p;
	input Real Kp;
	input Real Vmr;
	input Real P;
	input Real Q;
	input Real Kdpg;
	input Real Knadh;
        output Real y;
    algorithm
        y :=  (Vmf * A * B * C / (Knad * Kg3p * Kp) - Vmr * P * Q / (Kdpg * Knadh)) / (1 + A / Knad + A * B / (Knad * Kg3p) + A * B * C / (Knad * Kg3p * Kp) + P * Q / (Kdpg * Knadh) + Q / Knadh);
    end GAPDH;


    function PGK
        	input Real Vmf;
	input Real A;
	input Real B;
	input Real alfa;
	input Real Ka;
	input Real Kb;
	input Real Vmr;
	input Real P;
	input Real Q;
	input Real beta;
	input Real Kp;
	input Real Kq;
        output Real y;
    algorithm
        y :=  (Vmf * A * B / (alfa * Ka * Kb) - Vmr * P * Q / (beta * Kp * Kq)) / (1 + A / Ka + B / Kb + A * B / (alfa * Ka * Kb) + P * Q / (beta * Kp * Kq) + P / Kp + Q / Kq);
    end PGK;


    function PFK
        	input Real Vm;
	input Real a;
	input Real B;
	input Real Katp;
	input Real beta;
	input Real F26P;
	input Real alfa;
	input Real Kf26bp;
	input Real A;
	input Real Kf6p;
	input Real L;
	input Real CIT;
	input Real Kcit;
	input Real Kiatp;
	input Real Q;
	input Real P;
	input Real Kadp;
	input Real Kfbp;
	input Real Kapp;
        output Real y;
    algorithm
        y :=  Vm * (a * B / Katp / (1 + a * B / Katp)) * ((1 + beta * a * F26P / (alfa * Kf26bp)) / (1 + a * F26P / (alfa * Kf26bp))) * ((a * A * (1 + a * F26P / (alfa * Kf26bp)) / (Kf6p * (1 + a * F26P / Kf26bp))) * (1 + a * A * (1 + a * F26P / (alfa * Kf26bp)) / (Kf6p * (1 + a * F26P / Kf26bp)))^3 / (L * (1 + a * CIT / Kcit)^4 * (1 + a * B / Kiatp)^4 / (1 + a * F26P / Kf26bp)^4 + (1 + a * A * (1 + a * F26P / (alfa * Kf26bp)) / (Kf6p * (1 + a * F26P / Kf26bp)))^4) - a * Q * a * P / (Kadp * Kfbp * Kapp) / (a * Q / Kadp + a * P / Kfbp + a * Q * a * P / (Kadp * Kfbp) + 1));
    end PFK;


    function function_1
        	input Real Vmf;
	input Real PG3;
	input Real Kms;
	input Real Vmr;
	input Real PG2;
	input Real Kmp;
        output Real y;
    algorithm
        y :=  (Vmf * PG3 / Kms - Vmr * PG2 / Kmp) / (1 + PG3 / Kms + PG2 / Kmp);
    end function_1;


    function GS
        	input Real Vmaxf;
	input Real Kf;
	input Real a;
	input Real G1P;
	input Real ATP;
	input Real GLY;
	input Real Pi;
	input Real ADP;
	input Real Keq;
	input Real Kr;
        output Real y;
    algorithm
        y :=  (Vmaxf / Kf) * a * G1P * a * ATP * a * GLY * (1 - (a * Pi)^2 * a * ADP / (a * G1P * a * ATP * Keq)) / (1 + a * G1P * a * ATP * a * GLY / Kf + a * GLY * (a * Pi)^2 * a * ADP / Kr);
    end GS;


    function function_2
        	input Real Vmf;
	input Real PG2;
	input Real Kms;
	input Real Vmr;
	input Real PEP;
	input Real Kmp;
        output Real y;
    algorithm
        y :=  (Vmf * PG2 / Kms - Vmr * PEP / Kmp) / (1 + PG2 / Kms + PEP / Kmp);
    end function_2;


    function function_3
        	input Real Vm;
	input Real B;
	input Real Kadp;
	input Real A;
	input Real Kpep;
	input Real L;
	input Real Q;
	input Real Kiatp;
	input Real F16P;
	input Real Kfbp;
	input Real P;
	input Real Katp;
	input Real Kpyr;
	input Real Kapp;
	input Real a;
        output Real y;
    algorithm
        y :=  Vm * ((a * B / Kadp / (1 + a * B / Kadp)) * ((a * A / Kpep) * (1 + a * A / Kpep)^3 / (L * (1 + a * Q / Kiatp)^4 / (1 + a * F16P / Kfbp)^4 + (1 + a * A / Kpep)^4)) - a * Q * a * P / (Katp * Kpyr * Kapp) / (a * Q / Katp + a * P / Kpyr + a * Q * a * P / (Katp * Kpyr) + 1));
    end function_3;


    function function_4
        	input Real Vmf;
	input Real A;
	input Real B;
	input Real alfa;
	input Real Ka;
	input Real Kb;
	input Real Vmr;
	input Real P;
	input Real Q;
	input Real beta;
	input Real Kp;
	input Real Kq;
        output Real y;
    algorithm
        y :=  (Vmf * A * B / (alfa * Ka * Kb) - Vmr * P * Q / (beta * Kp * Kq)) / (1 + A / Ka + B / Kb + A * B / (alfa * Ka * Kb) + P * Q / (beta * Kp * Kq) + P / Kp + Q / Kq);
    end function_4;


    function function_5
        	input Real Vf;
	input Real ADP;
	input Real ATP;
	input Real AMP;
	input Real Keq;
        output Real y;
    algorithm
        y :=  Vf * ADP^2 * (1 - ATP * AMP / Keq) / ((1 + ADP)^2 + (1 + ATP) * (1 + AMP) - 1);
    end function_5;


    function function_6
        	input Real Vf;
	input Real NADH;
	input Real NAD;
	input Real Keq;
        output Real y;
    algorithm
        y :=  Vf * NADH * (1 - NAD / (NADH * Keq)) / (1 + NADH + 1 + NAD - 1);
    end function_6;


    function function_7
        	input Real Vf;
	input Real NADPH;
	input Real NADP;
	input Real Keq;
        output Real y;
    algorithm
        y :=  Vf * NADPH * (1 - NADP / (NADPH * Keq)) / (1 + NADPH + 1 + NADP - 1);
    end function_7;


    function function_8
        	input Real Vmf;
	input Real PYR;
	input Real y;
	input Real Pi;
	input Real ADP;
	input Real O2;
	input Real ATP;
	input Real CO2;
	input Real Keq;
        output Real y;
    algorithm
        y :=  Vmf * PYR^(1 / y) * Pi * ADP * O2^(5 / (2 * y)) * (1 - ATP * CO2^(3 / y) / (PYR^(1 / y) * O2^(5 / (2 * y)) * Pi * ADP * Keq)) / ((1 + PYR)^(1 / y) * (1 + O2)^(5 / (2 * y)) * (1 + Pi) * (1 + ADP) + (1 + ATP) * (1 + CO2)^(3 / y) - 1);
    end function_8;


    parameter Real parameter_1 = 0.0114;
    parameter Real parameter_2 = 1.932e-05;
    parameter Real parameter_3 = 0.001345;
    parameter Real parameter_5 = 0.42;
    parameter Real parameter_6 = 16.62;
    parameter Real parameter_12 = 0.0018;
    parameter Real parameter_14 = 0.0556;
    parameter Real parameter_16 = 17.2;
    parameter Real parameter_17 = 1000.0;
    parameter Real parameter_18 = 0.381;
    parameter Real parameter_19 = 0.3574;
    parameter Real parameter_20 = 11.369;
    parameter Real parameter_21 = 1.6491;
    parameter Real parameter_23 = 1.4127;
    parameter Real parameter_25 = 3452.5;
    parameter Real parameter_28 = 1.0;
    parameter Real parameter_29 = 1.0;
    parameter Real parameter_49 = 0.00013;
    parameter Real parameter_50 = 0.00027;
    parameter Real parameter_51 = 7.9e-05;
    parameter Real parameter_52 = 4e-05;
    parameter Real parameter_53 = 6e-05;
    parameter Real parameter_54 = 3.8e-05;
    parameter Real parameter_55 = 7.364;
    parameter Real parameter_56 = 3e-05;
    parameter Real parameter_57 = 6.3e-05;
    parameter Real parameter_58 = 0.03347;
    parameter Real parameter_59 = 0.00015;
    parameter Real parameter_60 = 0.0101;
    parameter Real parameter_61 = 0.0017;
    parameter Real parameter_62 = 0.004;
    parameter Real parameter_63 = 0.01049;
    parameter Real parameter_64 = 0.0044;
    parameter Real parameter_65 = 0.0015;
    parameter Real parameter_66 = 0.015;
    parameter Real parameter_67 = 0.0046;
    parameter Real parameter_68 = 8e-05;
    parameter Real parameter_69 = 0.00016;
    parameter Real parameter_70 = 9e-06;
    parameter Real parameter_71 = 0.0016;
    parameter Real parameter_72 = 0.00051;
    parameter Real parameter_73 = 2.2e-05;
    parameter Real parameter_74 = 1e-05;
    parameter Real parameter_75 = 0.00019;
    parameter Real parameter_76 = 9e-05;
    parameter Real parameter_77 = 0.029;
    parameter Real parameter_78 = 154.0;
    parameter Real parameter_79 = 0.00012;
    parameter Real parameter_80 = 0.00019;
    parameter Real parameter_81 = 5e-05;
    parameter Real parameter_82 = 0.0004;
    parameter Real parameter_83 = 0.0047;
    parameter Real parameter_84 = 7e-05;
    parameter Real parameter_85 = 2e-06;
    parameter Real parameter_86 = 0.0003;
    parameter Real keq_0 = 1.0;
    parameter Real KGlc_e_0 = 0.01;
    parameter Real KGlc_0 = 0.0093;
    parameter Real Ka_1 = 0.0001;
    parameter Real Kb_1 = 0.0011;
    parameter Real Kapp_1 = 651.0;
    parameter Real Kp_1 = 2e-05;
    parameter Real Kq_1 = 0.0035;
    parameter Real Kery4p_2 = 1e-06;
    parameter Real Kfbp_2 = 6e-05;
    parameter Real Kpg_2 = 1.5e-05;
    parameter Real KG6P_3 = 6.67e-08;
    parameter Real KNADP_3 = 3.67e-09;
    parameter Real Kapp_3 = 2000.0;
    parameter Real KATP_3 = 7.49e-07;
    parameter Real KNADPH_3 = 3.12e-09;
    parameter Real KPGA23_3 = 2.289e-06;
    parameter Real K6PG1_4 = 1e-08;
    parameter Real KNADP_4 = 1.8e-08;
    parameter Real Kapp_4 = 141.7;
    parameter Real KPGA23_4 = 1.2e-07;
    parameter Real KATP_4 = 1.54e-07;
    parameter Real K6PG2_4 = 5.8e-08;
    parameter Real KNADPH_4 = 4.5e-09;
    parameter Real Vmax_5 = 1.471;
    parameter Real Keq_RUPE_5 = 2.7;
    parameter Real KRu5P_5 = 1.9e-07;
    parameter Real KX5P_5 = 5e-07;
    parameter Real Vmax_6 = 0.7646;
    parameter Real Keq_R5PI_6 = 3.0;
    parameter Real KRu5P_6 = 7.8e-07;
    parameter Real KR5P_6 = 2.2e-06;
    parameter Real Keq_TKL_7 = 2.08;
    parameter Real K1_7 = 4.177e-07;
    parameter Real K2_7 = 3.055e-07;
    parameter Real K6_7 = 0.00774;
    parameter Real K3_7 = 1.2432e-05;
    parameter Real K5_7 = 0.41139;
    parameter Real K4_7 = 4.96e-09;
    parameter Real K7_7 = 48.8;
    parameter Real Keq_TKL2_8 = 29.7;
    parameter Real K1_8 = 1.84e-09;
    parameter Real K2_8 = 3.055e-07;
    parameter Real K6_8 = 0.122;
    parameter Real K3_8 = 5.48e-08;
    parameter Real K5_8 = 0.0287;
    parameter Real K4_8 = 3e-10;
    parameter Real K7_8 = 0.215;
    parameter Real Vmax_9 = 58.27;
    parameter Real Keq_TAL_9 = 2.703;
    parameter Real K1_9 = 8.23e-09;
    parameter Real K2_9 = 4.765e-08;
    parameter Real K6_9 = 0.4653;
    parameter Real K3_9 = 1.733e-07;
    parameter Real K5_9 = 0.8683;
    parameter Real K4_9 = 6.095e-09;
    parameter Real K7_9 = 2.524;
    parameter Real Vmax_10 = 0.5104;
    parameter Real Kapp_10 = 100000.0;
    parameter Real KATP_10 = 3e-08;
    parameter Real KR5P_10 = 5.7e-07;
    parameter Real KGLYb_12 = 0.00015;
    parameter Real KiPi_12 = 0.0047;
    parameter Real alfa_16 = 1.0;
    parameter Real beta_16 = 1.0;
    parameter Real KPi_17 = 0.0002;
    parameter Real KiG1P_17 = 0.0074;
    parameter Real nH_17 = 1.75;
    parameter Real Kamp_17 = 1.9e-12;
    parameter Real Kf_18 = 17400.0;
    parameter Real Keq_18 = 267100.0;
    parameter Real Kr_18 = 158.0;
    parameter Real Katp_19 = 2.1e-05;
    parameter Real beta_19 = 0.98;
    parameter Real alfa_19 = 0.32;
    parameter Real Kf26bp_19 = 8.4e-07;
    parameter Real Kf6p_19 = 1.0;
    parameter Real L_19 = 4.1;
    parameter Real Kcit_19 = 6.8;
    parameter Real Kiatp_19 = 20.0;
    parameter Real Kadp_19 = 5.0;
    parameter Real Kfbp_19 = 5.0;
    parameter Real Kapp_19 = 247.0;
    parameter Real Kadp_22 = 0.4;
    parameter Real Kpep_22 = 0.014;
    parameter Real L_22 = 1.0;
    parameter Real Kiatp_22 = 2.5;
    parameter Real Kfbp_22 = 0.0004;
    parameter Real Katp_22 = 0.86;
    parameter Real Kpyr_22 = 10.0;
    parameter Real Kapp_22 = 195172.0;
    parameter Real alfa_23 = 1.0;
    parameter Real beta_23 = 1.0;
    parameter Real Vf_24 = 141.2;
    parameter Real Keq_24 = 2.26;
    parameter Real Keq_25 = 300.0;
    parameter Real Keq_26 = 0.2;
    parameter Real y_27 = 12.5;
    parameter Real Keq_27 = 1000000.0;
    parameter Real k1_28 = 6210.0;
    parameter Real compartment_1 = 1.0;

    Real parameter_4(start=0.0177545693277311);
    Real parameter_7(start=6.03725213205671e-05);
    Real parameter_8(start=11.5595061728395);
    Real parameter_9(start=49.2079666512274);
    Real parameter_10(start=135.42497838741);
    Real parameter_11(start=71.7220990679741);
    Real parameter_13(start=17486.5107913669);
    Real parameter_15(start=0.203875968992248);
    Real parameter_22(start=58.9795390787319);
    Real parameter_24(start=179.83480680891);
    Real parameter_26(start=54.0471638909003);
    Real parameter_27(start=0.00311);
    Real parameter_30(start=23.03);
    Real parameter_31(start=86.85);
    Real parameter_32(start=7778.0);
    Real parameter_33(start=1.008);
    Real parameter_34(start=31.02);
    Real parameter_35(start=1056.0);
    Real parameter_36(start=0.1761);
    Real parameter_37(start=14.63);
    Real parameter_38(start=5.976);
    Real parameter_39(start=109.1);
    Real parameter_40(start=73.41);
    Real parameter_41(start=32040.0);
    Real parameter_42(start=107.6);
    Real parameter_43(start=160.9);
    Real parameter_44(start=27.81);
    Real parameter_45(start=340.3);
    Real parameter_46(start=4982000.0);
    Real parameter_47(start=127800.0);
    Real parameter_48(start=9801000.0);

    Real species_1;
    Real species_2;
    Real species_3;
    Real species_4;
    Real species_5;
    Real species_6;
    Real species_7;
    Real species_8;
    Real species_9;
    Real species_10;
    Real species_11;
    Real species_12;
    Real species_13;
    Real species_14;
    Real species_15;
    Real species_16;
    Real species_17;
    Real species_18;
    Real species_19;
    Real species_20;
    Real species_21;
    Real species_22;
    Real species_23;
    Real species_24;
    Real species_25;
    Real species_26;
    Real species_27;
    Real species_28;
    Real species_29;
    Real species_30;
    Real species_31;
    Real species_32;
    Real species_33;
    Real species_34;

initial equation
    species_1 = 0.000897;
    species_2 = 0.00109;
    species_4 = 0.0087;
    species_5 = 3.62e-05;
    species_6 = 0.000367;
    species_7 = 0.00093;
    species_8 = 0.0001;
    species_9 = 0.01;
    species_11 = 1.87082e-05;
    species_12 = 6.29e-05;
    species_13 = 0.000143;
    species_14 = 0.000242;
    species_15 = 2.74e-05;
    species_16 = 0.000153;
    species_17 = 8.58e-05;
    species_19 = 0.00134;
    species_20 = 0.00311;
    species_21 = 0.001;
    species_22 = 3.41e-05;
    species_23 = 0.02;
    species_24 = 0.208403745497308;
    species_25 = 0.00108;
    species_26 = 3.67e-06;
    species_27 = 0.000553;
    species_28 = 3.07e-05;
    species_29 = 4.98e-06;
    species_30 = 5.79e-05;
    species_31 = 0.00183;
    species_32 = 0.0155;
    species_33 = 0.0214;
    species_34 = 6.5e-05;

equation
    parameter_35 = 1056 * parameter_28;
    parameter_36 = 0.1761 * parameter_28;
    parameter_40 = 73.41 * parameter_28;
    parameter_44 = 27.81 * parameter_28;
    parameter_30 = 23.03 * parameter_28;
    parameter_42 = 107.6 * parameter_28;
    parameter_11 = parameter_40 * parameter_49 * parameter_50 / (parameter_51 * parameter_52 * parameter_20);
    parameter_48 = 9801000 * parameter_29;
    parameter_34 = 31.02 * parameter_28;
    parameter_43 = 160.9 * parameter_28;
    parameter_24 = parameter_43 * parameter_53 / (parameter_54 * parameter_23);
    parameter_15 = parameter_55 * parameter_56 / (parameter_57 * parameter_16);
    parameter_47 = 127800 * parameter_28;
    species_10 = parameter_2 - species_11;
    species_3 = parameter_1 - species_4;
    species_18 = parameter_3 - species_19;
    parameter_4 = parameter_58 * parameter_59 * parameter_60 / (parameter_61 * parameter_62 * parameter_5);
    parameter_7 = parameter_63 * parameter_64 * parameter_65 / (parameter_66 * parameter_67 * parameter_6);
    parameter_37 = 14.63 * parameter_28;
    parameter_8 = parameter_37 * parameter_68 * parameter_69 / (parameter_12 * parameter_70);
    parameter_38 = 5.976 * parameter_28;
    parameter_9 = parameter_38 * parameter_71 / (parameter_72 * parameter_18);
    parameter_39 = 109.1 * parameter_28;
    parameter_10 = parameter_39 * parameter_73 * parameter_74 / (parameter_75 * parameter_76 * parameter_77 * parameter_19);
    parameter_41 = 32040 * parameter_28;
    parameter_46 = 4982000 * parameter_28;
    parameter_22 = parameter_78 * parameter_79 / (parameter_80 * parameter_21);
    parameter_31 = 86.85 * parameter_28;
    parameter_33 = 1.008 * parameter_28;
    parameter_32 = 7778 * parameter_28;
    parameter_13 = parameter_32 * (parameter_81 / (parameter_82 * parameter_14));
    parameter_27 = species_20;
    parameter_45 = 340.3 * parameter_28;
    parameter_26 = parameter_45 * parameter_83 * parameter_84 / (parameter_85 * parameter_86 * parameter_25);
    der(species_1) = (compartment_1 * GLUT(parameter_30, species_9, species_1, keq_0, KGlc_0_e_0, KGlc_0)) - (compartment_1 * HK(parameter_31, Ka_1, Kb_1, species_1, species_4, species_2, species_3, Ka_1pp, Kp_1, Kq_1));
    der(species_2) = (compartment_1 * HK(parameter_31, Ka_1, Kb_1, species_1, species_4, species_2, species_3, Ka_1pp, Kp_1, Kq_1)) + (compartment_1 * PGLM(parameter_55, species_22, parameter_57, parameter_15, species_2, parameter_56)) - (compartment_1 * PGI(parameter_32, species_2, parameter_82, parameter_13, species_5, parameter_81, species_7, Kery4p_2, species_6, Kfbp_2, species_8, Kpg_2)) - (compartment_1 * G6PDH(parameter_33, KG6P_3, KNADP_3, species_2, species_10, species_8, species_11, Kapp_3, species_4, KATP_3, KNADP_3H, species_12, KPGA23_3));
    der(species_4) = (compartment_1 * PGK(parameter_40, species_12, species_3, alfa_16, parameter_51, parameter_52, parameter_11, species_28, species_4, beta_16, parameter_49, parameter_50)) + (compartment_1 * function_3(parameter_44, species_3, Kadp_22, species_30, Kpep_22, L_22, species_4, Kiatp_22, species_6, Kfbp_22, species_31, Katp_22, Kpyr_22, Kapp_22, parameter_17)) + (compartment_1 * function_5(Vf_24, species_3, species_4, species_20, Keq_24)) + (compartment_1 * function_8(parameter_48, species_31, y_27, species_23, species_3, species_34, species_4, species_33, Keq_27)) - (compartment_1 * HK(parameter_31, Ka_1, Kb_1, species_1, species_4, species_2, species_3, Ka_1pp, Kp_1, Kq_1)) - (compartment_1 * PRPPS(Vmax_10, species_15, species_4, species_21, species_20, Kapp_10, KATP_10, KR5P_10)) - (compartment_1 * GS(parameter_41, Kf_18, parameter_17, species_22, species_4, species_24, species_23, species_3, Keq_18, Kr_18)) - (compartment_1 * PFK(parameter_42, parameter_17, species_4, Katp_19, beta_19, species_26, alfa_19, Kf26bp_19, species_5, Kf6p_19, L_19, species_25, Kcit_19, Kiatp_19, species_3, species_6, Kadp_19, Kfbp_19, Kapp_19)) - (compartment_1 * k1_28 * species_4);
    der(species_5) = (compartment_1 * PGI(parameter_32, species_2, parameter_82, parameter_13, species_5, parameter_81, species_7, Kery4p_2, species_6, Kfbp_2, species_8, Kpg_2)) + (compartment_1 * TKL2(parameter_36, species_7, species_14, species_16, species_5, Keq_TKL2_8, K1_8, K2_8, K6_8, K3_8, K5_8, K4_8, K7_8)) + (compartment_1 * TAL(Vmax_9, species_17, species_16, species_7, species_5, Keq_TAL_9, K1_9, K2_9, K6_9, K3_9, K5_9, K4_9, K7_9)) - (compartment_1 * PFK(parameter_42, parameter_17, species_4, Katp_19, beta_19, species_26, alfa_19, Kf26bp_19, species_5, Kf6p_19, L_19, species_25, Kcit_19, Kiatp_19, species_3, species_6, Kadp_19, Kfbp_19, Kapp_19));
    der(species_6) = (compartment_1 * PFK(parameter_42, parameter_17, species_4, Katp_19, beta_19, species_26, alfa_19, Kf26bp_19, species_5, Kf6p_19, L_19, species_25, Kcit_19, Kiatp_19, species_3, species_6, Kadp_19, Kfbp_19, Kapp_19)) - (compartment_1 * FBA(parameter_37, species_6, parameter_70, parameter_8, species_27, species_16, parameter_68, parameter_69));
    der(species_7) = (compartment_1 * TAL(Vmax_9, species_17, species_16, species_7, species_5, Keq_TAL_9, K1_9, K2_9, K6_9, K3_9, K5_9, K4_9, K7_9)) - (compartment_1 * TKL2(parameter_36, species_7, species_14, species_16, species_5, Keq_TKL2_8, K1_8, K2_8, K6_8, K3_8, K5_8, K4_8, K7_8));
    der(species_8) = (compartment_1 * G6PDH(parameter_33, KG6P_3, KNADP_3, species_2, species_10, species_8, species_11, Kapp_3, species_4, KATP_3, KNADP_3H, species_12, KPGA23_3)) - (compartment_1 * PGDH(parameter_34, K6PG1_4, KNADP_4, species_8, species_10, species_13, species_11, Kapp_4, species_12, KPGA23_4, species_4, KATP_4, K6PG2_4, KNADP_4H));
    der(species_9) = 0.0;
    der(species_11) = (compartment_1 * G6PDH(parameter_33, KG6P_3, KNADP_3, species_2, species_10, species_8, species_11, Kapp_3, species_4, KATP_3, KNADP_3H, species_12, KPGA23_3)) + (compartment_1 * PGDH(parameter_34, K6PG1_4, KNADP_4, species_8, species_10, species_13, species_11, Kapp_4, species_12, KPGA23_4, species_4, KATP_4, K6PG2_4, KNADP_4H)) - (compartment_1 * function_7(parameter_47, species_11, species_10, Keq_26));
    der(species_12) = (compartment_1 * GAPDH(parameter_39, species_19, species_16, species_23, parameter_76, parameter_75, parameter_77, parameter_10, species_12, species_18, parameter_73, parameter_74)) - (compartment_1 * PGK(parameter_40, species_12, species_3, alfa_16, parameter_51, parameter_52, parameter_11, species_28, species_4, beta_16, parameter_49, parameter_50));
    der(species_13) = (compartment_1 * PGDH(parameter_34, K6PG1_4, KNADP_4, species_8, species_10, species_13, species_11, Kapp_4, species_12, KPGA23_4, species_4, KATP_4, K6PG2_4, KNADP_4H)) - (compartment_1 * RUPE(Vmax_5, species_13, species_14, Keq_RUPE_5, KRu5P_5, KX5P_5)) - (compartment_1 * R5PI(Vmax_6, species_13, species_15, Keq_R5PI_6, KRu5P_6, KR5P_6));
    der(species_14) = (compartment_1 * RUPE(Vmax_5, species_13, species_14, Keq_RUPE_5, KRu5P_5, KX5P_5)) - (compartment_1 * TKL(parameter_35, species_15, species_14, species_16, species_17, Keq_TKL_7, K1_7, K2_7, K6_7, K3_7, K5_7, K4_7, K7_7)) - (compartment_1 * TKL2(parameter_36, species_7, species_14, species_16, species_5, Keq_TKL2_8, K1_8, K2_8, K6_8, K3_8, K5_8, K4_8, K7_8));
    der(species_15) = (compartment_1 * R5PI(Vmax_6, species_13, species_15, Keq_R5PI_6, KRu5P_6, KR5P_6)) - (compartment_1 * TKL(parameter_35, species_15, species_14, species_16, species_17, Keq_TKL_7, K1_7, K2_7, K6_7, K3_7, K5_7, K4_7, K7_7)) - (compartment_1 * PRPPS(Vmax_10, species_15, species_4, species_21, species_20, Kapp_10, KATP_10, KR5P_10));
    der(species_16) = (compartment_1 * TKL(parameter_35, species_15, species_14, species_16, species_17, Keq_TKL_7, K1_7, K2_7, K6_7, K3_7, K5_7, K4_7, K7_7)) + (compartment_1 * TKL2(parameter_36, species_7, species_14, species_16, species_5, Keq_TKL2_8, K1_8, K2_8, K6_8, K3_8, K5_8, K4_8, K7_8)) + (compartment_1 * FBA(parameter_37, species_6, parameter_70, parameter_8, species_27, species_16, parameter_68, parameter_69)) - (compartment_1 * TAL(Vmax_9, species_17, species_16, species_7, species_5, Keq_TAL_9, K1_9, K2_9, K6_9, K3_9, K5_9, K4_9, K7_9)) - (compartment_1 * TPI(parameter_38, species_16, parameter_72, parameter_9, species_27, parameter_71)) - (compartment_1 * GAPDH(parameter_39, species_19, species_16, species_23, parameter_76, parameter_75, parameter_77, parameter_10, species_12, species_18, parameter_73, parameter_74));
    der(species_17) = (compartment_1 * TKL(parameter_35, species_15, species_14, species_16, species_17, Keq_TKL_7, K1_7, K2_7, K6_7, K3_7, K5_7, K4_7, K7_7)) - (compartment_1 * TAL(Vmax_9, species_17, species_16, species_7, species_5, Keq_TAL_9, K1_9, K2_9, K6_9, K3_9, K5_9, K4_9, K7_9));
    der(species_19) = (compartment_1 * function_4(parameter_45, species_18, species_31, alfa_23, parameter_85, parameter_86, parameter_26, species_32, species_19, beta_23, parameter_83, parameter_84)) + (compartment_1 * function_6(parameter_46, species_18, species_19, Keq_25)) - (compartment_1 * GAPDH(parameter_39, species_19, species_16, species_23, parameter_76, parameter_75, parameter_77, parameter_10, species_12, species_18, parameter_73, parameter_74));
    der(species_20) = 0.0;
    der(species_21) = 0.0;
    der(species_22) = (compartment_1 * GPa(parameter_58, species_24, species_23, parameter_61, parameter_62, parameter_4, species_22, KGLYb_12, parameter_60, KiPi_12, parameter_59)) + (compartment_1 * GPb(parameter_63, species_24, species_23, parameter_66, KPi_17, parameter_7, species_22, parameter_64, parameter_65, parameter_67, KiG1P_17, parameter_27, nH_17, Kamp_17)) - (compartment_1 * PGLM(parameter_55, species_22, parameter_57, parameter_15, species_2, parameter_56)) - (compartment_1 * GS(parameter_41, Kf_18, parameter_17, species_22, species_4, species_24, species_23, species_3, Keq_18, Kr_18));
    der(species_23) = 0.0;
    der(species_24) = 0.0;
    der(species_25) = 0.0;
    der(species_26) = 0.0;
    der(species_27) = (compartment_1 * FBA(parameter_37, species_6, parameter_70, parameter_8, species_27, species_16, parameter_68, parameter_69)) + (compartment_1 * TPI(parameter_38, species_16, parameter_72, parameter_9, species_27, parameter_71)) ;
    der(species_28) = (compartment_1 * PGK(parameter_40, species_12, species_3, alfa_16, parameter_51, parameter_52, parameter_11, species_28, species_4, beta_16, parameter_49, parameter_50)) - (compartment_1 * function_1(parameter_78, species_28, parameter_80, parameter_22, species_29, parameter_79));
    der(species_29) = (compartment_1 * function_1(parameter_78, species_28, parameter_80, parameter_22, species_29, parameter_79)) - (compartment_1 * function_2(parameter_43, species_29, parameter_54, parameter_24, species_30, parameter_53));
    der(species_30) = (compartment_1 * function_2(parameter_43, species_29, parameter_54, parameter_24, species_30, parameter_53)) - (compartment_1 * function_3(parameter_44, species_3, Kadp_22, species_30, Kpep_22, L_22, species_4, Kiatp_22, species_6, Kfbp_22, species_31, Katp_22, Kpyr_22, Kapp_22, parameter_17));
    der(species_31) = (compartment_1 * function_3(parameter_44, species_3, Kadp_22, species_30, Kpep_22, L_22, species_4, Kiatp_22, species_6, Kfbp_22, species_31, Katp_22, Kpyr_22, Kapp_22, parameter_17)) - (compartment_1 * function_4(parameter_45, species_18, species_31, alfa_23, parameter_85, parameter_86, parameter_26, species_32, species_19, beta_23, parameter_83, parameter_84)) - (0.08 * compartment_1 * function_8(parameter_48, species_31, y_27, species_23, species_3, species_34, species_4, species_33, Keq_27));
    der(species_32) = 0.0;
    der(species_33) = 0.0;
    der(species_34) = 0.0;




end BIOMD426;
