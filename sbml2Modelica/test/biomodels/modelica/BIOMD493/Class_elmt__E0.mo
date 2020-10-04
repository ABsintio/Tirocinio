within BIOMD493;
class Class_elmt__E0 ""

    input Real elmt_P;
    Boolean trigger;
    Boolean execution;
    Boolean active;
    Real    trigtime;
    Real    delta;
    Real    value_elmt_zO;
    Real    value_elmt_zD;

    equation
        trigger = (elmt_P > 12.03);
        when trigger then
            trigtime = if not pre(active) then time else pre(trigtime);
            delta = if not pre(active) then 100.0 else pre(delta);
            active = true;
            execution = delta <= 0.0;
            assert(not pre(active), "Nested event detected. This is not supported yet.");
        elsewhen time >= trigtime + delta then
            active = false;
            execution = true;
        end when;

        algorithm
            when trigger and not pre(active) then
                value_elmt_zO := 1.0;
                value_elmt_zD := 0.8;
            end when;
end Class_elmt__E0;
