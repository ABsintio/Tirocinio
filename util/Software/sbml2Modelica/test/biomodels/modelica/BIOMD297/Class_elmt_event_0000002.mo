within BIOMD297;
class Class_elmt_event_0000002 ""

    input Real elmt_Clb;
    Boolean trigger;
    Real    value_elmt_flag;

    equation
        trigger = (elmt_Clb > 0.2);
        algorithm
            value_elmt_flag := 1.0;
end Class_elmt_event_0000002;
