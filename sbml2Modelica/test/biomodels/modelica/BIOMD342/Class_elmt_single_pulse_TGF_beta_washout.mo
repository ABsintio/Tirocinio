within BIOMD342;
class Class_elmt_single_pulse_TGF_beta_washout "TGF-beta washout in singel pulse stimulation"

    input Real elmt_stimulation_type;
    input Real elmt_single_pulse_duration;
    Boolean trigger;
    Boolean execution;
    Boolean active;
    Real    trigtime;
    Real    delta;
    Real    value_elmt_TGF_beta_ex;

    equation
        trigger = (Functions.eq(elmt_stimulation_type, 2.0) and Functions.eq(time, elmt_single_pulse_duration));
        when trigger then
            trigtime = time;
            delta = 0.0;
            active = true;
            execution = delta <= 0.0;
        elsewhen time >= trigtime + delta then
            execution = pre(active);
            active = false;
        elsewhen not trigger then
            active = false;
        end when;

        algorithm
            when execution then
                value_elmt_TGF_beta_ex := 0.0;
            end when;
end Class_elmt_single_pulse_TGF_beta_washout;
