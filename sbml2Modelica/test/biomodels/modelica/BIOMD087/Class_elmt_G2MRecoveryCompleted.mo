within BIOMD087;
class Class_elmt_G2MRecoveryCompleted "G2MRecoveryCompleted"

    input Real elmt_G2;
    input Real elmt_Rad17Utelo;
    Boolean trigger;
    Real    value_elmt_Rad9I;
    Real    value_elmt_Exo1I;
    Real    value_elmt_ExoXI;
    Real    value_elmt_Rad53A;
    Real    value_elmt_Dun1A;
    Real    value_elmt_G2Moff;
    Real    value_elmt_recovery;
    Real    value_elmt_Exo1A;
    Real    value_elmt_Chk1I;
    Real    value_elmt_Rad9A;
    Real    value_elmt_Rad53I;
    Real    value_elmt_Dun1I;
    Real    value_elmt_ExoXA;
    Real    value_elmt_Chk1A;
    Real    value_elmt_G2Mon;

    equation
        trigger = (Functions.eq(elmt_G2, 1.0) and Functions.eq(elmt_Rad17Utelo, 0.0));
        algorithm
            value_elmt_Rad9I := 20.0;
            value_elmt_Exo1I := 670.0;
            value_elmt_ExoXI := 70.0;
            value_elmt_Rad53A := 0.0;
            value_elmt_Dun1A := 0.0;
            value_elmt_G2Moff := 0.0;
            value_elmt_recovery := 0.0;
            value_elmt_Exo1A := 0.0;
            value_elmt_Chk1I := 60.0;
            value_elmt_Rad9A := 0.0;
            value_elmt_Rad53I := 6900.0;
            value_elmt_Dun1I := 3000.0;
            value_elmt_ExoXA := 0.0;
            value_elmt_Chk1A := 0.0;
            value_elmt_G2Mon := 1.0;
end Class_elmt_G2MRecoveryCompleted;
