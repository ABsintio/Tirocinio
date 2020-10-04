within BIOMD285;
class Class_elmt_PIcellDeath ""

    input Real elmt_PIdeath;
    Boolean trigger;
    Real    value_elmt_kalive;

    equation
        trigger = (elmt_PIdeath > 0.0);
        algorithm
            value_elmt_kalive := 0.0;
end Class_elmt_PIcellDeath;
