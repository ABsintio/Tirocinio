within BIOMD426;
class Functions

    function elmt_GLUT
        input Real arg_Vmaxf;
        input Real arg_GLC_e;
        input Real arg_GLC;
        input Real arg_keq;
        input Real arg_KGlc_e;
        input Real arg_KGlc;

        output Real result;
        algorithm
            result := ((arg_Vmaxf * (arg_GLC_e - (arg_GLC / arg_keq))) / ((arg_KGlc_e * (1.0 + (arg_GLC / arg_KGlc))) + arg_GLC_e));
    end elmt_GLUT;

    function elmt_HK
        input Real arg_Vmf;
        input Real arg_Ka;
        input Real arg_Kb;
        input Real arg_A;
        input Real arg_B;
        input Real arg_P;
        input Real arg_Q;
        input Real arg_Kapp;
        input Real arg_Kp;
        input Real arg_Kq;

        output Real result;
        algorithm
            result := (((arg_Vmf / (arg_Ka * arg_Kb)) * ((arg_A * arg_B) - ((arg_P * arg_Q) / arg_Kapp))) / (1.0 + (arg_A / arg_Ka) + (arg_B / arg_Kb) + ((arg_A * arg_B) / (arg_Ka * arg_Kb)) + (arg_P / arg_Kp) + (arg_Q / arg_Kq) + ((arg_P * arg_Q) / (arg_Kp * arg_Kq)) + ((arg_A * arg_Q) / (arg_Ka * arg_Kq)) + ((arg_P * arg_B) / (arg_Kp * arg_Kb))));
    end elmt_HK;

    function elmt_TKL
        input Real arg_Vmax;
        input Real arg_R5P;
        input Real arg_X5P;
        input Real arg_GAP;
        input Real arg_S7P;
        input Real arg_Keq_TKL;
        input Real arg_K1;
        input Real arg_K2;
        input Real arg_K6;
        input Real arg_K3;
        input Real arg_K5;
        input Real arg_K4;
        input Real arg_K7;

        output Real result;
        algorithm
            result := ((arg_Vmax * ((arg_R5P * arg_X5P) - ((arg_GAP * arg_S7P) / arg_Keq_TKL))) / (((arg_K1 + arg_R5P) * arg_X5P) + ((arg_K2 + (arg_K6 * arg_S7P)) * arg_R5P) + ((arg_K3 + (arg_K5 * arg_S7P)) * arg_GAP) + (arg_K4 * arg_S7P) + (arg_K7 * arg_X5P * arg_GAP)));
    end elmt_TKL;

    function elmt_PGK
        input Real arg_Vmf;
        input Real arg_A;
        input Real arg_B;
        input Real arg_alfa;
        input Real arg_Ka;
        input Real arg_Kb;
        input Real arg_Vmr;
        input Real arg_P;
        input Real arg_Q;
        input Real arg_beta;
        input Real arg_Kp;
        input Real arg_Kq;

        output Real result;
        algorithm
            result := ((((arg_Vmf * arg_A * arg_B) / (arg_alfa * arg_Ka * arg_Kb)) - ((arg_Vmr * arg_P * arg_Q) / (arg_beta * arg_Kp * arg_Kq))) / (1.0 + (arg_A / arg_Ka) + (arg_B / arg_Kb) + ((arg_A * arg_B) / (arg_alfa * arg_Ka * arg_Kb)) + ((arg_P * arg_Q) / (arg_beta * arg_Kp * arg_Kq)) + (arg_P / arg_Kp) + (arg_Q / arg_Kq)));
    end elmt_PGK;

    function elmt_PGI
        input Real arg_Vmf;
        input Real arg_A;
        input Real arg_Kg6p;
        input Real arg_Vmr;
        input Real arg_P;
        input Real arg_Kf6p;
        input Real arg_E4P;
        input Real arg_Kery4p;
        input Real arg_F16P;
        input Real arg_Kfbp;
        input Real arg_PGN;
        input Real arg_Kpg;

        output Real result;
        algorithm
            result := ((((arg_Vmf * arg_A) / arg_Kg6p) - ((arg_Vmr * arg_P) / arg_Kf6p)) / (1.0 + (arg_A / arg_Kg6p) + (arg_P / arg_Kf6p) + (arg_E4P / arg_Kery4p) + (arg_F16P / arg_Kfbp) + (arg_PGN / arg_Kpg)));
    end elmt_PGI;

    function elmt_TAL
        input Real arg_Vmax;
        input Real arg_S7P;
        input Real arg_GAP;
        input Real arg_E4P;
        input Real arg_F6P;
        input Real arg_Keq_TAL;
        input Real arg_K1;
        input Real arg_K2;
        input Real arg_K6;
        input Real arg_K3;
        input Real arg_K5;
        input Real arg_K4;
        input Real arg_K7;

        output Real result;
        algorithm
            result := ((arg_Vmax * ((arg_S7P * arg_GAP) - ((arg_E4P * arg_F6P) / arg_Keq_TAL))) / (((arg_K1 + arg_GAP) * arg_S7P) + ((arg_K2 + (arg_K6 * arg_F6P)) * arg_GAP) + ((arg_K3 + (arg_K5 * arg_F6P)) * arg_E4P) + (arg_K4 * arg_F6P) + (arg_K7 * arg_S7P * arg_E4P)));
    end elmt_TAL;

    function elmt_RUPE
        input Real arg_Vmax;
        input Real arg_RU5P;
        input Real arg_X5P;
        input Real arg_Keq_RUPE;
        input Real arg_KRu5P;
        input Real arg_KX5P;

        output Real result;
        algorithm
            result := ((arg_Vmax * (arg_RU5P - (arg_X5P / arg_Keq_RUPE))) / (arg_RU5P + (arg_KRu5P * (1.0 + (arg_X5P / arg_KX5P)))));
    end elmt_RUPE;

    function elmt_PGLM
        input Real arg_Vmaxf;
        input Real arg_G1P;
        input Real arg_KG1P;
        input Real arg_Vmaxr;
        input Real arg_G6P;
        input Real arg_KG6P;

        output Real result;
        algorithm
            result := ((((arg_Vmaxf * arg_G1P) / arg_KG1P) - ((arg_Vmaxr * arg_G6P) / arg_KG6P)) / (1.0 + (arg_G1P / arg_KG1P) + (arg_G6P / arg_KG6P)));
    end elmt_PGLM;

    function elmt_function_1
        input Real arg_Vmf;
        input Real arg_PG3;
        input Real arg_Kms;
        input Real arg_Vmr;
        input Real arg_PG2;
        input Real arg_Kmp;

        output Real result;
        algorithm
            result := ((((arg_Vmf * arg_PG3) / arg_Kms) - ((arg_Vmr * arg_PG2) / arg_Kmp)) / (1.0 + (arg_PG3 / arg_Kms) + (arg_PG2 / arg_Kmp)));
    end elmt_function_1;

    function elmt_FBA
        input Real arg_Vmf;
        input Real arg_A;
        input Real arg_Kfbp;
        input Real arg_Vmr;
        input Real arg_P;
        input Real arg_Q;
        input Real arg_Kdhap;
        input Real arg_Kg3p;

        output Real result;
        algorithm
            result := ((((arg_Vmf * arg_A) / arg_Kfbp) - ((arg_Vmr * arg_P * arg_Q) / (arg_Kdhap * arg_Kg3p))) / (1.0 + (arg_A / arg_Kfbp) + (arg_P / arg_Kdhap) + (arg_Q / arg_Kg3p) + ((arg_P * arg_Q) / (arg_Kdhap * arg_Kg3p))));
    end elmt_FBA;

    function elmt_PGDH
        input Real arg_Vmax;
        input Real arg_K6PG1;
        input Real arg_KNADP;
        input Real arg_PGN;
        input Real arg_NADP;
        input Real arg_RU5P;
        input Real arg_NADPH;
        input Real arg_Kapp;
        input Real arg_BPG;
        input Real arg_KPGA23;
        input Real arg_ATP;
        input Real arg_KATP;
        input Real arg_K6PG2;
        input Real arg_KNADPH;

        output Real result;
        algorithm
            result := ((((arg_Vmax / arg_K6PG1) / arg_KNADP) * ((arg_PGN * arg_NADP) - ((arg_RU5P * arg_NADPH) / arg_Kapp))) / (((1.0 + (arg_NADP / arg_KNADP)) * (1.0 + (arg_PGN / arg_K6PG1) + (arg_BPG / arg_KPGA23))) + (arg_ATP / arg_KATP) + ((arg_NADPH * (1.0 + (arg_PGN / arg_K6PG2))) / arg_KNADPH)));
    end elmt_PGDH;

    function elmt_function_4
        input Real arg_Vmf;
        input Real arg_A;
        input Real arg_B;
        input Real arg_alfa;
        input Real arg_Ka;
        input Real arg_Kb;
        input Real arg_Vmr;
        input Real arg_P;
        input Real arg_Q;
        input Real arg_beta;
        input Real arg_Kp;
        input Real arg_Kq;

        output Real result;
        algorithm
            result := ((((arg_Vmf * arg_A * arg_B) / (arg_alfa * arg_Ka * arg_Kb)) - ((arg_Vmr * arg_P * arg_Q) / (arg_beta * arg_Kp * arg_Kq))) / (1.0 + (arg_A / arg_Ka) + (arg_B / arg_Kb) + ((arg_A * arg_B) / (arg_alfa * arg_Ka * arg_Kb)) + ((arg_P * arg_Q) / (arg_beta * arg_Kp * arg_Kq)) + (arg_P / arg_Kp) + (arg_Q / arg_Kq)));
    end elmt_function_4;

    function elmt_PRPPS
        input Real arg_Vmax;
        input Real arg_R5P;
        input Real arg_ATP;
        input Real arg_PRPP;
        input Real arg_AMP;
        input Real arg_Kapp;
        input Real arg_KATP;
        input Real arg_KR5P;

        output Real result;
        algorithm
            result := ((arg_Vmax * ((arg_R5P * arg_ATP) - ((arg_PRPP * arg_AMP) / arg_Kapp))) / ((arg_KATP + arg_ATP) * (arg_KR5P + arg_R5P)));
    end elmt_PRPPS;

    function elmt_function_5
        input Real arg_Vf;
        input Real arg_ADP;
        input Real arg_ATP;
        input Real arg_AMP;
        input Real arg_Keq;

        output Real result;
        algorithm
            result := ((arg_Vf * Functions.pow(arg_ADP, 2.0) * (1.0 - ((arg_ATP * arg_AMP) / arg_Keq))) / ((Functions.pow((1.0 + arg_ADP), 2.0) + ((1.0 + arg_ATP) * (1.0 + arg_AMP))) - 1.0));
    end elmt_function_5;

    function elmt_function_2
        input Real arg_Vmf;
        input Real arg_PG2;
        input Real arg_Kms;
        input Real arg_Vmr;
        input Real arg_PEP;
        input Real arg_Kmp;

        output Real result;
        algorithm
            result := ((((arg_Vmf * arg_PG2) / arg_Kms) - ((arg_Vmr * arg_PEP) / arg_Kmp)) / (1.0 + (arg_PG2 / arg_Kms) + (arg_PEP / arg_Kmp)));
    end elmt_function_2;

    function elmt_function_3
        input Real arg_Vm;
        input Real arg_B;
        input Real arg_Kadp;
        input Real arg_A;
        input Real arg_Kpep;
        input Real arg_L;
        input Real arg_Q;
        input Real arg_Kiatp;
        input Real arg_F16P;
        input Real arg_Kfbp;
        input Real arg_P;
        input Real arg_Katp;
        input Real arg_Kpyr;
        input Real arg_Kapp;
        input Real arg_a;

        output Real result;
        algorithm
            result := (arg_Vm * (((((arg_a * arg_B) / arg_Kadp) / (1.0 + ((arg_a * arg_B) / arg_Kadp))) * ((((arg_a * arg_A) / arg_Kpep) * Functions.pow((1.0 + ((arg_a * arg_A) / arg_Kpep)), 3.0)) / (((arg_L * Functions.pow((1.0 + ((arg_a * arg_Q) / arg_Kiatp)), 4.0)) / Functions.pow((1.0 + ((arg_a * arg_F16P) / arg_Kfbp)), 4.0)) + Functions.pow((1.0 + ((arg_a * arg_A) / arg_Kpep)), 4.0)))) - (((arg_a * arg_Q * arg_a * arg_P) / (arg_Katp * arg_Kpyr * arg_Kapp)) / (((arg_a * arg_Q) / arg_Katp) + ((arg_a * arg_P) / arg_Kpyr) + ((arg_a * arg_Q * arg_a * arg_P) / (arg_Katp * arg_Kpyr)) + 1.0))));
    end elmt_function_3;

    function elmt_TPI
        input Real arg_Vf;
        input Real arg_GAP;
        input Real arg_Kms;
        input Real arg_Vr;
        input Real arg_DHAP;
        input Real arg_Kmp;

        output Real result;
        algorithm
            result := ((((arg_Vf * arg_GAP) / arg_Kms) - ((arg_Vr * arg_DHAP) / arg_Kmp)) / (1.0 + (arg_GAP / arg_Kms) + (arg_DHAP / arg_Kmp)));
    end elmt_TPI;

    function elmt_G6PDH
        input Real arg_Vmax;
        input Real arg_KG6P;
        input Real arg_KNADP;
        input Real arg_G6P;
        input Real arg_NADP;
        input Real arg_PGN;
        input Real arg_NADPH;
        input Real arg_Kapp;
        input Real arg_ATP;
        input Real arg_KATP;
        input Real arg_KNADPH;
        input Real arg_BPG;
        input Real arg_KPGA23;

        output Real result;
        algorithm
            result := ((((arg_Vmax / arg_KG6P) / arg_KNADP) * ((arg_G6P * arg_NADP) - ((arg_PGN * arg_NADPH) / arg_Kapp))) / (1.0 + ((arg_NADP * (1.0 + (arg_G6P / arg_KG6P))) / arg_KNADP) + (arg_ATP / arg_KATP) + (arg_NADPH / arg_KNADPH) + (arg_BPG / arg_KPGA23)));
    end elmt_G6PDH;

    function elmt_GPa
        input Real arg_Vmaxf;
        input Real arg_GLY;
        input Real arg_Pi;
        input Real arg_KiGLYf;
        input Real arg_KPi;
        input Real arg_Vmaxr;
        input Real arg_G1P;
        input Real arg_KGLYb;
        input Real arg_KiG1P;
        input Real arg_KiPi;
        input Real arg_KiGLYb;

        output Real result;
        algorithm
            result := (((arg_Vmaxf * ((arg_GLY * arg_Pi) / (arg_KiGLYf * arg_KPi))) - (arg_Vmaxr * ((arg_GLY * arg_G1P) / (arg_KGLYb * arg_KiG1P)))) / (1.0 + (arg_GLY / arg_KiGLYf) + (arg_Pi / arg_KiPi) + (arg_GLY / arg_KiGLYb) + (arg_G1P / arg_KiG1P) + ((arg_GLY * arg_Pi) / (arg_KiGLYf * arg_KiPi)) + ((arg_GLY * arg_G1P) / (arg_KiGLYb * arg_KiG1P))));
    end elmt_GPa;

    function elmt_PFK
        input Real arg_Vm;
        input Real arg_a;
        input Real arg_B;
        input Real arg_Katp;
        input Real arg_beta;
        input Real arg_F26P;
        input Real arg_alfa;
        input Real arg_Kf26bp;
        input Real arg_A;
        input Real arg_Kf6p;
        input Real arg_L;
        input Real arg_CIT;
        input Real arg_Kcit;
        input Real arg_Kiatp;
        input Real arg_Q;
        input Real arg_P;
        input Real arg_Kadp;
        input Real arg_Kfbp;
        input Real arg_Kapp;

        output Real result;
        algorithm
            result := (arg_Vm * (((arg_a * arg_B) / arg_Katp) / (1.0 + ((arg_a * arg_B) / arg_Katp))) * ((1.0 + ((arg_beta * arg_a * arg_F26P) / (arg_alfa * arg_Kf26bp))) / (1.0 + ((arg_a * arg_F26P) / (arg_alfa * arg_Kf26bp)))) * (((((arg_a * arg_A * (1.0 + ((arg_a * arg_F26P) / (arg_alfa * arg_Kf26bp)))) / (arg_Kf6p * (1.0 + ((arg_a * arg_F26P) / arg_Kf26bp)))) * Functions.pow((1.0 + ((arg_a * arg_A * (1.0 + ((arg_a * arg_F26P) / (arg_alfa * arg_Kf26bp)))) / (arg_Kf6p * (1.0 + ((arg_a * arg_F26P) / arg_Kf26bp))))), 3.0)) / (((arg_L * Functions.pow((1.0 + ((arg_a * arg_CIT) / arg_Kcit)), 4.0) * Functions.pow((1.0 + ((arg_a * arg_B) / arg_Kiatp)), 4.0)) / Functions.pow((1.0 + ((arg_a * arg_F26P) / arg_Kf26bp)), 4.0)) + Functions.pow((1.0 + ((arg_a * arg_A * (1.0 + ((arg_a * arg_F26P) / (arg_alfa * arg_Kf26bp)))) / (arg_Kf6p * (1.0 + ((arg_a * arg_F26P) / arg_Kf26bp))))), 4.0))) - (((arg_a * arg_Q * arg_a * arg_P) / (arg_Kadp * arg_Kfbp * arg_Kapp)) / (((arg_a * arg_Q) / arg_Kadp) + ((arg_a * arg_P) / arg_Kfbp) + ((arg_a * arg_Q * arg_a * arg_P) / (arg_Kadp * arg_Kfbp)) + 1.0))));
    end elmt_PFK;

    function elmt_GAPDH
        input Real arg_Vmf;
        input Real arg_A;
        input Real arg_B;
        input Real arg_C;
        input Real arg_Knad;
        input Real arg_Kg3p;
        input Real arg_Kp;
        input Real arg_Vmr;
        input Real arg_P;
        input Real arg_Q;
        input Real arg_Kdpg;
        input Real arg_Knadh;

        output Real result;
        algorithm
            result := ((((arg_Vmf * arg_A * arg_B * arg_C) / (arg_Knad * arg_Kg3p * arg_Kp)) - ((arg_Vmr * arg_P * arg_Q) / (arg_Kdpg * arg_Knadh))) / (1.0 + (arg_A / arg_Knad) + ((arg_A * arg_B) / (arg_Knad * arg_Kg3p)) + ((arg_A * arg_B * arg_C) / (arg_Knad * arg_Kg3p * arg_Kp)) + ((arg_P * arg_Q) / (arg_Kdpg * arg_Knadh)) + (arg_Q / arg_Knadh)));
    end elmt_GAPDH;

    function elmt_function_8
        input Real arg_Vmf;
        input Real arg_PYR;
        input Real arg_y;
        input Real arg_Pi;
        input Real arg_ADP;
        input Real arg_O2;
        input Real arg_ATP;
        input Real arg_CO2;
        input Real arg_Keq;

        output Real result;
        algorithm
            result := ((arg_Vmf * Functions.pow(arg_PYR, (1.0 / arg_y)) * arg_Pi * arg_ADP * Functions.pow(arg_O2, (5.0 / (2.0 * arg_y))) * (1.0 - ((arg_ATP * Functions.pow(arg_CO2, (3.0 / arg_y))) / (Functions.pow(arg_PYR, (1.0 / arg_y)) * Functions.pow(arg_O2, (5.0 / (2.0 * arg_y))) * arg_Pi * arg_ADP * arg_Keq)))) / (((Functions.pow((1.0 + arg_PYR), (1.0 / arg_y)) * Functions.pow((1.0 + arg_O2), (5.0 / (2.0 * arg_y))) * (1.0 + arg_Pi) * (1.0 + arg_ADP)) + ((1.0 + arg_ATP) * Functions.pow((1.0 + arg_CO2), (3.0 / arg_y)))) - 1.0));
    end elmt_function_8;

    function elmt_function_6
        input Real arg_Vf;
        input Real arg_NADH;
        input Real arg_NAD;
        input Real arg_Keq;

        output Real result;
        algorithm
            result := ((arg_Vf * arg_NADH * (1.0 - (arg_NAD / (arg_NADH * arg_Keq)))) / ((1.0 + arg_NADH + 1.0 + arg_NAD) - 1.0));
    end elmt_function_6;

    function elmt_GS
        input Real arg_Vmaxf;
        input Real arg_Kf;
        input Real arg_a;
        input Real arg_G1P;
        input Real arg_ATP;
        input Real arg_GLY;
        input Real arg_Pi;
        input Real arg_ADP;
        input Real arg_Keq;
        input Real arg_Kr;

        output Real result;
        algorithm
            result := (((arg_Vmaxf / arg_Kf) * arg_a * arg_G1P * arg_a * arg_ATP * arg_a * arg_GLY * (1.0 - ((Functions.pow((arg_a * arg_Pi), 2.0) * arg_a * arg_ADP) / (arg_a * arg_G1P * arg_a * arg_ATP * arg_Keq)))) / (1.0 + ((arg_a * arg_G1P * arg_a * arg_ATP * arg_a * arg_GLY) / arg_Kf) + ((arg_a * arg_GLY * Functions.pow((arg_a * arg_Pi), 2.0) * arg_a * arg_ADP) / arg_Kr)));
    end elmt_GS;

    function elmt_function_7
        input Real arg_Vf;
        input Real arg_NADPH;
        input Real arg_NADP;
        input Real arg_Keq;

        output Real result;
        algorithm
            result := ((arg_Vf * arg_NADPH * (1.0 - (arg_NADP / (arg_NADPH * arg_Keq)))) / ((1.0 + arg_NADPH + 1.0 + arg_NADP) - 1.0));
    end elmt_function_7;

    function elmt_GPb
        input Real arg_Vmaxf;
        input Real arg_GLY;
        input Real arg_Pi;
        input Real arg_KiGLYf;
        input Real arg_KPi;
        input Real arg_Vmaxr;
        input Real arg_G1P;
        input Real arg_KiGLYb;
        input Real arg_KG1P;
        input Real arg_KiPi;
        input Real arg_KiG1P;
        input Real arg_AMP;
        input Real arg_nH;
        input Real arg_Kamp;

        output Real result;
        algorithm
            result := (((((arg_Vmaxf * ((arg_GLY * arg_Pi) / (arg_KiGLYf * arg_KPi))) - (arg_Vmaxr * ((arg_GLY * arg_G1P) / (arg_KiGLYb * arg_KG1P)))) / (1.0 + (arg_GLY / arg_KiGLYf) + (arg_Pi / arg_KiPi) + (arg_GLY / arg_KiGLYb) + (arg_G1P / arg_KiG1P) + ((arg_GLY * arg_Pi) / (arg_KiGLYf * arg_KPi)) + ((arg_GLY * arg_G1P) / (arg_KiGLYb * arg_KG1P)))) * (Functions.pow(arg_AMP, arg_nH) / arg_Kamp)) / (1.0 + (Functions.pow(arg_AMP, arg_nH) / arg_Kamp)));
    end elmt_GPb;

    function elmt_TKL2
        input Real arg_Vmax;
        input Real arg_E4P;
        input Real arg_X5P;
        input Real arg_GAP;
        input Real arg_F6P;
        input Real arg_Keq_TKL2;
        input Real arg_K1;
        input Real arg_K2;
        input Real arg_K6;
        input Real arg_K3;
        input Real arg_K5;
        input Real arg_K4;
        input Real arg_K7;

        output Real result;
        algorithm
            result := ((arg_Vmax * ((arg_E4P * arg_X5P) - ((arg_GAP * arg_F6P) / arg_Keq_TKL2))) / (((arg_K1 + arg_E4P) * arg_X5P) + ((arg_K2 + (arg_K6 * arg_F6P)) * arg_E4P) + ((arg_K3 + (arg_K5 * arg_F6P)) * arg_GAP) + (arg_K4 * arg_F6P) + (arg_K7 * arg_X5P * arg_GAP)));
    end elmt_TKL2;

    function elmt_R5PI
        input Real arg_Vmax;
        input Real arg_RU5P;
        input Real arg_R5P;
        input Real arg_Keq_R5PI;
        input Real arg_KRu5P;
        input Real arg_KR5P;

        output Real result;
        algorithm
            result := ((arg_Vmax * (arg_RU5P - (arg_R5P / arg_Keq_R5PI))) / (arg_RU5P + (arg_KRu5P * (1.0 + (arg_R5P / arg_KR5P)))));
    end elmt_R5PI;


    function acosh
        input  Real x;
        output Real y;
        algorithm
            y := log(x + sqrt(x^2 - 1));
    end acosh;

    function acot
        input  Real x;
        output Real y;
        algorithm
            if abs(x) < Constants.EPSILON then
                y := atan(sign(x) * Constants.INFINITY);
            else
                y := atan(1 / x);
            end if;
    end acot;

    function acoth
        input  Real x;
        output Real y;
        algorithm
            y := (1 / 2) * log((x + 1) / (x - 1));
    end acoth;

    function acsc
        input  Real x;
        output Real y;
        algorithm
            y := asin(1 / x);
    end acsc;

    function acsch
        input  Real x;
        output Real y;
        algorithm
            y := sign(x) * log((1 + sqrt(1 + x^2)) / abs(x));
    end acsch;

    function asec
        input  Real x;
        output Real y;
        algorithm
            y := acos(1 / x);
    end asec;

    function asech
        input  Real x;
        output Real y;
        algorithm
            y := log((1 + sqrt(1 - x^2)) / x);
    end asech;

    function asinh
        input  Real x;
        output Real y;
        algorithm
            y := log(x + sqrt(x^2 + 1));
    end asinh;

    function atanh
        input  Real x;
        output Real y;
        algorithm
            y := (1 / 2) * log((1 + x) / (1 - x));
    end atanh;

    function cot
        input  Real x;
        output Real y;
        algorithm
            y := 1 / tan(x);
    end cot;

    function coth
        input  Real x;
        output Real y;
        algorithm
            y := 1 / tanh(x);
    end coth;

    function csc
        input  Real x;
        output Real y;
        algorithm
            y := 1 / sin(x);
    end csc;

    function csch
        input  Real x;
        output Real y;
        algorithm
            y := 1 / sinh(x);
    end csch;

    function factorial
        input  Real n;
        output Real y;
        algorithm
            if eq(n, 0) then
                y := 1;
            else
                y := n * factorial(n - 1);
            end if;
    end factorial;

    function logarithm
        input  Real base;
        input  Real arg;
        output Real y;
        algorithm
            y := log(arg) / log(base);
    end logarithm;

    function pow
        input  Real x;
        input  Real power;
        output Real y;
        algorithm
            y := x^power;
    end pow;

    function root
        input  Real degree;
        input  Real x;
        output Real y;
        algorithm
            y := x^(1 / degree);
    end root;

    function sec
        input  Real x;
        output Real y;
        algorithm
            y := 1 / cos(x);
    end sec;

    function sech
        input  Real x;
        output Real y;
        algorithm
            y := 1 / cosh(x);
    end sech;

    function implies
        input  Boolean x1;
        input  Boolean x2;
        output Boolean y;
        algorithm
            y := not x1 or x2;
    end implies;

    function xor
        input  Boolean x1;
        input  Boolean x2;
        output Boolean y;
        algorithm
            y := (x1 and not x2) or (not x1 and x2);
    end xor;

    function eq
        input  Real x1;
        input  Real x2;
        output Boolean y;
        algorithm
            y := abs(x1 - x2) / max(abs(x1), Constants.ETA) < Constants.EPSILON;
    end eq;

    function real2bool
        input  Real    x;
        output Boolean y;
        algorithm
            y := (not eq(x, 0));
    end real2bool;

    function bool2real
        input  Boolean x;
        output Real    y;
        algorithm
            if x then
                y := 1.0;
            else
                y := 0.0;
            end if;
    end bool2real;
end Functions;
