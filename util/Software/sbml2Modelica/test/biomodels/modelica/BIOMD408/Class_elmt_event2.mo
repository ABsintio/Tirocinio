within BIOMD408;
class Class_elmt_event2 "nonpulsatile_step"

    input Real elmt_Jhyd_test;
    input Real elmt_heartrate_test;
    input Real elmt_time_Jhyd_step;
    input Real elmt_Jhyd;
    input Real elmt_pulsatility;
    Boolean trigger;
    Boolean execution;
    Boolean active;
    Real    trigtime;
    Real    delta;
    Real    value_elmt_tmito_factor;
    Real    value_elmt_Jhyd;
    Real    value_elmt_heartrate_bpm;

    equation
        trigger = (time >= elmt_time_Jhyd_step);
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
                value_elmt_tmito_factor := 1.0;
                value_elmt_Jhyd := (if Functions.eq(elmt_pulsatility, 0.0) then elmt_Jhyd_test else pre(elmt_Jhyd));
                value_elmt_heartrate_bpm := elmt_heartrate_test;
            end when;
end Class_elmt_event2;
