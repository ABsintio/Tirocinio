within BIOMD287;
class Class_elmt_stopStress ""

    Boolean trigger;
    Real    value_elmt_IR;

    equation
        trigger = (time >= 172860.0);
        algorithm
            value_elmt_IR := 0.0;
end Class_elmt_stopStress;
