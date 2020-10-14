within BIOMD301;
class Class_elmt_pulse_end3 ""

    input Real elmt_pulse3_start;
    input Real elmt_pulse3_length;
    Boolean trigger;
    Real    value_elmt_pulse_flag;

    equation
        trigger = (time > (elmt_pulse3_start + elmt_pulse3_length));
        algorithm
            value_elmt_pulse_flag := 0.0;
end Class_elmt_pulse_end3;
