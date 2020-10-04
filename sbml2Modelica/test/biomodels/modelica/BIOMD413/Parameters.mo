within BIOMD413;
class Parameters

    Real elmt_la(unit = "") "";
    Real elmt_ka(unit = "") "";
    Real elmt_lm(unit = "") "";
    Real elmt_TIR1T(unit = "") "";
    Real elmt_alpha_tr(unit = "") "";
    Real elmt_kd(unit = "") "";
    Real elmt_mu(unit = "") "";
    Real elmt_ld(unit = "") "";
    Real elmt_delta(unit = "") "";
    Real elmt_lambda(unit = "") "";


    initial equation
        elmt_la = 1.15;
        elmt_ka = 8.22E-4;
        elmt_lm = 0.175;
        elmt_TIR1T = 18.5;
        elmt_alpha_tr = 30.5;
        elmt_kd = 0.334;
        elmt_mu = 0.79;
        elmt_ld = 4.49;
        elmt_delta = 0.486;
        elmt_lambda = 0.00316;


    equation
        der(elmt_la) = 0;
        der(elmt_ka) = 0;
        der(elmt_lm) = 0;
        der(elmt_TIR1T) = 0;
        der(elmt_alpha_tr) = 0;
        der(elmt_kd) = 0;
        der(elmt_mu) = 0;
        der(elmt_ld) = 0;
        der(elmt_delta) = 0;
        der(elmt_lambda) = 0;

end Parameters;
