within BIOMD285;
class Class_elmt_p38cellDeath ""

    input Real elmt_p38death;
    Boolean trigger;
    Real    value_elmt_kalive;

    equation
        trigger = (elmt_p38death > 0.0);
        algorithm
            value_elmt_kalive := 0.0;
end Class_elmt_p38cellDeath;
