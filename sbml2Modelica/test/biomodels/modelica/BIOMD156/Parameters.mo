within BIOMD156;
class Parameters

    Real elmt_psi(unit = "") "";
    Real elmt_alpha_0(unit = "") "";
    Real elmt_Theta(unit = "") "";
    Real elmt_beta_y(unit = "") "";
    Real elmt_alpha_xy(unit = "") "";
    Real elmt_alpha_y(unit = "") "";
    Real elmt_alpha_x(unit = "") "";


    initial equation
        elmt_psi = 1.0;
        elmt_alpha_0 = 1.1;
        elmt_Theta = 2.0;
        elmt_beta_y = 1.5;
        elmt_alpha_xy = 3.7;
        elmt_alpha_y = 0.9;
        elmt_alpha_x = 0.0;


    equation
        der(elmt_psi) = 0;
        der(elmt_alpha_0) = 0;
        der(elmt_Theta) = 0;
        der(elmt_beta_y) = 0;
        der(elmt_alpha_xy) = 0;
        der(elmt_alpha_y) = 0;
        der(elmt_alpha_x) = 0;

end Parameters;
