within BIOMD153;
class Class_elmt_ca_off4 "ca_off4"

    input Real elmt_cAMP_Ca_delay;
    input Real elmt_kon_low;
    input Real elmt_spike_duration;
    input Real elmt_cAMP_delay;
    input Real elmt_spike_interval;
    Boolean trigger;
    Real    value_elmt_k57;

    equation
        trigger = (time >= (elmt_cAMP_delay + elmt_cAMP_Ca_delay + elmt_spike_duration + (3.0 * (elmt_spike_interval + elmt_spike_duration))));
        algorithm
            value_elmt_k57 := elmt_kon_low;
end Class_elmt_ca_off4;
