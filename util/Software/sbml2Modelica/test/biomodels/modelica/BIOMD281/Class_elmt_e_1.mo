within BIOMD281;
class Class_elmt_e_1 "addition of glucose"

    Boolean trigger;
    Real    value_elmt_GLU;

    equation
        trigger = (time >= 64.0);
        algorithm
            value_elmt_GLU := 0.003;
end Class_elmt_e_1;
