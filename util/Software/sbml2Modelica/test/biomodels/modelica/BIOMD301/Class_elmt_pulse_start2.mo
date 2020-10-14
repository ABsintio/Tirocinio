within BIOMD301;
class Class_elmt_pulse_start2 ""

    input Real elmt_pulse_conc;
    input Real elmt_pulse2_length;
    input Real elmt_pulse2_start;
    Boolean trigger;
    Real    value_elmt_pulse_flag;
    Real    value_elmt_ara;

    equation
        trigger = ((time >= elmt_pulse2_start) and (time <= (elmt_pulse2_start + elmt_pulse2_length)));
        algorithm
            value_elmt_pulse_flag := 1.0;
            value_elmt_ara := elmt_pulse_conc;
end Class_elmt_pulse_start2;
