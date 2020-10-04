within BIOMD541;
class Class_elmt_ev10min "ev10min"

    Boolean trigger;
    Real    value_elmt_k_f6p;
    Real    value_elmt_k_icit;
    Real    value_elmt_k_mal;
    Real    value_elmt_k_akg;
    Real    value_elmt_k_pep;
    Real    value_elmt_k_cit;
    Real    value_elmt_k_f26bp;

    equation
        trigger = (time > 10.0);
        algorithm
            value_elmt_k_f6p := (-1.055806938);
            value_elmt_k_icit := (-0.038210156);
            value_elmt_k_mal := 3.921568627;
            value_elmt_k_akg := 0.36199095;
            value_elmt_k_pep := 9.049773756;
            value_elmt_k_cit := 1.085972851;
            value_elmt_k_f26bp := (-0.050207413);
end Class_elmt_ev10min;
