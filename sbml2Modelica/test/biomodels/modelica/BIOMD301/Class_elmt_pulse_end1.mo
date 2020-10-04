within BIOMD301;
class Class_elmt_pulse_end1 ""

    input Real elmt_pulse2_start;
    input Real elmt_pulse1_start;
    input Real elmt_pulse1_length;
    Boolean trigger;
    Real    value_elmt_pulse_flag;

    equation
        trigger = ((time < elmt_pulse2_start) and (time > (elmt_pulse1_start + elmt_pulse1_length)));
        algorithm
            value_elmt_pulse_flag := 0.0;
end Class_elmt_pulse_end1;
