within BIOMD301;
class Class_elmt_pulse_start3 ""

    input Real elmt_pulse3_start;
    input Real elmt_pulse_conc;
    input Real elmt_pulse3_length;
    Boolean trigger;
    Real    value_elmt_ara;
    Real    value_elmt_pulse_flag;

    equation
        trigger = ((time >= elmt_pulse3_start) and (time <= (elmt_pulse3_start + elmt_pulse3_length)));
        algorithm
            value_elmt_ara := elmt_pulse_conc;
            value_elmt_pulse_flag := 1.0;
end Class_elmt_pulse_start3;
