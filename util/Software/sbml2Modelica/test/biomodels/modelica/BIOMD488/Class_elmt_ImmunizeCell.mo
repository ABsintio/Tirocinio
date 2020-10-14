within BIOMD488;
class Class_elmt_ImmunizeCell ""

    Boolean trigger;
    Real    value_elmt_antiAb;

    equation
        trigger = (time >= 345600.0);
        algorithm
            value_elmt_antiAb := 50.0;
end Class_elmt_ImmunizeCell;
