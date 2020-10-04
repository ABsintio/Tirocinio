within BIOMD153;
class Class_elmt_ca_on8 "ca_on8"

    input Real elmt_cAMP_Ca_delay;
    input Real elmt_spike_duration;
    input Real elmt_kon_high;
    input Real elmt_cAMP_delay;
    input Real elmt_spike_interval;
    Boolean trigger;
    Real    value_elmt_k57;

    equation
        trigger = (time >= (elmt_cAMP_delay + elmt_cAMP_Ca_delay + (7.0 * (elmt_spike_duration + elmt_spike_interval))));
        algorithm
            value_elmt_k57 := elmt_kon_high;
end Class_elmt_ca_on8;
