
model BIOMD466 "Koo2013 - Shear stress induced eNOS expression - Model 3"

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



    parameter Real normal_0 = 4.0;
    parameter Real tf_0 = 60.0;
    parameter Real unity_0 = 1.0;
    parameter Real unimol_0 = 1.0;
    parameter Real tiny_num_0 = 1e-06;
    parameter Real normal_1 = 0.026;
    parameter Real tf_1 = 540.0;
    parameter Real unity_1 = 1.0;
    parameter Real unimol_1 = 1.0;
    parameter Real k3_2 = 0.1;
    parameter Real kr3_2 = 1.0;
    parameter Real k4_3 = 8.33;
    parameter Real kr4_3 = 5.0;
    parameter Real k5_4 = 60.0;
    parameter Real kr5_4 = 546.0;
    parameter Real k6_5 = 2040.0;
    parameter Real kr6_5 = 15700.0;
    parameter Real V8_6 = 154.0;
    parameter Real Km8_6 = 340.0;
    parameter Real k7_7 = 40.8;
    parameter Real k25_8 = 0.001;
    parameter Real k24t1_9 = 0.00012;
    parameter Real k24t2_9 = 9e-06;
    parameter Real k9_10 = 0.222;
    parameter Real Km9_10 = 0.181;
    parameter Real V10_11 = 0.289;
    parameter Real Km10_11 = 0.0571;
    parameter Real k11_12 = 0.035;
    parameter Real Km11_12 = 10.0;
    parameter Real Km12_13 = 8.0;
    parameter Real V12_13 = 0.125;
    parameter Real k13_14 = 0.005;
    parameter Real Km13_14 = 15.0;
    parameter Real Km14_15 = 15.0;
    parameter Real V14_15 = 0.375;
    parameter Real k17_16 = 0.002;
    parameter Real Km17_16 = 30.0;
    parameter Real Km18_17 = 15.0;
    parameter Real V18_17 = 0.05;
    parameter Real k26_18 = 2.8e-05;
    parameter Real V27_19 = 0.02824;
    parameter Real Km27_19 = 16.0;
    parameter Real unitime_20 = 1.0;
    parameter Real V16_21 = 0.375;
    parameter Real Km16_21 = 15.0;
    parameter Real k15_22 = 0.005;
    parameter Real Km15_22 = 15.0;
    parameter Real V20_23 = 0.05;
    parameter Real Km20_23 = 15.0;
    parameter Real k19_24 = 0.002;
    parameter Real Km19_24 = 30.0;
    parameter Real Km21_25 = 25.0;
    parameter Real k21_25 = 4e-05;
    parameter Real Km22_26 = 5.0;
    parameter Real V22_26 = 0.002;
    parameter Real tau_27 = 0.55;
    parameter Real tc_27 = 3600.0;
    parameter Real uc_27 = 3600.0;
    parameter Real delay_27 = 5.0;
    parameter Real unity_27 = 20.0;
    parameter Real default = 1.0;
    parameter Real c1 = 1.0;
    parameter Real c3 = 1.0;



    Real s35;
    Real s37;
    Real s38;
    Real s39;
    Real s42;
    Real s43;
    Real s44;
    Real s49;
    Real s51;
    Real s91;
    Real s92;
    Real s93;
    Real s94;
    Real s95;
    Real s96;
    Real s97;
    Real s98;
    Real s99;
    Real s100;
    Real s101;
    Real s102;
    Real s103;
    Real s104;
    Real s105;
    Real s106;
    Real s107;
    Real s108;
    Real s110;
    Real s111;
    Real s112;
    Real s113;
    Real s114;
    Real s115;
    Real s119;

initial equation
    s35 = 0.0;
    s37 = 10000.0;
    s38 = 0.0;
    s39 = 0.0;
    s42 = 50.0;
    s43 = 0.006;
    s44 = 0.0;
    s49 = 10.0;
    s51 = 34.98;
    s91 = 819.25;
    s92 = 18.0;
    s93 = 0.605;
    s94 = 72.0;
    s95 = 57.0;
    s96 = 299.706;
    s97 = 98.514;
    s98 = 157.162;
    s99 = 299.997;
    s100 = 0.288;
    s101 = 1.486;
    s102 = 0.616;
    s103 = 119.384;
    s104 = 0.003;
    s105 = 0.0;
    s106 = 3.214;
    s107 = 0.0;
    s108 = 0.0;
    s110 = 0.857;
    s111 = 3.23;
    s112 = 15.962;
    s113 = 5.577;
    s114 = 1.193;
    s115 = 0.09;
    s119 = 0.0;

equation

    der(s35) = (k26_18 * s106) ;
    der(s37) =  - (V27_19 * s106 / (s106 + Km27_19));
    der(s38) =  - (unitime_20);
    der(s39) = (unitime_20) ;
    der(s42) = (V22_26 * s107 / (s107 + Km22_26)) - (s44 * s42 * k21_25 / (Km21_25 + s42));
    der(s43) = (k15_22 * s100 * s101 / (Km15_22 + s100)) - (V16_21 * s43 / (s43 + Km16_21));
    der(s44) = (k19_24 * s104 * s43 / (Km19_24 + s104)) - (V20_23 * s44 / (Km20_23 + s44));
    der(s49) = (exp(tau_27 * (delay_27 - s39 / tc_27)) / (1 + 2 * exp(tau_27 * (delay_27 - s39 / tc_27)) + exp(2 * tau_27 * (delay_27 - s39 / tc_27))) / uc_27 * 29.256) ;
    der(s51) = (V27_19 * s106 / (s106 + Km27_19)) ;
    der(s91) = (V8_6 * s98 / (Km8_6 + s98)) - (k3_2 * s91 * s93 - kr3_2 * s110);
    der(s92) = (exp(unity_1 - pow(s39 / tf_1, 1.3)) * normal_1 * pow(s39 / unimol_1, 0.3) * (unity_1 - pow(s39 / tf_1, 1.3))) ;
    der(s93) = (exp(unity_0 - pow(s39 / tf_0, 0.35)) * normal_0 * pow((s39 + tiny_num_0) / unimol_0, -0.65) * (unity_0 - pow(s39 / tf_0, 0.35))) + (k6_5 * s113 - kr6_5 * s93 * s114) - (k3_2 * s91 * s93 - kr3_2 * s110);
    der(s94) =  - (exp(unity_1 - pow(s39 / tf_1, 1.3)) * normal_1 * pow(s39 / unimol_1, 0.3) * (unity_1 - pow(s39 / tf_1, 1.3)));
    der(s95) =  - (exp(unity_0 - pow(s39 / tf_0, 0.35)) * normal_0 * pow((s39 + tiny_num_0) / unimol_0, -0.65) * (unity_0 - pow(s39 / tf_0, 0.35)));
    der(s96) = (V14_15 * s100 / (s100 + Km14_15)) - (k13_14 * s101 * s96 / (Km13_14 + s96));
    der(s97) = (V12_13 * s101 / (Km12_13 + s101)) - (k11_12 * s102 * s97 / (Km11_12 + s97));
    der(s98) = (k7_7 * s114) - (V8_6 * s98 / (Km8_6 + s98));
    der(s99) = (V18_17 * s104 / (s104 + Km18_17)) - (k17_16 * s99 * s43 / (s99 + Km17_16));
    der(s100) = (k13_14 * s101 * s96 / (Km13_14 + s96)) + (V16_21 * s43 / (s43 + Km16_21)) - (V14_15 * s100 / (s100 + Km14_15)) - (k15_22 * s100 * s101 / (Km15_22 + s100));
    der(s101) = (k11_12 * s102 * s97 / (Km11_12 + s97)) - (V12_13 * s101 / (Km12_13 + s101));
    der(s102) = (k9_10 * s114 * s103 / (s103 + Km9_10)) - (V10_11 * s102 / (Km10_11 + s102));
    der(s103) = (V10_11 * s102 / (Km10_11 + s102)) - (k9_10 * s114 * s103 / (s103 + Km9_10));
    der(s104) = (k17_16 * s99 * s43 / (s99 + Km17_16)) + (V20_23 * s44 / (Km20_23 + s44)) - (V18_17 * s104 / (s104 + Km18_17)) - (k19_24 * s104 * s43 / (Km19_24 + s104));
    der(s105) =  - (exp(tau_27 * (delay_27 - s39 / tc_27)) / (1 + 2 * exp(tau_27 * (delay_27 - s39 / tc_27)) + exp(2 * tau_27 * (delay_27 - s39 / tc_27))) / uc_27 * 29.256);
    der(s106) = (k25_8 * s115) - (k26_18 * s106);
    der(s107) = (s44 * s42 * k21_25 / (Km21_25 + s42)) - (V22_26 * s107 / (s107 + Km22_26));
    der(s108) =  - (k24t1_9 * s107 + k24t2_9 * s49);
    der(s110) = (k3_2 * s91 * s93 - kr3_2 * s110) - (k4_3 * s110 * s92 - kr4_3 * s112);
    der(s111) = (k7_7 * s114) - (k5_4 * s111 * s112 - kr5_4 * s113);
    der(s112) = (k4_3 * s110 * s92 - kr4_3 * s112) - (k5_4 * s111 * s112 - kr5_4 * s113);
    der(s113) = (k5_4 * s111 * s112 - kr5_4 * s113) - (k6_5 * s113 - kr6_5 * s93 * s114);
    der(s114) = (k6_5 * s113 - kr6_5 * s93 * s114) - (k7_7 * s114);
    der(s115) = (k24t1_9 * s107 + k24t2_9 * s49) - (k25_8 * s115);
    der(s119) = 0.0;




end BIOMD466;
