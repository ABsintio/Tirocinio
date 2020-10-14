within BIOMD130;
class Parameters

    input Boolean elmt_event_0000001;    input Boolean elmt_event_0000004;    input Boolean elmt_event_0000005;    input Boolean elmt_event_0000002;    input Boolean elmt_event_0000003;
    input Real assign_elmt_i;
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
        elmt_i = 0.0;
        elmt_u = 6.0;
        elmt_v = (-60.0);
        elmt_c = (-55.0);
        elmt_d = 6.0;
        elmt_a = 0.02;
        elmt_b = (-0.1);


    equation
        der(elmt_Vthresh) = 0;
        der(elmt_i) = 0.0;
        der(elmt_u) = (elmt_a * ((elmt_b * elmt_v) - elmt_u));
        der(elmt_v) = ((((0.04 * Functions.pow(elmt_v, 2.0)) + (4.1 * elmt_v) + 108.0) - elmt_u) + elmt_i);
        der(elmt_c) = 0;
        der(elmt_d) = 0;
        der(elmt_a) = 0;
        der(elmt_b) = 0;

        when elmt_event_0000001 then
            reinit(elmt_u, assign_elmt_u);
            reinit(elmt_v, assign_elmt_v);
        end when;
        when elmt_event_0000004 then
            reinit(elmt_i, assign_elmt_i);
        end when;
        when elmt_event_0000005 then
            reinit(elmt_i, assign_elmt_i);
        end when;
        when elmt_event_0000002 then
            reinit(elmt_i, assign_elmt_i);
        end when;
        when elmt_event_0000003 then
            reinit(elmt_i, assign_elmt_i);
        end when;
end Parameters;
