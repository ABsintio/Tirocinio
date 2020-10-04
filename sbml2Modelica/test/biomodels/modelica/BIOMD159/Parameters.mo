within BIOMD159;
class Parameters

    Real elmt_psi(unit = "") "";
    Real elmt_alpha_0(unit = "") "";
    Real elmt_beta_x(unit = "") "";
    Real elmt_beta_y(unit = "") "";
    Real elmt_alpha_xy(unit = "") "";
    Real elmt_alpha_y(unit = "") "";
    Real elmt_alpha_x(unit = "") "";


    initial equation
        elmt_psi = 1.0;
        elmt_alpha_0 = 0.1;
        elmt_beta_x = 0.3;
        elmt_beta_y = 0.4;
        elmt_alpha_xy = 3.2;
        elmt_alpha_y = 0.1;
        elmt_alpha_x = 0.0;


    equation
        der(elmt_psi) = 0;
        der(elmt_alpha_0) = 0;
        der(elmt_beta_x) = 0;
        der(elmt_beta_y) = 0;
        der(elmt_alpha_xy) = 0;
        der(elmt_alpha_y) = 0;
        der(elmt_alpha_x) = 0;

end Parameters;
