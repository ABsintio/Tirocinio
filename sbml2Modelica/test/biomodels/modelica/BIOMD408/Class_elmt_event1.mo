within BIOMD408;
class Class_elmt_event1 "pulsatile_basis"

    input Real elmt_fracSysDown;
    input Real elmt_time_Jhyd_step;
    input Real elmt_fracSysUp;
    input Real elmt_phase;
    input Real elmt_last_time_fired;
    input Real elmt_VhydAmp_basis;
    input Real elmt_fracDia;
    input Real elmt_Jhyd;
    input Real elmt_stepsize;
    input Real elmt_pulsatility;
    Boolean trigger;
    Boolean execution;
    Boolean active;
    Real    trigtime;
    Real    delta;
    Real    value_elmt_last_time_fired;
    Real    value_elmt_Jhyd;

    equation
        trigger = (((time < elmt_time_Jhyd_step) and ((time - elmt_last_time_fired) >= elmt_stepsize)) and Functions.eq(elmt_pulsatility, 1.0));
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
                value_elmt_last_time_fired := time;
                value_elmt_Jhyd := (if (elmt_phase <= elmt_fracDia) then 0.0 elseif ((elmt_phase > elmt_fracDia) and (elmt_phase <= (1.0 - elmt_fracSysUp))) then (((elmt_phase - elmt_fracDia) / elmt_fracSysDown) * elmt_VhydAmp_basis) elseif (elmt_phase > (1.0 - elmt_fracSysUp)) then (((1.0 - elmt_phase) * elmt_VhydAmp_basis) / elmt_fracSysUp) else pre(elmt_Jhyd));
            end when;
end Class_elmt_event1;
