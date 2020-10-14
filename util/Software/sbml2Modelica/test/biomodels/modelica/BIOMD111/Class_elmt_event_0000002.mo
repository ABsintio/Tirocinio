within BIOMD111;
class Class_elmt_event_0000002 ""

    input Real elmt_MPF;
    Boolean trigger;
    Real    value_elmt_flag_MPF;

    equation
        trigger = (elmt_MPF > 0.1);
        algorithm
            value_elmt_flag_MPF := 1.0;
end Class_elmt_event_0000002;
