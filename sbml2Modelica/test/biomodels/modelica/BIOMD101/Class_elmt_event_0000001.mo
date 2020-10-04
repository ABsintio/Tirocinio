within BIOMD101;
class Class_elmt_event_0000001 ""

    Boolean trigger;
    Real    value_elmt_ligand;

    equation
        trigger = (time >= 2500.0);
        algorithm
            value_elmt_ligand := 0.01;
end Class_elmt_event_0000001;
