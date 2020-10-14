within BIOMD344;
class Class_elmt_DeathOfCell ""

    input Real elmt_CellDeath;
    Boolean trigger;
    Real    value_elmt_kalive;

    equation
        trigger = (elmt_CellDeath >= 1.0);
        algorithm
            value_elmt_kalive := 0.0;
end Class_elmt_DeathOfCell;
