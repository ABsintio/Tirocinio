within BIOMD571;
class Class_elmt_event0 ""

    Boolean trigger;
    Real    value_elmt_Glucose;

    equation
        trigger = (time >= 500.0);
        algorithm
            value_elmt_Glucose := 2.0E-9;
end Class_elmt_event0;
