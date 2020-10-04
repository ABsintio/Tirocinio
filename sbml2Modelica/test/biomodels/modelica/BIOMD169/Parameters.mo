within BIOMD169;
class Parameters

    Real elmt_k25p_1(unit = "") "k25p";
    Real elmt_k4_1(unit = "") "k4";
    Real elmt_k21_1(unit = "") "k21";
    Real elmt_k5_1(unit = "") "k5";
    Real elmt_k20_1(unit = "") "k20";
    Real elmt_k6_1(unit = "") "k6";
    Real elmt_k7_1(unit = "") "k7";
    Real elmt_k25_1(unit = "") "k25";
    Real elmt_k1_1(unit = "") "k1";
    Real elmt_k24_1(unit = "") "k24";
    Real elmt_k2_1(unit = "") "k2";
    Real elmt_k23_1(unit = "") "k23";
    Real elmt_k3_1(unit = "") "k3";
    Real elmt_k22_1(unit = "") "k22";
    Real elmt_k29_1(unit = "") "k29";
    Real elmt_k28_1(unit = "") "k28";
    Real elmt_k27_1(unit = "") "k27";
    Real elmt_k26_1(unit = "") "k26";
    Real elmt_k8_1(unit = "") "k8";
    Real elmt_k9_1(unit = "") "k9";
    Real elmt_kminus4_1(unit = "") "kminus4";
    Real elmt_kminus6_1(unit = "") "kminus6";
    Real elmt_k1pp_1(unit = "") "k1pp";
    Real elmt_k26p_1(unit = "") "k26p";
    Real elmt_k1p_1(unit = "") "k1p";
    Real elmt_k3p_1(unit = "") "k3p";
    Real elmt_k17_1(unit = "") "k17";
    Real elmt_k18_1(unit = "") "k18";
    Real elmt_K10_1(unit = "") "K10";
    Real elmt_k19_1(unit = "") "k19";
    Real elmt_kminus1_1(unit = "") "kminus1";
    Real elmt_kminus2_1(unit = "") "kminus2";


    initial equation
        elmt_k25p_1 = 0.02;
        elmt_k4_1 = 1.0E-6;
        elmt_k21_1 = 0.1;
        elmt_k5_1 = 0.02;
        elmt_k20_1 = 0.01;
        elmt_k6_1 = 0.018;
        elmt_k7_1 = 1.0E-5;
        elmt_k25_1 = 0.01;
        elmt_k1_1 = 0.1;
        elmt_k24_1 = 0.1;
        elmt_k2_1 = 0.1;
        elmt_k23_1 = 0.2;
        elmt_k3_1 = 1.42;
        elmt_k22_1 = 0.001;
        elmt_k29_1 = 0.001;
        elmt_k28_1 = 0.01;
        elmt_k27_1 = 0.01;
        elmt_k26_1 = 0.01;
        elmt_k8_1 = 2.0;
        elmt_k9_1 = 2.0;
        elmt_kminus4_1 = 0.016;
        elmt_kminus6_1 = 5.0;
        elmt_k1pp_1 = 0.5;
        elmt_k26p_1 = 0.1;
        elmt_k1p_1 = 0.5;
        elmt_k3p_1 = 0.0;
        elmt_k17_1 = 3.5;
        elmt_k18_1 = 1.0E-5;
        elmt_K10_1 = 0.035;
        elmt_k19_1 = 0.05;
        elmt_kminus1_1 = 0.001;
        elmt_kminus2_1 = 1.0;


    equation
        der(elmt_k25p_1) = 0;
        der(elmt_k4_1) = 0;
        der(elmt_k21_1) = 0;
        der(elmt_k5_1) = 0;
        der(elmt_k20_1) = 0;
        der(elmt_k6_1) = 0;
        der(elmt_k7_1) = 0;
        der(elmt_k25_1) = 0;
        der(elmt_k1_1) = 0;
        der(elmt_k24_1) = 0;
        der(elmt_k2_1) = 0;
        der(elmt_k23_1) = 0;
        der(elmt_k3_1) = 0;
        der(elmt_k22_1) = 0;
        der(elmt_k29_1) = 0;
        der(elmt_k28_1) = 0;
        der(elmt_k27_1) = 0;
        der(elmt_k26_1) = 0;
        der(elmt_k8_1) = 0;
        der(elmt_k9_1) = 0;
        der(elmt_kminus4_1) = 0;
        der(elmt_kminus6_1) = 0;
        der(elmt_k1pp_1) = 0;
        der(elmt_k26p_1) = 0;
        der(elmt_k1p_1) = 0;
        der(elmt_k3p_1) = 0;
        der(elmt_k17_1) = 0;
        der(elmt_k18_1) = 0;
        der(elmt_K10_1) = 0;
        der(elmt_k19_1) = 0;
        der(elmt_kminus1_1) = 0;
        der(elmt_kminus2_1) = 0;

end Parameters;
