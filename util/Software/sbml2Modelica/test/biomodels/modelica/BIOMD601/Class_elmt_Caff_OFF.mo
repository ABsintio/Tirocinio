within BIOMD601;
class Class_elmt_Caff_OFF "Caff_OFF"

    Boolean trigger;
    Real    value_elmt_mw168e0d8a_b9f7_4d4c_b437_a81206c5d381;

    equation
        trigger = (time > 15.0);
        algorithm
            value_elmt_mw168e0d8a_b9f7_4d4c_b437_a81206c5d381 := 0.0;
end Class_elmt_Caff_OFF;
