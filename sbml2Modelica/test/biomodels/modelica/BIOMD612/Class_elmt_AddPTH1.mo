within BIOMD612;
class Class_elmt_AddPTH1 ""

    input Real elmt_X;
    Boolean trigger;
    Real    value_elmt_PTH;

    equation
        trigger = (elmt_X > 625.0);
        algorithm
            value_elmt_PTH := 150.0;
end Class_elmt_AddPTH1;
