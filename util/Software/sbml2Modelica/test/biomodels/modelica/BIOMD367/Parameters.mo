within BIOMD367;
class Parameters

    input Real elmt_y;

    Real elmt_zeta(unit = "") "zeta";
    Real elmt_mu_z(unit = "") "mu_z";
    Real elmt_mu_x(unit = "") "mu_x";
    Real elmt_k(unit = "") "k";
    Real elmt_mu_z_star(unit = "") "mu_z_star";
    Real elmt_epsilon(unit = "") "epsilon";
    Real elmt_r(unit = "") "r";
    Real elmt_b(unit = "") "b";


    initial equation
        elmt_zeta = 0.5;
        elmt_mu_z = 0.4;
        elmt_mu_x = 4.0;
        elmt_k = 0.4;
        elmt_mu_z_star = 0.4;
        elmt_epsilon = 0.002;
        elmt_r = 0.2;
        elmt_b = 1.5;


    equation
        der(elmt_zeta) = 0;
        der(elmt_mu_z) = (elmt_epsilon * (elmt_y - (elmt_k * (elmt_mu_z - elmt_mu_z_star))));
        der(elmt_mu_x) = 0;
        der(elmt_k) = 0;
        der(elmt_mu_z_star) = 0;
        der(elmt_epsilon) = 0;
        der(elmt_r) = 0;
        der(elmt_b) = 0;

end Parameters;
