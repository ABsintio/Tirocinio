within BIOMD494;
class Class_elmt_event_2 "ant_admin"

    input Real elmt_Ant_d;
    input Real elmt_p472;
    input Real elmt_p469;
    Boolean trigger;
    Boolean execution;
    Boolean active;
    Real    trigtime;
    Real    delta;
    Real    value_elmt_Ant_d;

    equation
        trigger = (time >= elmt_p469);
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
                value_elmt_Ant_d := (pre(elmt_Ant_d) + elmt_p472);
            end when;
end Class_elmt_event_2;
