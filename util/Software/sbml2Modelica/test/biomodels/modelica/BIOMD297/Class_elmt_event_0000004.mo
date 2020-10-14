within BIOMD297;
class Class_elmt_event_0000004 ""

    input Real elmt_mass;
    input Real elmt_Clb;
    input Real elmt_flag;
    Boolean trigger;
    Real    value_elmt_BE;
    Real    value_elmt_mass;

    equation
        trigger = ((elmt_Clb < 0.2) and (elmt_flag > 0.0));
        algorithm
            value_elmt_BE := 0.0;
            value_elmt_mass := (0.5 * pre(elmt_mass));
end Class_elmt_event_0000004;
