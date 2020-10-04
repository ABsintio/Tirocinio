within BIOMD124;
class Class_elmt_event_0000001 ""

    Boolean trigger;
    Real    value_elmt_gkatp;

    equation
        trigger = (time > 30000.0);
        algorithm
            value_elmt_gkatp := 530.0;
end Class_elmt_event_0000001;
