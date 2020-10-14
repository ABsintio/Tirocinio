within BIOMD148;
class Parameters

    input Boolean elmt_event_0000001;    input Boolean elmt_event_0000004;    input Boolean elmt_event_0000002;    input Boolean elmt_event_0000003;
    input Real assign_elmt_flag_resorption;
    input Real assign_elmt_flag_formation;


    Real elmt_k1(unit = "") "";
    Real elmt_flag_resorption(unit = "") "";
    Real elmt_beta1(unit = "") "";
    Real elmt_beta2(unit = "") "";
    Real elmt_k2(unit = "") "";
    Real elmt_g12(unit = "") "";
    Real elmt_g11(unit = "") "";
    Real elmt_g22(unit = "") "";
    Real elmt_g21(unit = "") "";
    Real elmt_gamma(unit = "") "";
    Real elmt_alpha1(unit = "") "";
    Real elmt_alpha2(unit = "") "";
    Real elmt_flag_formation(unit = "") "";


    initial equation
        elmt_k1 = 0.24;
        elmt_flag_resorption = 0.0;
        elmt_beta1 = 0.2;
        elmt_beta2 = 0.02;
        elmt_k2 = 0.0017;
        elmt_g12 = 1.0;
        elmt_g11 = 0.5;
        elmt_g22 = 0.0;
        elmt_g21 = (-0.5);
        elmt_alpha1 = 3.0;
        elmt_alpha2 = 4.0;
        elmt_flag_formation = 0.0;


    equation
        der(elmt_k1) = 0;
        der(elmt_flag_resorption) = 0.0;
        der(elmt_beta1) = 0;
        der(elmt_beta2) = 0;
        der(elmt_k2) = 0;
        der(elmt_g12) = 0;
        der(elmt_g11) = 0;
        der(elmt_g22) = 0;
        der(elmt_g21) = 0;
        elmt_gamma = ((elmt_g12 * elmt_g21) - ((1.0 - elmt_g11) * (1.0 - elmt_g22)));
        der(elmt_alpha1) = 0;
        der(elmt_alpha2) = 0;
        der(elmt_flag_formation) = 0.0;

        when elmt_event_0000001 then
            reinit(elmt_flag_resorption, assign_elmt_flag_resorption);
        end when;
        when elmt_event_0000004 then
            reinit(elmt_flag_formation, assign_elmt_flag_formation);
        end when;
        when elmt_event_0000002 then
            reinit(elmt_flag_formation, assign_elmt_flag_formation);
        end when;
        when elmt_event_0000003 then
            reinit(elmt_flag_resorption, assign_elmt_flag_resorption);
        end when;
end Parameters;
