within BIOMD158;
class Parameters

    input Real elmt_x;

    input Boolean elmt_event_0000001;    input Boolean elmt_event_0000002;
    input Real assign_elmt_flag3;
    input Real assign_elmt_flag2;
    input Real assign_elmt_flag1;


    Real elmt_xmin(unit = "") "";
    Real elmt_flag3(unit = "") "";
    Real elmt_flag2(unit = "") "";
    Real elmt_M(unit = "") "";
    Real elmt_flag1(unit = "") "";
    Real elmt_beta_x(unit = "") "";
    Real elmt_beta_y(unit = "") "";
    Real elmt_alpha_y(unit = "") "";
    Real elmt_alpha_x(unit = "") "";
    Real elmt_psi(unit = "") "";
    Real elmt_alpha_0(unit = "") "";
    Real elmt_fx(unit = "") "";
    Real elmt_xmax(unit = "") "";
    Real elmt_alpha_xy(unit = "") "";


    initial equation
        elmt_xmin = 0.12;
        elmt_flag3 = 1.0;
        elmt_flag2 = 0.0;
        elmt_M = 34.0;
        elmt_flag1 = 0.0;
        elmt_beta_x = 2.55;
        elmt_beta_y = 0.85;
        elmt_alpha_y = 0.6;
        elmt_alpha_x = 0.0;
        elmt_psi = 1.0;
        elmt_alpha_0 = 55.0;
        elmt_xmax = 0.92;
        elmt_alpha_xy = 3.15;


    equation
        der(elmt_xmin) = 0;
        der(elmt_flag3) = 0.0;
        der(elmt_flag2) = 0.0;
        der(elmt_M) = 0;
        der(elmt_flag1) = 0.0;
        der(elmt_beta_x) = 0;
        der(elmt_beta_y) = 0;
        der(elmt_alpha_y) = 0;
        der(elmt_alpha_x) = 0;
        der(elmt_psi) = 0;
        der(elmt_alpha_0) = 0;
        elmt_fx = ((elmt_beta_x * elmt_flag1) + ((elmt_beta_x / elmt_M) * elmt_flag2) + (((elmt_flag3 * elmt_beta_x) / elmt_M) * (1.0 + ((elmt_M - 1.0) * ((elmt_x - elmt_xmin) / (elmt_xmax - elmt_xmin))))));
        der(elmt_xmax) = 0;
        der(elmt_alpha_xy) = 0;

        when elmt_event_0000001 then
            reinit(elmt_flag3, assign_elmt_flag3);
            reinit(elmt_flag2, assign_elmt_flag2);
            reinit(elmt_flag1, assign_elmt_flag1);
        end when;
        when elmt_event_0000002 then
            reinit(elmt_flag3, assign_elmt_flag3);
            reinit(elmt_flag2, assign_elmt_flag2);
            reinit(elmt_flag1, assign_elmt_flag1);
        end when;
end Parameters;
