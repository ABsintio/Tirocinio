within BIOMD120;
class Parameters

    input Boolean elmt_event_0000001;    input Boolean elmt_event_0000002;
    input Real assign_elmt_r_l;


    Real elmt_m2(unit = "s-1.0") "";
    Real elmt_k1(unit = "s-1.0") "";
    Real elmt_n1(unit = "s-1.0") "";
    Real elmt_m1(unit = "") "";
    Real elmt_n2(unit = "s-1.0") "";
    Real elmt_n(unit = "") "";
    Real elmt_d1(unit = "s-1.0") "";
    Real elmt_d2(unit = "s-1.0") "";
    Real elmt_r_l(unit = "s-1.0") "";
    Real elmt_d0(unit = "s-1.0") "";
    Real elmt_k2(unit = "s-1.0") "";


    initial equation
        elmt_m2 = 1.0;
        elmt_k1 = 0.01;
        elmt_n1 = 1.0;
        elmt_m1 = 1.0;
        elmt_n2 = 0.02;
        elmt_n = 1.95;
        elmt_d1 = 0.15;
        elmt_d2 = 0.0;
        elmt_r_l = 0.0;
        elmt_d0 = 0.15;
        elmt_k2 = 0.01;


    equation
        der(elmt_m2) = 0;
        der(elmt_k1) = 0;
        der(elmt_n1) = 0;
        der(elmt_m1) = 0;
        der(elmt_n2) = 0;
        der(elmt_n) = 0;
        der(elmt_d1) = 0;
        der(elmt_d2) = 0;
        der(elmt_r_l) = 0.0;
        der(elmt_d0) = 0;
        der(elmt_k2) = 0;

        when elmt_event_0000001 then
            reinit(elmt_r_l, assign_elmt_r_l);
        end when;
        when elmt_event_0000002 then
            reinit(elmt_r_l, assign_elmt_r_l);
        end when;
end Parameters;
