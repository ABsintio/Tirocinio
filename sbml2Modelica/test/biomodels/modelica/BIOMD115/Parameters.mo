within BIOMD115;
class Parameters

    input Real elmt_y;

    Real elmt_k1(unit = "") "";
    Real elmt_beta(unit = "") "";
    Real elmt_fy(unit = "") "";
    Real elmt_n(unit = "") "";
    Real elmt_k(unit = "") "";
    Real elmt_gamma(unit = "") "";
    Real elmt_alpha(unit = "") "";
    Real elmt_a(unit = "") "";


    initial equation
        elmt_k1 = 2.0;
        elmt_beta = 1.0;
        elmt_n = 4.0;
        elmt_k = 0.01;
        elmt_gamma = 1.0;
        elmt_alpha = 10.0;
        elmt_a = 1.4;


    equation
        der(elmt_k1) = 0;
        der(elmt_beta) = 0;
        elmt_fy = (Functions.pow(elmt_y, elmt_n) / (Functions.pow(elmt_a, elmt_n) + Functions.pow(elmt_y, elmt_n)));
        der(elmt_n) = 0;
        der(elmt_k) = 0;
        der(elmt_gamma) = 0;
        der(elmt_alpha) = 0;
        der(elmt_a) = 0;

end Parameters;
