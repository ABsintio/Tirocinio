within BIOMD154;
class Parameters

    Real elmt_tau(unit = "") "";
    Real elmt_psi(unit = "") "";
    Real elmt_beta_x(unit = "") "";
    Real elmt_beta_y(unit = "") "";
    Real elmt_alpha_xy(unit = "") "";
    Real elmt_alpha_y(unit = "") "";
    Real elmt_alpha_x(unit = "") "";


    initial equation
        elmt_tau = 3.3;
        elmt_psi = 1.0;
        elmt_beta_x = 2.3;
        elmt_beta_y = 24.0;
        elmt_alpha_xy = 120.0;
        elmt_alpha_y = 24.0;
        elmt_alpha_x = 0.0;


    equation
        der(elmt_tau) = 0;
        der(elmt_psi) = 0;
        der(elmt_beta_x) = 0;
        der(elmt_beta_y) = 0;
        der(elmt_alpha_xy) = 0;
        der(elmt_alpha_y) = 0;
        der(elmt_alpha_x) = 0;

end Parameters;
