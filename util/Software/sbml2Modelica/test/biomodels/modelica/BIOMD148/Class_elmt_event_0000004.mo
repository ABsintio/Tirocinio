within BIOMD148;
class Class_elmt_event_0000004 ""

    input Real elmt_x2_bar;
    input Real elmt_x2;
    Boolean trigger;
    Real    value_elmt_flag_formation;

    equation
        trigger = (elmt_x2 <= elmt_x2_bar);
        algorithm
            value_elmt_flag_formation := 0.0;
end Class_elmt_event_0000004;
