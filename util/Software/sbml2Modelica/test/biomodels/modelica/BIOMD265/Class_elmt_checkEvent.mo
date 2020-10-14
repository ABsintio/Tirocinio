within BIOMD265;
class Class_elmt_checkEvent "checkEvent"

    input Real elmt_CDh1;
    input Real elmt_Flag;
    Boolean trigger;
    Real    value_elmt_Flag;

    equation
        trigger = ((elmt_CDh1 < 0.2) and Functions.eq(elmt_Flag, 2.0));
        algorithm
            value_elmt_Flag := 1.0;
end Class_elmt_checkEvent;
