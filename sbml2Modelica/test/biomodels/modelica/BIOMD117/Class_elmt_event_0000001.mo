within BIOMD117;
class Class_elmt_event_0000001 ""

    input Real elmt_tstim;
    Boolean trigger;
    Real    value_elmt_flag;

    equation
        trigger = (time > elmt_tstim);
        algorithm
            value_elmt_flag := 1.0;
end Class_elmt_event_0000001;
