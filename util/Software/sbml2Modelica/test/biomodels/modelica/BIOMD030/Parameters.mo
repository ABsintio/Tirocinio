within BIOMD030;
class Parameters

    Real elmt_h_10(unit = "") "h_10";
    Real elmt_h5(unit = "") "h5";
    Real elmt_h6(unit = "") "h6";
    Real elmt_h3(unit = "") "h3";
    Real elmt_h_12(unit = "") "h_12";
    Real elmt_h4(unit = "") "h4";
    Real elmt_h1(unit = "") "h1";
    Real elmt_h2(unit = "") "h2";
    Real elmt_h11(unit = "") "h11";
    Real elmt_h10(unit = "") "h10";
    Real elmt_h12(unit = "") "h12";
    Real elmt_k1(unit = "") "k1";
    Real elmt_k8(unit = "") "k8";
    Real elmt_h_7(unit = "") "h_7";
    Real elmt_k_3(unit = "") "k_3";
    Real elmt_h_6(unit = "") "h_6";
    Real elmt_k6(unit = "") "k6";
    Real elmt_k_1(unit = "") "k_1";
    Real elmt_k7(unit = "") "k7";
    Real elmt_h_4(unit = "") "h_4";
    Real elmt_k4(unit = "") "k4";
    Real elmt_h_3(unit = "") "h_3";
    Real elmt_k5(unit = "") "k5";
    Real elmt_k2(unit = "") "k2";
    Real elmt_h_1(unit = "") "h_1";
    Real elmt_k3(unit = "") "k3";
    Real elmt_h9(unit = "") "h9";
    Real elmt_k_7(unit = "") "k_7";
    Real elmt_h7(unit = "") "h7";
    Real elmt_h_9(unit = "") "h_9";
    Real elmt_k_5(unit = "") "k_5";
    Real elmt_h8(unit = "") "h8";


    initial equation
        elmt_h_10 = 1.0;
        elmt_h5 = 0.5;
        elmt_h6 = 0.086;
        elmt_h3 = 1.0;
        elmt_h_12 = 0.01;
        elmt_h4 = 0.01;
        elmt_h1 = 0.045;
        elmt_h2 = 0.092;
        elmt_h11 = 0.092;
        elmt_h10 = 0.045;
        elmt_h12 = 1.0;
        elmt_k1 = 0.02;
        elmt_k8 = 15.0;
        elmt_h_7 = 1.0;
        elmt_k_3 = 1.0;
        elmt_h_6 = 0.0011;
        elmt_k6 = 0.01;
        elmt_k_1 = 1.0;
        elmt_k7 = 0.032;
        elmt_h_4 = 1.0;
        elmt_k4 = 15.0;
        elmt_h_3 = 0.01;
        elmt_k5 = 0.02;
        elmt_k2 = 0.01;
        elmt_h_1 = 1.0;
        elmt_k3 = 0.032;
        elmt_h9 = 0.14;
        elmt_k_7 = 1.0;
        elmt_h7 = 0.01;
        elmt_h_9 = 0.0018;
        elmt_k_5 = 1.0;
        elmt_h8 = 0.47;


    equation
        der(elmt_h_10) = 0;
        der(elmt_h5) = 0;
        der(elmt_h6) = 0;
        der(elmt_h3) = 0;
        der(elmt_h_12) = 0;
        der(elmt_h4) = 0;
        der(elmt_h1) = 0;
        der(elmt_h2) = 0;
        der(elmt_h11) = 0;
        der(elmt_h10) = 0;
        der(elmt_h12) = 0;
        der(elmt_k1) = 0;
        der(elmt_k8) = 0;
        der(elmt_h_7) = 0;
        der(elmt_k_3) = 0;
        der(elmt_h_6) = 0;
        der(elmt_k6) = 0;
        der(elmt_k_1) = 0;
        der(elmt_k7) = 0;
        der(elmt_h_4) = 0;
        der(elmt_k4) = 0;
        der(elmt_h_3) = 0;
        der(elmt_k5) = 0;
        der(elmt_k2) = 0;
        der(elmt_h_1) = 0;
        der(elmt_k3) = 0;
        der(elmt_h9) = 0;
        der(elmt_k_7) = 0;
        der(elmt_h7) = 0;
        der(elmt_h_9) = 0;
        der(elmt_k_5) = 0;
        der(elmt_h8) = 0;

end Parameters;
