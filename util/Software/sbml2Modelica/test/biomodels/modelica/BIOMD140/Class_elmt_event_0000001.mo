within BIOMD140;
class Class_elmt_event_0000001 ""

    input Real elmt_trigger_value;
    Boolean trigger;
    Real    value_elmt_trigger_value;
    Real    value_elmt_IKK;
    Real    value_elmt_flag_for_after_trigger;

    equation
        trigger = ((time >= 2000.0) and Functions.eq(elmt_trigger_value, 0.0));
        algorithm
            value_elmt_trigger_value := 1.0;
            value_elmt_IKK := 0.1;
            value_elmt_flag_for_after_trigger := 0.0;
end Class_elmt_event_0000001;
