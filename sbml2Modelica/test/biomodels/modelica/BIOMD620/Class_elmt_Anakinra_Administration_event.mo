within BIOMD620;
class Class_elmt_Anakinra_Administration_event ""

    input Real elmt_Ana_on;
    input Real elmt_Anakinra_dose_counter;
    input Real elmt_Anakinrasc;
    Boolean trigger;
    Boolean execution;
    Boolean active;
    Real    trigtime;
    Real    delta;
    Real    value_elmt_Anakinrasc;
    Real    value_elmt_Anakinra_dose_counter;

    equation
        trigger = (Functions.eq(time, elmt_Anakinra_dose_counter) and (elmt_Anakinra_dose_counter < 91.0));
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
            when trigger then
                value_elmt_Anakinrasc := (pre(elmt_Anakinrasc) + (100000.0 * elmt_Ana_on));
                value_elmt_Anakinra_dose_counter := (pre(elmt_Anakinra_dose_counter) + 1.0);
            end when;
end Class_elmt_Anakinra_Administration_event;
