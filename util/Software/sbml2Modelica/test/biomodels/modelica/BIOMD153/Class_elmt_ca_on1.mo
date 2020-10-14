within BIOMD153;
class Class_elmt_ca_on1 "ca_on1"

    input Real elmt_cAMP_Ca_delay;
    input Real elmt_kon_high;
    input Real elmt_cAMP_delay;
    Boolean trigger;
    Real    value_elmt_k57;

    equation
        trigger = (time >= (elmt_cAMP_delay + elmt_cAMP_Ca_delay));
        algorithm
            value_elmt_k57 := elmt_kon_high;
end Class_elmt_ca_on1;
