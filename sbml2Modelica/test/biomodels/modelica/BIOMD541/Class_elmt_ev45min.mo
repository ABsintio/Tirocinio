within BIOMD541;
class Class_elmt_ev45min "ev45min"

    Boolean trigger;
    Real    value_elmt_k_icit;
    Real    value_elmt_k_f6p;
    Real    value_elmt_k_f26bp;
    Real    value_elmt_k_akg;
    Real    value_elmt_k_cit;
    Real    value_elmt_k_mal;
    Real    value_elmt_k_pep;

    equation
        trigger = (time > 45.0);
        algorithm
            value_elmt_k_icit := 0.031674208;
            value_elmt_k_f6p := 0.070387129;
            value_elmt_k_f26bp := (-0.003055632);
            value_elmt_k_akg := 0.369532428;
            value_elmt_k_cit := 0.306686777;
            value_elmt_k_mal := 0.502765209;
            value_elmt_k_pep := (-0.301659125);
end Class_elmt_ev45min;
