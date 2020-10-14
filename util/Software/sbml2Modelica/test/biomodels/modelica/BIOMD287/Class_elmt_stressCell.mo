within BIOMD287;
class Class_elmt_stressCell ""

    Boolean trigger;
    Real    value_elmt_IR;

    equation
        trigger = (time >= 172800.0);
        algorithm
            value_elmt_IR := 200.0;
end Class_elmt_stressCell;
