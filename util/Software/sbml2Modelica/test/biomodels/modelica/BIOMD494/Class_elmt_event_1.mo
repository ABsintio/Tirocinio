within BIOMD494;
class Class_elmt_event_1 "ago_admin"

    input Real elmt_p269;
    input Real elmt_p272;
    input Real elmt_default;
    Boolean trigger;
    Boolean execution;
    Boolean active;
    Real    trigtime;
    Real    delta;
    Real    value_elmt_Ago_d;

    equation
        trigger = (time >= elmt_p269);
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
                value_elmt_Ago_d := (elmt_p272 / elmt_default);
            end when;
end Class_elmt_event_1;
