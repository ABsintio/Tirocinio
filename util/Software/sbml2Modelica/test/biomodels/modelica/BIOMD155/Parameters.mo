within BIOMD155;
class Parameters

    input Real elmt_y;

    Real elmt_tau(unit = "") "";
    Real elmt_psi(unit = "") "";
    Real elmt_n(unit = "") "";
    Real elmt_beta_S(unit = "") "";
    Real elmt_beta_x(unit = "") "";
    Real elmt_beta_y(unit = "") "";
    Real elmt_alpha_S(unit = "") "";
    Real elmt_alpha_xy(unit = "") "";
    Real elmt_alpha_y(unit = "") "";
    Real elmt_S(unit = "") "";


    initial equation
        elmt_tau = 0.9;
        elmt_psi = 1.0;
        elmt_n = 4.0;
        elmt_beta_S = 0.9;
        elmt_beta_x = 0.9;
        elmt_beta_y = 1.0;
        elmt_alpha_S = 2.7;
        elmt_alpha_xy = 1.4;
        elmt_alpha_y = 0.7;
        elmt_S = 0.0;


    equation
        der(elmt_tau) = 0;
        der(elmt_psi) = 0;
        der(elmt_n) = 0;
        der(elmt_beta_S) = 0;
        der(elmt_beta_x) = 0;
        der(elmt_beta_y) = 0;
        der(elmt_alpha_S) = 0;
        der(elmt_alpha_xy) = 0;
        der(elmt_alpha_y) = 0;
        der(elmt_S) = (elmt_beta_S - (elmt_alpha_S * elmt_y * elmt_S));

end Parameters;
