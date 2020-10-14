within BIOMD194;
class Parameters

    input Boolean elmt_mt_attachment;
    input Real assign_elmt_u;


    Real elmt_beta_T(unit = "s-1.0") "";
    Real elmt_gamma_T(unit = "m3.0.mol-1.0.s-1.0") "";
    Real elmt_alpha_T(unit = "m3.0.mol-1.0.s-1.0") "";
    Real elmt_u(unit = "") "";
    Real elmt_eta_T(unit = "s-1.0") "";
    Real elmt_const_val_1(unit = "") "";
    Real elmt_const_val_0(unit = "") "";


    initial equation
        elmt_beta_T = 0.2;
        elmt_gamma_T = 1.0E9;
        elmt_alpha_T = 200000.0;
        elmt_u = 1.0;
        elmt_eta_T = 0.01;
        elmt_const_val_1 = 1.0;
        elmt_const_val_0 = 0.0;


    equation
        der(elmt_beta_T) = 0;
        der(elmt_gamma_T) = 0;
        der(elmt_alpha_T) = 0;
        der(elmt_u) = 0.0;
        der(elmt_eta_T) = 0;
        der(elmt_const_val_1) = 0;
        der(elmt_const_val_0) = 0;

        when elmt_mt_attachment then
            reinit(elmt_u, assign_elmt_u);
        end when;
end Parameters;
