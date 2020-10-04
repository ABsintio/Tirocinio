within BIOMD265;
class Class_elmt_divisionEvent "divisionEvent"

    input Real elmt_GM;
    input Real elmt_MASS;
    input Real elmt_CDh1;
    input Real elmt_Flag;
    Boolean trigger;
    Real    value_elmt_MASS;
    Real    value_elmt_GM;
    Real    value_elmt_Flag;

    equation
        trigger = ((elmt_CDh1 > 0.2) and Functions.eq(elmt_Flag, 1.0));
        algorithm
            value_elmt_MASS := (0.5 * pre(elmt_MASS));
            value_elmt_GM := (0.5 * pre(elmt_GM));
            value_elmt_Flag := 2.0;
end Class_elmt_divisionEvent;
