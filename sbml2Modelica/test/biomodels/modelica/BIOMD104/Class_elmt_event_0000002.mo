within BIOMD104;
class Class_elmt_event_0000002 "single switch"

    Boolean trigger;
    Real    value_elmt_species_2;

    equation
        trigger = (time > 1.0);
        algorithm
            value_elmt_species_2 := 0.4;
end Class_elmt_event_0000002;
