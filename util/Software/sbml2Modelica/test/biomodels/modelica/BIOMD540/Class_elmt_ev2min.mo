within BIOMD540;
class Class_elmt_ev2min "ev2min"

    Boolean trigger;
    Real    value_elmt_k_f26bp;
    Real    value_elmt_k_mal;
    Real    value_elmt_k_cit;
    Real    value_elmt_k_akg;
    Real    value_elmt_k_icit;
    Real    value_elmt_k_f6p;
    Real    value_elmt_k_pfkl_s775;
    Real    value_elmt_k_pep;

    equation
        trigger = (time > 2.0);
        algorithm
            value_elmt_k_f26bp := 0.028924455;
            value_elmt_k_mal := (-1.508295626);
            value_elmt_k_cit := 0.351935646;
            value_elmt_k_akg := (-1.357466063);
            value_elmt_k_icit := (-0.038210156);
            value_elmt_k_f6p := 1.357466063;
            value_elmt_k_pfkl_s775 := (-0.011384308);
            value_elmt_k_pep := 7.54147813;
end Class_elmt_ev2min;
