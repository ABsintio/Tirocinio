within BIOMD612;
class Class_elmt_AddLOAD1 ""

    input Real elmt_X;
    Boolean trigger;
    Real    value_elmt_LOAD;

    equation
        trigger = (elmt_X > 300.0);
        algorithm
            value_elmt_LOAD := 1.0;
end Class_elmt_AddLOAD1;
