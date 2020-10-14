within BIOMD612;
class Class_elmt_AddLOAD2 ""

    input Real elmt_X;
    Boolean trigger;
    Real    value_elmt_LOAD;

    equation
        trigger = (elmt_X > 600.0);
        algorithm
            value_elmt_LOAD := 1.0;
end Class_elmt_AddLOAD2;
