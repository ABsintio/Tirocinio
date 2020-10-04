within BIOMD540;
class Class_elmt_ev5min "ev5min"

    Boolean trigger;
    Real    value_elmt_k_pfkl_s775;
    Real    value_elmt_k_icit;
    Real    value_elmt_k_f6p;
    Real    value_elmt_k_f26bp;
    Real    value_elmt_k_mal;
    Real    value_elmt_k_pep;
    Real    value_elmt_k_akg;
    Real    value_elmt_k_cit;

    equation
        trigger = (time > 5.0);
        algorithm
            value_elmt_k_pfkl_s775 := 0.057596439;
            value_elmt_k_icit := (-0.038210156);
            value_elmt_k_f6p := 0.271493213;
            value_elmt_k_f26bp := 0.119075279;
            value_elmt_k_mal := (-0.904977376);
            value_elmt_k_pep := (-6.334841629);
            value_elmt_k_akg := 0.0;
            value_elmt_k_cit := (-0.211161388);
end Class_elmt_ev5min;
