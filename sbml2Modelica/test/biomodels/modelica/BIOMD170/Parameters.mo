within BIOMD170;
class Parameters

    input Real elmt_y6;
    input Real elmt_y7;
    input Real elmt_y5;
    input Real elmt_y3;

    Real elmt_k5b(unit = "s-1.0") "";
    Real elmt_k7d(unit = "s-1.0") "";
    Real elmt_k7a(unit = "s-1.0") "";
    Real elmt_y5_y6_y7(unit = "m-3.0.") "";
    Real elmt_k1d(unit = "s-1.0") "";
    Real elmt_c(unit = "m-3.0.") "";
    Real elmt_k1b(unit = "m-3.0.") "";
    Real elmt_k3d(unit = "s-1.0") "";
    Real elmt_k5d(unit = "s-1.0") "";
    Real elmt_v1b(unit = "m-3.0..s-1.0") "";
    Real elmt_trans_per2_cry(unit = "m-3.0..s-1.0") "";
    Real elmt_k1i(unit = "m-3.0.") "";
    Real elmt_k3t(unit = "s-1.0") "";
    Real elmt_k5t(unit = "s-1.0") "";
    Real elmt_hill_coeff(unit = "") "";
    Real elmt_k6a(unit = "s-1.0") "";
    Real elmt_trans_Bmal1(unit = "m-3.0..s-1.0") "";
    Real elmt_k2d(unit = "s-1.0") "";
    Real elmt_k2b(unit = "m3.0.mol-1.0.s-1.0") "";
    Real elmt_k4d(unit = "s-1.0") "";
    Real elmt_k4b(unit = "m-3.0.") "";
    Real elmt_k6d(unit = "s-1.0") "";
    Real elmt_v4b(unit = "m-3.0..s-1.0") "";
    Real elmt_k2t(unit = "s-1.0") "";
    Real elmt_q(unit = "") "";
    Real elmt_r(unit = "") "";
    Real elmt_k6t(unit = "s-1.0") "";


    initial equation
        elmt_k5b = 0.24;
        elmt_k7d = 0.09;
        elmt_k7a = 0.003;
        elmt_k1d = 0.12;
        elmt_c = 0.01;
        elmt_k1b = 1.0;
        elmt_k3d = 0.12;
        elmt_k5d = 0.06;
        elmt_v1b = 9.0;
        elmt_k1i = 0.56;
        elmt_k3t = 0.02;
        elmt_k5t = 0.45;
        elmt_hill_coeff = 8.0;
        elmt_k6a = 0.09;
        elmt_k2d = 0.05;
        elmt_k2b = 0.3;
        elmt_k4d = 0.75;
        elmt_k4b = 2.16;
        elmt_k6d = 0.12;
        elmt_v4b = 3.6;
        elmt_k2t = 0.24;
        elmt_q = 2.0;
        elmt_r = 3.0;
        elmt_k6t = 0.06;


    equation
        der(elmt_k5b) = 0;
        der(elmt_k7d) = 0;
        der(elmt_k7a) = 0;
        elmt_y5_y6_y7 = (elmt_y5 + elmt_y6 + elmt_y7);
        der(elmt_k1d) = 0;
        der(elmt_c) = 0;
        der(elmt_k1b) = 0;
        der(elmt_k3d) = 0;
        der(elmt_k5d) = 0;
        der(elmt_v1b) = 0;
        elmt_trans_per2_cry = ((elmt_v1b * (elmt_y7 + elmt_c)) / ((elmt_k1b * (1.0 + Functions.pow((elmt_y3 / elmt_k1i), elmt_hill_coeff))) + elmt_y7 + elmt_c));
        der(elmt_k1i) = 0;
        der(elmt_k3t) = 0;
        der(elmt_k5t) = 0;
        der(elmt_hill_coeff) = 0;
        der(elmt_k6a) = 0;
        elmt_trans_Bmal1 = ((elmt_v4b * Functions.pow(elmt_y3, elmt_r)) / (Functions.pow(elmt_k4b, elmt_r) + Functions.pow(elmt_y3, elmt_r)));
        der(elmt_k2d) = 0;
        der(elmt_k2b) = 0;
        der(elmt_k4d) = 0;
        der(elmt_k4b) = 0;
        der(elmt_k6d) = 0;
        der(elmt_v4b) = 0;
        der(elmt_k2t) = 0;
        der(elmt_q) = 0;
        der(elmt_r) = 0;
        der(elmt_k6t) = 0;

end Parameters;
