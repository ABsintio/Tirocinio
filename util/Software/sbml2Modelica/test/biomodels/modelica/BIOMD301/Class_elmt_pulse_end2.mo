within BIOMD301;
class Class_elmt_pulse_end2 ""

    input Real elmt_pulse3_start;
    input Real elmt_pulse2_length;
    input Real elmt_pulse2_start;
    Boolean trigger;
    Real    value_elmt_pulse_flag;

    equation
        trigger = ((time < elmt_pulse3_start) and (time > (elmt_pulse2_start + elmt_pulse2_length)));
        algorithm
            value_elmt_pulse_flag := 0.0;
end Class_elmt_pulse_end2;
