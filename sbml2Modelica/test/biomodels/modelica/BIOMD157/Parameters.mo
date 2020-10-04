within BIOMD157;
class Parameters

    Real elmt_psi(unit = "") "";
    Real elmt_alpha_k(unit = "") "";
    Real elmt_k(unit = "") "";
    Real elmt_alpha_0(unit = "") "";
    Real elmt_beta_x(unit = "") "";
    Real elmt_beta_y(unit = "") "";
    Real elmt_alpha_y(unit = "") "";
    Real elmt_alpha_x(unit = "") "";


    initial equation
        elmt_psi = 1.0;
        elmt_alpha_k = 1.7;
        elmt_k = 1.0E-4;
        elmt_alpha_0 = 0.8;
        elmt_beta_x = 0.9;
        elmt_beta_y = 1.1;
        elmt_alpha_y = 0.8;
        elmt_alpha_x = 0.0;


    equation
        der(elmt_psi) = 0;
        der(elmt_alpha_k) = 0;
        der(elmt_k) = 0;
        der(elmt_alpha_0) = 0;
        der(elmt_beta_x) = 0;
        der(elmt_beta_y) = 0;
        der(elmt_alpha_y) = 0;
        der(elmt_alpha_x) = 0;

end Parameters;
