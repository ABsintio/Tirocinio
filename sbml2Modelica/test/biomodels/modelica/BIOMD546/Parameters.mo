within BIOMD546;
class Parameters

    Real elmt_delta_Es(unit = "") "delta_Es";
    Real elmt_rho_E(unit = "") "rho_E";
    Real elmt_beta_a(unit = "") "beta_a";
    Real elmt_pi_a(unit = "") "pi_a";
    Real elmt_c_V(unit = "") "c_V";


    initial equation
        elmt_delta_Es = 0.6;
        elmt_rho_E = 6.2E-8;
        elmt_beta_a = 2.4E-6;
        elmt_pi_a = 100.0;
        elmt_c_V = 4.2;


    equation
        der(elmt_delta_Es) = 0;
        der(elmt_rho_E) = 0;
        der(elmt_beta_a) = 0;
        der(elmt_pi_a) = 0;
        der(elmt_c_V) = 0;

end Parameters;
