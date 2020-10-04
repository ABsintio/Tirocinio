within BIOMD541;
class Class_elmt_ev15min "ev15min"

    Boolean trigger;
    Real    value_elmt_k_mal;
    Real    value_elmt_k_icit;
    Real    value_elmt_k_cit;
    Real    value_elmt_k_f6p;
    Real    value_elmt_k_pep;
    Real    value_elmt_k_f26bp;
    Real    value_elmt_k_akg;

    equation
        trigger = (time > 15.0);
        algorithm
            value_elmt_k_mal := 1.809954751;
            value_elmt_k_icit := (-0.018099548);
            value_elmt_k_cit := 0.452488688;
            value_elmt_k_f6p := (-0.12066365);
            value_elmt_k_pep := (-4.826546003);
            value_elmt_k_f26bp := 0.100115778;
            value_elmt_k_akg := 1.085972851;
end Class_elmt_ev15min;
