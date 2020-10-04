within BIOMD186;
class Class_elmt_mt_attachment "Microtubule attachment"

    input Real elmt_const_val_1;
    input Real elmt_const_val_0;
    Boolean trigger;
    Real    value_elmt_u;
    Real    value_elmt_u_prime;

    equation
        trigger = (time > 2000.0);
        algorithm
            value_elmt_u := elmt_const_val_0;
            value_elmt_u_prime := elmt_const_val_1;
end Class_elmt_mt_attachment;
