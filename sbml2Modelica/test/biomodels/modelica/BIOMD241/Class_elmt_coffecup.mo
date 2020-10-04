within BIOMD241;
class Class_elmt_coffecup "coffee cup"

    input Real elmt_bodyweight;
    input Real elmt_t_lag;
    input Real elmt_X_gut;
    input Real elmt_t_int;
    input Real elmt_cupsize;
    input Real elmt_cups;
    Boolean trigger;
    Real    value_elmt_X_gut;
    Real    value_elmt_cups;

    equation
        trigger = (time >= ((elmt_t_int * elmt_cups) + elmt_t_lag));
        algorithm
            value_elmt_X_gut := (pre(elmt_X_gut) + (elmt_cupsize / elmt_bodyweight));
            value_elmt_cups := (pre(elmt_cups) + 1.0);
end Class_elmt_coffecup;
