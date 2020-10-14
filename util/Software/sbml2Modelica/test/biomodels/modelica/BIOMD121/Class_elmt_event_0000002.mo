within BIOMD121;
class Class_elmt_event_0000002 ""

    input Real elmt_vhold;
    Boolean trigger;
    Real    value_elmt_v;

    equation
        trigger = (time > 300.0);
        algorithm
            value_elmt_v := elmt_vhold;
end Class_elmt_event_0000002;
