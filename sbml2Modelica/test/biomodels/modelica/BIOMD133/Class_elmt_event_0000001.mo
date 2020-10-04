within BIOMD133;
class Class_elmt_event_0000001 ""

    input Real elmt_Vthresh;
    input Real elmt_u;
    input Real elmt_v;
    input Real elmt_c;
    input Real elmt_d;
    Boolean trigger;
    Real    value_elmt_v;
    Real    value_elmt_u;

    equation
        trigger = (elmt_v > elmt_Vthresh);
        algorithm
            value_elmt_v := elmt_c;
            value_elmt_u := (pre(elmt_u) + elmt_d);
end Class_elmt_event_0000001;
