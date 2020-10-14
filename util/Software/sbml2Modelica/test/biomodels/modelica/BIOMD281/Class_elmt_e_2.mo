within BIOMD281;
class Class_elmt_e_2 "addition of uncoupling agent"

    Boolean trigger;
    Real    value_elmt_DBP;

    equation
        trigger = (time >= 119.0);
        algorithm
            value_elmt_DBP := 0.025;
end Class_elmt_e_2;
