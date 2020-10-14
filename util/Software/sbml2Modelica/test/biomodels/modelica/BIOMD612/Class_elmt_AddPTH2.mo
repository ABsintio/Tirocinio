within BIOMD612;
class Class_elmt_AddPTH2 ""

    input Real elmt_X;
    Boolean trigger;
    Real    value_elmt_X;
    Real    value_elmt_PTH;

    equation
        trigger = (elmt_X > 1000.0);
        algorithm
            value_elmt_X := 0.0;
            value_elmt_PTH := 170.0;
end Class_elmt_AddPTH2;
