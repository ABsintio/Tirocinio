within BIOMD142;
class Parameters

    input Boolean elmt_event_0000001;
    input Real assign_elmt_u;
    input Real assign_elmt_v;


    Real elmt_Vthresh(unit = "") "";
    Real elmt_i(unit = "") "";
    Real elmt_u(unit = "") "";
    Real elmt_v(unit = "") "";
    Real elmt_c(unit = "") "";
    Real elmt_d(unit = "") "";
    Real elmt_a(unit = "") "";
    Real elmt_b(unit = "") "";


    initial equation
        elmt_Vthresh = 30.0;
        elmt_u = (-16.64);
        elmt_v = (-64.0);
        elmt_c = (-65.0);
        elmt_d = 0.0;
        elmt_a = 0.2;
        elmt_b = 0.26;


    equation
        der(elmt_Vthresh) = 0;
        elmt_i = (if (time < 30.0) then 0.0 else ((-0.5) + (0.015 * (time - 30.0))));
        der(elmt_u) = (elmt_a * ((elmt_b * elmt_v) - elmt_u));
        der(elmt_v) = ((((0.04 * Functions.pow(elmt_v, 2.0)) + (5.0 * elmt_v) + 140.0) - elmt_u) + elmt_i);
        der(elmt_c) = 0;
        der(elmt_d) = 0;
        der(elmt_a) = 0;
        der(elmt_b) = 0;

        when elmt_event_0000001 then
            reinit(elmt_u, assign_elmt_u);
            reinit(elmt_v, assign_elmt_v);
        end when;
end Parameters;
