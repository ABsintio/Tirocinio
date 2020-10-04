within BIOMD252;
class Parameters

    Real elmt_beta(unit = "") "beta";
    Real elmt_k_f(unit = "") "k_f";
    Real elmt_gamma(unit = "") "gamma";
    Real elmt_k_t(unit = "") "k_t";
    Real elmt_k_tl(unit = "") "k_tl";
    Real elmt_k_b(unit = "") "k_b";
    Real elmt_S(unit = "") "S";
    Real elmt_alpha(unit = "") "alpha";
    Real elmt_delta(unit = "") "delta";


    initial equation
        elmt_beta = 0.6;
        elmt_k_f = 5000.0;
        elmt_gamma = 0.2;
        elmt_k_t = 0.03;
        elmt_k_tl = 1.4;
        elmt_k_b = 7200.0;
        elmt_S = 1000.0;
        elmt_alpha = 0.1;
        elmt_delta = 11.0;


    equation
        der(elmt_beta) = 0;
        der(elmt_k_f) = 0;
        der(elmt_gamma) = 0;
        der(elmt_k_t) = 0;
        der(elmt_k_tl) = 0;
        der(elmt_k_b) = 0;
        der(elmt_S) = 0;
        der(elmt_alpha) = 0;
        der(elmt_delta) = 0;

end Parameters;
