within BIOMD153;
class Class_elmt_cAMP_pulse "cAMP_pulse"

    input Real elmt_cAMP_delay;
    Boolean trigger;
    Real    value_elmt_cAMP;

    equation
        trigger = (time >= elmt_cAMP_delay);
        algorithm
            value_elmt_cAMP := 6.6E-6;
end Class_elmt_cAMP_pulse;
