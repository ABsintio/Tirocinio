within BIOMD541;
class Class_elmt_ev20min "ev20min"

    Boolean trigger;
    Real    value_elmt_k_icit;
    Real    value_elmt_k_f26bp;
    Real    value_elmt_k_pep;
    Real    value_elmt_k_akg;
    Real    value_elmt_k_mal;
    Real    value_elmt_k_cit;
    Real    value_elmt_k_f6p;

    equation
        trigger = (time > 20.0);
        algorithm
            value_elmt_k_icit := 0.031674208;
            value_elmt_k_f26bp := (-0.032601514);
            value_elmt_k_pep := (-3.619909502);
            value_elmt_k_akg := 0.226244344;
            value_elmt_k_mal := 1.206636501;
            value_elmt_k_cit := 0.377073906;
            value_elmt_k_f6p := (-0.165912519);
end Class_elmt_ev20min;
