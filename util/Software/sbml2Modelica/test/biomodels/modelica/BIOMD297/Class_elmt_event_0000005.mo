within BIOMD297;
class Class_elmt_event_0000005 ""

    input Real elmt_BE;
    input Real elmt_Clb;
    Boolean trigger;
    Real    value_elmt_BUD;

    equation
        trigger = ((elmt_Clb < 0.2) and (elmt_BE < 0.6));
        algorithm
            value_elmt_BUD := 0.0;
end Class_elmt_event_0000005;
