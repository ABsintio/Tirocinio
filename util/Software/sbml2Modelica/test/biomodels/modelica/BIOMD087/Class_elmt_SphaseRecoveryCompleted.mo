within BIOMD087;
class Class_elmt_SphaseRecoveryCompleted "SphaseRecoveryCompleted"

    input Real elmt_Rad17Utelo;
    Boolean trigger;
    Real    value_elmt_recovery;

    equation
        trigger = Functions.eq(elmt_Rad17Utelo, 0.0);
        algorithm
            value_elmt_recovery := 0.0;
end Class_elmt_SphaseRecoveryCompleted;
