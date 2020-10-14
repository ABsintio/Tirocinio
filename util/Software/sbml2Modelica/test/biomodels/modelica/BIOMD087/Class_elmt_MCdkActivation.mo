within BIOMD087;
class Class_elmt_MCdkActivation "MCdkActivation"

    input Real elmt_Mcyclin;
    Boolean trigger;
    Real    value_elmt_MCdkA;
    Real    value_elmt_MCdkI;

    equation
        trigger = (elmt_Mcyclin > 100.0);
        algorithm
            value_elmt_MCdkA := 1.0;
            value_elmt_MCdkI := 0.0;
end Class_elmt_MCdkActivation;
