
model BIOMD350 "Troein2011_ClockCircuit_OstreococcusTauri"

    function pow
        input  Real x;
        input  Real power;
        output Real y;
        algorithm
            y := x^power;
    end pow;


    function LD1212
        	input Real tod;
        output Real y;
    algorithm
        y :=  ceil(sin(pi * tod / 12) / 2);
    end LD1212;


    function function_2
        	input Real acc_rate;
	input Real acc;
        output Real y;
    algorithm
        y :=  acc_rate * acc;
    end function_2;


    function light
        	input Real tod;
        output Real y;
    algorithm
        y :=  LD1212(tod);
    end light;


    function transcription
        	input Real t;
        output Real y;
    algorithm
        y :=  1 + 0 * t;
    end transcription;


    function ox_toc1
        	input Real t;
        output Real y;
    algorithm
        y :=  0 * t;
    end ox_toc1;


    function copies_toc1
        	input Real t;
        output Real y;
    algorithm
        y :=  1 + 0 * t;
    end copies_toc1;


    function copies_cca1
        	input Real t;
        output Real y;
    algorithm
        y :=  1 + 0 * t;
    end copies_cca1;


    function ox_cca1
        	input Real t;
        output Real y;
    algorithm
        y :=  0 * t;
    end ox_cca1;


    function translation
        	input Real t;
        output Real y;
    algorithm
        y :=  1 + 0 * t;
    end translation;


    function proteasome
        	input Real t;
        output Real y;
    algorithm
        y :=  1 + 0 * t;
    end proteasome;


    function Translation
        	input Real t;
	input Real T;
	input Real mrna;
        output Real y;
    algorithm
        y :=  translation(t) * T * mrna;
    end Translation;


    function function_4
        	input Real t;
	input Real D_l;
	input Real D_d;
	input Real level;
        output Real y;
    algorithm
        y :=  proteasome(t) * (light(t) * D_l + (1 - light(t)) * D_d) * level;
    end function_4;


    function function_5
        	input Real t;
	input Real Di_l;
	input Real Di_d;
	input Real level;
        output Real y;
    algorithm
        y :=  (light(t) * Di_l + (1 - light(t)) * Di_d) * level;
    end function_5;


    function function_7
        	input Real t;
	input Real R_toc1_acc;
	input Real acc;
	input Real R_toc1_cca1;
	input Real cca1_n;
	input Real H_toc1_cca1;
	input Real rep_pTOC1;
	input Real L_toc1;
        output Real y;
    algorithm
        y :=  rep_pTOC1 * transcription(t) * (L_toc1 + R_toc1_acc * acc) / (1 + L_toc1 + R_toc1_acc * acc + (R_toc1_cca1 * cca1_n)^H_toc1_cca1);
    end function_7;


    function function_8
        	input Real t;
	input Real R_toc1_acc;
	input Real acc;
	input Real R_toc1_cca1;
	input Real cca1_n;
	input Real H_toc1_cca1;
	input Real rep_TOC1;
	input Real L_toc1;
        output Real y;
    algorithm
        y :=  rep_TOC1 * transcription(t) * copies_toc1(t) * (L_toc1 + R_toc1_acc * acc) / (1 + L_toc1 + R_toc1_acc * acc + (R_toc1_cca1 * cca1_n)^H_toc1_cca1);
    end function_8;


    function function_9
        	input Real t;
	input Real toc1_2;
	input Real R_cca1_toc1_2_l;
	input Real R_cca1_toc1_2_d;
	input Real H_cca1_toc1;
	input Real rep_pCCA1;
        output Real y;
    algorithm
        y :=  rep_pCCA1 * transcription(t) * (toc1_2 * (light(t) * R_cca1_toc1_2_l + (1 - light(t)) * R_cca1_toc1_2_d))^H_cca1_toc1 / ((toc1_2 * (light(t) * R_cca1_toc1_2_l + (1 - light(t)) * R_cca1_toc1_2_d))^H_cca1_toc1 + 1);
    end function_9;


    function function_10
        	input Real t;
	input Real toc1_2;
	input Real R_cca1_toc1_2_l;
	input Real R_cca1_toc1_2_d;
	input Real H_cca1_toc1;
	input Real rep_CCA1;
        output Real y;
    algorithm
        y :=  rep_CCA1 * transcription(t) * copies_cca1(t) * (toc1_2 * (light(t) * R_cca1_toc1_2_l + (1 - light(t)) * R_cca1_toc1_2_d))^H_cca1_toc1 / ((toc1_2 * (light(t) * R_cca1_toc1_2_l + (1 - light(t)) * R_cca1_toc1_2_d))^H_cca1_toc1 + 1);
    end function_10;


    function tf_output
        	input Real reporter;
	input Real effcopies;
	input Real tf;
        output Real y;
    algorithm
        y :=  (1 + reporter * (effcopies - 1)) * tf;
    end tf_output;


    function function_1
        	input Real acc_rate;
	input Real t;
        output Real y;
    algorithm
        y :=  acc_rate * light(t);
    end function_1;


    function function_3
        	input Real R_toc1_acc;
	input Real acc;
	input Real R_toc1_cca1;
	input Real H_toc1_cca1;
	input Real cca1_n;
	input Real t;
	input Real L_toc1;
	input Real rep_CCA1;
	input Real effcopies_cca1_LHY7;
        output Real y;
    algorithm
        y :=  transcription(t) * (ox_toc1(t) + copies_toc1(t) * (L_toc1 + R_toc1_acc * acc) / (1 + L_toc1 + R_toc1_acc * acc + (R_toc1_cca1 * (tf_output * rep_CCA1 * effcopies_cca1_LHY7 * cca1_n))^H_toc1_cca1));
    end function_3;


    function function_6
        	input Real t;
	input Real toc1_2;
	input Real R_cca1_toc1_2_l;
	input Real R_cca1_toc1_2_d;
	input Real H_cca1_toc1;
	input Real rep_TOC1;
	input Real effcopies_toc1_TOC8;
        output Real y;
    algorithm
        y := transcription(t) * (ox_cca1(t) + copies_cca1(t) * (tf_output * rep_TOC1 * effcopies_toc1_TOC8 * toc1_2) * (light(t) * R_cca1_toc1_2_l + (1 - light(t)) * R_cca1_toc1_2_d))^H_cca1_toc1 / ((tf_output * rep_TOC1 * effcopies_toc1_TOC8 * toc1_2) * (light(t) * R_cca1_toc1_2_l + (1 - light(t)) * R_cca1_toc1_2_d))^H_cca1_toc1 + 1));
    end function_6;


    parameter Real D_luc = 0.182881217463259;
    parameter Real D_mrna_luc = 1.0;
    parameter Real acc_rate = 0.0820132250303287;
    parameter Real R_toc1_cca1 = 1.08706126858966;
    parameter Real H_toc1_cca1 = 2.07807738692343;
    parameter Real L_toc1 = 0.0001;
    parameter Real R_toc1_acc = 0.231107032949407;
    parameter Real D_mrna_toc1 = 0.29213049778373;
    parameter Real T_toc1 = 0.769970172977886;
    parameter Real Di_toc1_12_l = 0.136490583368648;
    parameter Real Di_toc1_12_d = 0.326619492089715;
    parameter Real D_toc1_2_l = 0.461550559180802;
    parameter Real D_toc1_2_d = 0.356613920551118;
    parameter Real H_cca1_toc1 = 2.5007062880634;
    parameter Real R_cca1_toc1_2_l = 3.27520292103832;
    parameter Real R_cca1_toc1_2_d = 1.38563901682266;
    parameter Real D_mrna_cca1 = 1.33082080954527;
    parameter Real T_cca1 = 4.90486610428652;
    parameter Real Di_cca1_cn = 10.0;
    parameter Real D_cca1_l = 0.424177877449438;
    parameter Real D_cca1_d = 0.269380178154091;
    parameter Real effcopies_cca1_LHY7 = 1.13965755508623;
    parameter Real effcopies_toc1_TOC8 = 1.0;
    parameter Real parameter_1 = 1.0;
    parameter Real parameter_2 = 0.0;
    parameter Real parameter_3 = 0.0;
    parameter Real parameter_4 = 0.0;
    parameter Real parameter_5 = 0.0;
    parameter Real compartment = 1.0;

    Real toc1luc(start=0.0);

    Real acc;
    Real toc1_mrna;
    Real toc1_1;
    Real toc1_2;
    Real cca1_mrna;
    Real cca1_c;
    Real cca1_n;
    Real toc1luc_mrna;
    Real toc1luc_1;
    Real toc1luc_2;
    Real cca1luc_mrna;
    Real cca1luc;
    Real luc_mrna;
    Real luc;

initial equation
    acc = 0.272067372878265;
    toc1_mrna = 0.0385665277682963;
    toc1_1 = 0.206521274112594;
    toc1_2 = 0.312711901675853;
    cca1_mrna = 0.104555645465821;
    cca1_c = 0.051315426489096;
    cca1_n = 3.07283764226433;
    toc1luc_mrna = 0.0;
    toc1luc_1 = 0.0;
    toc1luc_2 = 0.0;
    cca1luc_mrna = 0.0;
    cca1luc = 0.0;
    luc_mrna = 0.0;
    luc = 0.0;

equation
    toc1luc = toc1luc_1 + toc1luc_2;
    der(acc) = (compartment * function_1(acc_rate, time)) - (compartment * function_2(acc_rate, acc));
    der(toc1_mrna) = (compartment * function_3(R_toc1_acc, acc, R_toc1_cca1, H_toc1_cca1, cca1_n, time, L_toc1, parameter_4, effcopies_cca1_LHY7)) - (compartment * D_mrna_toc1 * toc1_mrna);
    der(toc1_1) = (compartment * Translation(time, T_toc1, toc1_mrna)) - (compartment * function_5(time, Di_toc1_12_l, Di_toc1_12_d, toc1_1));
    der(toc1_2) = (compartment * function_5(time, Di_toc1_12_l, Di_toc1_12_d, toc1_1)) - (compartment * function_4(time, D_toc1_2_l, D_toc1_2_d, toc1_2));
    der(cca1_mrna) = (compartment * function_6(time, toc1_2, R_cca1_toc1_2_l, R_cca1_toc1_2_d, H_cca1_toc1, parameter_2, effcopies_toc1_TOC8)) - (compartment * D_mrna_cca1 * cca1_mrna);
    der(cca1_c) = (compartment * Translation(time, T_cca1, cca1_mrna)) - (compartment * Di_cca1_cn * cca1_c) - (compartment * function_4(time, D_cca1_l, D_cca1_d, cca1_c));
    der(cca1_n) = (compartment * Di_cca1_cn * cca1_c) - (compartment * function_4(time, D_cca1_l, D_cca1_d, cca1_n));
    der(toc1luc_mrna) = (compartment * function_8(time, R_toc1_acc, acc, R_toc1_cca1, cca1_n, H_toc1_cca1, parameter_2, L_toc1)) - (compartment * D_mrna_toc1 * toc1luc_mrna);
    der(toc1luc_1) = (compartment * Translation(time, T_toc1, toc1luc_mrna)) - (compartment * function_5(time, Di_toc1_12_l, Di_toc1_12_d, toc1luc_1)) - (compartment * D_luc * toc1luc_1);
    der(toc1luc_2) = (compartment * function_5(time, Di_toc1_12_l, Di_toc1_12_d, toc1luc_1)) - (compartment * function_4(time, D_toc1_2_l, D_toc1_2_d, toc1luc_2)) - (compartment * D_luc * toc1luc_2);
    der(cca1luc_mrna) = (compartment * function_10(time, toc1_2, R_cca1_toc1_2_l, R_cca1_toc1_2_d, H_cca1_toc1, parameter_4)) - (compartment * D_mrna_cca1 * cca1luc_mrna);
    der(cca1luc) = (compartment * Translation(time, T_cca1, cca1luc_mrna)) - (compartment * function_4(time, D_cca1_l, D_cca1_d, cca1luc)) - (compartment * D_luc * cca1luc);
    der(luc_mrna) = (compartment * function_7(time, R_toc1_acc, acc, R_toc1_cca1, cca1_n, H_toc1_cca1, parameter_3, L_toc1)) + (compartment * function_9(time, toc1_2, R_cca1_toc1_2_l, R_cca1_toc1_2_d, H_cca1_toc1, parameter_5)) - (compartment * D_mrna_luc * luc_mrna);
    der(luc) = (compartment * Translation(time, parameter_1, luc_mrna)) - (compartment * D_luc * luc);




end BIOMD350;
