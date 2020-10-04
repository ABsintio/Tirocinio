within BIOMD087;
class Class_elmt_SCdkActivation "SCdkActivation"

    input Real elmt_Scyclin;
    Boolean trigger;
    Real    value_elmt_SCdkI;
    Real    value_elmt_SCdkA;

    equation
        trigger = (elmt_Scyclin > 100.0);
        algorithm
            value_elmt_SCdkI := 0.0;
            value_elmt_SCdkA := 1.0;
end Class_elmt_SCdkActivation;
